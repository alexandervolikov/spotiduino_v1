/* 
 * Sportiduino base station
 * V 1.5.0
 * 2020-10-23
 * by Volikov ALexander
 * License: GNU GPLv3
 */

#include <avr/sleep.h>
#include <avr/wdt.h>
#include <Wire.h>
#include <ds3231.h>
#include <SPI.h>
#include <MFRC522.h>
#include <EEPROM.h>

//Версия платы
#ifndef HW_VERS
    // or change here
    #define HW_VERS 3
#endif

#define LED             4 // Светодиод
#define BUZ             3 // пищалка
#define RST_PIN         9 //Reset pin of MFRC522, LOW for sleep
#define SS_PIN          10 //SS pin of RFID
#define ADC_IN          A0 //делитель напряжения
#define ADC_EN          A1 //делитель напряжения

#if HW_VERS == 1
  #define VCC_C 5 // Питание часов  
#elif HW_VERS == 3
  #define VCC_C A3 // Питание часов
#else
  #error Unknown HW_VERS
#endif


//Адреса в EEPROM памяти для энергонезависимого хранения данных
const uint16_t EEPROM_ADR_STATION = 800;// Номер станции
const uint16_t EEPROM_ADR_PWD = 850;//Пароли
const uint16_t EEPROM_ADR_SLEEP = 900;//Статус сна

//Ключевые номера страниц в чипе
const uint8_t PAGE_INFO = 4;
const uint8_t PAGE_PASS = 5;
const uint8_t FIRST_PAGE = 8;
const uint8_t MAX_PAGE = 127;
const uint8_t NTAG215_VALUE = 130;

//Особые номера станций, наделенных необычной функциональностью
const uint8_t CHECK_STATION = 248;//проверка
const uint8_t CLEAR_STATION = 249; //очистка

//максиамальная дельта времени инициализации для корректной работы
const uint32_t MAX_TIME_INIT = 2500000UL; 

//Число циклов до перехода в режим ожидания по умолчанию
const uint32_t MAC_COUNT_LOOPS = 57600UL; 

//Мастер-чипы
const uint8_t TIME_MASTER = 250;//Изменение времени
const uint8_t NUMBER_MASTER = 251;//Изменение номера станции
const uint8_t SLEEP_MASTER = 252;//Ввод в сон
const uint8_t PASS_SETTING_MASTER = 254;//Изменение пароля и настреок

//переменные
const uint8_t gain = 0x06 << 4; //усиление антенны
uint8_t pass[3] = {0, 0, 0}; //пароль станции
uint8_t station = 0; //номер станции. По умолчнаию 0 - не записывает чипы

boolean work = false; //включение рабочего режима, по умолчанию выключен
boolean night = false; //флаг состояния сна
boolean deepsleep = false; //влюкчения режима сна

uint32_t loop_count = 0; //cчетчик основных циклов работы для перевода в режим ожидания

//переменные для работы станции очистки
uint8_t last_clean_chip0 = 0;
uint8_t last_clean_chip1 = 0;
boolean last_clean_chip = false;

// Create MFRC522 instance
MFRC522::StatusCode status;
MFRC522 mfrc522(SS_PIN, RST_PIN); 

//Хранение данных с часов
struct ts t; //time


void setup () {
  //считываем время. Для этого подаем напряжение на питания часов, после чего снимаего его
  pinMode(VCC_C, OUTPUT);
  digitalWrite(VCC_C, HIGH);
  delay(1);
  DS3231_init(DS3231_INTCN);
  DS3231_get(&t);
  digitalWrite(VCC_C, LOW);

  //Если время сбито, пикает три раза и продолжаем работу
  if (t.year < 2020){
    beep(50, 3);
  }

  set_sleep_mode (SLEEP_MODE_PWR_DOWN); //Включаем наиболее энергоэффективный режим работы

  station = eeprom_read(EEPROM_ADR_STATION); //Считываем номер станции из памяти
  deepsleep = eeprom_read(EEPROM_ADR_SLEEP); //Считываем состояние сна из памяти
  
  //считываем пароль из памяти
  for (uint8_t i = 0; i < 3; i++) {
    pass[i] = eeprom_read(EEPROM_ADR_PWD + i * 3);
  }
  //сброс пароля и настроек на 0 в случае чистой памяти
  if (pass[0] == 255) {
    pass[0] = pass[1] = pass[2] = 0;
  }

  delay(5000); //Оставляем 5 секунд, чтобы не иметь проблемм с загрузкой скетчей и слишком частыми перезагрузками станции при выходе её из строя
  beep(1000, 1 ); //Сигнал включения станции

}//end of setup


/*
   В цикле работы станции. Сначала включается вотчдог на 1 секунду.
   Если какой-либо процесс затянется на время большее, то приозойдёт перезагрузка станции

   Затем проверяется время. Не пора ли переключаться из рабочего режима в режим ожидания при бездействии

   Далее вызывается функция работы с чипами - rfid()

   После опроса чипа станция проверяет режим работы - ожидания или рабочий. И соответственно входит в сон на разное время
   В настройках можно настроить worktime таким образом, чтобы станция была постоянно в одном режиме.

   Если станция в режиме сна, то происходит её усыпление на 24 секунды.

*/
void loop (){

  //Включене односекудного вотчдога
  wdt_enable(WDTO_1S);

  //Счётчик циклов работы станции
  if (work) {
    loop_count ++;
    if (loop_count > MAC_COUNT_LOOPS) {
      work = false;
      loop_count = 0;
    }
  }

  //Работа с чипами
  rfid();

  //Задаем тип сна в зависимости от режима и входим в сон
  if (MAC_COUNT_LOOPS == 0) work = false;
  if (MAC_COUNT_LOOPS == 1) work = true;
  sleep(work);

  //Если режим сна, то входим в сон на 24 секунды
  if (deepsleep) {
    for (uint8_t i = 0; i < 3; i++) {
        sleep_8second();
      }
  }

} // end of loop


/*
   Фунцкия программной перезагрузки
*/
void(* reset_function) (void) = 0; // Reset MC function

/*
   Настройка перервания по вотчдогу.
   Если прерывание вызвано не сном, то станция перезагружается
*/
ISR (WDT_vect)
{
  wdt_disable();  // disable watchdog
  if (!night) {
    reset_function();
  }

}  // end of WDT_vect

/*
   Вход в сон на 250 или 1000 мс. Сначала ставится флаг для прерывания, что оно приоисходит
   в следствии сна. Затем присходит выставление всех пинов на OUTPUT и все оин кладустся на землю
   Выключается АДЦ для большей экономии энергии. Затем настраиваются биты перехода в сон и засыпление станции
   После просыпления снимается флаг сна для обработки прерываний
*/
//Entrance to sleep for 250 or 1000 ms
void sleep(boolean light) {
  
  night = true; //for correct work of watch-dog inerrupt

  //Low all pin for power save
  //Пин A2 не кладётся из-за особенностей схемы
  for (uint8_t i = 0; i <= A5; i++)
  {
    if (i != A2){
      pinMode(i, OUTPUT);
      digitalWrite (i, LOW);  //
    }
  }

  // disable ADC
  ADCSRA = 0;
  if (light) {
    MCUSR = 0;
    // allow changes, disable reset
    WDTCSR = bit (WDCE) | bit (WDE);
    // set interrupt mode and an interval
    WDTCSR = bit (WDIE) | bit (WDP2);    // set WDIE, and 0.25 second delay
    wdt_reset();  // pat the dog
  }
  if (!light) {
    WDTCSR = bit (WDCE) | bit (WDE);
    // set interrupt mode and an interval
    WDTCSR = bit (WDIE) | bit (WDP2) | bit (WDP1) ;    // set WDIE, and 1 second delay
    wdt_reset();  // pat the dog
  }

  noInterrupts ();           // timed sequence follows
  sleep_enable();

  // turn off brown-out enable in software
  MCUCR = bit (BODS) | bit (BODSE);
  MCUCR = bit (BODS);
  interrupts ();             // guarantees next instruction executed
  sleep_cpu ();

  // cancel sleep as a precaution
  sleep_disable();
  night = false;

} // end of sleep()

/*
   Вход в сон на 8000 мс. Сначала ставится флаг для прерывания, что оно приоисходит
   в следствии сна. Затем присходит выставление всех пинов на OUTPUT и все оин кладутся на землю
   Выключается АЦП для большей экономии энергии. Затем настраиваются биты перехода в сон и засыпление станции
   После просыпления снимается флаг сна для обработки прерываний
*/
void sleep_8second() {
  night = true; //for correct work of watch-dog inerrupt

  //Low all pin for power save
  for (uint8_t i = 0; i <= A5; i++)
    if (i != A2){
      pinMode(i, OUTPUT);
      digitalWrite (i, LOW);  //
    }

  // disable ADC
  ADCSRA = 0;
  MCUSR = 0;
  // allow changes, disable reset
  WDTCSR = bit (WDCE) | bit (WDE);
  // set interrupt mode and an interval
  WDTCSR = bit (WDIE) | bit (WDP3) | bit (WDP0);    // set WDIE, and 8 second delay
  wdt_reset();  // pat the dog

  noInterrupts ();           // timed sequence follows
  sleep_enable();

  // turn off brown-out enable in software
  MCUCR = bit (BODS) | bit (BODSE);
  MCUCR = bit (BODS);
  interrupts ();             // guarantees next instruction executed
  sleep_cpu ();

  // cancel sleep as a precaution
  sleep_disable();
  night = false;

} // end of sleep_8second()

/*
   Функция записи во внутреннюю память микроконтроллера
   Запись приосходит с мажоритарным резервированием в три подряд ячейки
*/
void eeprom_write (uint16_t adr, uint8_t val) {
  for (uint8_t i = 0; i < 3; i++) {
    EEPROM.write(adr + i, val);
  }
}

/*
   Считывание ячейки из внутренней памяти МК с учетом мажоритарного резервирования
*/
uint8_t eeprom_read(uint16_t adr) {
  if (EEPROM.read(adr) == EEPROM.read(adr + 1) ||
      EEPROM.read(adr) == EEPROM.read(adr + 2)) {
    return EEPROM.read(adr);
  }
  else if (EEPROM.read(adr + 1) == EEPROM.read(adr + 2)) {
    return EEPROM.read(adr + 1);
  }
  else {
    beep(50, 3);
    return 0;
  }

} // end of eeprom_read

/*
   Выдача сигнала. Принимает продолжительность сигнала и число сигналов подряд
   В ходе работы сбрасывает вотчдог, чтобы не произошла перезагрузка
*/
void beep(uint16_t ms, uint8_t n) {

  pinMode (LED, OUTPUT);
  pinMode (BUZ, OUTPUT);

  for (uint8_t i = 0; i < n; i++) {
    digitalWrite (LED, HIGH);
    tone (BUZ, 4000, ms);
    delay (ms);
    wdt_reset();
    digitalWrite (LED, LOW);
    if (i < n - 1) {
      delay(ms);
      wdt_reset();
    }
  }

} //end of beep

/*
   Специальный сигнал отметки чипа - мигает светодиодом дополнительно после отметки
*/
void beep_mark() {

  pinMode (LED, OUTPUT);
  pinMode (BUZ, OUTPUT);

  digitalWrite (LED, HIGH);
  tone (BUZ, 4000, 200);
  delay (200);
  digitalWrite (LED, LOW);

  delay(200);
  digitalWrite (LED, HIGH);
  delay(200);
  digitalWrite (LED, LOW);

} //end of beep_mark

//Массив для хранения данных считывания чипов
uint8_t dump[16];


/*
   Запись страницы в чип с проверкой результата
*/
bool ntag_write (uint8_t *dataBlock, uint8_t pageAdr) {

  const uint8_t sizePageNtag = 4;
  status = (MFRC522::StatusCode) mfrc522.MIFARE_Ultralight_Write(pageAdr, dataBlock, sizePageNtag);
  if (status != MFRC522::STATUS_OK) {
    return false;
  }

  uint8_t buffer[18];
  uint8_t size = sizeof(buffer);

  status = (MFRC522::StatusCode) mfrc522.MIFARE_Read(pageAdr, buffer, &size);
  if (status != MFRC522::STATUS_OK) {
    return false;
  }

  //если результат не сходится - выдается отрицательный флаг
  for (uint8_t i = 0; i < 4; i++) {
    if (dataBlock[i] != buffer[i]) return false;
  }

  return true;

}

/*
   Чтение блока страниц в чипе
*/
bool ntag_read (uint8_t pageAdr) {

  uint8_t buffer[18];
  uint8_t size = sizeof(buffer);

  status = (MFRC522::StatusCode) mfrc522.MIFARE_Read(pageAdr, buffer, &size);
  if (status != MFRC522::STATUS_OK) {
    return false;
  }

  for (uint8_t i = 0; i < 16; i++) {
    dump[i] = buffer[i];
  }

  return true;

}

/*
   Включени часов и считывание времени
*/
void get_time() {

  digitalWrite(VCC_C, HIGH);
  delay(1);
  DS3231_get(&t);
  digitalWrite(VCC_C, LOW);

}


//Вспомогательный массив для работы с чипами
uint8_t temp_dump[4] = {255, 0, 0, 0};

/*
   Основная функция работы с чипами
*/
void rfid() {
  //инициализируем переменные
  uint8_t last_number = 0;//последний записанный номер станции в чипе
  uint8_t new_page = 0;//новая страница для записи в чипе
  uint16_t chip_number = 0; //номер чипа

  //включаем SPI ищем карту вблизи. Если не находим выходим из функции чтения чипов
  SPI.begin();      // Init SPI bus
  mfrc522.PCD_Init();    // Init MFRC522
  mfrc522.PCD_SetAntennaGain(gain);
  // Look for new cards
  if ( ! mfrc522.PICC_IsNewCardPresent()) {
    return;
  }

  // Select one of the cards
  if ( ! mfrc522.PICC_ReadCardSerial()) {
    return;
  }

  //считываем время
  get_time();

  //просываемся, если станция была в спяящем режиме.
  if (deepsleep == true) {
    deepsleep = false;
    eeprom_write(EEPROM_ADR_SLEEP, 0);
    beep(200,2);
    reset_function();
  }

  //читаем блок информации
  if (!ntag_read(PAGE_INFO)) {
    return;
  }

  //в первых трех байтах находятся нули для обычных чипов и заданные числа для мастер-чипов
  uint8_t info = 0;
  if (dump[2] == 255) {
    info = dump[1];
    //считываем пароль с мастер-чипа
    uint8_t chip_password[3];
    chip_password[0] = dump[4];
    chip_password[1] = dump[5];
    chip_password[2] = dump[6];

    //сверяем пароль. Если не подходит - пищим и выходим
    if ((pass[0] != chip_password[0]) ||
        (pass[1] != chip_password[1]) ||
        (pass[2] != chip_password[2])) {
      beep(50, 3);
      return;
    }
    //вызов функций соответствующим мастер-чипам
    switch (info){
      case TIME_MASTER:
      time_update();
      break;
      
      case NUMBER_MASTER:
      station_number_update();
      break;
      
      case SLEEP_MASTER:
      sleep_regime_on();
      break;
      
      case PASS_SETTING_MASTER:
      password_update();
      break;
    }
    return;
  }

  //Проверяем является ли станция станцией очистки
  if (station == CLEAR_STATION) {
    clearChip();
    return;
  }

  //Проверяем является ли станция станцией проверки
  if (station == CHECK_STATION) {
    checkChip();
    return;
  }

  //считыввание номера с чипа. Склеивание старшего и младшего байта в номер.
  chip_number = (dump[0] << 8) + dump[1];
  if (chip_number == 0) return;

  //ищем последнюю пустую страницу в чипе для записи
  //если поиск вышел неудачным, функция возвращает ноль и выходит
  new_page = find_new_page(128);  
  if (new_page == 0) return;

  //во время поиска последнюю записанную страницу поместили в temp_dump. Считываем из неё номер, чтобы убедится, что последняя записанная станция отличается
  last_number = temp_dump[0];
  if (station == last_number) {
    beep(500, 1);
    return;
  }

  //проверяем записан ли чип уже полностью и места на нём нет
  if (new_page > MAX_PAGE) {
    return;
  }

  //Записываем отметку
  if (!write_mark(new_page)) {
    return;
  }

  //переходим в рабочий режим, обнуляем число циклов без взаимодействия с чипами
  work = true;
  loop_count = 0;

  SPI.end();

} // end of rfid()

/*
   функция обработки мастер-чипа времени
   С чипа считыввается новое время и устанавливается
   внутреннее время. Станция пикает 5 раз и перезагружается
*/
void time_update() {

  //считываем время с данных мастер-чипа
  t.mon = dump[8];
  t.year = dump[9] + 2000;
  t.mday = dump[10];
  t.hour = dump[12];
  t.min = dump[13];
  t.sec = dump[14];

  //очищаем чип, чтобы он не записал время на другие станции случайно
  uint8_t data_dump[4] = {0, 0, 0, 0};
  if (!ntag_write(data_dump, 4)) {
    return;
  }

  //включаем часы и обновляем время, перезагружаемся
  digitalWrite(VCC_C, HIGH);
  delay(1);
  DS3231_set(t); //correct time
  digitalWrite(VCC_C, LOW);

  beep(200, 2);
  reset_function(); //reboot
}

/*
   Функция установки нового номера станции
   станция считывает чип, записывает новый номер
   во внутреннюю память, пикает 5 раз и перезагружается
*/
void station_number_update() {

  //загружаем новый номер и мастер-чипа
  uint8_t newnum = dump[8];

  //очищаем чип, чтобы он не записал время на другие станции случайно
  uint8_t data_dump[4] = {0, 0, 0, 0};
  if (!ntag_write(data_dump, 4)) {
    return;
  }

  //обновляем время
  if (newnum != 0) {
    if (station != newnum) {
      station = newnum;
      eeprom_write (EEPROM_ADR_STATION, newnum);
    }
    beep(200, 2);
    reset_function(); //reboot
  }
  else {
    beep(50, 3);
    return;
  }
}

/*
   Функция обработки мастер-чипа сна.
   Станция стирает данные о пароле и настройках,
   пикает три раза и входит в сон
*/
void sleep_regime_on() {

  //записываем состояние сна в энергонезависимую память
  deepsleep = true;
  eeprom_write (EEPROM_ADR_SLEEP, 255); //write sleep mode to EEPROM in case of failures
  beep(200, 2);

  //перезагружаемся
  reset_function(); //reboot

}

/*
   Функция записи отметки в чип.
   Записывает номер и поседние 3 байта юникстайм в чип. Если удалось, пикает и выдает true
*/
bool write_mark(int new_page) {

  //переменные для записи - номер станции и младшие байты времени
  uint32_t code = station;
  code = code << 24;
  code += (t.unixtime & 0x00FFFFFF);

  //копируем побайтово в буфер
  uint8_t to_write[4] = {0, 0, 0, 0};
  to_write[0] = (code & 0xFF000000) >> 24;
  to_write[1] = (code & 0x00FF0000) >> 16;
  to_write[2] = (code & 0x0000FF00) >> 8;
  to_write[3] = (code & 0x000000FF);

  uint8_t data_block2[4] = {to_write[0], to_write[1], to_write[2], to_write[3]};
  
  //Если всё хорошо, сигнал отметки, если плохо - то плохо
  if (ntag_write(data_block2, new_page)) {
    beep_mark();
    return true;
  }
  else {
    beep(50, 3);
    return false;
  }
  
}

/*
   Функция обработки мастер-чипа смены пароля. 
   Пикает два раза и перезагружается.
*/
void password_update() {

  //считываем пароль станции
  for (uint8_t i = 0; i < 3; i++) {
    pass[i] = dump[i + 8];
    eeprom_write((EEPROM_ADR_PWD + i * 3), pass[i]);
  }
  
  beep(200, 2);
  reset_function(); //reboot

}

/*
   функция поиска последней записанной страницы по алгоритму бинарного поиска.
   Используется факт, что чтение чипов производится блоками по 4 страницы
*/
uint8_t find_new_page(uint8_t finish_page) {
  uint8_t finish_block = finish_page / 4;
  uint8_t start_block = 2;
  uint8_t block = (finish_block - start_block) / 2;

  while (1) {
    if (finish_block == start_block) {
      return (finish_block * 4);
    }

    block = (finish_block + start_block) / 2;

    if (!ntag_read(block * 4)) {
      for (uint8_t i = 0; i < 4 ; i++) temp_dump[i] = 0;
      return 0;
    }

    boolean empty = true;

    if (dump[0] == 0) {
      empty = true;
    }
    else if (dump[0] != 0 && dump[4] == 0) {
      for (uint8_t i = 0; i < 4 ; i++) temp_dump[i] = dump[i];
      return block * 4 + 1;
    }
    else if (dump[4] != 0 && dump[8] == 0) {
      for (uint8_t i = 0; i < 4 ; i++) temp_dump[i] = dump[i + 4];
      return block * 4 + 2;
    }
    else if (dump[8] != 0 && dump[12] == 0) {
      for (uint8_t i = 0; i < 4 ; i++) temp_dump[i] = dump[i + 8];
      return block * 4 + 3;
    }
    else {
      for (uint8_t i = 0; i < 4 ; i++) temp_dump[i] = dump[i + 12];
      empty = false;
    }


    if (empty) {
      finish_block = (finish_block - start_block) / 2 + start_block;
    }
    else {
      start_block = finish_block - (finish_block - start_block) / 2;
    }
  }
}

/*
   станция очистки
*/
void clearChip() {

  //Условие что этот чип только что уже не подвергался очистки
  if ((last_clean_chip0 == dump[0]) && (last_clean_chip1 == dump[1]) && last_clean_chip) {

    //Если в чипе нет номера - выходим
    if (!ntag_read(FIRST_PAGE)) {
      return;
    }

    if (dump[0] == 0 && dump[1] == 0 && dump[2] == 0 && dump[3] == 0) {
      beep(200, 2 );
      return;
    }

  }

  //выставляем флаги и обновляем номер последнего очщенного чипа
  last_clean_chip = false;
  last_clean_chip0 = dump[0];
  last_clean_chip1 = dump[1];

  //на процедуру очистки включаем диод
  pinMode (LED, OUTPUT);
  digitalWrite (LED, HIGH);

  //записываем значала 255, а затем нули
  byte wbuff[] = {255, 255, 255, 255};

  for (byte page = FIRST_PAGE; page < NTAG215_VALUE; page++) {
    wdt_reset();

    if (!ntag_write(wbuff, page)) {
      return;
    }
  }

  //Аналогично записывае нули
  byte wbuff2[] = {0, 0, 0, 0};

  for (byte page = (NTAG215_VALUE - 1); page > (FIRST_PAGE - 1); page--) {
    wdt_reset();
    
    if (!ntag_write(wbuff2, page)) {
      return;
    }
  }

  //Записываем время инициализации в соответствующую страницу
  uint32_t utime = t.unixtime;
  uint8_t data_block2[4] = {0, 0, 0, 0};
  data_block2[0] = (utime & 0xFF000000) >> 24;
  data_block2[1] = (utime & 0x00FF0000) >> 16;
  data_block2[2] = (utime & 0x0000FF00) >> 8;
  data_block2[3] = (utime & 0x000000FF);

  if (!ntag_write(data_block2, PAGE_PASS)) {
    return;
  }
  digitalWrite (LED, LOW);
  beep(200, 2);

  //флаг, что очистка прошла успешно
  last_clean_chip = true;
}

/*
  Станция проверки чипа
*/
void checkChip() {

  //считываем время в чипе
  uint32_t initTime = dump[4];
  initTime <<= 8;
  initTime += dump[5];
  initTime <<= 8;
  initTime += dump[6];
  initTime <<= 8;
  initTime += dump[7];

  //если чип инициализирован давно - сигналим три раза
  if ((t.unixtime - initTime) > MAX_TIME_INIT) {
    beep(50, 3);
    return;
  }

  //считываем первую страницу
  for (byte i = 0; i < 7; i++) {
    if (!ntag_read(FIRST_PAGE)) {
      return;
    }
  }

  //Если отметки на чипе уже есть - сигналим три раза
  for (byte i = 0; i < 16; i++) {
    if (dump[i] != 0) {
      beep(50, 3);
      return;
    }
  }

  //Если всё хорошо - обычный сигнал отметки
  beep_mark();

}

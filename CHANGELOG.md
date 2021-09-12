## [1.6.0] - 2021-0-12
### Удалил все ненужные функции
- Убрано использование внутренней памяти станции для лога
- Убрано шифрование чипов
- Убран запрос статуса батареи

## [1.5.0] - 2020-10-25
### Значительно изменена логика работы прошивки
- Добавлена поддержка платы версии 3
- Добавлен мастер-чип запроса статуса батареи
- Добавлен мастер-чип снятия лога времени со станции
- Добавлен мастер чип очистки памяти станции
- Оставлена поддержка только Ntag215
- Мастер-чипы сна, статуса, пароля, очистки памяти не стираются после прикладывания. Осторожно!
- Убран байт настройки станции
- Добавлено шифрование чипа на запись. Используется отдельный nfc пароль с соответствующим мастер-чипом его задания

## [1.4.2] - 2018-10-23
### delete antena gain from setting-byte

## [1.4.1] - 2018-10-17
### mark beep change, reduce power for master station

## [1.4.0] - 2018-10-03
### Added the ability to reduce the power of the antenna to choose the optimal range of the station

## [1.3.8] - 2018-06-25
### Added the program for work with the system
- The program is available at (separete rep)[https://github.com/alexandervolikov/SportiduinoPQ]/ It is
based on [a python module](https://github.com/alexandervolikov/sportiduinoPython) and also on the PyQt package for creating window applications

## [1.3.7] - 2018-06-25
### Fix dump uploading
- Fix dump uploading

## [1.3.6] - 2018-06-23
### Mifare Bug fixes
- Fix setting bag fix for Mifare Base Station

## [1.3.5] - 2018-06-19
### Bug fixes
- The Check station signals the master chips
- The Clear station can clear a repeatedly non-empty chip with the same number
- Resetting the station settings with enterening to sleep mode is configurable

## [1.3.4] - 2018-06-13
### Some changes
- reset stantion config with sleep entering
- fix sounds
- remove auto reading mode at master station

## [1.3.3] - 2018-06-10
### Added the capacitor to the battery power of the clock
- In some parts of the station, a problem arose with the hours rushing for 2-5 minutes per day. It turned out that the problem consists in unstabilized power supply, the output capacitor after the stabilizer does not cope. We need to add one more closer to clock. In new gerber files that problem is fixed. In older boards, the bug is easily corrected by soldering the capacitor directly to the clock's power outputs.

## [1.3.2] - 2018-06-08
### Add check station
- To simplify the procedure for checking the chips before the start, a check station mode was added. Also Since it does not record anything on the chip, participants can be trained in the marking chip on the base station

## [1.3.1] - 2018-06-06
### Speeded up the mark, changes in the settings of the base stations
- Due to optimization of chip reading, the time of the mark is reduced by 40 ms
- Added the ability to limit the maximum possible number of marks on the chip and, thereby, further reduce the time of the mark at the base stations
- In the cleaning station mode, the problem of re-cleaning the chip is solved.

## [1.3.0] - 2018-04-11
### Bug fix and new features
- Bug fix with set settings to statioin
- Add clear station mode
- Sound of the station is amplified by adding transistor to scheme
- Firmware for working with Mifare Classic S50 cards moved to the main repository

## [1.2.0] - 2018-02-17
### Changed the master station communication protocol
- The fixed packet up to 32 bytes is changed to a variable length packet with a maximum length of 32 bytes.
- Added functions to request the firmware version of the master station
- Added the function of transferring the station to automatic regime of cards reading

## [1.1.0] - 2018-02-13
### Delete regime stantion-page, bug fix
- To unify the work with the system, the mode in which the label was written to the page equal to the station number was deleted. A sequential mode is left with the search for the last blank page.
- Fixed the bug that occurs when initializing ntag 213 card
- Fixed the bug thst occurs with transmitting log from base stantion

## [1.0.0] - 2018-02-11
### First stable version
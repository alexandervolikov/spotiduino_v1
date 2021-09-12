# sportiduinoPQ

### версия 0.6.3

```commandline
pip install pyserial pyqt5 xmltodict six sip
```

exe сгенерирован с помощью pyinstaller:

```commandline
pip install pyinstaller
pyinstaller --onefile --noconsole SportiduinoPQ.py
```

генерация из qt
```
pyuic5 design.ui -o design.py
```
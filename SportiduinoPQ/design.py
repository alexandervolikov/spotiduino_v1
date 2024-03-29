# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'design.ui'
#
# Created by: PyQt5 UI code generator 5.15.2
#
# WARNING: Any manual changes made to this file will be lost when pyuic5 is
# run again.  Do not edit this file unless you know what you are doing.


from PyQt5 import QtCore, QtGui, QtWidgets


class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(408, 453)
        self.centralwidget = QtWidgets.QWidget(MainWindow)
        self.centralwidget.setObjectName("centralwidget")
        self.horizontalLayout_4 = QtWidgets.QHBoxLayout(self.centralwidget)
        self.horizontalLayout_4.setObjectName("horizontalLayout_4")
        self.verticalLayout = QtWidgets.QVBoxLayout()
        self.verticalLayout.setObjectName("verticalLayout")
        self.horizontalLayout = QtWidgets.QHBoxLayout()
        self.horizontalLayout.setObjectName("horizontalLayout")
        self.Connec = QtWidgets.QPushButton(self.centralwidget)
        font = QtGui.QFont()
        font.setPointSize(12)
        self.Connec.setFont(font)
        self.Connec.setObjectName("Connec")
        self.horizontalLayout.addWidget(self.Connec)
        self.label_8 = QtWidgets.QLabel(self.centralwidget)
        font = QtGui.QFont()
        font.setPointSize(12)
        self.label_8.setFont(font)
        self.label_8.setAlignment(QtCore.Qt.AlignRight|QtCore.Qt.AlignTrailing|QtCore.Qt.AlignVCenter)
        self.label_8.setObjectName("label_8")
        self.horizontalLayout.addWidget(self.label_8)
        self.choiseCom = QtWidgets.QComboBox(self.centralwidget)
        font = QtGui.QFont()
        font.setPointSize(12)
        self.choiseCom.setFont(font)
        self.choiseCom.setObjectName("choiseCom")
        self.choiseCom.addItem("")
        self.choiseCom.addItem("")
        self.choiseCom.addItem("")
        self.choiseCom.addItem("")
        self.choiseCom.addItem("")
        self.choiseCom.addItem("")
        self.choiseCom.addItem("")
        self.choiseCom.addItem("")
        self.choiseCom.addItem("")
        self.choiseCom.addItem("")
        self.choiseCom.addItem("")
        self.choiseCom.addItem("")
        self.choiseCom.addItem("")
        self.choiseCom.addItem("")
        self.choiseCom.addItem("")
        self.choiseCom.addItem("")
        self.choiseCom.addItem("")
        self.choiseCom.addItem("")
        self.choiseCom.addItem("")
        self.choiseCom.addItem("")
        self.choiseCom.addItem("")
        self.choiseCom.addItem("")
        self.choiseCom.addItem("")
        self.choiseCom.addItem("")
        self.choiseCom.addItem("")
        self.choiseCom.addItem("")
        self.choiseCom.addItem("")
        self.choiseCom.addItem("")
        self.choiseCom.addItem("")
        self.choiseCom.addItem("")
        self.choiseCom.addItem("")
        self.choiseCom.addItem("")
        self.choiseCom.addItem("")
        self.horizontalLayout.addWidget(self.choiseCom)
        self.verticalLayout.addLayout(self.horizontalLayout)
        self.Log = QtWidgets.QTabWidget(self.centralwidget)
        font = QtGui.QFont()
        font.setPointSize(12)
        self.Log.setFont(font)
        self.Log.setToolTipDuration(-3)
        self.Log.setObjectName("Log")
        self.tab_4 = QtWidgets.QWidget()
        self.tab_4.setObjectName("tab_4")
        self.Print = QtWidgets.QPushButton(self.tab_4)
        self.Print.setGeometry(QtCore.QRect(10, 110, 111, 31))
        self.Print.setObjectName("Print")
        self.SelectPrinter = QtWidgets.QPushButton(self.tab_4)
        self.SelectPrinter.setGeometry(QtCore.QRect(10, 170, 111, 31))
        self.SelectPrinter.setObjectName("SelectPrinter")
        self.ReadCard = QtWidgets.QPushButton(self.tab_4)
        self.ReadCard.setGeometry(QtCore.QRect(10, 10, 181, 61))
        self.ReadCard.setObjectName("ReadCard")
        self.AutoPrint = QtWidgets.QCheckBox(self.tab_4)
        self.AutoPrint.setGeometry(QtCore.QRect(10, 210, 121, 31))
        self.AutoPrint.setObjectName("AutoPrint")
        self.printerName = QtWidgets.QLabel(self.tab_4)
        self.printerName.setGeometry(QtCore.QRect(10, 140, 141, 41))
        self.printerName.setText("")
        self.printerName.setObjectName("printerName")
        self.line_8 = QtWidgets.QFrame(self.tab_4)
        self.line_8.setGeometry(QtCore.QRect(0, 80, 211, 20))
        self.line_8.setFrameShape(QtWidgets.QFrame.HLine)
        self.line_8.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line_8.setObjectName("line_8")
        self.line_10 = QtWidgets.QFrame(self.tab_4)
        self.line_10.setGeometry(QtCore.QRect(0, 240, 211, 20))
        self.line_10.setFrameShape(QtWidgets.QFrame.HLine)
        self.line_10.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line_10.setObjectName("line_10")
        self.ReadRaw = QtWidgets.QPushButton(self.tab_4)
        self.ReadRaw.setGeometry(QtCore.QRect(10, 270, 111, 31))
        self.ReadRaw.setObjectName("ReadRaw")
        self.Log.addTab(self.tab_4, "")
        self.tab = QtWidgets.QWidget()
        self.tab.setObjectName("tab")
        self.InitCard = QtWidgets.QPushButton(self.tab)
        self.InitCard.setGeometry(QtCore.QRect(10, 70, 171, 61))
        self.InitCard.setObjectName("InitCard")
        self.cardLine = QtWidgets.QLineEdit(self.tab)
        self.cardLine.setGeometry(QtCore.QRect(10, 10, 171, 51))
        self.cardLine.setObjectName("cardLine")
        self.AutoIncriment = QtWidgets.QCheckBox(self.tab)
        self.AutoIncriment.setGeometry(QtCore.QRect(10, 140, 151, 31))
        self.AutoIncriment.setObjectName("AutoIncriment")
        self.Log.addTab(self.tab, "")
        self.tab_2 = QtWidgets.QWidget()
        self.tab_2.setObjectName("tab_2")
        self.SetNum = QtWidgets.QPushButton(self.tab_2)
        self.SetNum.setGeometry(QtCore.QRect(10, 110, 91, 31))
        self.SetNum.setObjectName("SetNum")
        self.StationLine = QtWidgets.QLineEdit(self.tab_2)
        self.StationLine.setGeometry(QtCore.QRect(10, 70, 91, 31))
        self.StationLine.setObjectName("StationLine")
        self.SetStart = QtWidgets.QPushButton(self.tab_2)
        self.SetStart.setGeometry(QtCore.QRect(110, 70, 91, 31))
        self.SetStart.setObjectName("SetStart")
        self.SetFinish = QtWidgets.QPushButton(self.tab_2)
        self.SetFinish.setGeometry(QtCore.QRect(110, 110, 91, 31))
        self.SetFinish.setObjectName("SetFinish")
        self.ClearSt = QtWidgets.QPushButton(self.tab_2)
        self.ClearSt.setGeometry(QtCore.QRect(10, 170, 91, 31))
        font = QtGui.QFont()
        font.setPointSize(12)
        self.ClearSt.setFont(font)
        self.ClearSt.setObjectName("ClearSt")
        self.CheckSt = QtWidgets.QPushButton(self.tab_2)
        self.CheckSt.setGeometry(QtCore.QRect(110, 170, 91, 31))
        font = QtGui.QFont()
        font.setPointSize(12)
        self.CheckSt.setFont(font)
        self.CheckSt.setObjectName("CheckSt")
        self.SetTime = QtWidgets.QPushButton(self.tab_2)
        self.SetTime.setGeometry(QtCore.QRect(10, 10, 91, 31))
        self.SetTime.setObjectName("SetTime")
        self.line_2 = QtWidgets.QFrame(self.tab_2)
        self.line_2.setGeometry(QtCore.QRect(-3, 30, 111, 41))
        self.line_2.setFrameShape(QtWidgets.QFrame.HLine)
        self.line_2.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line_2.setObjectName("line_2")
        self.line_3 = QtWidgets.QFrame(self.tab_2)
        self.line_3.setGeometry(QtCore.QRect(0, 140, 211, 31))
        self.line_3.setFrameShape(QtWidgets.QFrame.HLine)
        self.line_3.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line_3.setObjectName("line_3")
        self.line_4 = QtWidgets.QFrame(self.tab_2)
        self.line_4.setGeometry(QtCore.QRect(-3, 199, 211, 31))
        self.line_4.setFrameShape(QtWidgets.QFrame.HLine)
        self.line_4.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line_4.setObjectName("line_4")
        self.AutoIncriment_st = QtWidgets.QCheckBox(self.tab_2)
        self.AutoIncriment_st.setGeometry(QtCore.QRect(120, 30, 81, 31))
        self.AutoIncriment_st.setObjectName("AutoIncriment_st")
        self.Log.addTab(self.tab_2, "")
        self.tab_3 = QtWidgets.QWidget()
        self.tab_3.setObjectName("tab_3")
        self.label_6 = QtWidgets.QLabel(self.tab_3)
        self.label_6.setGeometry(QtCore.QRect(10, 220, 81, 41))
        self.label_6.setObjectName("label_6")
        self.label_7 = QtWidgets.QLabel(self.tab_3)
        self.label_7.setGeometry(QtCore.QRect(10, 250, 81, 41))
        self.label_7.setObjectName("label_7")
        self.PassCard = QtWidgets.QPushButton(self.tab_3)
        self.PassCard.setGeometry(QtCore.QRect(10, 290, 191, 31))
        self.PassCard.setObjectName("PassCard")
        self.SaveSet = QtWidgets.QPushButton(self.tab_3)
        self.SaveSet.setGeometry(QtCore.QRect(110, 330, 91, 31))
        self.SaveSet.setObjectName("SaveSet")
        self.LoadSet = QtWidgets.QPushButton(self.tab_3)
        self.LoadSet.setGeometry(QtCore.QRect(10, 330, 91, 31))
        self.LoadSet.setObjectName("LoadSet")
        self.label_4 = QtWidgets.QLabel(self.tab_3)
        self.label_4.setGeometry(QtCore.QRect(60, 200, 91, 21))
        self.label_4.setObjectName("label_4")
        self.new_pass1 = QtWidgets.QLineEdit(self.tab_3)
        self.new_pass1.setGeometry(QtCore.QRect(50, 230, 41, 21))
        self.new_pass1.setObjectName("new_pass1")
        self.new_pass2 = QtWidgets.QLineEdit(self.tab_3)
        self.new_pass2.setGeometry(QtCore.QRect(100, 230, 41, 21))
        self.new_pass2.setObjectName("new_pass2")
        self.new_pass3 = QtWidgets.QLineEdit(self.tab_3)
        self.new_pass3.setGeometry(QtCore.QRect(150, 230, 41, 21))
        self.new_pass3.setObjectName("new_pass3")
        self.old_pass1 = QtWidgets.QLineEdit(self.tab_3)
        self.old_pass1.setGeometry(QtCore.QRect(50, 260, 41, 21))
        self.old_pass1.setObjectName("old_pass1")
        self.old_pass2 = QtWidgets.QLineEdit(self.tab_3)
        self.old_pass2.setGeometry(QtCore.QRect(100, 260, 41, 21))
        self.old_pass2.setObjectName("old_pass2")
        self.old_pass3 = QtWidgets.QLineEdit(self.tab_3)
        self.old_pass3.setGeometry(QtCore.QRect(150, 260, 41, 21))
        self.old_pass3.setObjectName("old_pass3")
        self.SleepCard = QtWidgets.QPushButton(self.tab_3)
        self.SleepCard.setGeometry(QtCore.QRect(10, 10, 91, 31))
        self.SleepCard.setObjectName("SleepCard")
        self.Log.addTab(self.tab_3, "")
        self.verticalLayout.addWidget(self.Log)
        self.horizontalLayout_4.addLayout(self.verticalLayout)
        self.textBrowser = QtWidgets.QTextBrowser(self.centralwidget)
        self.textBrowser.setHorizontalScrollBarPolicy(QtCore.Qt.ScrollBarAlwaysOff)
        self.textBrowser.setObjectName("textBrowser")
        self.horizontalLayout_4.addWidget(self.textBrowser)
        MainWindow.setCentralWidget(self.centralwidget)
        self.actionConnect = QtWidgets.QAction(MainWindow)
        self.actionConnect.setObjectName("actionConnect")
        self.actionChose_COM_port = QtWidgets.QAction(MainWindow)
        self.actionChose_COM_port.setObjectName("actionChose_COM_port")
        self.actionSave_log = QtWidgets.QAction(MainWindow)
        self.actionSave_log.setObjectName("actionSave_log")
        self.actionOpen_help_txt = QtWidgets.QAction(MainWindow)
        self.actionOpen_help_txt.setObjectName("actionOpen_help_txt")

        self.retranslateUi(MainWindow)
        self.Log.setCurrentIndex(0)
        QtCore.QMetaObject.connectSlotsByName(MainWindow)
        MainWindow.setTabOrder(self.Connec, self.choiseCom)
        MainWindow.setTabOrder(self.choiseCom, self.Log)
        MainWindow.setTabOrder(self.Log, self.cardLine)
        MainWindow.setTabOrder(self.cardLine, self.InitCard)
        MainWindow.setTabOrder(self.InitCard, self.AutoIncriment)
        MainWindow.setTabOrder(self.AutoIncriment, self.SetTime)
        MainWindow.setTabOrder(self.SetTime, self.StationLine)
        MainWindow.setTabOrder(self.StationLine, self.SetNum)
        MainWindow.setTabOrder(self.SetNum, self.SetStart)
        MainWindow.setTabOrder(self.SetStart, self.SetFinish)
        MainWindow.setTabOrder(self.SetFinish, self.ClearSt)
        MainWindow.setTabOrder(self.ClearSt, self.CheckSt)
        MainWindow.setTabOrder(self.CheckSt, self.PassCard)
        MainWindow.setTabOrder(self.PassCard, self.LoadSet)
        MainWindow.setTabOrder(self.LoadSet, self.SaveSet)
        MainWindow.setTabOrder(self.SaveSet, self.textBrowser)

    def retranslateUi(self, MainWindow):
        _translate = QtCore.QCoreApplication.translate
        MainWindow.setWindowTitle(_translate("MainWindow", "SportiduinoPQ - v.0.6.2"))
        self.Connec.setText(_translate("MainWindow", "Connect"))
        self.label_8.setText(_translate("MainWindow", "Com Port"))
        self.choiseCom.setItemText(0, _translate("MainWindow", "auto"))
        self.choiseCom.setItemText(1, _translate("MainWindow", "0"))
        self.choiseCom.setItemText(2, _translate("MainWindow", "1"))
        self.choiseCom.setItemText(3, _translate("MainWindow", "2"))
        self.choiseCom.setItemText(4, _translate("MainWindow", "3"))
        self.choiseCom.setItemText(5, _translate("MainWindow", "4"))
        self.choiseCom.setItemText(6, _translate("MainWindow", "5"))
        self.choiseCom.setItemText(7, _translate("MainWindow", "6"))
        self.choiseCom.setItemText(8, _translate("MainWindow", "7"))
        self.choiseCom.setItemText(9, _translate("MainWindow", "8"))
        self.choiseCom.setItemText(10, _translate("MainWindow", "9"))
        self.choiseCom.setItemText(11, _translate("MainWindow", "10"))
        self.choiseCom.setItemText(12, _translate("MainWindow", "11"))
        self.choiseCom.setItemText(13, _translate("MainWindow", "12"))
        self.choiseCom.setItemText(14, _translate("MainWindow", "13"))
        self.choiseCom.setItemText(15, _translate("MainWindow", "14"))
        self.choiseCom.setItemText(16, _translate("MainWindow", "15"))
        self.choiseCom.setItemText(17, _translate("MainWindow", "16"))
        self.choiseCom.setItemText(18, _translate("MainWindow", "17"))
        self.choiseCom.setItemText(19, _translate("MainWindow", "18"))
        self.choiseCom.setItemText(20, _translate("MainWindow", "19"))
        self.choiseCom.setItemText(21, _translate("MainWindow", "20"))
        self.choiseCom.setItemText(22, _translate("MainWindow", "21"))
        self.choiseCom.setItemText(23, _translate("MainWindow", "22"))
        self.choiseCom.setItemText(24, _translate("MainWindow", "23"))
        self.choiseCom.setItemText(25, _translate("MainWindow", "24"))
        self.choiseCom.setItemText(26, _translate("MainWindow", "25"))
        self.choiseCom.setItemText(27, _translate("MainWindow", "26"))
        self.choiseCom.setItemText(28, _translate("MainWindow", "27"))
        self.choiseCom.setItemText(29, _translate("MainWindow", "28"))
        self.choiseCom.setItemText(30, _translate("MainWindow", "29"))
        self.choiseCom.setItemText(31, _translate("MainWindow", "30"))
        self.choiseCom.setItemText(32, _translate("MainWindow", "31"))
        self.Print.setText(_translate("MainWindow", "Print"))
        self.SelectPrinter.setText(_translate("MainWindow", "Select Printer"))
        self.ReadCard.setText(_translate("MainWindow", "Read Card"))
        self.AutoPrint.setText(_translate("MainWindow", "AutoPrint"))
        self.ReadRaw.setText(_translate("MainWindow", "Read Raw"))
        self.Log.setTabText(self.Log.indexOf(self.tab_4), _translate("MainWindow", "Read"))
        self.InitCard.setText(_translate("MainWindow", "Init Card"))
        self.AutoIncriment.setText(_translate("MainWindow", "AutoIncriment"))
        self.Log.setTabText(self.Log.indexOf(self.tab), _translate("MainWindow", "Card"))
        self.SetNum.setText(_translate("MainWindow", "Set Number"))
        self.SetStart.setText(_translate("MainWindow", "Set Start"))
        self.SetFinish.setText(_translate("MainWindow", "Set Finish"))
        self.ClearSt.setText(_translate("MainWindow", "Clear St"))
        self.CheckSt.setText(_translate("MainWindow", "Check St"))
        self.SetTime.setText(_translate("MainWindow", "Set Time"))
        self.AutoIncriment_st.setText(_translate("MainWindow", "Auto++"))
        self.Log.setTabText(self.Log.indexOf(self.tab_2), _translate("MainWindow", "St"))
        self.label_6.setText(_translate("MainWindow", "New"))
        self.label_7.setText(_translate("MainWindow", "Old"))
        self.PassCard.setText(_translate("MainWindow", "Pass Card"))
        self.SaveSet.setText(_translate("MainWindow", "Save Set"))
        self.LoadSet.setText(_translate("MainWindow", "Load Set"))
        self.label_4.setText(_translate("MainWindow", "Password"))
        self.SleepCard.setText(_translate("MainWindow", "Sleep Card"))
        self.Log.setTabText(self.Log.indexOf(self.tab_3), _translate("MainWindow", "Set"))
        self.actionConnect.setText(_translate("MainWindow", "Connect"))
        self.actionChose_COM_port.setText(_translate("MainWindow", "Chose COM-port"))
        self.actionSave_log.setText(_translate("MainWindow", "Save log"))
        self.actionOpen_help_txt.setText(_translate("MainWindow", "Open help.txt"))

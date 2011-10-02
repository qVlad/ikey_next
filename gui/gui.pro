QT += core \
      gui \
      declarative

TEMPLATE = app
TARGET = ikey_next
VERSION = 0.0.1

#DEFINES += QG_DEBUG
DESTDIR = ../bin

INCLUDEPATH += ./inc

OTHER_FILES += \
    rsc/qml/main.qml \
    rsc/qml/ViewSwitcher.qml \
    rsc/qml/ViewLoader.qml \
    rsc/qml/TitleBar.qml \
    rsc/qml/ShopView.qml \
    rsc/qml/NavigationButton.qml \
    rsc/qml/NavigationBar.qml \
    rsc/qml/KittyView.qml \
    rsc/qml/FriendsView.qml \
    rsc/qml/Frame.qml \
    rsc/qml/DummyEditor.qml \
    rsc/qml/Button.qml \
    rsc/qml/InsertDeviceView.qml \
    rsc/qml/RecordView.qml \
    rsc/qml/PlayView.qml \
    rsc/qml/BrowserView.qml \
    rsc/qml/Keys.js \
    rsc/qml/BatteryLevel.qml \
    rsc/qml/FreeSpace.qml \
    rsc/qml/ProgressBar.qml \
    rsc/qml/VuMeter.qml \
    rsc/qml/FolderList.qml \
    rsc/qml/FolderListConstants.js \
    rsc/qml/ProgressBarConstants.js \
    rsc/qml/MenuConstants.js \
    rsc/qml/DateTimeMenu.qml \
    rsc/qml/DateView.qml \
    rsc/qml/DayModel.qml \
    rsc/qml/MonthModel.qml \
    rsc/qml/YearModel.qml \
    rsc/qml/HourModel.qml \
    rsc/qml/MinuteModel.qml \
    rsc/qml/TimeView.qml \
    rsc/qml/RecMenuView.qml \
    rsc/qml/TestView.qml \
    rsc/qml/MenuDelegate.qml \
    rsc/qml/MenuHighlight.qml \
    rsc/qml/PlayMenuView.qml \
    rsc/qml/BrowserMenuView.qml

SOURCES += \
    src/main.cpp \
    src/devicethread.cpp \
    src/menumodel.cpp

RESOURCES += \
    rsc/gui.qrc

HEADERS += \
    inc/devicethread.h \
    src/datemodel.h \
    src/timemodel.h \
    src/menumodel.h \
    inc/menumodel.h













































































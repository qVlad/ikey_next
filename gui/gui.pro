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
    qml/main.qml \
    qml/ViewSwitcher.qml

SOURCES += \
    src/main.cpp

RESOURCES += \
    rsc/gui.qrc



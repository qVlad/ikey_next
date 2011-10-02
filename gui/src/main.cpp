// Qt includes
#include <QApplication>
#include <QDeclarativeView>
#include <QDeclarativeEngine>
#include <QDeclarativeContext>
#include <QObject>
#include <QtDeclarative>
#include "devicethread.h"
#include "menumodel.h"


int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    QDeclarativeView view;
 //   view.setResizeMode(QDeclarativeView::SizeRootObjectToView);

    // Get the engine and the root context and expose C++ instances to QML.
    QDeclarativeEngine *engine = view.engine();
    QDeclarativeContext *rootContext = engine->rootContext();

    // Set the working directory as a context property to be accessed in QML
    // code.
    //rootContext->setContextProperty("workingDir", argv[0]);
    DeviceThread DevThread;
    rootContext->setContextProperty("DevThread", &DevThread);

    MenuModel RecMenu;
    /*
        ListElement { name: "Format"; value: "MP3"}
        ListElement { name: "Bitrate"; value: "128"}
        ListElement { name: "Samplerate"; value: "441"}
        ListElement { name: "Bit depth"; value: "441"}
        ListElement { name: "Channels";}
        ListElement { name: "Auto track";}
        ListElement { name: "Auto rec";}
        ListElement { name: "File prefix";}
        ListElement { name: "Pre record";}
        ListElement { name: "Mark timer";}
        ListElement { name: "File timer";}
        ListElement { name: "Regions";}
        ListElement { name: "Boost 24dB";}
        ListElement { name: "Phantom power";}
        ListElement { name: "Dynamics";}
        ListElement { name: "Time mode";}
        ListElement { name: "Noise gate";}
*/
    RecMenu.addMenuElement(MenuElement("Bitrate", 12800));
    RecMenu.addMenuElement(MenuElement("Format", 2));
    RecMenu.addMenuElement(MenuElement("Freq", 44100));
    rootContext->setContextProperty("RecMenu", &RecMenu);
    MenuModel PlayMenu;
    PlayMenu.addMenuElement(MenuElement("Test1", 12334));
    PlayMenu.addMenuElement(MenuElement("Test2", 34543));
    rootContext->setContextProperty("PlayMenu", &PlayMenu);
    MenuModel BrowserMenu;
    BrowserMenu.addMenuElement(MenuElement("Test1", 12334));
    BrowserMenu.addMenuElement(MenuElement("Test2", 34543));
    rootContext->setContextProperty("BrowserMenu", &BrowserMenu);

    QObject::connect(engine, SIGNAL(quit()), &app, SLOT(quit()));
    view.setSource(QUrl("qrc:qml/main.qml"));
    //view.setSource(QUrl::fromLocalFile("../gui/qml/main.qml"));
   // DEBUG_INFO("Running in desktop environment?");
    //for unit
    //view.setGeometry(QRect(0, 0, 220, 176));
    view.setGeometry(QRect(50, 50, 220, 176));
    view.show();
/*
    for(int i=100;i>0;i--){
        for(int i=100000;i>0;i--){
        }
    }
*/
    //TODO: Doing multithreading: for example device
//    DevThread.generateInsertDevice();
    return app.exec();
}

// End of file.

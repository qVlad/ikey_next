// Qt includes
#include <QApplication>
#include <QDeclarativeView>
#include <QDeclarativeEngine>
#include <QDeclarativeContext>
#include <QObject>
#include <QtDeclarative>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    QDeclarativeView view;
 //   view.setResizeMode(QDeclarativeView::SizeRootObjectToView);

    // Get the engine and the root context and expose C++ instances to QML.
    QDeclarativeEngine *engine = view.engine();
    //QDeclarativeContext *rootContext = engine->rootContext();

    // Set the working directory as a context property to be accessed in QML
    // code.
    //rootContext->setContextProperty("workingDir", argv[0]);
    QObject::connect(engine, SIGNAL(quit()), &app, SLOT(quit()));
   // view.setSource(QUrl("qrc:/main.qml"));
    view.setSource(QUrl::fromLocalFile("../gui/qml/main.qml"));
   // DEBUG_INFO("Running in desktop environment?");
    //for unit
    //view.setGeometry(QRect(0, 0, 220, 176));
    view.setGeometry(QRect(50, 50, 220, 176));
    view.show();

    return app.exec();
}

// End of file.

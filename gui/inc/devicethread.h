#ifndef DEVICETHREAD_H
#define DEVICETHREAD_H

#include <QObject>

class DeviceThread : public QObject
{
    Q_OBJECT
private:
    int timerId;
public:
    explicit DeviceThread(QObject *parent = 0);
    void generateInsertDevice();
    void timerEvent(QTimerEvent *);
    Q_INVOKABLE  void triggerEvent()
     {
      emit insertDevice();
     }
signals:
    void insertDevice();
public slots:
    void messageFromQml(){
        qDebug("Message from QML");
    }
};

#endif // DEVICETHREAD_H

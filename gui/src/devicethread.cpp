#include "devicethread.h"

DeviceThread::DeviceThread(QObject *parent) :
    QObject(parent)
{
    timerId=startTimer(1000);
}

void DeviceThread::generateInsertDevice()
{
    //emit insertDevice();
}

void DeviceThread::timerEvent(QTimerEvent *)
{
    triggerEvent();
    killTimer(timerId);
}

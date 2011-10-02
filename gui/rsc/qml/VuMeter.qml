import QtQuick 1.0
Rectangle {
    id: vuMeter
    width: 200
    height: 20
    property real curValue: 0
    property string name: "L"
    property string fontColor: "black"
    property real maxValue: 100

    BorderImage {
        id: vuMeterBorder
        width: parent.width - channelName.width - channelValue.width
        height: parent.height
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.top: parent.top
        anchors.right: channelValue.left
        anchors.bottom: parent.bottom
        anchors.left: channelName.right
        anchors.topMargin: 0
        source: "images/progressBar.png"

        Image {
            id: vuMeterPic
            width: parent.width
            height: parent.height
            anchors.rightMargin: 3
            anchors.leftMargin: 3
            anchors.bottomMargin: 3
            anchors.topMargin: 3
            anchors.fill: parent
            source: "images/vuMeter.PNG"
        }

        Rectangle {
            id: vuMeterCover
            width: vuMeterPic.width*(maxValue-curValue)/maxValue
            color: fontColor
            anchors.rightMargin: 3
            anchors.leftMargin: 3+vuMeterPic.width*(curValue)/maxValue
            anchors.bottomMargin: 3
            anchors.topMargin: 3
            anchors.fill: parent
        }
    }

    Text {
        id: channelName
        width: 23
        height: parent. height
        text: qsTr(name)
        anchors.left: parent.left
        anchors.leftMargin: 3
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 12
    }

    Text {
        id: channelValue
        width: 23
        height: parent.height
        text: curValue
        anchors.right: parent.right
        anchors.rightMargin: 3
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 12
    }
}
/*
Rectangle {
    id: vuMeter
    property real curValue: 0
    property string name: "L"
    property string fontColor: "black"
    property real maxValue: 100

    width: 200
    height: 15
    Text{
        //Идентификатор
        id: channelName
        //Внешний вид
        anchors.left: vuMeter.left
        //Данные
        text: qsTr(name)
    }

    Image{
        //Идентификатор
        id: vuMeterPic
        //Внешний вид
        width: 180
        height: vuMeter.height
        anchors.left:channelName.right
        //Данные
        source: "images/vuMeter.PNG"
    }
    //Эта картинка закрывает ту часть VU Meter которая в данный момент не должна быть видна
    Rectangle{
         //Идентификатор
        id: vuMeterCover
        //Внешний вид
        height: vuMeter.height
        width: vuMeterPic.width*(maxValue-curValue)/maxValue
        anchors.left: vuMeterPic.left
        anchors.leftMargin: vuMeterPic.width*(curValue)/maxValue
        //Данные
        color: fontColor
    }

    Text {
        //Идентификатор
        id: channelValue
        //Внешний вид
        anchors.left: vuMeterPic.right
        //Данные
        text: curValue
    }
}
*/

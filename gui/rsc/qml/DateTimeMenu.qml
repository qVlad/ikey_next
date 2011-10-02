import QtQuick 1.0

Rectangle {
    id: rectangle1
    property string viewTitle: "Date and time"
    property int imageView: 0
    property string curDate: "30 May 2012"
    property string curTime: "16:30"
    property bool dateChange: true

    DateView{
        x: 0
        y: 96
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        opacity: dateChange

    }
    TimeView{
        x: 0
        y: 96
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        opacity: !dateChange
    }

    Rectangle{
        color: "#08f91c"
        height: 60
        width: 120
        anchors.horizontalCenter: parent.horizontalCenter
        Text {
            id: textDate
            text: qsTr(curDate)
            font.pixelSize: 12
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 5
        }

        Text {
            id: textTime
            text: qsTr(curTime)
            font.pixelSize: 12
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: textDate.bottom
            anchors.topMargin: 5
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 5
        }
    }
}

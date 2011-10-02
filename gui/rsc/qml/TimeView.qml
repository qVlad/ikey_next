import QtQuick 1.0

Row {
    id: dateRow
    anchors.horizontalCenter: parent.horizontalCenter
    Component {
        id: highlightBar
        Rectangle {
            width: 200; height: 50
            color: "#FFFF88"
            //y: dayView.currentItem.y;
            Behavior on y { SpringAnimation { spring: 2; damping: 0.1 } }
        }
    }
    ListView {
        id: hourView
        width: 40
        height: 80
        anchors.left: parent.left
        anchors.leftMargin: 0
        delegate: Item {
            height: 40
            Rectangle {
                width: 40
                height: 40
                color: "red"
                Text {
                    text: value
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.bold: true
                }
            }
        }
        highlight: highlightBar
        model: HourModel{}
        focus: true
    }

    ListView {
        id: minuteView
        width: 40
        height: 80
        anchors.left: hourView.right
        anchors.leftMargin: 5
        delegate: Item {
            height: 40
            Rectangle {
                width: 40
                height: 40
                color: "red"
                Text {
                    text: value
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.bold: true
                }
            }
        }
        highlight: highlightBar
        model: MinuteModel{}
        focus: true
    }

}

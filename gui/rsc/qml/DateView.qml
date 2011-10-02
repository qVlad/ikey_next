import QtQuick 1.0


Row {
    id: dateRow
    anchors.horizontalCenter: parent.horizontalCenter
    Component {
        id: highlightBar
        Rectangle {
            width: 60; height: 50
            color: "#FFFF88"
            Behavior on y { SpringAnimation { spring: 2; damping: 0.1 } }
        }
    }
    Component {
        id: delegateBar
        Rectangle {
            width: 40
            height: 30//parent.height
            color: "red"
            Text {
                text: value
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                font.bold: true
            }
        }
    }

    ListView {
        id: dayView
        width: 40
        height: 80
        anchors.left: parent.left
        anchors.leftMargin: 0
        delegate: delegateBar
        highlight: highlightBar
        model: DayModel{}
        focus: true
    }

    ListView {
        id: monthView
        width: 40
        height: 80
        anchors.left: dayView.right
        anchors.leftMargin: 5
        delegate: delegateBar
        highlight: highlightBar
        model: MonthModel{}
        focus: true
    }

    ListView {
        id: yearView
        width: 40
        height: 80
        anchors.left: monthView.right
        anchors.leftMargin: 5
        delegate: delegateBar
        highlight: highlightBar
        highlightFollowsCurrentItem: false
        model: YearModel{}
        focus: true
    }
}

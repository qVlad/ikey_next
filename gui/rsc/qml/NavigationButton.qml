import Qt 4.7

Item {
    signal clicked
    property bool active
    property url activeIcon
    property url inactiveIcon
    property alias text : label.text

    anchors.top: parent.top
    anchors.bottom: parent.bottom

    Image {
        id: icon
        source: active ? activeIcon : inactiveIcon
        anchors.centerIn: parent
        anchors.verticalCenterOffset: -10
    }

    Text {
        id: label
        anchors.top: icon.bottom
        anchors.topMargin: -4
        anchors.horizontalCenter: icon.horizontalCenter
        font.family: "Lato Black"
        font.pixelSize: 20
        color: active ? "#ffddee" : "#a52246"
        style: Text.Raised
        styleColor: active ? "#30000000" : "#20ffffff"

    }

    MouseArea {
        anchors.fill: parent
        onClicked: { parent.clicked(); haptics.buttonClick(); }
        onPressedChanged: { if (pressed) haptics.buttonClick(); }
    }
}

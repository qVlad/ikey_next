import Qt 4.7

BorderImage {
    id: buttonbase

    signal clicked

    property int hitboxExtension : 20
    property alias text : label.text
    property bool pressed: hitbox.pressed && hitbox.containsMouse

    source: pressed ? "images/button_down.png" : "images/button_up.png"

    border.left: 41;
    border.right: 41;

    MouseArea {
        id: hitbox
        anchors.fill: parent
        anchors.topMargin: -hitboxExtension
        anchors.bottomMargin: -hitboxExtension
        anchors.leftMargin: -hitboxExtension
        anchors.rightMargin: -hitboxExtension

        onClicked: { parent.clicked(); haptics.buttonClick(); }
        onPressedChanged: { if (hitbox.pressed) haptics.buttonClick(); }
    }

    Text {
        id: label
        anchors.centerIn: parent
        anchors.verticalCenterOffset: pressed ? -2 : -3
        font.family: "Lato Black"
        font.pixelSize: 22
        color: "#ffffff"
        styleColor: "#4f000000"
        style: Text.Sunken
    }
}

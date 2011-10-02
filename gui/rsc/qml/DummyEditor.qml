import Qt 4.7

BorderImage {
    property alias text : hint.text

    source: "images/textbox.png"
    border.left: 19;
    border.right: 19;

    Text {
        id: hint
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 14
        font.family: "Lato"
        font.pixelSize: 18
        color: "#bbbbbb"
    }
}

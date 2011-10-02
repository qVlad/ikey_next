import Qt 4.7

Rectangle {
    property string viewTitle: "My kitty"

    color: "#97c4e9"

    Image {
        id: kitty
        anchors.centerIn: parent
        anchors.verticalCenterOffset: -90
        source: "images/kitty.png"
    }

    Text {
        id: text
        text: "Aww... Kitty is sad.\nBuy stuff to make kitty happy!"
        anchors.top: kitty.bottom
        anchors.horizontalCenter: kitty.horizontalCenter
        anchors.topMargin: 30
        font.family: "Lato Black"
        font.pixelSize:  20
        color: "#ffffff"
        horizontalAlignment: Text.AlignHCenter
    }

    Button {
        anchors.left: parent.left
        anchors.leftMargin: 40
        anchors.right: parent.right
        anchors.rightMargin: 40
        anchors.top: text.bottom
        anchors.topMargin: 55
        text: "Go to shop"
        onClicked: { viewSwitcher.switchView(shopView, false); }
    }

}

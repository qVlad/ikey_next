import Qt 4.7
Rectangle {
    property string viewTitle: "play view"
    property int imageView: 1

    color: "lightblue"

    Image {
        id: insertDevice
        anchors.centerIn: parent
        anchors.verticalCenterOffset: 0
        //source:"images/insertDeviceView.png"

        Text {
            id: text
            x: 0
            y: 47
            text: "Play View"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.NoWrap
            anchors.rightMargin: 0
            anchors.bottomMargin: -47
            anchors.leftMargin: 0
            anchors.topMargin: 47
            anchors.fill: parent
            visible: true
            //anchors.top: insertDevice.bottom
            //anchors.horizontalCenter: insertDevice.horizontalCenter
            //anchors.topMargin: 30
            font.family: "Lato Black"
            font.pixelSize:  20
            color: "#ffffff"
            //  horizontalAlignment: Text.AlignHCenter
        }
    }
/*
    Text {
        id: text
        text: "Aww... Kitty is sad.\nBuy stuff to make kitty happy!"
        anchors.top: insertDevice.bottom
        anchors.horizontalCenter: insertDevice.horizontalCenter
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
*/
}

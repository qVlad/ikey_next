import Qt 4.7

Rectangle {
    property string viewTitle: "Friends"

    // Just to demonstrate the activation callback
    function activationComplete() { sheepAnimation.start() }

    color: "#97c4e9"
    Text {
        id: text
        text: "Aww... You have no friends.\nMaybe you don't have\nenough stuff?"
        anchors.centerIn: parent
        anchors.verticalCenterOffset: -130
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
        anchors.topMargin: 40
        text: "Go to shop"
        onClicked: { viewSwitcher.switchView(shopView, false);  }
    }

    Image {
        id: wooly
        source: "images/sheep.png"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 55
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: -20
    }

    SequentialAnimation {
        id: sheepAnimation
        NumberAnimation { target: wooly; property: "anchors.bottomMargin";
                          duration: 200; to: 110; easing.type: Easing.OutSine }
        NumberAnimation { target: wooly; property: "anchors.bottomMargin";
                          duration: 800; to: 55; easing.type: Easing.OutBounce }
    }
}

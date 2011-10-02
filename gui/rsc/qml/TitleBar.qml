import Qt 4.7

Rectangle {
    color: parent.color
    anchors.right: parent.right
    anchors.left: parent.left

    Text {
        id: titleText
        anchors.centerIn: parent
        anchors.verticalCenterOffset: 0//3
        font.family: "Lato Black"
        font.pixelSize: 12
        color: "black"
        styleColor: "#2f000000"
        style: Text.Sunken
        text: viewSwitcher.currentView.viewTitle
    }

    //TODO: creating status bar with battery indicator, space indicator
    Image {
        id:statusBar
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 0//3
        anchors.left: parent.left
        anchors.right: parent.right
        Text {
            id: text1
            anchors.centerIn: parent
            anchors.verticalCenterOffset: 0//3
            font.family: "Lato Black"
            font.pixelSize: 12
            color: "black"
            styleColor: "#2f000000"
            style: Text.Sunken
            text: "some info"
        }
        //anchors.rightMargin: 25
        source: "images/progressBar.png"
        //used opacity for view or not view status bar
        opacity: viewSwitcher.currentView.imageView
       /* MouseArea {
            anchors.fill: parent
            anchors.topMargin: -25; anchors.bottomMargin: -25       // Make it easy to hit
            anchors.rightMargin: -25; anchors.leftMargin: -25

            onClicked: { haptics.buttonClick(); Qt.quit();  }
            onPressedChanged: { if (pressed) haptics.buttonClick(); }

        }*/
        BatteryLevel{
            id:batteryLevel
            //height: parent.height
            anchors.rightMargin: 2
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
        }
        FreeSpace{
            id:freespace
            height: parent.height
            anchors.leftMargin: 2
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
        }
    }
}

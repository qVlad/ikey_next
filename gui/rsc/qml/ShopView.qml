import Qt 4.7

Rectangle {
    property string viewTitle: "Shop for things"

    color: "#97c4e9"

    Image {
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        source: "images/clouds.png"
        anchors.bottomMargin: -20
        anchors.rightMargin: -20
    }

    DummyEditor {
        id: nameEditor
        anchors.top: parent.top
        anchors.topMargin: 80
        anchors.left: parent.left; anchors.right: parent.right
        anchors.leftMargin: 40; anchors.rightMargin: 40
        text: "Enter daddy's name here"
    }

    DummyEditor {
        id: numberEditor
        anchors.top: nameEditor.bottom
        anchors.topMargin: 15
        anchors.left: parent.left; anchors.right: parent.right
        anchors.leftMargin: 40; anchors.rightMargin: 40
        text: "Enter daddy's credit card here"
    }

    Column {
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 80
        spacing: 15
        width: parent.width

        Button {
            anchors.left: parent.left
            anchors.leftMargin: 40
            anchors.right: parent.right
            anchors.rightMargin: 40
            text: "Buy happiness"
            onClicked: { }
            hitboxExtension: 8
        }

        Button {
            anchors.left: parent.left
            anchors.leftMargin: 40
            anchors.right: parent.right
            anchors.rightMargin: 40
            text: "Buy pixie dust"
            onClicked: { }
            hitboxExtension: 8
        }


         Button {
            anchors.left: parent.left
            anchors.leftMargin: 40
            anchors.right: parent.right
            anchors.rightMargin: 40
            text: "Buy a fricken pony"
            onClicked: { }
            hitboxExtension: 8
        }
    }
}

import Qt 4.7
//import Qt.labs.folderlistmodel 1.0
Rectangle {
    property string viewTitle: "browser view"
    property int imageView: 1

    color: "lightblue"

    //TODO: change fileBrowser

    FolderList{
        //defaultPath:"C:/test/"
        width: parent.width
        height: parent.height
    }
/*
    FolderList2{

    }
*/
/*
    ListView {
        width: parent.width
        height: parent.height
        FolderListModel {
            id: foldermodel
            nameFilters: ["*.mp3","*.wav"]
            folder: "file:C:/test/"
            showDotAndDotDot: true
        }
        Component {
            id: filedelegate
            Text { text: fileName }
        }
        model: foldermodel
        delegate: filedelegate
    }
*/
    Image {
        id: insertDevice
        anchors.centerIn: parent
        anchors.verticalCenterOffset: 0
        //source:"images/insertDeviceView.png"

        Text {
            id: text
            x: 0
            y: 47
            //text: "Please insert device"
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
}

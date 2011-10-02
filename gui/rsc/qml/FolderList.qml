import QtQuick 1.0
import Qt.labs.folderlistmodel 1.0
import "FolderListConstants.js" as Constants

Item {
    id: folderList

    //property string defaultPath: ""
    property Item scrollDecorator: null
    property alias modelView: folderModelView
    property alias folder: folderModel.folder

    signal folderSelected(variant folder)
    signal fileSelected(variant file)


// Navigates to the parent folder of the current folder.
    function toParentFolder()
    {
        folderAnimation.newFolder = folderModel.parentFolder;
        folderAnimation.start();
    }

    // FolderListModel is not visible item.
    FolderListModel {
        id: folderModel
        folder: "file:C:/test/"
        nameFilters: [ "*.mp3", "*.wav" ]
        showDotAndDotDot: true
    }

    Component {
        id: folderModelListItem
        Rectangle {
            width: parent.width;
            height: Constants.DEFAULT_LIST_ITEM_HEIGHT
            color: delegateMouseArea.pressed ?
            Constants.DEFAULT_BASE_COLOR :
            Constants.DEFAULT_BACKGROUND_COLOR;
            Image {
                id: icon
                width: height;
                height: parent.height - 2 * Constants.DEFAULT_MARGIN
                anchors.verticalCenter: parent.verticalCenter
                source: folderModel.isFolder(index) ? "images/folder_icon.png"
                : "images/file_icon.png"
                smooth: true
            }
            Text {
                anchors {
                    left: icon.right;
                    leftMargin: Constants.DEFAULT_MARGIN
                    verticalCenter: parent.verticalCenter
                }
                color: Constants.DEFAULT_TEXT_COLOR
                font.pixelSize: 0
                text: fileName
            }
            MouseArea {
                id: delegateMouseArea
                anchors.fill: parent

                onClicked: {
                    if (!fileName.length) {
                        console.debug("FolderList.qml: Error: Empty filename!");
                        return;
                    }
                    if (folderModel.isFolder(index)) {
                        folderList.folderSelected(filePath);
                        folderAnimation.newFolder = filePath;
                        folderAnimation.start();
                    } else {
                        folderList.fileSelected(filePath);
                    }
                }
            }
        }
    } // Component

    ListView {
        id: folderModelView
        anchors {
            fill: parent
            margins: Constants.DEFAULT_MARGIN
        }
        model: folderModel
        delegate: folderModelListItem
        highlight: Rectangle { color: "red"; radius: 5 }
        SequentialAnimation {
            id: folderAnimation
            property string newFolder
            PropertyAnimation {
                target: folderModelView
                property: "opacity"; to: 0;
                duration: 100
            }
            PropertyAction {
                target: folderModel
                property: "folder"
                value: folderAnimation.newFolder
            }
            PropertyAnimation {
                target: folderModelView
                property: "opacity"; to: 1.0;
                duration: 100
            }
        }
    }

    onScrollDecoratorChanged: {
        scrollDecorator.parent = folderList;
    }

}

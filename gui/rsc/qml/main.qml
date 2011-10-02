import QtQuick 1.0
import "Keys.js" as Keyboard
Rectangle {
    id: root
    width: 220
    height: 176
    focus: true
    //color:"lightblue"
    /*
    / - insert USB
    * - insert SD
    - - rec volume minus
    + - rec volume plus
    7 - play
    9 - record
    enter - enter
    5 - menu
    1 - stop
    4 - left
    6 - right
    8 - play volume plus
    2 - play volume minus

    */
    TitleBar {
        z: 1
        anchors.top: parent.top
        anchors.bottom: frame.top
    }

    Frame {
        id: frame
        z: 1
        anchors.topMargin: 16
        anchors.bottomMargin: 0
        anchors.fill: parent
    }

    Item {
        id: viewContainer
        anchors.fill: frame

        InsertDeviceView {
            id: insertDeviceView
            width: parent.width
            anchors.top: parent.top; anchors.bottom: parent.bottom
        }

        ViewLoader {
            id: recordView
            keepLoaded: false
            viewSource: "RecordView.qml"
        }
        ViewLoader {
            id: playView
            keepLoaded: false
            viewSource: "PlayView.qml"
        }
        ViewLoader {
            id: browserView
            keepLoaded: false
            viewSource: "BrowserView.qml"
        }
        ViewLoader {
            id: recMenuView
            keepLoaded: false
            viewSource: "RecMenuView.qml"
        }
        ViewLoader {
            id: playMenuView
            keepLoaded: false
            viewSource: "PlayMenuView.qml"
        }
        ViewLoader {
            id: browserMenuView
            keepLoaded: false
            viewSource: "BrowserMenuView.qml"
        }
        ViewLoader {
            id: dateTimeMenu
            keepLoaded: false
            viewSource: "DateTimeMenu.qml"
        }

    }

    ViewSwitcher {
        id: viewSwitcher
    }

    Component.onCompleted: {
        viewSwitcher.currentView = insertDeviceView;
    }

    //Непонятно что делает
    //Keys.forwardTo: menu;
    //TODO Необходимо прокинуть канал чтобы можно было получать данные о
    //текущем элементе выбранном в меню
    Keys.onPressed:
    {        
        Keyboard.func(event.key, viewSwitcher);
    }
/*
    Item{
        width: 220
        height: 176
        focus: true
        Keys.onPressed: Keyboard.func(event.key);
            {
            switch(event.key){
                case Qt.Key_Slash:
                {
                    console.log("Slash - Insert USB");
                    if(insertDeviceWindow.state == ''){
                        insertDeviceWindow.state = 'RecWindow'
                    }else if(insertDeviceWindow.state == 'RecWindow'){
                        insertDeviceWindow.state = ''
                    }
                    break;
                }
                case Qt.Key_Asterisk:
                {
                    console.log("* - Insert SD");
                    if(insertDeviceWindow.state == ''){
                        insertDeviceWindow.state = 'RecWindow'
                    }else if(insertDeviceWindow.state == 'RecWindow'){
                        insertDeviceWindow.state = ''
                    }
                    break;
                }
                case Qt.Key_7:
                {
                    console.log("7 - Play");
                    break;
                }
                case Qt.Key_8:
                {
                    console.log("8 - play volume plus");
                    break;
                }
                case Qt.Key_9:
                {
                    console.log("9 - record");
                    break;
                }
                case Qt.Key_5:
                {
                    console.log("5 - menu");
                    break;
                }
                case Qt.Key_4:
                {
                    console.log("4 - Left");
                    break;
                }
                case Qt.Key_6:
                {
                    console.log("6 - Right");
                    break;
                }
                case Qt.Key_1:
                {
                    console.log("1 - Stop");
                    break;
                }
                case Qt.Key_2:
                {
                    console.log("2 - play volume minus");
                    break;
                }
                case Qt.Key_3:
                {
                    console.log("3 - ");
                    break;
                }
                case Qt.Key_Minus:
                {
                    console.log("rec volume minus");
                    break;
                }
                case Qt.Key_Plus:
                {
                    console.log("rec volume plus");
                    break;
                }
                case Qt.Key_Enter:
                {
                    console.log("Enter ");
                    break;
                }
                case Qt.Key_0:
                {
                    console.log("0");
                    break;
                }
            }
            if(event.key == Qt.Key_Slash){
                console.log("Slash - Insert Device");
                if(insertDeviceWindow.state == ''){
                    insertDeviceWindow.state = 'RecWindow'
                }else if(insertDeviceWindow.state == 'RecWindow'){
                    insertDeviceWindow.state = ''
                }

            }
        }
    }
*/
/*    Text {
        text: qsTr("Please insert device")
        anchors.fill: parent
        horizontalAlignment: Text.AlignHCenter
    }
*/
    /*
    states: [
        State{
            name:"PlayWindow"

            PropertyChanges {
                target: insertDeviceWindow
                color: "#022cfb"
            }
        },
        State{
            name:"SelectDeviceWindow"

        },
        State{
            name:"HaveDevice"

        },
        State{
            name:"RecMenu"

        },
        State{
            name:"PlayMenu"

        },
        State{
            name:"BrowserMenu"

        }
    ]
    */
}

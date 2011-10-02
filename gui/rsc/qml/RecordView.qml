import Qt 4.7
//import "Keys.js" as Keyboard
Rectangle {
    property string viewTitle: "test"
    property int imageView: 1
    property int curTimeInMin: 2
    property int curTimeInSec: 35
    property real progressVU: 0

    color: "lightblue"
    Image {
        id: insertDevice
        anchors.centerIn: parent
        anchors.verticalCenterOffset: 0
        source:"images/recordView.png"
        width: parent.width
        height:parent.height
        Text {
            id: curFileName
            //example useing int value
            //text: qsTr("00:00"+imageView)
            text: qsTr("curfile.wav")
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: -50
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 14
            color: "black"
        }

        Text {
            id: curTime
            //example useing int value
            text: qsTr(""+curTimeInMin+":"+curTimeInSec)
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: -30
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 28
            color: "black"
        }

        Rectangle {
            id: rectangle1
            x: 23
            y: 47
            width: 30
            height: 30
            radius: 15
            z: 0
            gradient: Gradient {
                GradientStop {
                    position: 0.080
                    color: "#ec1616"
                }

                GradientStop {
                    position: 0.890
                    color: "#000000"
                }
            }
            border.color: "#f50808"
        }

        Timer{
            interval: 50
            running: true
            repeat: true
            onTriggered: {
                progressVU = Math.floor(Math.random() * 100)
                //console.log(parent.bottom)
            }
        }

        VuMeter{
            id: vuMeter2
            anchors.bottomMargin: 5
            anchors.bottom: vuMeter1.top
            anchors.left: parent.left
            anchors.leftMargin: 5
            fontColor: "red" //root.color
            //TODO разобраться что он делает и нужен ли он тут
            //NumberAnimation on curValue { duration: progressVU; from: 0; to: 100; loops: Animation.Infinite }
            curValue: progressVU
            name: "R"
        }
        VuMeter{
            id: vuMeter1
            //x: 50
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 5
            anchors.left: parent.left
            anchors.leftMargin: 5
            fontColor: "red" //root.color
            //TODO разобраться что он делает и нужен ли он тут
            //NumberAnimation on curValue { duration: progressVU; from: 0; to: 100; loops: Animation.Infinite }
            curValue: progressVU
            name: "L"
        }


/*
        ProgressBar{
            width: 150
            x:50
            y:50
            value:0.5
        }
*/

        /*Text {
            id: text
            x: 0
            y: 47
            text: "Please insert device"
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
        }*/
    }

/*
    Image {
        id: insertDevice
        anchors.centerIn: parent
        anchors.verticalCenterOffset: -90
        source:"images/insertDeviceView.png"
    }

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




/*

import Qt 4.7
//import "Keys.js" as Keyboard
Rectangle {
    property string viewTitle: "test"
    property int imageView: 1

    color: "lightblue"
    Image {
        id: insertDevice
        anchors.centerIn: parent
        anchors.verticalCenterOffset: 0
        source:"images/recordView.png"

        Rectangle {
            id: rectangle1
            x: 23
            y: 47
            width: 30
            height: 30
            radius: 15
            z: 0
            gradient: Gradient {
                GradientStop {
                    position: 0.080
                    color: "#ec1616"
                }

                GradientStop {
                    position: 0.890
                    color: "#000000"
                }
            }
            border.color: "#f50808"
        }
    }
}
*/

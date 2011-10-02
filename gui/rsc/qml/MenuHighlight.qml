import QtQuick 1.0

Component {

    //property real curElementY: 0
   // id: menuHighlight
    Rectangle {
        width: 200; height: 50
        color: "#FFFF88"
        //y: curElementY;
        y: menuView.currentItem.y
        Behavior on y { SpringAnimation { spring: 2; damping: 0.1 } }
    }
}

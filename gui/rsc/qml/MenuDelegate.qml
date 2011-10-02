import QtQuick 1.0

Component {
    id: menuDelegate
    Item {
        id: wrapper
        width: 200; height: 55
        Column {
            /*Text { text: 'Name: ' + name }
            Text { text: 'Type: ' + type }
            Text { text: 'Age: ' + age }*/
            Text { text: 'Name: ' + fullName }
            Text { text: 'Type: ' + value }
        }
        // indent the item if it is the current item
        states: State {
            name: "Current"
            when: wrapper.ListView.isCurrentItem
            PropertyChanges { target: wrapper; x: 20 }
        }
        transitions: Transition {
            NumberAnimation { properties: "x"; duration: 200 }
        }
    }
}

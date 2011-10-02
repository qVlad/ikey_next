import QtQuick 1.0
/*
ListView {
    property variant modelR:null
    property variant delegatR:null
    property variant highlightR:null
    //TODO передача модели фейк, работает неправильно расширить
    id: menuView
    width: 200; height: parent.height
    model: modelR
    delegate: delegatR
    focus: true

    // Set the highlight delegate. Note we must also set highlightFollowsCurrentItem
    // to false so the highlight delegate can control how the highlight is moved.
    highlight: highlightR
    highlightFollowsCurrentItem: false
}
*/
ListView {
    property variant modelR:null
    //TODO передача модели фейк, работает неправильно расширить
    id: menuView
    width: 200; height: parent.height
    model: modelR
    delegate: Text {
        text: name + ": " + number
    }
    focus: true
}

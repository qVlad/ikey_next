import QtQuick 1.0

Rectangle {
    property string viewTitle: "Menu"
    property int imageView: 0
    //variant - если не знаешь что за тип
    //этот property используется чтобы в обработчике клавиш мы могли знать о текущем используемом виде и выбранно элементе соответственно
    property variant usedMenu: menuView
    ListView {
        //TODO передача модели фейк, работает неправильно расширить
        id: menuView
        width: 200; height: parent.height
        model: RecMenu
        delegate: MenuDelegate{}
        focus: true       
        highlight:  MenuHighlight{}
        // Set the highlight delegate. Note we must also set highlightFollowsCurrentItem
        // to false so the highlight delegate can control how the highlight is moved.
        highlightFollowsCurrentItem: false
    }
}

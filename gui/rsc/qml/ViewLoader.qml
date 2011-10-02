import Qt 4.7

Loader {
    property bool keepLoaded : true
    property url viewSource

    property string viewTitle : item == null ? "" : item.viewTitle
    property int imageView : item == null ? 0 : item.imageView
    property variant usedMenu : item == null ? 0 : item.usedMenu

    anchors.top: parent.top
    anchors.bottom: parent.bottom
    width: parent.width
    opacity: 0

    function activationComplete() {
         if (item.activationComplete != undefined) item.activationComplete();
    }

    function deactivationComplete() {
         if (item.deactivationComplete != undefined) item.deactivationComplete();
         if (!keepLoaded)
            source = "";
    }

    function loadView() {
        if (status != Loader.Ready)
            source = viewSource;
    }
}

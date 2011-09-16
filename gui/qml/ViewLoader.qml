/**
 * The view framework for loading and switching views is borrowed from the
 * blog article by Juha Turunen.
 *
 * See http://juhaturunen.com/blog/
 */

import QtQuick 1.0

Loader {
    property bool keepLoaded : true
    property url viewSource

    width: parent.width
    anchors.top: parent.top
    anchors.bottom: parent.bottom
    opacity: 0

    function activationComplete() {
         if (item.activationComplete != undefined) {
             item.activationComplete();
         }
    }

    function deactivationComplete() {
         if (item.deactivationComplete != undefined) {
             item.deactivationComplete();
         }

         if (!keepLoaded) {
            source = "";
         }
    }

    function loadView() {
        if (status != Loader.Ready) {
            source = viewSource;
        }
    }
}

// End of file.

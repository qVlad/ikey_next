/**
 * The view framework for loading and switching views is borrowed from the
 * blog article by Juha Turunen.
 *
 * See http://juhaturunen.com/blog/
 */

import QtQuick 1.0

QtObject {
    property Item currentView
    property Item previousView
    property bool running: switchAnimation.running
    property bool direction

    signal viewChanged

    function switchView(newView, leftToRight)
    {
        if (newView != currentView && !switchAnimation.running) {
            // If the new view has a loadView() function, call it to make sure
            // the view is loaded.
            if (newView.loadView != undefined) {
                newView.loadView();
            }

            newView.x = leftToRight ? -root.width : root.width
            direction = leftToRight;
            previousView = currentView;
            currentView = newView;
            newView.opacity = 1;
            switchAnimation.start();
            viewChanged();
        }
    }

    property variant switchAnimation : ParallelAnimation {
        NumberAnimation {
            target: previousView
            property: "x"
            easing.type: Easing.OutQuart
            to: direction ? root.width : -root.width
            duration: 750
        }
        NumberAnimation {
            target: currentView
            property: "x"
            easing.type: Easing.OutQuart
            to: 0
            duration: 750
        }

        onRunningChanged: {
            if (!running) {
                previousView.opacity = 0;

                if (previousView.deactivationComplete != undefined) {
                    previousView.deactivationComplete();
                }

                if (currentView.activationComplete != undefined) {
                    currentView.activationComplete();
                }
            }
        }
    }
}

// End of file.

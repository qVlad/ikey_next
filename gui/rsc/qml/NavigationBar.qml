import Qt 4.7

Rectangle {
    color: "#d1456c"
    anchors.right: parent.right
    anchors.left: parent.left

    Row {
        anchors.fill: parent

        NavigationButton {
            id: kittyButton
            width: parent.width / 3
            activeIcon: "images/kitty_active.png"
            inactiveIcon: "images/kitty_inactive.png"
            text: "My kitty"
            active: viewSwitcher.currentView == kittyView
            onClicked: {
                if (!viewSwitcher.running) {
                    viewSwitcher.switchView(kittyView, true);   // roll the views left to right
                }
            }
        }

        NavigationButton {
            id: friendsButton
            width: parent.width / 3
            text: "Friends"
            activeIcon: "images/friends_active.png"
            inactiveIcon: "images/friends_inactive.png"
            active: viewSwitcher.currentView == friendsView
            onClicked: {
                if (!viewSwitcher.running) {
                    if (viewSwitcher.currentView == shopView)
                        viewSwitcher.switchView(friendsView, true);   // right to left
                    else
                        viewSwitcher.switchView(friendsView, false);   // left to right
                }
            }
        }

        NavigationButton {
            id: shopButton
            width: parent.width / 3
            text: "Shop"
            activeIcon: "images/shop_active.png"
            inactiveIcon: "images/shop_inactive.png"
            active: viewSwitcher.currentView == shopView
            onClicked: {
                if (!viewSwitcher.running) {
                    viewSwitcher.switchView(shopView, false);   // roll the views right to left
                }
            }
        }
    }
}

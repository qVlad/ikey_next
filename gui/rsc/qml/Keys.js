//var component = Qt.createComponent("RecMenuView.qml");
/* KEY MAP
/ - insert USB
* - insert SD
- - rec volume minus
+ - rec volume plus
7 - play
9 - record
enter -1 enter
5 - menu
1 - stop
4 - left
6 - right
8 - play volume plus
2 - play volume minus
*/

function recordReaction(key, viewSwitcher){
    switch(key){
    case Qt.Key_1:
        viewSwitcher.switchView(browserView, false);
        console.log("to browserView");
        break;
    case Qt.Key_5:
        recMenuView.viewTitle = "Record menu";
        //TODO сделать отдельное RecMenuView со свойством useModel
        //расширить структуру меню
        RecMenu.dd();
        viewSwitcher.switchView(recMenuView, false);
        console.log("to menu");
        break;
    }
}
function playReaction(key, viewSwitcher){
    switch(key){
    case Qt.Key_1:
        viewSwitcher.switchView(browserView, false);
        console.log("to browserView");
        break;
    case Qt.Key_5:
        playMenuView.viewTitle = "Play menu";
        viewSwitcher.switchView(playMenuView, false);
        console.log("to menu");
        break;
    }
}

function browserReaction(key, viewSwitcher){
    switch(key){
    case Qt.Key_7:
        viewSwitcher.switchView(playView, false);
        console.log("to playView");
        break;
    case Qt.Key_9:
        viewSwitcher.switchView(recordView, false);
        console.log("to recordView");
        break;
    case Qt.Key_5:
        browserMenuView.viewTitle = "Browser menu";
        viewSwitcher.switchView(browserMenuView, false);
        console.log("to menu");
        break;
    }
}

function insertReaction(key, viewSwitcher){

}

function browserMenuReaction(key, viewSwitcher){
    switch(key){
    case Qt.Key_5:
        //viewSwitcher.previousView.viewTitle =
        //menu.viewTitle = "Record menu"
        viewSwitcher.switchView(viewSwitcher.previousView, false);
        console.log("to view");
        break;
    //TODO удалить неиспользуемые направления
    case Qt.Key_6:
    case Qt.Key_8:
    case Qt.Key_Up:
    case Qt.Key_Right:
        viewSwitcher.currentView.usedMenu.decrementCurrentIndex();
        break;
    case Qt.Key_4:
    case Qt.Key_2:
    case Qt.Key_Down:
    case Qt.Key_Left:
        viewSwitcher.currentView.usedMenu.incrementCurrentIndex();
    }
}
function recMenuReaction(key, viewSwitcher){
    switch(key){
    case Qt.Key_5:
        //viewSwitcher.previousView.viewTitle =
        //menu.viewTitle = "Record menu"
        viewSwitcher.switchView(viewSwitcher.previousView, false);
        console.log("to view");
        break;
    //TODO удалить неиспользуемые направления
    case Qt.Key_6:
    case Qt.Key_8:
    case Qt.Key_Up:
    case Qt.Key_Right:
        viewSwitcher.currentView.usedMenu.decrementCurrentIndex();
        break;
    case Qt.Key_4:
    case Qt.Key_2:
    case Qt.Key_Down:
    case Qt.Key_Left:
        viewSwitcher.currentView.usedMenu.incrementCurrentIndex();
    }
}

function playMenuReaction(key, viewSwitcher){
    switch(key){
    case Qt.Key_5:
        //viewSwitcher.previousView.viewTitle =
        //menu.viewTitle = "Record menu"
        viewSwitcher.switchView(viewSwitcher.previousView, false);
        console.log("to view");
        break;
    //TODO удалить неиспользуемые направления
    case Qt.Key_6:
    case Qt.Key_8:
    case Qt.Key_Up:
    case Qt.Key_Right:
        viewSwitcher.currentView.usedMenu.decrementCurrentIndex();
        break;
    case Qt.Key_4:
    case Qt.Key_2:
    case Qt.Key_Down:
    case Qt.Key_Left:
        viewSwitcher.currentView.usedMenu.incrementCurrentIndex();
    }
}

function func(key, viewSwitcher) {
    switch(viewSwitcher.currentView){
    case recordView:        
        console.log("recordView");
        recordReaction(key, viewSwitcher);
        break;
    case playView:        
        console.log("playView");
        playReaction(key, viewSwitcher);
        break;
    case browserView:        
        console.log("browserView");
        browserReaction(key, viewSwitcher);
        break;
    case insertDeviceView:        
        console.log("insertDeviceView");
        insertReaction(key, viewSwitcher);
        break;
    case recMenuView:
        console.log("RecMenu");
        recMenuReaction(key, viewSwitcher);
        break;
    case playMenuView:
        console.log("PlayMenu");
        playMenuReaction(key, viewSwitcher);
        break;
    case browserMenuView:
        console.log("BrowserMenu");
        browserMenuReaction(key, viewSwitcher);
        break;
    default:
        console.log("default");
        break;
    }
/*
    if(key == Qt.Key_9){//RecordWindow
        if(curView != recordView){
            viewSwitcher.switchView(recordView, false);   // roll the views left to right
            console.log("toRecordView");
        }

        //var newBlock = component.createObject(insertDeviceWindow);
        //if(newBlock == null)
        //{
        //    return false;
       // }
        var numState = Math.random(4)*4;
        if(numState > 2){
            console.log("state 0");
            newBlock.state='';
        }else if(numState > 2){
            console.log("state 1");
            newBlock.state='Recording';
        }else if(numState > 1){
            console.log("state 2");
            newBlock.state='4ChPause';
        }else{
            console.log("state 3");
            newBlock.state='4ChPause';
        }
    }else{
        if(curView == recordView)
            console.log("zz");
        else
            console.log("2zz2");
    }
*/
    return true;
}

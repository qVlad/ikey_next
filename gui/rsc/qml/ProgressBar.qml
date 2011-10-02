import QtQuick 1.0
import "ProgressBarConstants.js" as Constants

Item {
    id: progressBar

    property bool indeterminate: false
    property real minimumValue: 0.0
    property real maximumValue: 1.0
    property real value: 0
    property string progressColor: Constants.DEFAULT_LIGHT_COLOR
    property string readyColor: Constants.ACCENT_LIGHT_COLOR

    height: 6

    Behavior on value { SmoothedAnimation { velocity: 500 } }

    Rectangle {
        id: shadowRectangle
        anchors.fill: parent
        radius: height / 2
        color: value < maximumValue ? progressColor : readyColor;
        opacity: Constants.SHADOW_OPACITY
        smooth: true
    }

    Rectangle {
        id: bar

        property string barColor: value < maximumValue ? progressColor : readyColor;

        width: shadowRectangle.height - 2
        height: shadowRectangle.width - 2
        anchors.centerIn: parent
        radius: shadowRectangle.radius
        rotation: -90
        smooth: true

        gradient: Gradient {
            GradientStop { position: 0.0; color: bar.barColor }
            GradientStop {
                position: value < maximumValue ? value : maximumValue;
                color: bar.barColor
            }
            GradientStop {
                position: value < maximumValue ? value + 0.01 : maximumValue;
                color: value < maximumValue ?
                           Constants.DEFAULT_BACKGROUND_COLOR :
                           bar.barColor
            }
            GradientStop {
                position: 1.0;
                color: value < maximumValue ?
                           Constants.DEFAULT_BACKGROUND_COLOR :
                           bar.barColor
            }
        }
    }
}

// End of file.

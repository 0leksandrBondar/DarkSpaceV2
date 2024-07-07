import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Basic

import Theme 1.0

Button
{
    id: button

    property string buttonText  : qsTr("default")
    property color unhoveredBackgroundColor  : Theme.buttonUnhoveredBackgroundColor
    property color hoveredBackgroundColor  : Theme.buttonHoveredBackgroundColor
    property color hoveredTextColor  : Theme.buttonHoveredTextColor
    property color unhoveredTextColor  : Theme.buttonUnhoveredTextColor
    property int buttonRadius : 30

    width: 150
    height: 70
    text: buttonText
    contentItem : Text
    {
        text: button.text
        color: button.hovered ?  hoveredTextColor : unhoveredTextColor
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 17
    }
    background: Rectangle
    {
        radius: buttonRadius
        opacity: button.hovered ? 0.7 : 0.9
        color: button.hovered ? hoveredBackgroundColor : unhoveredBackgroundColor
    }
}
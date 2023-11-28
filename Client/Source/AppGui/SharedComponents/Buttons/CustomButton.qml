import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Basic

Button
{
    id: button

    property string buttonText  : qsTr("default")
    property color unhoveredBackgroundColor  : "#1b1c1f"
    property color hoveredBackgroundColor  : "#00ff95"
    property color hoveredTextColor  : "#1b1c1f"
    property color unhoveredTextColor  : "#00ff95"
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
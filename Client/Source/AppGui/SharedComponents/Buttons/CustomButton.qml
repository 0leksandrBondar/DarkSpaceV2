import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Basic

Button
{
    id: button

    property string buttonText

    width: 150
    height: 70
    text: buttonText
    contentItem : Text
    {
        text: button.text
        color: button.hovered ?  "#1b1c1f" : "#00ff95"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 17
    }
    background: Rectangle
    {
        radius: 30
        opacity: button.hovered ? 0.7 : 0.9
        color: button.hovered ? "#00ff95" : "#1b1c1f"
    }
}
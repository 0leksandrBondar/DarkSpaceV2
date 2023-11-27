import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

Rectangle
{
    id: chatBlock
    property string title

    width: parent.width
    height: 60
    color: Material.background

    Text
    {
        id: chatTitle
        text: title
        anchors.centerIn: parent
        color: "#00e8d1"
        font.pointSize: 15
    }
    MouseArea
    {
        anchors.fill: parent
        hoverEnabled: true
        onEntered:
        {
            chatBlock.color = "#434543"
        }
        onExited:
        {
            chatBlock.color = Material.background
        }
    }
}
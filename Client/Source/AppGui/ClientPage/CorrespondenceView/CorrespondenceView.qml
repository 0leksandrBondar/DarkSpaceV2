import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

Rectangle
{
    color:  Material.background

    ChatPersonalBar
    {

    }

    InputMessageField
    {
        id: inputField
        width: parent.width
        height: 50
        anchors.bottom: parent.bottom
    }
}
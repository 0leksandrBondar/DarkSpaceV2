import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

Rectangle
{
    color:  Material.background

    ChatPersonalBar
    {
        id: personalBar
    }

    CorrespondenceScene
    {
        id: correspondensScene
        height: parent.height - personalBar.height
        anchors.top: personalBar.bottom
        anchors.bottom: inputField.top
    }


    InputMessageField
    {
        id: inputField
        width: parent.width
        height: 50
        anchors.bottom: parent.bottom
    }
}
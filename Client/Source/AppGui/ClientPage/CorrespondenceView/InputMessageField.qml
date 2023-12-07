import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

import "../../SharedComponents/Buttons"
import "../../SharedComponents/TextEditors"

Rectangle
{
    id: inputMessageField
    color:  "#282e33"
    radius: 10

    CustomTextEditor
    {
        id:textEditor
        anchors.right: fileButton.left
    }

    CustomButton
    {
        id: sendButton
        width: 60
        height: 50
        buttonRadius: 10
        buttonText: qsTr("send")
        unhoveredBackgroundColor: "#282e33"
        hoveredBackgroundColor: "#282e33"
        unhoveredTextColor: "#3cb3a4"
        hoveredTextColor: "#3cb3f4"
        anchors.right: parent.right
        anchors.bottom: parent.bottom
    }
    CustomButton
    {
        id: fileButton
        width: 60
        height: 50
        buttonRadius: 10
        buttonText: qsTr("file")
        unhoveredBackgroundColor: "#282e33"
        hoveredBackgroundColor: "#282e33"
        unhoveredTextColor: "#3cb3a4"
        hoveredTextColor: "#3cb3f4"
        anchors.right: sendButton.left
        anchors.bottom: parent.bottom
    }
}
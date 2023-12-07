import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

import Theme 1.0

import "../../SharedComponents/Buttons"
import "../../SharedComponents/TextEditors"

Rectangle
{
    id: inputMessageField
    color:  Theme.inputMessageFieldColor
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
        unhoveredBackgroundColor: Theme.sendButtonUnhoveredBackgroundColor
        hoveredBackgroundColor: Theme.sendButtonHoveredBackgroundColor
        unhoveredTextColor: Theme.sendButtonUnhoveredTextColor
        hoveredTextColor: Theme.sendButtonHoveredTextColor
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
        unhoveredBackgroundColor: Theme.fileButtonUnhoveredBackgroundColor
        hoveredBackgroundColor: Theme.fileButtonHoveredBackgroundColor
        unhoveredTextColor: Theme.fileButtonUnhoveredTextColor
        hoveredTextColor: Theme.fileButtonHoveredTextColor
        anchors.right: sendButton.left
        anchors.bottom: parent.bottom
    }
}
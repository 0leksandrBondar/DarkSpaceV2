import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Basic

import Theme 1.0

import "../../SharedComponents/Buttons"
import "../../SharedComponents/TextEditors"

Rectangle
{
    signal sendButtonClicked(string text)

    id: inputMessageField
    color:  Theme.inputMessageFieldColor
    radius: 10

    CustomTextEditor
    {
        id:textEditor
        anchors.right: fileButton.left
    }

    Button
    {
        id: sendButton

        width: 50
        height: 50
        anchors.right: parent.right
        icon.source: Theme.iconSendPath
        background: Rectangle
        {
            color: Theme.inputMessageFieldColor
        }

        onClicked: {
            sendButtonClicked(textEditor.text);
            textEditor.clear()
        }
    }

    Button
    {
        id: fileButton
        width: 50
        height: 50
        anchors.right: sendButton.left
        icon.source: Theme.iconFolderPath
        background: Rectangle
        {
            color: Theme.inputMessageFieldColor
        }
    }
}
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

import "../../SharedComponents/Buttons"
import "../../SharedComponents/TextEditors"

Rectangle
{
    id: inputMessageField
    color:  "#29272e"
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
        unhoveredBackgroundColor: "#29272e"
        hoveredBackgroundColor: "#29272e"
        unhoveredTextColor: "#05b56c"
        hoveredTextColor: "#00ff95"
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
        unhoveredBackgroundColor: "#29272e"
        hoveredBackgroundColor: "#29272e"
        unhoveredTextColor: "#05b56c"
        hoveredTextColor: "#00ff95"
        anchors.right: sendButton.left
        anchors.bottom: parent.bottom
    }
}
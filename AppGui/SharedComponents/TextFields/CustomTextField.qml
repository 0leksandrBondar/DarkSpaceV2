import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Basic
import QtQuick.Controls.Material 2.15

import Theme 1.0

TextField
{
    id: textField
    property string textPlaceholder

    width: 500
    height: 50
    font.pointSize: 20
    background: Rectangle
    {
        color: Material.background
        radius: 20
        border.color: Theme.labelColor
        border.width: 1
    }

    PlaceholderText
    {
        opacity: 0.8
        id: placeholderText
        color: Theme.labelColor
        font.pointSize: parent.font.pointSize
        text: textPlaceholder
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 15
        visible: !textField.activeFocus || (textField.activeFocus && textField.text.length === 0)
    }

    onActiveFocusChanged:
    {
        if (textField.activeFocus)
            placeholderText.visible = false;
        else
            placeholderText.visible = textField.text.length === 0;
    }
}

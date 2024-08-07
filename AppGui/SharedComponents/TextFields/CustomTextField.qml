import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Basic
import QtQuick.Controls.Material 2.15

import Theme 1.0

TextField {
    id: textField
    property string textPlaceholder: "Enter your text here"
    property int placeholderFontSize: 0
    property color placeholderColor: "gray"

    width: 500
    height: 50
    font.pointSize: 20
    background: Rectangle {
        color: Material.background
        radius: 20
        border.color: Theme.labelColor
        border.width: 1
    }

    Label {
        id: placeholderLabel
        opacity: 0.8
        color: textField.placeholderColor
        font.pointSize: textField.placeholderFontSize === 0 ? textField.font.pointSize : textField.placeholderFontSize
        text: textField.textPlaceholder
        anchors.verticalCenter: textField.verticalCenter
        anchors.left: textField.left
        anchors.leftMargin: 15
        visible: textField.text.length === 0
    }

    onTextChanged: {
        placeholderLabel.visible = textField.text.length === 0
    }

    onActiveFocusChanged: {
        placeholderLabel.visible = !textField.activeFocus && textField.text.length === 0
    }
}

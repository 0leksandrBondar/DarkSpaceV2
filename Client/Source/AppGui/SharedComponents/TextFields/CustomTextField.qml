import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Basic
import QtQuick.Controls.Material 2.15

TextField
{
    id: emailField

    property string textPlacehodel

    width: 500
    height: 50
    font.pointSize: 20
    background: Rectangle
    {
        color: Material.Dark
        radius: 20
        border.color: "#00ff95"
        border.width: 1
    }
    PlaceholderText
    {
        opacity: 0.8
        id: placeholderText
        color: "#00ff95"
        font.pointSize: 20
        text: textPlacehodel
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 10
    }
    onActiveFocusChanged:
    {
        if (activeFocus)
            placeholderText.text = "";
    }
}
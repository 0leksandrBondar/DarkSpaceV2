import QtQuick 2.15
import QtQuick.Controls 2.15

import Theme 1.0

Rectangle
{
    width: parent.width
    height: 50
    color: Theme.inputMessageFieldColor

    property string optionName : "none"
    property string pathToComponent : "none"

    Image
    {
        id: icon
        width: 40
        height: 40
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        source: model.icon
    }

    Text
    {
        id: optionNameDisplay
        text: optionName
        color: "white"
        font.pointSize: 14
        anchors.left: icon.right
        anchors.leftMargin: 10
        anchors.verticalCenter: parent.verticalCenter
    }
    MouseArea
    {
        anchors.fill: parent
        hoverEnabled: true
        onEntered:
        {
            parent.color = Theme.onHoveredButtonColor
        }
        onExited:
        {
            parent.color = Theme.inputMessageFieldColor
        }
        onClicked:
        {
            var  component = Qt.createComponent(pathToComponent);
            if (component.status === Component.Ready)
            {
                var dialog = component.createObject(parent);
                dialog.open();
            }
        }
    }
}


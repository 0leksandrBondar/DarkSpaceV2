import QtQuick 2.15
import QtQuick.Controls 2.15

import Theme 1.0

Rectangle
{
    width: parent.width
    height: 40
    color: Theme.inputMessageFieldColor

    property string optionName : "none"
    property string pathToComponent : "none"
    property color onHoveredColor : "#434543"

    Text
    {
        id: optionNameDisplay
        text: optionName
        color: "white"
        font.pointSize: 14
        anchors.verticalCenter: parent.verticalCenter
    }
    MouseArea
    {
        anchors.fill: parent
        hoverEnabled: true
        onEntered:
        {
            parent.color = onHoveredColor
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


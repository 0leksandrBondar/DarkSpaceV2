import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Basic

import Theme 1.0

Rectangle
{
    width: 50
    height: parent.height
    color: Theme.correspondenceSceneBackgroundColor

    Button
    {
        id: moreButton
        width: 50
        height: 50
        icon.source: Theme.iconMorePath
        anchors.top: parent.top
        background: Rectangle
        {
            color: moreButton.hovered ? "#434543" : Theme.correspondenceSceneBackgroundColor
        }
    }
}

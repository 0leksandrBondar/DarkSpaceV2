import QtQuick 2.15
import QtQuick.Controls 2.15

import Theme 1.0

Rectangle
{
    width: parent.width
    height: 50
    anchors.top: parent.top
    color: Theme.personalBarColor
    Text
    {
        width: parent.width / 3
        height: parent.height
        leftPadding: 20
        font.pointSize: 16
        color: Theme.personalBarTextColor
        text: qsTr("Sample chat name")
        verticalAlignment: Text.AlignVCenter
    }
}
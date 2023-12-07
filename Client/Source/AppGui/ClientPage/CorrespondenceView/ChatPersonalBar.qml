import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle
{
    width: parent.width
    height: 50
    anchors.top: parent.top
    color:  "#282e33"
    Text
    {
        width: parent.width / 3
        height: parent.height
        leftPadding: 20
        font.pointSize: 16
        color: "white"
        text: qsTr("Sample chat name")
        verticalAlignment: Text.AlignVCenter
    }
}
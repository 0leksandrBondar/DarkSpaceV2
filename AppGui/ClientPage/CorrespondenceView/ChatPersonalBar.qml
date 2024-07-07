import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Basic

import Theme 1.0

Rectangle
{
    width: parent.width
    height: 50
    anchors.top: parent.top
    color: Theme.personalBarColor

    property int space: 10

    function setRecieverName(name)
    {
        recieverName.text = name
    }

    Text
    {
        id: recieverName
        width: parent.width / 3
        height: parent.height
        leftPadding: 20
        font.pointSize: 16
        color: Theme.personalBarTextColor
        text: qsTr("Sample chat name")
        verticalAlignment: Text.AlignVCenter
    }

    Button
    {
        id: interlocutorInfoButton
        width: 50;
        height: parent.height
        anchors.right: parent.right
        icon.source: Theme.iconInfoPath
        background: Rectangle
        {
            color: Theme.personalBarColor
        }
    }
    Button
    {
        id: searchButton
        width: 50;
        height: parent.height
        anchors.right: interlocutorInfoButton.left
        icon.source: Theme.iconSearchPath
        background: Rectangle
        {
            color: Theme.personalBarColor
        }
    }
    Button
    {
        id: callButton
        width: 70;
        height: parent.height
        anchors.right: searchButton.left
        icon.source: Theme.iconPhonePath
        background: Rectangle
        {
            color: Theme.personalBarColor
        }
    }
}

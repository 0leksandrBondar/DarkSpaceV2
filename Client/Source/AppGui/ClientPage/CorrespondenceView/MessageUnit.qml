import QtQuick 2.15
import QtQuick.Controls 2.15

import Theme 1.0

Rectangle {
    id: messageBox

    property int maxWidth: 350
    property int radius_: 10
    property string message: qsTr("default")
    property string owner: qsTr("default")
    property string currentTimeValue: ""
    property bool isSenderMe: false
    property int ownerNameTextSize: 15
    property int ownerNameLeftPadding: 10
    property int ownerNameTopPadding: 1
    property int messagetTextTopPadding: 1
    property int messagetTextLeftPadding: 10
    property int messageBoxHeight: ownerName.height + messageText.height + 10

    width: calculateWidth()

    function calculateWidth() {
        if (messageText.width < ownerName.width)
            return ownerName.width + 20;
        else if (messageText.width <= maxWidth)
            return messageText.width;
        else
            return maxWidth;
    }

    height: messageBoxHeight
    color: isSenderMe ? Theme.messageColor : Theme.interlocutorsMessageColor

    radius: radius_

    Canvas {
        id: triangle
        property int triangleWidth: 40
        property int triangleHeight: 5
        width: triangleWidth
        height: messageBox.height
        anchors.left: messageBox.left

        onPaint: {
            drawTriangle()
        }
        function drawTriangle() {
            var ctx = getContext("2d");
            ctx.beginPath();
            ctx.moveTo(0, height);
            ctx.lineTo(triangleWidth, height - triangleHeight);
            ctx.lineTo(0, height - triangleWidth);
            ctx.closePath();
            ctx.fillStyle = messageBox.color;
            ctx.fill();
        }
    }

    TextMetrics
    {
        id: textMetrics
        text: messageBox.message
        font: messageText.font
    }

    Text
    {
        id: ownerName
        font.bold: true
        color: isSenderMe ? Theme.ownerNameColor : Theme.interlocutorsNameColor
        anchors.top: parent.top
        topPadding: ownerNameTopPadding
        leftPadding: ownerNameLeftPadding
        text: messageBox.owner
        wrapMode: Text.WordWrap
        font.pixelSize: ownerNameTextSize
    }

    Text
    {
        id: messageText
        text: messageBox.message
        anchors.top: ownerName.bottom
        topPadding: messagetTextTopPadding

        leftPadding: messagetTextLeftPadding
        color: Theme.messageTextColor
        wrapMode: Text.WordWrap
        width: textMetrics.width >= maxWidth ? maxWidth : textMetrics.width + 50
        font.pixelSize: 15
    }

    Text
    {
        id: timeIndicator
        text: currentTimeValue
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        bottomPadding: 5
        rightPadding: 5
        color: Theme.timeIndicatorTextColor
        font.pixelSize: 10
    }
}

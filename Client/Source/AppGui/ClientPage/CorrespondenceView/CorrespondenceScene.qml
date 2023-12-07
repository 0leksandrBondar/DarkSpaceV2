import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

import Theme 1.0

import "../../SharedComponents/ScrollBars"

Rectangle
{
    id: correspondensScene

    property var message: null

    width: parent.width
    height: listView.contentHeight
    anchors.bottom: inputField.top
    color: Theme.correspondenceSceneBackgroundColor

    ListModel
    {
        id: listModel
    }

    ListView
    {
        id: listView
        clip: true
        boundsBehavior: Flickable.StopAtBounds
        model: listModel
        spacing: 5

        anchors
        {
            fill: parent
            bottom: parent.bottom
            left: parent.left
            leftMargin: 10
            topMargin: 2
        }

        delegate: MessageUnit
        {
            message: model.message
            owner: model.owner
            currentTimeValue: model.currentTimeValue
            isSenderMe: model.isSenderMe
        }

        ScrollBar.vertical: CustomScrollBar
        {

        }
    }

    //TODO: A message should be created when the send button is pressed.
    Component.onCompleted:
    {
        listModel.append({"owner": "Serhii", "message": "Hi", "currentTimeValue": Qt.formatDateTime(new Date(),  "hh:mm"), "isSenderMe": true})
        listModel.append({"owner": "Valerii", "message": "Who are you?", "currentTimeValue": Qt.formatDateTime(new Date(), "hh:mm"), "isSenderMe": false})
        listModel.append({"owner": "Serhii", "message": "I`m Serhii", "currentTimeValue": Qt.formatDateTime(new Date(), "hh:mm"), "isSenderMe": true})
    }
}
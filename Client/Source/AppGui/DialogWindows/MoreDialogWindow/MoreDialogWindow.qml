import QtQuick 2.15
import QtQuick.Controls 2.15
import Theme 1.0

Dialog
{
    modal: true
    background: Rectangle
    {
        color: Theme.inputMessageFieldColor
    }

    ListView
    {
        id: optionView
        clip: true
        anchors.fill: parent
        model: OptionList {}
        orientation: Qt.Vertical
        boundsBehavior: Flickable.StopAtBounds
        delegate: OptionBlock
        {
            optionName: model.optionName
        }
    }
}
 
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

import Theme 1.0
import "../../SharedComponents/TextFields"

Rectangle
{
    color: Material.background

    signal searchLineChanged(string value)

    CustomTextField
    {
        width: parent.width / 1.1
        height: 40
        anchors.centerIn: parent
        textPlaceholder: qsTr("Search")
        font.pointSize: 10
        onTextChanged: searchLineChanged(text)
    }
}

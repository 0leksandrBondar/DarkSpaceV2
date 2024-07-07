import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

import "./ViewControllers"

ApplicationWindow
{
    id: appWindow
    visible: true
    width: 900
    height: 900
    minimumWidth: 850
    minimumHeight: 700
    title: qsTr("DarkSpace")

    Material.theme: Material.Dark

    PageSwitcher
    {
    }
}

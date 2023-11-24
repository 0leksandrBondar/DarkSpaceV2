import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

import "./SignInPages"

ApplicationWindow
{
    id: appWindow
    visible: true
    width: 900
    height: 900
    title: qsTr("DarkSpace")

    Material.theme: Material.Dark

//    SignInPage
//    {
//
//    }

    WelcomePage
    {

    }
}
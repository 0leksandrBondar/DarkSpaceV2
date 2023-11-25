import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Basic

import "../"
import "../SignInPages"

StackView
{
    id: pageSwitcher

    initialItem: welcomePage
    anchors.fill : parent
    Component
    {
        id: welcomePage
        WelcomePage
        {
            onLogInClicked:
            {
                pageSwitcher.push(signInPage)
            }
        }
    }
    Component
    {
        id: signInPage
        SignInPage
        {
            onBackClicked:
            {
                pageSwitcher.pop()
            }
        }
    }
}

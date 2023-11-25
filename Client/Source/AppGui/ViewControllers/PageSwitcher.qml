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
                pageSwitcher.push(logInPage)
            }
            onSingUpClicked:
            {
                pageSwitcher.push(signUpPage)
            }
        }
    }

    Component
    {
        id: logInPage
        SignInPage
        {
            onBackClicked:
            {
                pageSwitcher.pop()
            }
        }
    }
    Component
    {
        id: signUpPage
        SignUpPage
        {
            onBackClicked:
            {
                pageSwitcher.pop()
            }
        }
    }
}

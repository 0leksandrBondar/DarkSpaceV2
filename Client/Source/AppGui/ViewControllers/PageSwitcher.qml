import QtQuick 2.15
import QtQuick.Controls 2.15

import "../"
import "../ClientPage"
import "../SignInPages"

StackView
{
    id: pageSwitcher

    initialItem: clientPage
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
    Component
    {
        id: clientPage
        ClientPage
        {
        }
    }
}

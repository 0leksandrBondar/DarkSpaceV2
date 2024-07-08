import QtQuick 2.15
import QtQuick.Controls 2.15

import "../ClientPage"
import "../SignInPages"
import "../"

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
            onLogInClicked:
            {
                pageSwitcher.push(clientPage)
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
            onSignUpClicked:
            {
                pageSwitcher.push(clientPage)
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

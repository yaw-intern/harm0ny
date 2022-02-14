import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

ApplicationWindow{
    id: window
    width: 400
    height: 580
    visible: true
    title: qsTr("Harm0ny Login")

    //SET FLAGS
    flags: Qt.WindowCloseButtonHint | Qt.WindowMinimizeButtonHint | Qt.CustomizeWindowHint | Qt.Dialog | Qt.WindowTitleHint

    //SET MATERIAL STYLE
    Material.theme: Material.Dark
    Material.accent: Material.LightBlue

   

    //Image Import
    Image{
        id: image
        
        source: "../images/logo.png"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 60
    }

    //Text Field Username
    TextField{
        id: usernameField
        width: 300
        text: qsTr("")
        selectByMouse: true
        placeholderText: qsTr("Your username or email...")
        verticalAlignment: Text.AlignVCenter
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: image.bottom
        anchors.topMargin: 60
    }

    TextField{
        id: passwordField
        width: 300
        text: qsTr("")
        selectByMouse: true
        placeholderText: qsTr("Enter your password...")
        verticalAlignment: Text.AlignVCenter
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: usernameField.bottom
        anchors.topMargin: 10
        echoMode: TextInput.Password
    }

    CheckBox{
        id: checkBox
        text: qsTr("Save Password")
        anchors.top: passwordField.bottom
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 40
    }

    Button{
        id: buttonLogin
        width: 300
        text: qsTr("Login")
        anchors.top: checkBox.bottom
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 50
    }
}

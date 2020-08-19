import QtQuick 2.0
import "../styles"

Rectangle {
    color: Styles.backgroundColor

    Image {
        id: iconImage
        height: topSidePannelHeigh
        width: parent.width

        anchors.top: parent.top

        source: "qrc:/resources/images/Stonks.jpg"
    }

    Image {
        height: parent.height * 0.5
        width: parent.width

        anchors.top: iconImage.bottom

        source: "qrc:/resources/images/Navigation.png"
    }

    Row {
        height: parent.height * 0.1
        width: parent.width * 0.99

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: parent.height * 0.01
        spacing: 3

        ButtonControl {
            height: parent.height * 0.8
            width: (parent.width / 3) * 0.99

            textValue: "ACCEPT"
            onClicked: console.log(textValue)
        }
        ButtonControl {
            height: parent.height * 0.8
            width: (parent.width / 3) * 0.99

            textValue: "REJECT"
            onClicked: console.log(textValue)
        }
        ButtonControl {
            height: parent.height * 0.8
            width: (parent.width / 3) * 0.99

            textValue: "SKIP"
            onClicked: console.log(textValue)
        }
    }
}

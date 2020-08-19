import QtQuick 2.0

Item {

    property string imagePath: "qrc:/resources/images/Results"
    property string imagePathExt: ".png"

    height: dashboardMain.topSidePannelHeigh
    width: (PathRole == "1") ? dashboardMain.topSidePannelWidth * 0.25 : dashboardMain.topSidePannelWidth * 0.1

    Image {
        anchors.fill: parent
        source: imagePath + PathRole + imagePathExt
    }
}

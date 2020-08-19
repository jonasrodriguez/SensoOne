import QtQuick 2.0
import "menu/"

Item {
    id: dashboardMain
    anchors.fill: parent

    property real topSidePannelHeigh: dashboardMain.height * 0.1
    property real topSidePannelWidth: dashboardMain.width - rightSidePannelWidth

    property real leftSidePannelHeight: dashboardMain.height - topSidePannelHeigh
    property real leftSidePannelWidth: dashboardMain.width * 0.08

    property real rightSidePannelHeigh: dashboardMain.height
    property real rightSidePannelWidth: dashboardMain.width * 0.2

    // Results bar -- Top side
    ResultsBar {
        id: resultsBar
        height: topSidePannelHeigh
        width: topSidePannelWidth

        anchors.top: dashboardMain.top
        anchors.left: dashboardMain.left
    }
    // Zoom bar -- Left side
    ZoomBar {
        id: zoomBar
        height: leftSidePannelHeight
        width: leftSidePannelWidth

        anchors.left: dashboardMain.left
        anchors.bottom: dashboardMain.bottom
    }
    // Navigation bar -- Right side
    NavigationBar {
        id: navigationBar
        height: rightSidePannelHeigh
        width: rightSidePannelWidth

        anchors.right: dashboardMain.right
    }
    // Main Screen -- Central
    MainScreen {
        height: dashboardMain.height - topSidePannelHeigh
        width: dashboardMain.width - leftSidePannelWidth - rightSidePannelWidth

        anchors.top: resultsBar.bottom
        anchors.left: zoomBar.right
    }
}

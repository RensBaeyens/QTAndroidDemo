import QtQuick 2.9
import QtQuick.Controls 2.2
import QtLocation 5.9
import QtPositioning 5.8

ApplicationWindow {
    visible: true
    width: 640
    height: 360
    title: qsTr("Tabs")

    SwipeView {
        id: swipeView
        currentIndex: tabBar.currentIndex

        Page1Form {
            Item {
                id : leftTopButton
                MouseArea {
                    width:200; height: 200
                    onClicked: swipeView.incrementCurrentIndex()
                }
            }
            Item {
                id : rightTopButton
                MouseArea {
                    x:210;y:0
                    width:200; height: 200
                    onClicked: console.log("button2 clicked")
                }
            }
            Item {
                id : leftMiddleButton
                MouseArea {
                    x:0;y:210
                    width:200; height: 200
                    onClicked: console.log("button3 clicked")
                }
            }
            Item {
                id : rightMiddleButton
                MouseArea {
                    x:210;y:210
                    width:200; height: 200
                    onClicked: console.log("button4 clicked")
                }
            }
            Item {
                id : leftBottomButton
                MouseArea {
                    x:0;y:420
                    width:200; height: 200
                    onClicked: console.log("button5 clicked")
                }
            }
            Item {
                id : rightBottomButton
                MouseArea {
                    x:210;y:420
                    width:200; height: 200
                    onClicked: console.log("button6 clicked")
                }
            }
        }

        Page2Form {
            Plugin {
                id:mapPlugin
                name: "osm"
            }
            Map {
                    anchors.fill: parent
                    plugin: mapPlugin
                    center: QtPositioning.coordinate(45.464211, 9.191383) // Milan Duomo
                    zoomLevel: 14
            }
        }
        Page3Form{

        }
    }
    header: Image {
        id: image
        source: "HRLogo.png"
    }

//    footer: TabBar {
//        id: tabBar
//        currentIndex: swipeView.currentIndex

//        TabButton {
//            text: qsTr("Timeline")
//        }
//        TabButton {
//            text: qsTr("Milan Map")
//        }
//        TabButton {
//            text: qsTr("Sponsors")
//        }
//    }
}

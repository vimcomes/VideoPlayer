import QtQuick
import QtQuick.Window
import QtQuick.Controls 2.12

Window {
    width: 325
    height: 200
    visible: true
    title: qsTr("Video Player")

    Rectangle {
        color: "#a9a9a9"
        width: 320; height: 113
        anchors.horizontalCenter: parent.horizontalCenter
    }

   Text {
       id:text
       text:"..."
       font.pointSize:30
       anchors.horizontalCenter: parent.horizontalCenter
       anchors.verticalCenter: parent.verticalCenter
       anchors.verticalCenterOffset:-40
       anchors.leftMargin: 100;
   }

    Button {
        id: play
        text: "▶️"
        font.pointSize: 30
        width: 65
        height:65
        //anchors.bottom:parent.bottom
        anchors.bottom: progress_bar.top
        onClicked: {text.text = "Play";}
    }

    Button {
        id: pause
        text: "⏸️"
        font.pointSize: 30
        width: 65
        height:65
        //anchors.bottom:parent.bottom
        anchors.bottom: progress_bar.top
        anchors.left: play.right
        onClicked: {text.text = "Pause";}
    }

    Button {
        id: stop
        text: "⏹"
        font.pointSize: 30
        width: 65
        height:65
        //anchors.bottom:parent.bottom
        anchors.bottom: progress_bar.top
        anchors.left: pause.right
        onClicked: {text.text = "Stop";}
    }

    Button {
        id: rewind
        text: "⏪️"
        font.pointSize: 30
        width: 65
        height:65
        //anchors.bottom:parent.bottom
        anchors.bottom: progress_bar.top
        anchors.left: stop.right
        onClicked: {text.text = "Rewind";}
    }

    Button {
        id: forward
        text: "⏩️"
        font.pointSize: 30
        width: 65
        height:65
        //anchors.bottom:parent.bottom
        anchors.bottom: progress_bar.top
        anchors.left: rewind.right
        onClicked: {text.text = "Forward";}
    }

    ProgressBar {
        id: progress_bar
        width: 325
        height:20
        value: 0.0
        anchors.bottom:parent.bottom

    }

}

import QtQuick 1.1

Item {
    id: root
    width: 400; height: 400

    property real temperature: 0

    Rectangle {
        id: background
        anchors.fill: parent
        color: "black"

        Text {
            id: head
            width: background.width
            anchors.bottom: logo.top

            textFormat: Text.RichText
            style: Text.Sunken
            font.family: "Comic Sans MS"
            horizontalAlignment: Text.AlignHCenter
            font.pointSize: 12
            color: "#558ac0"
            smooth: true
            text: qsTr("<u>Температура около НГУ</u>")

            MouseArea {
                anchors.fill: head
                onClicked: Qt.openUrlExternally("http://weather.nsu.ru")
            }
        }

        LogoNSU {
            id: logo
            anchors.centerIn: background
            width: (root.width < root.height ? root.width : root.height) - 50
            height: width
        }

        Text {
            id: label
            anchors.centerIn: background
            textFormat: Text.RichText
            style: Text.Sunken
            font.family: "Comic Sans MS"
            horizontalAlignment: Text.AlignHCenter
            font.pointSize: 26
            color: "green"
            text: temperature + "&nbsp;&deg;C"
        }
    }

    XmlListModel {
        id: weatherModel
        source: "http://weather.nsu.ru/xml_brief.php"
        query: "/weather"

        XmlRole { name: "current"; query: "current/string()" }
        XmlRole { name: "average"; query: "average/string()" }

        onStatusChanged: {
            if (status == XmlListModel.Ready)
                temperature = get(0).current
        }
    }

    Timer {
        interval: 15*60*1000; running: true; repeat: true; // 15 min
        onTriggered: {
            weatherModel.reload()
        }
    }
}

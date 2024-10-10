import QtQuick 2.15
import QtQuick.Controls 2.15
import QtWebEngine 1.15

ApplicationWindow {
    visible: true
    width: 800
    height: 600
    title: "Qt WebAssembly Example"

    WebEngineView {
        id: webView
        anchors.fill: parent
        // url: Qt.resolvedUrl("file:///C:/Users/HP/Desktop/Wasm_qt/Raw_Image/libraw.html");
         url: Qt.resolvedUrl("libraw.html"); // Adjust this to your actual HTML file
        // Use onLoadingChanged to track loading state
        onLoadingChanged: {
            if (loading) {
                console.log("Loading...");
            } else {
                console.log("Finished loading.");
                // If you need to check for load success, you can handle it here
                console.log("URL loaded: " + url);
            }
        }
    }
}

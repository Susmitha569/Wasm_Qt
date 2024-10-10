#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtWebEngineQuick>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    // Register the Qt WebEngine module
    QtWebEngineQuick::initialize();

    QQmlApplicationEngine engine;

    // Load the QML file
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    // Check for errors loading QML
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}



#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "Results.h"

int main(int argc, char *argv[]) {
  QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

  QGuiApplication app(argc, argv);

  QQmlApplicationEngine engine;
  const QUrl url(QStringLiteral("qrc:/resources/main.qml"));
  qmlRegisterSingletonType(QUrl("qrc:/resources/Styles.qml"), "styles", 1, 0,
                           "Styles");
  qmlRegisterSingletonType<Results>("com.test.stonks", 1, 0, "Results",
                                    &Results::qmlInstance);
  QObject::connect(
      &engine, &QQmlApplicationEngine::objectCreated, &app,
      [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl) QCoreApplication::exit(-1);
      },
      Qt::QueuedConnection);
  engine.load(url);

  return app.exec();
}

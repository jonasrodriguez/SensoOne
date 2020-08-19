#pragma once
#include <QAbstractListModel>
#include <string>
#include <vector>

class QQmlEngine;
class QJSEngine;

class Results : public QAbstractListModel {
  Q_OBJECT

 public:
  enum { PathRole = Qt::UserRole };

  static Results *instance();
  static QObject *qmlInstance(QQmlEngine *engine, QJSEngine *scriptEngine);

  int rowCount(const QModelIndex &parent = QModelIndex()) const override;
  QVariant data(const QModelIndex &index,
                int role = Qt::DisplayRole) const override;
  QHash<int, QByteArray> roleNames() const override;

 public slots:
  void addNewResult();

 private:
  explicit Results(QObject *parent = nullptr);
  static Results *this_;
  std::vector<std::string> results_;
};

#include "Results.h"

#include <QQmlEngine>

Results *Results::this_ = nullptr;
Results::Results(QObject *parent) : QAbstractListModel(parent) {}

Results *Results::instance() {
  if (this_ == nullptr)  // avoid creation of new instances
    this_ = new Results;
  return this_;
}

QObject *Results::qmlInstance(QQmlEngine *engine, QJSEngine *scriptEngine) {
  Q_UNUSED(engine);
  Q_UNUSED(scriptEngine);
  // C++ and QML instance they are the same instance
  return Results::instance();
}

int Results::rowCount(const QModelIndex &parent) const {
  if (parent.isValid()) return 0;
  return static_cast<int>(results_.size());
}

QHash<int, QByteArray> Results::roleNames() const {
  QHash<int, QByteArray> names;
  names[PathRole] = "PathRole";

  return names;
}

QVariant Results::data(const QModelIndex &index, int role) const {
  if (!index.isValid()) return QVariant();

  if (index.row() > static_cast<int>(results_.size())) return QVariant();

  switch (role) {
    case PathRole:
      return results_.at(static_cast<size_t>(index.row())).c_str();
  }
  return QVariant();
}

void Results::AddNewResult() {
  int current_index = static_cast<int>(results_.size());
  beginInsertRows(QModelIndex(), current_index, current_index);
  results_.push_back("Holi");
  endInsertRows();
}

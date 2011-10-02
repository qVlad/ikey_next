#include "menumodel.h"

MenuElement::MenuElement(const QString &fullName,
                 const int &value)
    : m_fullName(fullName),
      m_value(value)
{
}

QString MenuElement::fullName() const
{
    return m_fullName;
}

int MenuElement::value() const
{
    return m_value;
}


MenuModel::MenuModel(QObject *parent)
    : QAbstractListModel(parent)
{
    QHash<int, QByteArray> roles;
    roles[FullNameRole] = "fullName";
    roles[ValueRole] = "value";
    setRoleNames(roles);
}

void MenuModel::addMenuElement(const MenuElement &MenuElement)
{
    beginInsertRows(QModelIndex(), rowCount(), rowCount());
    m_elements << MenuElement;
    endInsertRows();
}

int MenuModel::rowCount(const QModelIndex & /*parent*/) const
{
    return m_elements.count();
}

QVariant MenuModel::data(const QModelIndex & index, int role) const
{
    if (index.row() < 0 || index.row() > m_elements.count())
        return QVariant();

    const MenuElement &MenuElement = m_elements[index.row()];
    if (role == FullNameRole)
        return MenuElement.fullName();
    else if (role == ValueRole)
        return MenuElement.value();
    return QVariant();
}


#ifndef MENUMODEL_H
#define MENUMODEL_H
#include <QAbstractListModel>
#include <QStringList>

class MenuElement
{
public:
    MenuElement(const QString &fullName, const int &value);
    QString fullName() const;
    int value() const;
private:
    QString m_fullName;
    int m_value;
};

class MenuModel: public QAbstractListModel
{
    Q_OBJECT
public:
    enum MenuElementRoles {
        FullNameRole = Qt::UserRole + 1,
        ValueRole
    };
    MenuModel(QObject *parent = 0);

    void addMenuElement(const MenuElement &MenuElement);

    int rowCount(const QModelIndex & parent = QModelIndex()) const;

    QVariant data(const QModelIndex & index, int role = Qt::DisplayRole) const;

public slots:
    void dd(){qDebug("Message from QML");}
private:
    QList<MenuElement> m_elements;
};


#endif // MENUMODEL_H

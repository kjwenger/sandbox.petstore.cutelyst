#pragma once

#include <Cutelyst/Controller>

class User : public Cutelyst::Controller
{
    Q_OBJECT
public:
    explicit User(QObject * parent = 0);
    ~User();

    C_ATTR(index, :Path(/v2/user) :AutoArgs)
    void index(Cutelyst::Context * c);

    C_ATTR(createWithArray, :Path(/v2/user/createWithArray) :AutoArgs)
    void createWithArray(Cutelyst::Context * c);

    C_ATTR(createWithArray, :Path(/v2/user/createWithList) :AutoArgs)
    void createWithList(Cutelyst::Context * c);

    C_ATTR(login, :Path(/v2/user/login) :AutoArgs)
    void login(Cutelyst::Context * c);

    C_ATTR(logout, :Path(/v2/user/logout) :AutoArgs)
    void logout(Cutelyst::Context * c);
};

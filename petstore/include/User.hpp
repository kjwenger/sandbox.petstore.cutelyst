#pragma once

#include <Cutelyst/Controller>

class User : public Cutelyst::Controller
{
    Q_OBJECT
public:
    explicit User(QObject * parent = 0);
    ~User();

    C_ATTR(index, :Path(/user) :AutoArgs)
    void index(Cutelyst::Context * c);
};

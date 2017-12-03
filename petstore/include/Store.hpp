#pragma once

#include <Cutelyst/Controller>

class Store : public Cutelyst::Controller
{
    Q_OBJECT
public:
    explicit Store(QObject * parent = 0);
    ~Store();

    C_ATTR(index, :Path(/store) :AutoArgs)
    void index(Cutelyst::Context * c);
};

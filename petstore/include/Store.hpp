#pragma once

#include <Cutelyst/Controller>

class Store : public Cutelyst::Controller
{
    Q_OBJECT
public:
    explicit Store(QObject * parent = 0);
    ~Store();

    C_ATTR(inventory, :Path(/v2/store/inventory) :AutoArgs)
    void inventory(Cutelyst::Context * c);

    C_ATTR(order, :Path(/v2/store/order) :AutoArgs)
    void order(Cutelyst::Context * c);
};

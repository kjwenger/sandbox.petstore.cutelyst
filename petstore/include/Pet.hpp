#pragma once

#include <Cutelyst/Controller>

class Pet : public Cutelyst::Controller
{
    Q_OBJECT
public:
    explicit Pet(QObject * parent = 0);
    ~Pet();

    C_ATTR(index, :Path(/pet) :AutoArgs)
    void index(Cutelyst::Context * c);
};

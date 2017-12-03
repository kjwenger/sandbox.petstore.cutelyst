#pragma once

#include <Cutelyst/Controller>

class Pet : public Cutelyst::Controller
{
    Q_OBJECT
public:
    explicit Pet(QObject * parent = 0);
    ~Pet();

    C_ATTR(get, :Path(/v2/pet) :AutoArgs)
    void get(Cutelyst::Context * c, const QString & petId);

    C_ATTR(findByStatus, :Path(/v2/pet/findByStatus) :AutoArgs)
    void findByStatus(Cutelyst::Context * c);
};

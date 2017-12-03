#include "Pet.hpp"

Pet::Pet(QObject * parent) : Cutelyst::Controller(parent)
{
}

Pet::~Pet()
{
}

void Pet::index(Cutelyst::Context * c)
{
    c->response()->body() = "Matched Controller::Pet in Pet.";
}

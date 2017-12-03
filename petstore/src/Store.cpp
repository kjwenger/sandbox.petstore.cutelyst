#include "Store.hpp"

Store::Store(QObject * parent) : Cutelyst::Controller(parent)
{
}

Store::~Store()
{
}

void Store::index(Cutelyst::Context * c)
{
    c->response()->body() = "Matched Controller::Store in Store.";
}

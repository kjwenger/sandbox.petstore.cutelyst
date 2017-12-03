#include "Store.hpp"

Store::Store(QObject * parent) : Cutelyst::Controller(parent)
{
}

Store::~Store()
{
}

void Store::inventory(Cutelyst::Context * c)
{
    c->response()->body() = "{}";
}

void Store::order(Cutelyst::Context * c)
{
    c->response()->body() = "{}";
}

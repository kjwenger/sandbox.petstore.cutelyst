#include "Root.hpp"

Root::Root(QObject * parent) : Cutelyst::Controller(parent)
{
}

Root::~Root()
{
}

void Root::index(Cutelyst::Context * c)
{
    c->response()->body() = R"({"name": "petstore", "version": "0.0.1"})";
}

void Root::defaultPage(Cutelyst::Context * c)
{
    c->response()->body() = "";
    c->response()->setStatus(404);
}

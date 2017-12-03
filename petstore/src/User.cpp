#include "User.hpp"

User::User(QObject * parent) : Cutelyst::Controller(parent)
{
}

User::~User()
{
}

void User::index(Cutelyst::Context * c)
{
    c->response()->body() = "{}";
}

void User::createWithArray(Cutelyst::Context * c)
{
    c->response()->body() = "{}";
}

void User::createWithList(Cutelyst::Context * c)
{
    c->response()->body() = "{}";
}

void User::login(Cutelyst::Context * c)
{
    c->response()->body() = "{}";
}

void User::logout(Cutelyst::Context * c)
{
    c->response()->body() = "{}";
}

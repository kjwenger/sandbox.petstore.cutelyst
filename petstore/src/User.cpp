#include "User.hpp"

User::User(QObject * parent) : Cutelyst::Controller(parent)
{
}

User::~User()
{
}

void User::index(Cutelyst::Context * c)
{
    c->response()->body() = "Matched Controller::User in User.";
}

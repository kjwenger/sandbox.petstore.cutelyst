#include <Cutelyst/Plugins/StaticSimple/staticsimple.h>

#include "Application.hpp"
#include "Root.hpp"
#include "Pet.hpp"
#include "Store.hpp"
#include "User.hpp"

Application::Application(QObject * parent) : Cutelyst::Application(parent)
{
}

Application::~Application()
{
}

bool Application::init()
{
    new Root(this);
    new Pet(this);
    new Store(this);
    new User(this);

    new Cutelyst::StaticSimple(this);

    return true;
}


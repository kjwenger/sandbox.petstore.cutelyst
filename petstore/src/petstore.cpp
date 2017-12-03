#include "petstore.h"

#include <Cutelyst/Plugins/StaticSimple/staticsimple.h>

#include "root.h"

using namespace Cutelyst;

petstore::petstore(QObject *parent) : Application(parent)
{
}

petstore::~petstore()
{
}

bool petstore::init()
{
    new Root(this);

    new StaticSimple(this);

    return true;
}


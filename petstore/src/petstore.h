#ifndef PETSTORE_H
#define PETSTORE_H

#include <Cutelyst/Application>

using namespace Cutelyst;

class petstore : public Application
{
    Q_OBJECT
    CUTELYST_APPLICATION(IID "petstore")
public:
    Q_INVOKABLE explicit petstore(QObject *parent = 0);
    ~petstore();

    bool init();
};

#endif //PETSTORE_H


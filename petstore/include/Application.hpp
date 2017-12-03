#pragma once

#include <Cutelyst/Application>

class Application : public Cutelyst::Application
{
    Q_OBJECT
    CUTELYST_APPLICATION(IID "petstore")
public:
    Q_INVOKABLE explicit Application(QObject * parent = 0);
    ~Application();

    bool init();
};

#pragma once

#include <Cutelyst/Controller>

class Root : public Cutelyst::Controller
{
    Q_OBJECT
    C_NAMESPACE("")
public:
    explicit Root(QObject * parent = 0);
    ~Root();

    C_ATTR(index, :Path(/v2) :AutoArgs)
    void index(Cutelyst::Context * c);

    C_ATTR(defaultPage, :Path)
    void defaultPage(Cutelyst::Context * c);

private:
    C_ATTR(End, :ActionClass("RenderView"))
    void End(Cutelyst::Context * c) { Q_UNUSED(c); }
};

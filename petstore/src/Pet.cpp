#include "Pet.hpp"

Pet::Pet(QObject * parent) : Cutelyst::Controller(parent)
{
}

Pet::~Pet()
{
}

void Pet::get(Cutelyst::Context * c, const QString & petId)
{
    c->response()->body() =
R"({
  "photoUrls": [ "aeiou" ],
  "name": "doggie",
  "id": 0,
  "category": {
    "name": "aeiou",
    "id": 6
  },
  "tags": [ {
    "name": "aeiou",
    "id": 1
  } ],
  "status": "available"
})";
}

void Pet::findByStatus(Cutelyst::Context * c)
{
    c->response()->body() = "{}";
}

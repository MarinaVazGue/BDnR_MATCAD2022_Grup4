//Constraint Individus Únics
CREATE CONSTRAINT IndividuUnic ON (p:Individu)
ASSERT p.Id IS UNIQUE
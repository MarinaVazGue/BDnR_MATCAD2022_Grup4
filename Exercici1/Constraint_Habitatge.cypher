PK
     1H�T' �~x   x   &   CREATE_CONSTRAINT_HabitatgeUnic.cypherCREATE CONSTRAINT HabitatgeUnic
ON (h:Habitatge) ASSERT (h.Id_Llar, h.Municipi, h.Any_Padro) IS UNIQUE
RETURN count(r)PK 
     1H�T' �~x   x   &                 CREATE_CONSTRAINT_HabitatgeUnic.cypherPK      T   �     
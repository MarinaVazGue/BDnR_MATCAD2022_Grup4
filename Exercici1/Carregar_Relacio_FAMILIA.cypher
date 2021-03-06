//Carregar_Relacio_FAMILIA
LOAD CSV WITH HEADERS FROM 'https://docs.google.com/spreadsheets/d/e/2PACX-1vRVOoMAMoxHiGboTjCIHo2yT30CCWgVHgocGnVJxiCTgyurtmqCfAFahHajobVzwXFLwhqajz1fqA8d/pub?output=csv' AS row
WITH toInteger(row.ID_1) AS id_1, toInteger(row.ID_2) AS id_2, row.Relacio AS Relacio, row.Relacio_Harmonitzada AS Relacio_harmonitzada
MATCH (p1:Individu), (p2:Individu)
WHERE p1.Id = id_1 AND p2.Id = id_2
MERGE (p1)-[r:FAMILIA]->(p2)
SET r.relacio = Relacio, r.relacio_harmonitzada = Relacio_harmonitzada
RETURN count(r)
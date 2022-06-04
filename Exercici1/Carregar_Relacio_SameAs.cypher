//Carregar Relació SameAs
LOAD CSV WITH HEADERS FROM 'https://docs.google.com/spreadsheets/d/e/2PACX-1vTgC8TBmdXhjUOPKJxyiZSpetPYjaRC34gmxHj6H2AWvXTGbg7MLKVdJnwuh5bIeer7WLUi0OigI6wc/pub?output=csv' AS row
WITH toInteger(row.Id_B) AS id_B, toInteger(row.Id_A) AS id_A
MATCH (p1:Individu),(p2:Individu)
WHERE p1.Id = id_A AND p2.Id = id_B
MERGE (p1)-[r:SAME_AS]->(p2)
RETURN count(r)
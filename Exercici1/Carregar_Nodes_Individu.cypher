//Carregar Nodes Individu
LOAD CSV WITH HEADERS FROM 'https://docs.google.com/spreadsheets/d/e/2PACX-1vTfU6oJBZhmhzzkV_0-avABPzHTdXy8851ySDbn2gq32WwaNmYxfiBtCGJGOZsMgCWjzlEGX4Zh1wqe/pub?output=csv' AS row
WITH toInteger(row.Id) AS id_individu, toInteger(row.Year) AS Year, row.name AS name, row.surname AS surname, row.second_surname AS second_surname
MERGE (p:Individu {Id: id_individu}) SET p.Year=Year, p.second_surname=second_surname, p.surname=surname, p.name=name 
RETURN count(p)
PK
     H�T�N�(�  �  �   LOAD_CSV_WITH_HEADERS_FROM_https_docs_google_com_spreadsheets_d_e_2PACX_1vRVOoMAMoxHiGboTjCIHo2yT30CCWgVHgocGnVJxiCTgyurtmqCfAFahHajobVzwXFLwhqajz1fqA8d_pub_output_csv_AS_row.cypherLOAD CSV WITH HEADERS FROM 'https://docs.google.com/spreadsheets/d/e/2PACX-1vRVOoMAMoxHiGboTjCIHo2yT30CCWgVHgocGnVJxiCTgyurtmqCfAFahHajobVzwXFLwhqajz1fqA8d/pub?output=csv' AS row
WITH toInteger(row.ID_1) AS id_1, toInteger(row.ID_2) AS id_2, row.Relacio AS Relacio, row.Relacio_Harmonitzada AS Relacio_harmonitzada
MATCH (p1:Individu), (p2:Individu)
WHERE p1.Id = id_1 AND p2.Id = id_2
MERGE (p1)-[r:FAMILIA]->(p2)
SET r.relcio = Relacio, r.relacio_harmonitzada = Relacio_harmonitzada
RETURN count(r)PK 
     H�T�N�(�  �  �                 LOAD_CSV_WITH_HEADERS_FROM_https_docs_google_com_spreadsheets_d_e_2PACX_1vRVOoMAMoxHiGboTjCIHo2yT30CCWgVHgocGnVJxiCTgyurtmqCfAFahHajobVzwXFLwhqajz1fqA8d_pub_output_csv_AS_row.cypherPK      �   �    
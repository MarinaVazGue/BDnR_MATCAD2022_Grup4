PK
     �t�Tq���  �  �   LOAD_CSV_WITH_HEADERS_FROM_https_docs_google_com_spreadsheets_d_e_2PACX_1vRM4DPeqFmv7w6kLH5msNk6_Hdh1wuExRirgysZKO_Q70L21MKBkDISIyjvdm8shVixl5Tcw_5zCfdg_pub_output_csv_AS_row.cypherLOAD CSV WITH HEADERS FROM 'https://docs.google.com/spreadsheets/d/e/2PACX-1vRM4DPeqFmv7w6kLH5msNk6_Hdh1wuExRirgysZKO_Q70L21MKBkDISIyjvdm8shVixl5Tcw_5zCfdg/pub?output=csv' AS row
WITH toInteger(row.Year) AS Year, row.Location As Location, toInteger(row.HOUSE_ID) AS house_id, toInteger(row.IND) AS individu_id
MATCH (h:Habitatge), (p:Individu)
WHERE p.Id = individu_id AND h.Any_Padro = Year AND h.Municipi = Location AND h.Id_Llar = house_id
MERGE (p)-[r:VIU]->(h)
RETURN count(r)PK 
     �t�Tq���  �  �                 LOAD_CSV_WITH_HEADERS_FROM_https_docs_google_com_spreadsheets_d_e_2PACX_1vRM4DPeqFmv7w6kLH5msNk6_Hdh1wuExRirgysZKO_Q70L21MKBkDISIyjvdm8shVixl5Tcw_5zCfdg_pub_output_csv_AS_row.cypherPK      �   �    
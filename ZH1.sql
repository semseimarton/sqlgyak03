SELECT count(*) AS 'Feltételeknek megfelelő fpglalások száma'
FROM Foglalas
WHERE YEAR(METTOL)=YEAR(MEDDIG) AND MONTH(METTOL)<>MONTH(MEDDIG)







SELECT szh.SZALLAS_ID, szh.SZALLAS_NEV, 

              COUNT(*) AS 'Klímás szobák száma'
 
FROM Szallashely szh JOIN Szoba sz ON szh.SZALLAS_ID=sz.SZALLAS_FK

WHERE sz.klimas='i'

GROUP BY szh.SZALLAS_ID, szh.SZALLAS_NEV






SELECT count(*) AS 'Feltételeknek megfelelő fpglalások száma'
FROM Foglalas
WHERE YEAR(METTOL)=YEAR(MEDDIG) AND MONTH(METTOL)<>MONTH(MEDDIG)







SELECT szh.SZALLAS_ID, szh.SZALLAS_NEV, 

              COUNT(*) AS 'Klímás szobák száma'
 
FROM Szallashely szh JOIN Szoba sz ON szh.SZALLAS_ID=sz.SZALLAS_FK

WHERE sz.klimas='i'

GROUP BY szh.SZALLAS_ID, szh.SZALLAS_NEV





SELECT  SZOBA_ID,
        YEAR(METTOL) AS 'Foglalás éve',
        COUNT(*) AS 'Foglalások száma'
FROM Szoba sz JOIN Foglalas f ON sz.SZOBA_ID=f.SZOBA_FK
WHERE SZOBA_ID%2=1
GROUP BY SZOBA_ID, YEAR(METTOL)
HAVING COUNT(*)>10



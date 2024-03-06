SELECT count(*) AS 'Feltételeknek megfelelő fpglalások száma'
FROM Foglalas
WHERE YEAR(METTOL)=YEAR(MEDDIG) AND MONTH(METTOL)<>MONTH(MEDDIG)
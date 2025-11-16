-- Agrupamento de dados por GROUP BY

-- Agrupando todos os tornados por ano
SELECT year, COUNT(*) FROM STATION_DATA
WHERE tornado = 1
GROUP BY year;

-- Agrupando todos os tornados por ano e mês
SELECT year, month, COUNT(*) FROM STATION_DATA 
WHERE tornado = 1
GROUP BY year, month
ORDER BY year, month;

-- Agrupnado os dados por ano e mês ordenando de forma decrescente
SELECT year, month, COUNT(tornado) FROM STATION_DATA 
WHERE tornado = 1
GROUP BY year, month
ORDER BY year DESC, month DESC;

-- Temperatura média de cada mês desde 2000
SELECT year, month, ROUND(AVG(temperature)) AS Avarage_Temperature
FROM STATION_DATA
WHERE year >= 2000
GROUP BY year, month
ORDER BY year, month;
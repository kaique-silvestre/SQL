-- BETWEEN
-- Define um intervalo de valores
SELECT * FROM STATION_DATA
WHERE year BETWEEN 2005 AND 2010;

-- IN
-- Define uma lista de valores
SELECT * FROM STATION_DATA
WHERE month in (1, 3, 6, 9, 12)
ORDER BY month;

-- Pode-se inverter a lógica usando NOT
SELECT * FROM STATION_DATA 
WHERE month NOT IN (1, 3, 6, 9, 12)
ORDER BY month;

-- Manipulando NULL
SELECT * FROM STATION_DATA
WHERE station_pressure IS NOT NULL;

SELECT * FROM STATION_DATA
WHERE station_pressure IS NULL AND snow_depth IS NULL;


-- COALESCE
SELECT * FROM STATION_DATA
WHERE coalesce(snow_depth, 'TESTE');
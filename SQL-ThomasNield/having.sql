-- HAVING 

/*
 HAVING é o equivalnete ao WHERE porém ele filtra agregações
 coisa que o WHERE por sí só não é capaz
 
EM BDs como o Oracle não suportam alias...
A expressão deve ser escrita novamante na instrução
*/

-- filtrar a soma da precipitação onde a mesma é >= 30

SELECT year, SUM(precipitation) as SP
FROM STATION_DATA
WHERE precipitation > 0
GROUP BY year
HAVING SP > 30
ORDER BY year
;

-- Media da velocidade do vento 
SELECT DISTINCT year, month, ROUND(AVG(wind_speed)) AS ws
FROM STATION_DATA
WHERE month = 10
GROUP BY year, month 
HAVING ws > 8
ORDER BY year, month, day
;
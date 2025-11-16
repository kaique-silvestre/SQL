-- Usando a função "round()"
SELECT ROUND(PRICE), ROUND(PRICE * 1.07) AS TAXED_PRICE
FROM PRODUCT;

-- Podemos concatenar dados com o operador ||
SELECT * FROM CUSTOMER; -- Forma normal

SELECT NAME, STREET_ADDRESS || ', '  || CITY || ', ' || STATE AS ADRESS, 
ZIP
FROM CUSTOMER;
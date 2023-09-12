SELECT product, SUM(quantity)
FROM orders
GROUP BY product
HAVING SUM(quantity) >= 100
--Este comando retornaria o nome do produto e a quantidade total de cada produto vendido, mas apenas para aqueles produtos cuja quantidade total vendida é maior ou igual a 100.

SELECT year, AVG(price)
FROM car_sales
GROUP BY year
HAVING AVG(price) > 30000
--Este comando retornaria o ano e o preço médio de carros vendidos, mas apenas para aqueles anos cujo preço médio de carros vendidos é superior a 30000.

SELECT city, COUNT(*)
FROM customers
GROUP BY city
HAVING COUNT(*) > 10
--Este comando retornaria a cidade e a quantidade de clientes por cidade, mas apenas para aquelas cidades com mais de 10 clientes.



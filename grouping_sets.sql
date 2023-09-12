
--Essa é a sintaxe básica de GROUPING SETS
SELECT coluna1, coluna2, ..., funcao_agregada(coluna)
FROM tabela
GROUP BY GROUPING SETS ((coluna1), (coluna2), ..., (coluna1, coluna2), ())
--A cláusula GROUPING SETS recebe uma lista de conjuntos de colunas que você deseja agrupar. Cada conjunto é colocado entre parênteses e separado por vírgulas. O conjunto vazio () indica que você deseja obter o total agregado.

SELECT YEAR(sales_date) AS sales_year, 
       DATEPART(quarter, sales_date) AS sales_quarter,
       MONTH(sales_date) AS sales_month,
       SUM(sales_amount) AS total_sales
FROM sales
GROUP BY GROUPING SETS ((YEAR(sales_date)), 
                        (YEAR(sales_date), DATEPART(quarter, sales_date)),
                        (YEAR(sales_date), MONTH(sales_date)),
                        ())
--Este código retorna um conjunto de resultados que mostra as vendas totais para cada ano, trimestre e mês. O conjunto de resultados também inclui uma linha com o total geral de vendas.

SELECT region, TO_CHAR(sales_date, 'MM/YYYY') AS sales_month, 
       SUM(sales_amount) AS total_sales
FROM sales
GROUP BY GROUPING SETS ((region, TO_CHAR(sales_date, 'MM/YYYY')), 
                        (region),
                        ())
--Este código retorna um conjunto de resultados que mostra as vendas totais para cada região e mês. O conjunto de resultados também inclui linhas com o total de vendas por região e o total geral de vendas.




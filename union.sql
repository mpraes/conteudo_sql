--Exemplos de uniões em SQL:

--Combinação de dados de vendas de dois anos diferentes:
SELECT product, SUM(sales)
FROM sales_2018
UNION
SELECT product, SUM(sales)
FROM sales_2019;

-- Combinação de dados de funcionários de duas filiais diferentes:
SELECT name, department, salary
FROM employees_branch1
UNION
SELECT name, department, salary
FROM employees_branch2;

-- Combinação de dados de estudantes matriculados em dois semestres diferentes:
SELECT name, major
FROM students_spring
UNION
SELECT name, major
FROM students_fall;

-- Combinação de dados de clientes de dois países diferentes:
SELECT name, address, phone
FROM customers_usa
UNION
SELECT name, address, phone
FROM customers_canada;




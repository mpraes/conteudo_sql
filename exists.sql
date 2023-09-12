--Exemplos de uso:
SELECT column1, column2
FROM table1
WHERE EXISTS (SELECT column1 FROM table2 WHERE table1.column1 = table2.column1);
--Neste exemplo, a consulta seleciona coluna1 e coluna2 de tabela1 onde há pelo menos um registro na tabela2 que tem o mesmo valor na coluna1.

--Encontrar todos os clientes que não realizaram nenhuma compra:
SELECT * FROM customers
WHERE NOT EXISTS (SELECT * FROM orders WHERE orders.customer_id = customers.id);

--Encontrar todos os produtos que foram vendidos pelo menos uma vez:
SELECT * FROM products
WHERE EXISTS (SELECT * FROM order_items WHERE order_items.product_id = products.id);

--Encontrar todos os departamentos que têm pelo menos um funcionário:
SELECT * FROM departments
WHERE EXISTS (SELECT * FROM employees WHERE employees.department_id = departments.id);

--Encontrar todos os pedidos que não têm itens associados:
SELECT * FROM orders
WHERE NOT EXISTS (SELECT * FROM order_items WHERE order_items.order_id = orders.id);

--Encontrar todos os funcionários que são gerentes:
SELECT * FROM employees
WHERE EXISTS (SELECT * FROM employees e1 WHERE e1.manager_id = employees.id);


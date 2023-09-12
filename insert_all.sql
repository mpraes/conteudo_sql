--Nesse exemplo, os dados são inseridos nas tabelas employees, addresses e salaries ao mesmo tempo. A cláusula SCOPE_IDENTITY() é usada para obter o ID do funcionário inserido na tabela employees, que é usado como chave estrangeira nas tabelas addresses e salaries.
INSERT ALL
   INTO employees (first_name, last_name) VALUES ('John', 'Doe')
   INTO addresses (employee_id, address_line1, city, state, zip) 
      VALUES (SCOPE_IDENTITY(), '123 Main St', 'Anytown', 'CA', '12345')
   INTO salaries (employee_id, salary) 
      VALUES (SCOPE_IDENTITY(), 50000)
SELECT * FROM employees WHERE last_name = 'Doe';



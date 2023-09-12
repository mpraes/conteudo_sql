--Unindo resultados de duas tabelas diferentes:
SELECT id, name FROM students
UNION ALL
SELECT id, name FROM teachers;

--Unindo resultados de duas tabelas diferentes e ordenando os resultados:
SELECT id, name FROM students
UNION ALL
SELECT id, name FROM teachers
ORDER BY name;

--Selecionando colunas específicas de duas tabelas diferentes:
SELECT name, age FROM students
UNION ALL
SELECT name, experience FROM teachers;

--Unindo resultados de duas tabelas diferentes e limitando o número de resultados:
SELECT name FROM students
UNION ALL
SELECT name FROM teachers
LIMIT 10;

--Unindo resultados de mais de duas tabelas:
SELECT id, name FROM students
UNION ALL
SELECT id, name FROM teachers
UNION ALL
SELECT id, name FROM staff;

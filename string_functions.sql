-- CONCAT: Concatena duas ou mais strings juntas
SELECT CONCAT(nome, ' ', sobrenome) as nome_completo FROM clientes;

--SUBSTRING: Extrai uma substring de uma string
SELECT SUBSTRING(nome, 1, 3) as primeiras_letras FROM clientes;

--LENGTH: Determina o comprimento de uma string
SELECT nome, LENGTH(nome) as comprimento FROM clientes;

--TRIM: Remove espaços em branco no início e no final de uma string
SELECT TRIM(nome) as nome_trimmed FROM clientes;

--UPPER/LOWER: Converte uma string para maiúsculas ou minúsculas
SELECT UPPER(nome) as nome_maiusculo, LOWER(nome) as nome_minusculo FROM clientes;

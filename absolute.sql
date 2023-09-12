-- Exemplo 1: Acessando o registro mais recente em uma tabela
SELECT * FROM tabela
ORDER BY data_criacao DESC
LIMIT 1
OFFSET ABSOLUTE 0;
-- Este exemplo usa a cláusula ORDER BY para ordenar os registros da tabela pela data de criação em ordem decrescente (ou seja, do mais recente para o mais antigo). Em seguida, usa a cláusula LIMIT com um valor de 1 para retornar apenas o registro mais recente. Finalmente, usa a cláusula OFFSET com o comando ABSOLUTE e um valor de 0 para definir o ponto de partida da consulta no primeiro registro (ou seja, o registro mais recente).

-- Exemplo 2: Acessando o segundo registro em uma tabela
SELECT * FROM tabela
ORDER BY id
OFFSET ABSOLUTE 1
LIMIT 1;
-- Este exemplo usa a cláusula ORDER BY para ordenar os registros da tabela pelo ID em ordem crescente. Em seguida, usa a cláusula OFFSET com o comando ABSOLUTE e um valor de 1 para definir o ponto de partida da consulta no segundo registro (ou seja, o registro com ID 2). Finalmente, usa a cláusula LIMIT com um valor de 1 para retornar apenas um registro.

-- Exemplo 3: Acessando um registro aleatório em uma tabela
SELECT * FROM tabela
ORDER BY RAND()
LIMIT 1
OFFSET ABSOLUTE 0;
-- Este exemplo usa a função RAND() para gerar um número aleatório que é usado para ordenar os registros da tabela de forma aleatória. Em seguida, usa a cláusula LIMIT com um valor de 1 para retornar apenas um registro. Finalmente, usa a cláusula OFFSET com o comando ABSOLUTE e um valor de 0 para definir o ponto de partida da consulta no primeiro registro (ou seja, o registro aleatório retornado pela função RAND()).


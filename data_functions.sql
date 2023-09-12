-- Exemplos de funções de data em SQL Server:
--CURRENT_TIMESTAMP: retorna a data e hora atuais. Exemplo:
SELECT CURRENT_TIMESTAMP;

--DATEADD: adiciona um determinado número de dias, meses ou anos a uma data. Exemplo:
SELECT DATEADD(day, 5, '2022-01-01');

--DATEDIFF: calcula a diferença em dias, meses ou anos entre duas datas. Exemplo:
SELECT DATEDIFF(month, '2022-01-01', '2022-03-01');

--YEAR, MONTH, DAY: extrai a parte ano, mês ou dia de uma data. Exemplo:
SELECT DAY('2022-01-01');

-- Exemplos de funções de data em Oracle:
-- SYSDATE: retorna a data e hora atuais. Exemplo:
SELECT SYSDATE FROM DUAL;

--ADD_MONTHS: adiciona um determinado número de meses a uma data. Exemplo:
SELECT ADD_MONTHS('2022-01-01', 2) FROM DUAL;

--MONTHS_BETWEEN: calcula a diferença em meses entre duas datas. Exemplo:
SELECT MONTHS_BETWEEN('2022-03-01', '2022-01-01') FROM DUAL;

--EXTRACT: extrai a parte ano, mês ou dia de uma data. Exemplo:
SELECT EXTRACT(DAY FROM '2022-01-01') FROM DUAL;


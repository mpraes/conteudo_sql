-- A seguir, alguns exemplos de como usar a palavra-chave BULK em diferentes SGBDs:
-- SQL Server:
-- Inserção em massa de dados em uma tabela:
BULK INSERT [dbo].[MinhaTabela]
FROM 'C:\MeuArquivoDeDados.csv'
WITH (
  FIRSTROW = 2,
  FIELDTERMINATOR = ',',
  ROWTERMINATOR = '\n'
);
-- Atualização em massa de dados usando uma tabela temporária:
CREATE TABLE #TempTable (
    ID INT,
    Nome NVARCHAR(50)
);

BULK INSERT #TempTable
FROM 'C:\MeuArquivoDeDados.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
);

UPDATE [dbo].[MinhaTabela]
SET Nome = T.Nome
FROM [dbo].[MinhaTabela] M
JOIN #TempTable T ON M.ID = T.ID;


Oracle:

    Inserção em massa de dados usando uma tabela externa:

    sql

    CREATE TABLE MinhaTabela_Externa (
      ID NUMBER,
      Nome VARCHAR2(50)
    )
    ORGANIZATION EXTERNAL (
      TYPE ORACLE_LOADER
      DEFAULT DIRECTORY Dados_Externos
      ACCESS PARAMETERS (
        RECORDS DELIMITED BY NEWLINE
        FIELDS TERMINATED BY ','
        MISSING FIELD VALUES ARE NULL
        (
          ID,
          Nome
        )
      )
      LOCATION ('MeuArquivoDeDados.csv')
    )
    REJECT LIMIT UNLIMITED;

    INSERT INTO MinhaTabela (
      SELECT * FROM MinhaTabela_Externa
    );

MySQL:

    Inserção em massa de dados usando LOAD DATA INFILE:

    vbnet

LOAD DATA INFILE '/tmp/MeuArquivoDeDados.csv'
INTO TABLE MinhaTabela
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
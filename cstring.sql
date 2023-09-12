-- A seguir estão alguns exemplos de código SQL que usam a keyword CSTRING em diferentes SGBDs:

-- Exemplo 1: MySQL
CREATE TABLE mytable (
    myfield CHAR(10) CSTRING
);
-- Nesse exemplo, é criada uma tabela com um campo chamado "myfield" que é do tipo CHAR(10) CSTRING. Isso significa que o campo terá um comprimento fixo de 10 caracteres.

-- Exemplo 2: PostgreSQL
CREATE TABLE mytable (
    myfield CHARACTER(5) CSTRING
);
-- Nesse exemplo, é criada uma tabela com um campo chamado "myfield" que é do tipo CHARACTER(5) CSTRING. Isso significa que o campo terá um comprimento fixo de 5 caracteres.

-- Exemplo 3: Microsoft SQL Server
CREATE TABLE mytable (
    myfield CHAR(20) CSTRING
);
-- Nesse exemplo, é criada uma tabela com um campo chamado "myfield" que é do tipo CHAR(20) CSTRING. Isso significa que o campo terá um comprimento fixo de 20 caracteres.


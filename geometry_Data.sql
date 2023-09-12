
--PostgreSQL com PostGIS:
--Criar uma tabela chamada "pontos" com uma coluna "localização" do tipo GEOMETRY usando o seguinte comando SQL:
CREATE EXTENSION postgis;
CREATE TABLE pontos (id SERIAL PRIMARY KEY, localizacao GEOMETRY);
--Para inserir um ponto com coordenadas x = 1.0 e y = 2.0 na tabela "pontos", você pode usar o seguinte comando SQL:
INSERT INTO pontos (localizacao) VALUES (ST_SetSRID(ST_MakePoint(1.0, 2.0), 4326));

--MySQL com MyGIS:
--Criar uma tabela chamada "pontos" com uma coluna "localização" do tipo GEOMETRY usando o seguinte comando SQL:
CREATE TABLE pontos (id INT PRIMARY KEY, localizacao GEOMETRY);
--Para inserir um ponto com coordenadas x = 1.0 e y = 2.0 na tabela "pontos", você pode usar o seguinte comando SQL:
INSERT INTO pontos (localizacao) VALUES (ST_GeomFromText('POINT(1.0 2.0)'));

--SQL Server com SQL Server Spatial:
--Criar uma tabela chamada "pontos" com uma coluna "localização" do tipo GEOMETRY, você pode usar o seguinte comando SQL:
CREATE TABLE pontos (id INT PRIMARY KEY, localizacao GEOMETRY);
--Para inserir um ponto com coordenadas x = 1.0 e y = 2.0 na tabela "pontos", você pode usar o seguinte comando SQL:
INSERT INTO pontos (localizacao) VALUES (geometry::STGeomFromText('POINT(1.0 2.0)', 0));




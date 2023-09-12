
--EXEMPLO POSTGRESQL COM MODULO POSTGIS
-- Adicionar dados geográficos a uma tabela
INSERT INTO tabela_nome (coluna_geografica, outras_colunas)
VALUES (ST_GeomFromText('POINT(x y)'), valor1, valor2, ...);

-- Selecionar todos os registros dentro de um raio de um ponto específico
SELECT * FROM tabela_nome
WHERE ST_DWithin(coluna_geografica, ST_GeomFromText('POINT(x y)'), raio_em_metros);

-- Calcular a distância entre dois pontos
SELECT ST_Distance(ST_GeomFromText('POINT(x1 y1)'), ST_GeomFromText('POINT(x2 y2)'))

--EXEMPLO MYSQL COM MODULO SPATIAL EXTENSION
-- Adicionar dados geográficos a uma tabela
INSERT INTO tabela_nome (coluna_geografica, outras_colunas)
VALUES (GeomFromText('POINT(x y)'), valor1, valor2, ...);

-- Selecionar todos os registros dentro de um raio de um ponto específico
SELECT * FROM tabela_nome
WHERE MBRWithin(coluna_geografica, GeomFromText('POINT(x y)'), raio_em_metros);

-- Calcular a distância entre dois pontos
SELECT GLength(LineStringFromWKB(LineString(coluna_geografica, GeomFromText('POINT(x2 y2)'))))



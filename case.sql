--Estão alguns exemplos de como o CASE pode ser usado em SQL:

--Classificação de tamanhos de produtos:
SELECT produto, tamanho, 
CASE 
    WHEN tamanho < 10 THEN 'Pequeno'
    WHEN tamanho >= 10 AND tamanho < 20 THEN 'Médio'
    ELSE 'Grande'
END as classificacao
FROM produtos;

--Atualização de preços com base em uma porcentagem:
UPDATE produtos
SET preco = CASE 
                WHEN categoria = 'eletronico' THEN preco * 1.10
                WHEN categoria = 'roupa' THEN preco * 1.05
                ELSE preco
            END;

--Agrupamento de dados com base em uma faixa de valores:
SELECT faixa_etaria,
CASE 
    WHEN idade < 18 THEN 'Menor de idade'
    WHEN idade >= 18 AND idade <= 25 THEN 'Jovem'
    WHEN idade > 25 AND idade <= 50 THEN 'Adulto'
    ELSE 'Idoso'
END as faixa_etaria_grupo,
count(*) as total
FROM pessoas
GROUP BY faixa_etaria_grupo;


-- Pergunta 1: Qual é o total de vendas realizadas por cada colaborador?
SELECT 
    c.nome AS "Nome Colaborador", 
    COUNT(v.idVENDAS) AS "Total de Vendas"
FROM 
    `mydb`.`COLABORADORES` c
JOIN 
    `mydb`.`VENDAS` v ON c.idCOLABORADORES = v.COLABORADORES_idCOLABORADORES
GROUP BY 
    c.nome
ORDER BY 
    "Total de Vendas" DESC;

-- Pergunta 2: Quais são os livros publicados por cada editora?
SELECT 
    e.nome AS "Nome Editora", 
    l.titulo AS "Título do Livro"
FROM 
    `mydb`.`EDITORAS` e
JOIN 
    `mydb`.`LIVROS` l ON e.idEDITORAS = l.EDITORAS_idEDITORAS
ORDER BY 
    e.nome, l.titulo;

-- Pergunta 3: Qual é o total de vendas e o valor total vendido por cada cliente?
SELECT 
    cl.nome AS "Nome Cliente", 
    COUNT(v.idVENDAS) AS "Total de Vendas", 
    SUM(v.Valor_total) AS "Valor Total Vendido"
FROM 
    `mydb`.`CLIENTES` cl
JOIN 
    `mydb`.`VENDAS` v ON cl.idCLIENTES = v.CLIENTES_idCLIENTES
GROUP BY 
    cl.nome
ORDER BY 
    "Valor Total Vendido" DESC;

-- Pergunta 4: Quais são os autores que têm mais de um livro publicado?
SELECT 
    a.nome AS "Nome Autor", 
    COUNT(ahl.LIVROS_idLIVROS) AS "Quantidade de Livros"
FROM 
    `mydb`.`AUTORES` a
JOIN 
    `mydb`.`AUTORES_has_LIVROS` ahl ON a.idAUTORES = ahl.AUTORES_idAUTORES
GROUP BY 
    a.nome
HAVING 
    COUNT(ahl.LIVROS_idLIVROS) > 1
ORDER BY 
    "Quantidade de Livros" DESC;

-- Pergunta 5: Quais são os livros mais caros e suas respectivas editoras?
SELECT 
    l.titulo AS "Título do Livro", 
    e.nome AS "Nome Editora", 
    l.preco AS "Preço"
FROM 
    `mydb`.`LIVROS` l
JOIN 
    `mydb`.`EDITORAS` e ON l.EDITORAS_idEDITORAS = e.idEDITORAS
ORDER BY 
    l.preco DESC;

-- Pergunta 6: Quais são os clientes que compraram mais de 5 livros em uma única venda?
SELECT 
    cl.nome AS "Nome Cliente", 
    v.idVENDAS AS "ID da Venda", 
    v.Qtd_livros AS "Quantidade de Livros"
FROM 
    `mydb`.`CLIENTES` cl
JOIN 
    `mydb`.`VENDAS` v ON cl.idCLIENTES = v.CLIENTES_idCLIENTES
WHERE 
    v.Qtd_livros > 5
ORDER BY 
    v.Qtd_livros DESC;

-- Pergunta 7: Quais são os colaboradores que realizaram vendas acima de R$1000 em uma única venda?
SELECT 
    c.nome AS "Nome Colaborador", 
    v.idVENDAS AS "ID da Venda", 
    v.Valor_total AS "Valor da Venda"
FROM 
    `mydb`.`COLABORADORES` c
JOIN 
    `mydb`.`VENDAS` v ON c.idCOLABORADORES = v.COLABORADORES_idCOLABORADORES
WHERE 
    v.Valor_total > 1000
ORDER BY 
    v.Valor_total DESC;

-- Pergunta 8: Quais são os clientes que mais gastaram em compras na livraria?
SELECT 
    cl.nome AS "Nome Cliente", 
    SUM(v.Valor_total) AS "Total Gasto"
FROM 
    `mydb`.`CLIENTES` cl
JOIN 
    `mydb`.`VENDAS` v ON cl.idCLIENTES = v.CLIENTES_idCLIENTES
GROUP BY 
    cl.nome
ORDER BY 
    "Total Gasto" DESC;

-- Pergunta 9: Quais são os colaboradores que mais venderam livros em termos de quantidade de unidades?
SELECT 
    c.nome AS "Nome Colaborador", 
    SUM(v.Qtd_livros) AS "Quantidade de Livros Vendidos"
FROM 
    `mydb`.`COLABORADORES` c
JOIN 
    `mydb`.`VENDAS` v ON c.idCOLABORADORES = v.COLABORADORES_idCOLABORADORES
GROUP BY 
    c.nome
ORDER BY 
    "Quantidade de Livros Vendidos" DESC;

-- Pergunta 10: Quais são os livros lançados nos últimos 5 anos?
SELECT 
    l.titulo AS "Título do Livro", 
    l.ano_lancamento AS "Ano de Lançamento"
FROM 
    `mydb`.`LIVROS` l
WHERE 
    l.ano_lancamento >= YEAR(CURDATE()) - 5
ORDER BY 
    l.ano_lancamento DESC;

-- Pergunta 11: Quais são os livros que têm mais de um autor?
SELECT 
    l.titulo AS "Título do Livro", 
    COUNT(ahl.AUTORES_idAUTORES) AS "Quantidade de Autores"
FROM 
    `mydb`.`LIVROS` l
JOIN 
    `mydb`.`AUTORES_has_LIVROS` ahl ON l.idLIVROS = ahl.LIVROS_idLIVROS
GROUP BY 
    l.titulo
HAVING 
    COUNT(ahl.AUTORES_idAUTORES) > 1
ORDER BY 
    "Quantidade de Autores" DESC;
    
    -- Pergunta 12: Qual é a média de preço dos livros por editora?
SELECT 
    e.nome AS "Nome Editora", 
    AVG(l.preco) AS "Média de Preço"
FROM 
    `mydb`.`EDITORAS` e
JOIN 
    `mydb`.`LIVROS` l ON e.idEDITORAS = l.EDITORAS_idEDITORAS
GROUP BY 
    e.nome
ORDER BY 
    "Média de Preço" DESC;
    
    -- Pergunta 13: Qual é a média de vendas realizadas por cada colaborador?
SELECT 
    c.nome AS "Nome Colaborador", 
    AVG(v.Valor_total) AS "Média de Vendas"
FROM 
    `mydb`.`COLABORADORES` c
JOIN 
    `mydb`.`VENDAS` v ON c.idCOLABORADORES = v.COLABORADORES_idCOLABORADORES
GROUP BY 
    c.nome
ORDER BY 
    "Média de Vendas" DESC;


-- Pergunta 14: Qual é o valor total vendido por cada colaborador?
SELECT 
    c.nome AS "Nome Colaborador", 
    SUM(v.Valor_total) AS "Valor Total Vendido"
FROM 
    `mydb`.`COLABORADORES` c
JOIN 
    `mydb`.`VENDAS` v ON c.idCOLABORADORES = v.COLABORADORES_idCOLABORADORES
GROUP BY 
    c.nome
ORDER BY 
    "Valor Total Vendido" DESC;

-- Pergunta 15: Qual é a quantidade total de livros vendidos por cada cliente?
SELECT 
    cl.nome AS "Nome Cliente", 
    SUM(v.Qtd_livros) AS "Quantidade Total de Livros"
FROM 
    `mydb`.`CLIENTES` cl
JOIN 
    `mydb`.`VENDAS` v ON cl.idCLIENTES = v.CLIENTES_idCLIENTES
GROUP BY 
    cl.nome
ORDER BY 
    "Quantidade Total de Livros" DESC;

-- Pergunta 16: Qual é a média de livros comprados por cada cliente?
SELECT 
    cl.nome AS "Nome Cliente", 
    AVG(v.Qtd_livros) AS "Média de Livros Comprados"
FROM 
    `mydb`.`CLIENTES` cl
JOIN 
    `mydb`.`VENDAS` v ON cl.idCLIENTES = v.CLIENTES_idCLIENTES
GROUP BY 
    cl.nome
ORDER BY 
    "Média de Livros Comprados" DESC;

-- Pergunta 17: Quais são os clientes que compraram mais de 10 livros no total?
SELECT 
    cl.nome AS "Nome Cliente", 
    SUM(v.Qtd_livros) AS "Quantidade Total de Livros"
FROM 
    `mydb`.`CLIENTES` cl
JOIN 
    `mydb`.`VENDAS` v ON cl.idCLIENTES = v.CLIENTES_idCLIENTES
GROUP BY 
    cl.nome
HAVING 
    SUM(v.Qtd_livros) > 10
ORDER BY 
    "Quantidade Total de Livros" DESC;

-- Pergunta 18: Qual é o valor total gasto por cada cliente?
SELECT 
    cl.nome AS "Nome Cliente", 
    SUM(v.Valor_total) AS "Valor Total Gasto"
FROM 
    `mydb`.`CLIENTES` cl
JOIN 
    `mydb`.`VENDAS` v ON cl.idCLIENTES = v.CLIENTES_idCLIENTES
GROUP BY 
    cl.nome
ORDER BY 
    "Valor Total Gasto" DESC;

-- Pergunta 19: Qual é a quantidade média de livros vendidos por cada colaborador?
SELECT 
    c.nome AS "Nome Colaborador", 
    AVG(v.Qtd_livros) AS "Média de Livros Vendidos"
FROM 
    `mydb`.`COLABORADORES` c
JOIN 
    `mydb`.`VENDAS` v ON c.idCOLABORADORES = v.COLABORADORES_idCOLABORADORES
GROUP BY 
    c.nome
ORDER BY 
    "Média de Livros Vendidos" DESC;


    -- 20: Quais são os colaboradores que realizaram vendas acima de R$300 em uma única venda?
    SELECT 
    c.nome AS "Nome Colaborador", 
    v.idVENDAS AS "ID da Venda", 
    v.Valor_total AS "Valor da Venda"
FROM 
    `mydb`.`COLABORADORES` c
JOIN 
    `mydb`.`VENDAS` v ON c.idCOLABORADORES = v.COLABORADORES_idCOLABORADORES
WHERE 
    v.Valor_total > 300
ORDER BY 
    v.Valor_total DESC;
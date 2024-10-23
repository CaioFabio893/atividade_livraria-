-- View 1: Total de Vendas por Colaborador
CREATE VIEW TotalVendasPorColaborador AS
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

-- View 2: Livros por Editora
CREATE VIEW LivrosPorEditora AS
SELECT 
    e.nome AS "Nome Editora", 
    l.titulo AS "Título do Livro"
FROM 
    `mydb`.`EDITORAS` e
JOIN 
    `mydb`.`LIVROS` l ON e.idEDITORAS = l.EDITORAS_idEDITORAS
ORDER BY 
    e.nome, l.titulo;

-- View 3: Total de Vendas e Valor Total por Cliente
CREATE VIEW TotalVendasEValorPorCliente AS
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

-- View 4: Autores com Mais de um Livro Publicado
CREATE VIEW AutoresComMaisDeUmLivro AS
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

-- View 5: Livros Mais Caros e Suas Editoras
CREATE VIEW LivrosMaisCarosEEditoras AS
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

-- View 6: Clientes que Compraram Mais de 5 Livros em uma Única Venda
CREATE VIEW ClientesComMaisDe5LivrosEmVenda AS
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

-- View 7: Colaboradores com Vendas Acima de R$1000 em uma Única Venda
CREATE VIEW ColaboradoresComVendasAcimaDe1000 AS
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

-- View 8: Clientes que Mais Gastaram na Livraria
CREATE VIEW ClientesQueMaisGastaram AS
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

-- View 9: Colaboradores que Mais Venderam Livros em Quantidade
CREATE VIEW ColaboradoresQueMaisVenderamLivros AS
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

-- View 10: Livros Lançados nos Últimos 5 Anos
CREATE VIEW LivrosLancadosNosUltimos5Anos AS
SELECT 
    l.titulo AS "Título do Livro", 
    l.ano_lancamento AS "Ano de Lançamento"
FROM 
    `mydb`.`LIVROS` l
WHERE 
    l.ano_lancamento >= YEAR(CURDATE()) - 5
ORDER BY 
    l.ano_lancamento DESC;

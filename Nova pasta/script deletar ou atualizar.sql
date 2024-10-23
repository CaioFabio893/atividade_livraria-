-- Atualizar o salário de um colaborador
UPDATE `mydb`.`COLABORADORES` SET `salario` = 6000.00 WHERE `idCOLABORADORES` = 1;

-- Atualizar o telefone de um cliente
UPDATE `mydb`.`CLIENTES` SET `telefone` = '81999997777' WHERE `idCLIENTES` = 2;

-- Deletar um colaborador
DELETE FROM `mydb`.`COLABORADORES` WHERE `idCOLABORADORES` = 3;

-- Atualizar o nome de um setor
UPDATE `mydb`.`SETORES` SET `nome` = 'Administração Geral' WHERE `idSETORES` = 1;

-- Deletar um cliente
DELETE FROM `mydb`.`CLIENTES` WHERE `idCLIENTES` = 4;

-- Atualizar o valor total de uma venda
UPDATE `mydb`.`VENDAS` SET `Valor_total` = 550.00 WHERE `idVENDAS` = 1;

-- Deletar uma venda
DELETE FROM `mydb`.`VENDAS` WHERE `idVENDAS` = 2;

-- Atualizar o endereço de um colaborador
UPDATE `mydb`.`COLABORADORES` SET `endereco` = 'Rua Nova, 123' WHERE `idCOLABORADORES` = 5;

-- Deletar um setor
DELETE FROM `mydb`.`SETORES` WHERE `idSETORES` = 6;

-- Atualizar o nome de uma editora
UPDATE `mydb`.`EDITORAS` SET `nome` = 'Editora Alfa Plus' WHERE `idEDITORAS` = 1;

-- Deletar uma editora
DELETE FROM `mydb`.`EDITORAS` WHERE `idEDITORAS` = 2;

-- Atualizar o preço de um livro
UPDATE `mydb`.`LIVROS` SET `preco` = 49.90 WHERE `idLIVROS` = 1;

-- Deletar um livro
DELETE FROM `mydb`.`LIVROS` WHERE `idLIVROS` = 2;

-- Atualizar o cargo de um colaborador
UPDATE `mydb`.`COLABORADORES` SET `cargo` = 'Gerente de Vendas' WHERE `idCOLABORADORES` = 2;

-- Deletar um autor
DELETE FROM `mydb`.`AUTORES` WHERE `idAUTORES` = 3;

-- Atualizar a cidade de um cliente
UPDATE `mydb`.`CLIENTES` SET `cidade` = 'Olinda' WHERE `idCLIENTES` = 5;

-- Deletar uma relação entre autor e livro
DELETE FROM `mydb`.`AUTORES_has_LIVROS` WHERE `AUTORES_idAUTORES` = 1 AND `LIVROS_idLIVROS` = 1;

-- Atualizar a quantidade de livros em uma venda
UPDATE `mydb`.`VENDAS` SET `Qtd_livros` = 6 WHERE `idVENDAS` = 3;

-- Deletar uma DANFE
DELETE FROM `mydb`.`DANFE` WHERE `idDANFE` = 4;

-- Atualizar a data de emissão de uma DANFE
UPDATE `mydb`.`DANFE` SET `data_emissao` = '2023-07-01' WHERE `idDANFE` = 5;




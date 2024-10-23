-- Destruir todas as tabelas
DROP TABLE IF EXISTS `mydb`.`AUTORES_has_LIVROS`;
DROP TABLE IF EXISTS `mydb`.`LIVROS`;
DROP TABLE IF EXISTS `mydb`.`AUTORES`;
DROP TABLE IF EXISTS `mydb`.`EDITORAS`;
DROP TABLE IF EXISTS `mydb`.`VENDAS`;
DROP TABLE IF EXISTS `mydb`.`DANFE`;
DROP TABLE IF EXISTS `mydb`.`CLIENTES`;
DROP TABLE IF EXISTS `mydb`.`COLABORADORES`;
DROP TABLE IF EXISTS `mydb`.`SETORES`;

-- Destruir todas as views
DROP VIEW IF EXISTS `mydb`.`view_name`; -- Substitua `view_name` pelo nome da sua view

-- Destruir todos os procedimentos armazenados
DROP PROCEDURE IF EXISTS `mydb`.`procedure_name`; -- Substitua `procedure_name` pelo nome do seu procedimento

-- Destruir todas as funções armazenadas
DROP FUNCTION IF EXISTS `mydb`.`function_name`; -- Substitua `function_name` pelo nome da sua função

-- Destruir todas as dependências (triggers)
DROP TRIGGER IF EXISTS `mydb`.`trigger_name`; -- Substitua `trigger_name` pelo nome do seu trigger

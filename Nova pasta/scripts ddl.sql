-- Adicionar coluna `email` na tabela `COLABORADORES`
ALTER TABLE `mydb`.`COLABORADORES` ADD COLUMN `email` VARCHAR(255) AFTER `telefone`;

-- Modificar o tipo de dado da coluna `salario` na tabela `COLABORADORES`
ALTER TABLE `mydb`.`COLABORADORES` MODIFY COLUMN `salario` DECIMAL(10, 2);

-- Renomear a coluna `dataAdimissao` para `dataAdmissao` na tabela `COLABORADORES`
ALTER TABLE `mydb`.`COLABORADORES` CHANGE COLUMN `dataAdimissao` `dataAdmissao` DATE;

-- Adicionar coluna `data_demissao` na tabela `COLABORADORES`
ALTER TABLE `mydb`.`COLABORADORES` ADD COLUMN `data_demissao` DATE AFTER `dataAdmissao`;

-- Adicionar chave estrangeira na tabela `VENDAS` para referenciar `COLABORADORES`
ALTER TABLE `mydb`.`VENDAS` ADD CONSTRAINT `fk_vendas_colaboradores` FOREIGN KEY (`COLABORADORES_idCOLABORADORES`) REFERENCES `mydb`.`COLABORADORES`(`idCOLABORADORES`);

-- Adicionar índice na coluna `cpf` da tabela `CLIENTES`
CREATE INDEX `idx_cpf` ON `mydb`.`CLIENTES` (`cpf`);

-- Adicionar coluna `estado` na tabela `CLIENTES`
ALTER TABLE `mydb`.`CLIENTES` ADD COLUMN `estado` VARCHAR(2) AFTER `cidade`;

-- Remover coluna `observacao` da tabela `COLABORADORES`
ALTER TABLE `mydb`.`COLABORADORES` DROP COLUMN `observacao`;

-- Adicionar coluna `data_publicacao` na tabela `LIVROS`
ALTER TABLE `mydb`.`LIVROS` ADD COLUMN `data_publicacao` DATE AFTER `ano_lancamento`;

-- Modificar o tamanho da coluna `nome` na tabela `EDITORAS`
ALTER TABLE `mydb`.`EDITORAS` MODIFY COLUMN `nome` VARCHAR(150);


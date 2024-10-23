-- Inserts para SETORES
INSERT INTO `mydb`.`SETORES` (`idSETORES`, `nome`, `qtd_colaboradores`) VALUES 
(1, 'Administração', 5),
(2, 'Vendas', 8),
(3, 'TI', 4),
(4, 'Recursos Humanos', 3),
(5, 'Financeiro', 2),
(6, 'Marketing', 6),
(7, 'Produção', 10),
(8, 'Logística', 7),
(9, 'Pesquisa e Desenvolvimento', 5),
(10, 'Atendimento ao Cliente', 4);

-- Inserts for COLABORADORES
INSERT INTO `mydb`.`COLABORADORES` (`idCOLABORADORES`, `nome`, `cargo`, `sexo`, `telefone`, `endereco`, `bairro`, `cidade`, `dataNascimento`, `dataAdimissao`, `salario`, `observacao`, `COLABORADOREScol`, `SETORES_idSETORES`) VALUES 
(1, 'João Silva', 'Gerente', 'M', '81999998888', 'Rua A, 100', 'Centro', 'Recife', '1980-01-15', '2022-01-10', 5500.00, 'Nenhuma', 'Comentário 1', 1),
(2, 'Maria Souza', 'Vendedora', 'F', '81988887777', 'Rua B, 200', 'Boa Vista', 'Recife', '1990-03-22', '2023-03-01', 3500.00, 'Experiência em vendas', 'Comentário 2', 2),
(3, 'Carlos Pereira', 'Analista de TI', 'M', '81977776666', 'Rua C, 300', 'Boa Viagem', 'Recife', '1985-05-10', '2021-06-15', 4500.00, 'Certificação em redes', 'Comentário 3', 3),
(4, 'Ana Lima', 'Assistente de RH', 'F', '81966665555', 'Rua D, 400', 'Casa Forte', 'Recife', '1992-07-18', '2020-09-20', 3200.00, 'Experiência em recrutamento', 'Comentário 4', 4),
(5, 'Pedro Santos', 'Contador', 'M', '81955554444', 'Rua E, 500', 'Graças', 'Recife', '1988-11-25', '2019-11-30', 4800.00, 'Especialista em impostos', 'Comentário 5', 5),
(6, 'Mariana Oliveira', 'Analista de Marketing', 'F', '81944443333', 'Rua F, 600', 'Pina', 'Recife', '1995-02-14', '2021-02-01', 3700.00, 'Experiência em mídias sociais', 'Comentário 6', 6),
(7, 'Lucas Almeida', 'Supervisor de Produção', 'M', '81933332222', 'Rua G, 700', 'Imbiribeira', 'Recife', '1983-08-30', '2018-08-05', 5200.00, 'Gestão de equipes', 'Comentário 7', 7),
(8, 'Fernanda Costa', 'Coordenadora de Logística', 'F', '81922221111', 'Rua H, 800', 'Tamarineira', 'Recife', '1987-12-12', '2017-12-20', 4600.00, 'Planejamento logístico', 'Comentário 8', 8),
(9, 'Rafael Mendes', 'Pesquisador', 'M', '81911110000', 'Rua I, 900', 'Espinheiro', 'Recife', '1991-04-05', '2022-04-10', 4000.00, 'Pesquisa e desenvolvimento', 'Comentário 9', 9),
(10, 'Juliana Ferreira', 'Atendente', 'F', '81900009999', 'Rua J, 1000', 'Aflitos', 'Recife', '1993-06-22', '2023-06-01', 3000.00, 'Atendimento ao cliente', 'Comentário 10', 10);


-- Inserts for CLIENTES
INSERT INTO `mydb`.`CLIENTES` (`idCLIENTES`, `nome`, `cpf`, `telefone`, `endereco`, `bairro`, `cidade`, `data_nascimento`, `email`, `CLIENTEScol`) VALUES 
(1, 'Heloisa Costa', '123.321.222-11', '81987457600', 'Av. Principal, 500', 'Centro', 'Recife', '2005-05-30', 'heloisa.costa@gmail.com', 'Comentário 1'),
(2, 'Paulo Gomes', '123.456.789-00', '81987654321', 'Rua C, 300', 'Boa Vista', 'Recife', '1992-11-12', 'paulo.gomes@gmail.com', 'Comentário 2'),
(3, 'Ana Paula', '987.654.321-00', '81999887766', 'Rua D, 400', 'Casa Forte', 'Recife', '1988-02-20', 'ana.paula@gmail.com', 'Comentário 3'),
(4, 'Carlos Eduardo', '321.654.987-00', '81988776655', 'Rua E, 500', 'Graças', 'Recife', '1990-07-15', 'carlos.eduardo@gmail.com', 'Comentário 4'),
(5, 'Mariana Silva', '456.789.123-00', '81977665544', 'Rua F, 600', 'Pina', 'Recife', '1995-09-10', 'mariana.silva@gmail.com', 'Comentário 5'),
(6, 'Roberto Lima', '654.321.987-00', '81966554433', 'Rua G, 700', 'Imbiribeira', 'Recife', '1985-11-25', 'roberto.lima@gmail.com', 'Comentário 6'),
(7, 'Fernanda Alves', '789.123.456-00', '81955443322', 'Rua H, 800', 'Tamarineira', 'Recife', '1993-03-05', 'fernanda.alves@gmail.com', 'Comentário 7'),
(8, 'Lucas Pereira', '987.123.654-00', '81944332211', 'Rua I, 900', 'Espinheiro', 'Recife', '1987-12-12', 'lucas.pereira@gmail.com', 'Comentário 8'),
(9, 'Juliana Mendes', '123.987.654-00', '81933221100', 'Rua J, 1000', 'Aflitos', 'Recife', '1992-06-22', 'juliana.mendes@gmail.com', 'Comentário 9'),
(10, 'Ricardo Santos', '321.987.123-00', '81922110099', 'Rua K, 1100', 'Boa Viagem', 'Recife', '1980-01-30', 'ricardo.santos@gmail.com', 'Comentário 10');

-- Inserts for DANFE
INSERT INTO `mydb`.`DANFE` (`idDANFE`, `numero_nfe`, `serie_nfe`, `data_emissao`, `valor_total`, `chave_eletronica`, `proto_autori`, `DANFEcol`, `CLIENTES_idCLIENTES`) VALUES 
(1, '00012345', '1', '2023-06-15', 150.00, '12345678901234567890', 'ABC123', 'Comentário DANFE 1', 1),
(2, '00054321', '2', '2023-07-10', 200.50, '09876543210987654321', 'DEF456', 'Comentário DANFE 2', 2),
(3, '00067890', '1', '2023-08-05', 300.75, '11223344556677889900', 'GHI789', 'Comentário DANFE 3', 3),
(4, '00098765', '2', '2023-09-12', 450.00, '22334455667788990011', 'JKL012', 'Comentário DANFE 4', 4),
(5, '00011223', '1', '2023-10-01', 175.25, '33445566778899001122', 'MNO345', 'Comentário DANFE 5', 5),
(6, '00033445', '2', '2023-10-15', 225.50, '44556677889900112233', 'PQR678', 'Comentário DANFE 6', 6),
(7, '00055667', '1', '2023-11-03', 500.00, '55667788990011223344', 'STU901', 'Comentário DANFE 7', 7),
(8, '00077889', '2', '2023-11-20', 600.75, '66778899001122334455', 'VWX234', 'Comentário DANFE 8', 8),
(9, '00099001', '1', '2023-12-05', 750.00, '77889900112233445566', 'YZA567', 'Comentário DANFE 9', 9),
(10, '00111223', '2', '2023-12-20', 850.50, '88990011223344556677', 'BCD890', 'Comentário DANFE 10', 10);

-- Inserts for VENDAS
INSERT INTO `mydb`.`VENDAS` (`idVENDAS`, `DataVenda`, `Valor_total`, `Qtd_livros`, `COLABORADORES_idCOLABORADORES`, `DANFE_idDANFE`, `CLIENTES_idCLIENTES`) VALUES 
(1, '2023-08-01', 500.00, '5', 1, 1, 1),
(2, '2023-08-10', 300.00, '3', 2, 2, 2),
(3, '2023-08-15', 450.00, '4', 3, 3, 3),
(4, '2023-08-20', 600.00, '6', 4, 4, 4),
(5, '2023-08-25', 700.00, '7', 5, 5, 5),
(6, '2023-09-01', 800.00, '8', 6, 6, 6),
(7, '2023-09-10', 550.00, '5', 7, 7, 7),
(8, '2023-09-15', 650.00, '6', 8, 8, 8),
(9, '2023-09-20', 750.00, '7', 9, 9, 9),
(10, '2023-09-25', 850.00, '8', 10, 10, 10);


-- Inserts for EDITORAS
INSERT INTO `mydb`.`EDITORAS` (`idEDITORAS`, `nome`, `cidade`, `uf`) VALUES 
(1, 'Editora Alfa', 'São Paulo', 'SP'),
(2, 'Editora Beta', 'Rio de Janeiro', 'RJ'),
(3, 'Editora Gama', 'Belo Horizonte', 'MG'),
(4, 'Editora Delta', 'Curitiba', 'PR'),
(5, 'Editora Épsilon', 'Porto Alegre', 'RS'),
(6, 'Editora Zeta', 'Salvador', 'BA'),
(7, 'Editora Eta', 'Fortaleza', 'CE'),
(8, 'Editora Theta', 'Recife', 'PE'),
(9, 'Editora Iota', 'Manaus', 'AM'),
(10, 'Editora Kappa', 'Brasília', 'DF');


-- Inserts for AUTORES
INSERT INTO `mydb`.`AUTORES` (`idAUTORES`, `nome`) VALUES 
(1, 'Carlos Drummond de Andrade'),
(2, 'Clarice Lispector'),
(3, 'Machado de Assis'),
(4, 'Jorge Amado'),
(5, 'Graciliano Ramos'),
(6, 'Cecília Meireles'),
(7, 'Manuel Bandeira'),
(8, 'João Cabral de Melo Neto'),
(9, 'Lygia Fagundes Telles'),
(10, 'Rubem Fonseca');


-- Inserts for LIVROS
INSERT INTO `mydb`.`LIVROS` (`idLIVROS`, `titulo`, `ano_lancamento`, `ISBN`, `preco`, `ESTOQUEcol`, `EDITORAS_idEDITORAS`) VALUES 
(1, 'Livro A', 2021, '9781234567897', 45.90, 'Comentário Livro A', 1),
(2, 'Livro B', 2020, '9789876543210', 60.00, 'Comentário Livro B', 2),
(3, 'Livro C', 2019, '9781111111111', 35.00, 'Comentário Livro C', 3),
(4, 'Livro D', 2018, '9782222222222', 50.00, 'Comentário Livro D', 4),
(5, 'Livro E', 2017, '9783333333333', 40.00, 'Comentário Livro E', 5),
(6, 'Livro F', 2016, '9784444444444', 55.00, 'Comentário Livro F', 6),
(7, 'Livro G', 2015, '9785555555555', 65.00, 'Comentário Livro G', 7),
(8, 'Livro H', 2014, '9786666666666', 70.00, 'Comentário Livro H', 8),
(9, 'Livro I', 2013, '9787777777777', 75.00, 'Comentário Livro I', 9),
(10, 'Livro J', 2012, '9788888888888', 80.00, 'Comentário Livro J', 10);

-- Inserts for AUTORES_has_LIVROS
INSERT INTO `mydb`.`AUTORES_has_LIVROS` (`AUTORES_idAUTORES`, `LIVROS_idLIVROS`) VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

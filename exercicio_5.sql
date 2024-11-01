set foreign_key_checks=0;
create schema bd_exercicio;
use bd_exercicio;
-- criaçao das tabelas
create table `bd_exercicio`.`tb_funcionario`(
`func_codigo` INT NOT NULL PRIMARY KEY,
`func_nome` varchar(60) null,
`func_cpf` varchar(13) null,
`forn_end` varchar(90) null,
`forn_salario` numeric,
`ger_depto_cod` int,
`trab_depto_cod` int,
`proj_cod` int
);
create table bd_exercicio.tb_departamento(
depto_codigo int not null primary key,
depto_nome varchar(60) null,
local_cod int
);
create table bd_exercicio.tb_projeto(
proj_codigo int not null primary key,
proj_numero int,
depto_cod int,
local_cod int
);
create table bd_exercicio.tb_local(
local_codigo int not null primary key,
local_desc varchar(60) null
);

ALTER table bd_exercicio.tb_funcionario
add index fk_ger_depto_cod_idx (ger_depto_cod ASC);

alter table bd_exercicio.tb_funcionario
add constraint fk_ger_depto_cod
	foreign key(ger_depto_cod)
    references bd_exercicio.tb_departamento (depto_codigo);

alter table bd_exercicio.tb_funcionario
add index fk_trab_depto_cod_idx (trab_depto_cod ASC);

alter table bd_exercicio.tb_funcionario
add constraint fk_trab_depto_cod
	foreign key(trab_depto_cod)
    references bd_exercicio.tb_projeto (proj_codigo);

alter table bd_exercicio.tb_funcionario
add index fk_proj_cod_idx (proj_cod ASC);

alter table bd_exercicio.tb_departamento
add constraint fk_depto_local_cod
	foreign key (local_cod)
    references bd_exercicio.tb_local (local_codigo);

alter table bd_exercicio.tb_projeto
add index fk_local_proj_cod_idx (local_cod ASC);

alter table bd_exercicio.tb_projeto
add constraint fk_local_proj_cod
	foreign key (local_cod)
    references bd_exercicio.tb_local (local_codigo);
    
INSERT INTO `bd_exercicio`.`tb_funcionario` (func_codigo, func_nome, func_cpf, forn_end, forn_salario, ger_depto_cod, trab_depto_cod, proj_cod) 
VALUES
(1, 'João Silva', '12345678900', 'Rua A, 123', 3000.00, 1, 2, 1),
(2, 'Maria Oliveira', '98765432100', 'Rua B, 456', 3500.00, 1, 2, 2),
(3, 'Pedro Santos', '45612378900', 'Rua C, 789', 2800.00, 1, 3, 3),
(4, 'Ana Costa', '32165498700', 'Rua D, 159', 3200.00, 1, 3, 1),
(5, 'Lucas Pereira', '14725836900', 'Rua E, 753', 4000.00, 1, 2, 2),
(6, 'Juliana Lima', '25814736900', 'Rua F, 951', 3800.00, 1, 1, 3),
(7, 'Gabriel Almeida', '36925814700', 'Rua G, 159', 3000.00, 1, 3, 1),
(8, 'Fernanda Ribeiro', '75315948600', 'Rua H, 258', 3300.00, 1, 2, 2),
(9, 'Bruno Ferreira', '15975348600', 'Rua I, 369', 2700.00, 1, 1, 3),
(10, 'Clara Martins', '85296374100', 'Rua J, 147', 3600.00, 1, 3, 1),
(11, 'Rafael Souza', '96385274100', 'Rua K, 258', 2900.00, 1, 2, 2),
(12, 'Sofia Rocha', '74185296300', 'Rua L, 369', 3100.00, 1, 1, 3),
(13, 'Vinícius Mendes', '14736925800', 'Rua M, 741', 3500.00, 1, 3, 1),
(14, 'Isabela Nascimento', '25836914700', 'Rua N, 852', 3200.00, 1, 2, 2),
(15, 'Thiago Silva', '36914725800', 'Rua O, 963', 2900.00, 1, 1, 3),
(16, 'Camila Ferreira', '75345612300', 'Rua P, 159', 3400.00, 1, 3, 1),
(17, 'André Martins', '85274136900', 'Rua Q, 258', 2800.00, 1, 2, 2),
(18, 'Natalia Alves', '96314725800', 'Rua R, 369', 3000.00, 1, 1, 3),
(19, 'Fernando Lima', '45698732100', 'Rua S, 159', 3100.00, 1, 3, 1),
(20, 'Luana Costa', '78912345600', 'Rua T, 258', 3600.00, 1, 2, 2),
(21, 'Murilo Rocha', '65432198700', 'Rua U, 369', 2900.00, 1, 1, 3),
(22, 'Giovanna Souza', '32198765400', 'Rua V, 159', 3400.00, 1, 3, 1),
(23, 'Igor Almeida', '15975385200', 'Rua W, 258', 3700.00, 1, 2, 2),
(24, 'Lívia Martins', '75385215900', 'Rua X, 369', 3100.00, 1, 1, 3),
(25, 'Henrique Ferreira', '25896374100', 'Rua Y, 159', 4000.00, 1, 3, 1),
(26, 'Carla Ribeiro', '36985214700', 'Rua Z, 258', 3800.00, 1, 2, 2),
(27, 'Eduardo Santos', '14745678900', 'Rua AA, 369', 3000.00, 1, 1, 3),
(28, 'Roberta Almeida', '98732165400', 'Rua AB, 159', 2900.00, 1, 3, 1),
(29, 'Matheus Lima', '32145678900', 'Rua AC, 258', 3600.00, 1, 2, 2),
(30, 'Aline Costa', '65478912300', 'Rua AD, 369', 3100.00, 1, 1, 3),
(31, 'Felipe Rocha', '98765432111', 'Rua AE, 159', 3700.00, 1, 3, 1),
(32, 'Jéssica Silva', '65412398700', 'Rua AF, 258', 3400.00, 1, 2, 2),
(33, 'Diego Santos', '32178965400', 'Rua AG, 369', 2900.00, 1, 1, 3),
(34, 'Amanda Ferreira', '45678912300', 'Rua AH, 159', 3000.00, 1, 3, 1),
(35, 'Victor Almeida', '65432198711', 'Rua AI, 258', 3300.00, 1, 2, 2),
(36, 'Cynthia Martins', '78912365400', 'Rua AJ, 369', 3100.00, 1, 1, 3),
(37, 'Leonardo Lima', '14725896300', 'Rua AK, 159', 2900.00, 1, 3, 1),
(38, 'Patrícia Costa', '85296315900', 'Rua AL, 258', 3500.00, 1, 2, 2),
(39, 'Samara Rocha', '96314725811', 'Rua AM, 369', 3600.00, 1, 1, 3),
(40, 'Alexandre Nascimento', '32165498711', 'Rua AN, 159', 3000.00, 1, 3, 1),
(41, 'Gustavo Souza', '78945612300', 'Rua AO, 258', 2900.00, 1, 2, 2),
(42, 'Tatiane Silva', '25814796300', 'Rua AP, 369', 3100.00, 1, 1, 3),
(43, 'Nathalia Ferreira', '14736925800', 'Rua AQ, 159', 4000.00, 1, 3, 1),
(44, 'Leandro Almeida', '36925814700', 'Rua AR, 258', 3800.00, 1, 2, 2),
(45, 'Bianca Martins', '25896374100', 'Rua AS, 369', 3000.00, 1, 1, 3),
(46, 'Rogerio Santos', '85274196300', 'Rua AT, 159', 2900.00, 1, 3, 1),
(47, 'Karla Costa', '74185236900', 'Rua AU, 258', 3500.00, 1, 2, 2),
(48, 'Renato Lima', '96385274111', 'Rua AV, 369', 3200.00, 1, 1, 3),
(49, 'Mariana Rocha', '78965432100', 'Rua AW, 159', 2900.00, 1, 3, 1),
(50, 'Ronaldo Ferreira', '65432178900', 'Rua AX, 258', 3100.00, 1, 2, 2);

select * from tb_funcionario;


INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (2, 'Financeiro', 102);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (3, 'Marketing', 103);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (4, 'Vendas', 104);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (5, 'Tecnologia da Informação', 105);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (6, 'Produção', 106);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (7, 'Qualidade', 107);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (8, 'Logística', 108);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (9, 'Pesquisa e Desenvolvimento', 109);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (10, 'Atendimento ao Cliente', 110);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (11, 'Jurídico', 111);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (12, 'Comunicação', 112);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (13, 'Treinamento e Desenvolvimento', 113);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (14, 'Sustentabilidade', 114);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (15, 'Compliance', 115);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (16, 'Planejamento Estratégico', 116);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (17, 'Inovação', 117);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (18, 'Relações Públicas', 118);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (19, 'Desenvolvimento de Produtos', 119);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (20, 'Administração', 120);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (21, 'Suprimentos', 121);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (22, 'Manutenção', 122);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (23, 'Segurança do Trabalho', 123);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (24, 'Desenvolvimento de Software', 124);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (25, 'Gestão de Projetos', 125);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (26, 'Financeiro Internacional', 126);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (27, 'Expansão de Negócios', 127);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (28, 'Análise de Dados', 128);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (29, 'Estratégia de Marketing', 129);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (30, 'Experiência do Cliente', 130);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (31, 'Gestão de Talentos', 131);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (32, 'Desenvolvimento de Carreira', 132);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (33, 'Desenvolvimento Sustentável', 133);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (34, 'Suporte Técnico', 134);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (35, 'Interface de Usuário', 135);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (36, 'Experiência do Usuário', 136);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (37, 'Análise de Mercado', 137);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (38, 'Gestão de Fornecedores', 138);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (39, 'Gestão de Risco', 139);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (40, 'Auditoria', 140);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (41, 'Responsabilidade Social', 141);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (42, 'Gestão de Crise', 142);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (43, 'Marketing Digital', 143);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (44, 'E-commerce', 144);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (45, 'Vendas Internacionais', 145);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (46, 'Gestão de Marca', 146);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (47, 'Desenvolvimento de Parcerias', 147);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (48, 'Planejamento Financeiro', 148);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (49, 'Gestão de Processos', 149);
INSERT INTO bd_exercicio.tb_departamento (depto_codigo, depto_nome, local_cod) VALUES (50, 'Melhoria Contínua', 150);


select * from tb_departamento;

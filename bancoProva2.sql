create database assinatura;
use assinatura;

CREATE TABLE ramo (
CodR int primary key,
DescricaoR varchar(50)
);

CREATE TABLE tipo (
CodT int primary key,
DescricaoT varchar(50)
);

CREATE TABLE municipio (
CodM int primary key,
DescricaoM varchar(50)
);

CREATE TABLE assinante (
CodA int primary key,
nome varchar(50),

CodR int,
foreign key (CodR) references ramo (CodR),

CodT int,
foreign key (CodT) references tipo (CodT)
);

CREATE TABLE endereco (
CodEn int primary key,
DescricaoE varchar(50),
complemento varchar(50),
bairro varchar(50),
CEP varchar(50),

CodA int,
foreign key (CodA) references assinante (CodA),

CodM int,
foreign key (CodM) references municipio (CodM)
);

CREATE TABLE telefone (
CodF int primary key,
ddd varchar(3),
numero varchar(10),

CodEn int,
foreign key (CodEn) references endereco (CodEn)
);

INSERT INTO tipo VALUES (1, 'PREMIUM'),
(2, 'BÁSICO'),
(3, 'GRÁTIS'),
(4, 'RESIDENCIAL'),
(5, 'COMERCIAL');

INSERT INTO ramo VALUES (1, 'INFORMÁTICA'),
(2, 'MEDICINA'),
(3, 'COMÉRCIO');

INSERT INTO municipio VALUES (1, 'JOÃO CÂMARA'),
(2, 'CEARA MIRIM'),
(3, 'TOUROS'),
(4, 'SÃO MIGUEL'),
(5, 'PELOTAS'),
(6, 'NATAL');

INSERT INTO assinante VALUES (1, 'JOÃO', 1, 2),
(2, 'JOSÉ', 2, 1),
(3, 'MARIA', 2, 1),
(4, 'MARIA BETÂNIA', 3, 3),
(5, 'JOANA', 1, 1),
(6, 'ALESSA', 1, 5);

INSERT INTO endereco VALUES (1, 'RUA ABC', 'APTO 201', 'TESTE', '999999-00', 1, 1),
(2, 'RUA TESTES ABC', '', 'TESTE', '999999-00', 1, 1),
(3, 'RUA bbbbVVVVV', 'APTO 1201', 'CENTRO', '999999-00', 2, 4),
(4, 'RUA VV', 'APTO 1201', 'CENTRO', '999999-00', 3, 5),
(5, 'RUA testeVVVVV', 'APTO 1201', 'CENTRO', '999999-00', 4, 2),
(6, 'RUA AtesteVVVVVVV', 'APTO 1201', 'CENTRO', '999999-00', 5, 3),
(7, 'RUA Jose moreira', 'APTO 201', 'TESTE', '999999-00', 6, 6);

INSERT INTO telefone VALUES (1, '84', '9999999999', 1),
(2, '84', '9999999999', 5),
(3, '84', '9999999999', 6),
(4, '84', '9999999999', 2),
(5, '84', '9999999999', 7);

select * from tipo;
select * from ramo;
select * from municipio;
select * from assinante;
select * from endereco;
select * from telefone;
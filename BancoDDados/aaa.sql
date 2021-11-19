create database faculdade;

Use faculdade;


-- Criando tabela empresa
	Create table Empresa (
		idEmpresa int primary key auto_increment,
		nomeEmpresa varchar(50),
		responsavel varchar(40));

-- Inserindo dados na tabela
	insert into Empresa values
		(null,'Fleury','maria'),
		(null,'C6','Pedro'),
		(null,'Tivit','Camila'),
		(null,'Safra','Natalia');

Select * From Empresa;

Select nomeEmpresa, Responsavel From Empresa;
Select * From Empresa order by nomeEmpresa;
Select * From Empresa order by responsavel desc;
Select * From Empresa where nomeEmpresa like '%r%';
Select * From Empresa where nomeEmpresa like 'S%';
Select * From Empresa where nomeEmpresa like '%r_';

update Empresa set Responsavel ='Tatiana' Where idEmpresa ='3';



USE faculdade;
CREATE table Aluno (
-- Nome_do_campo tipo do campo, virgula no final
RA CHAR(8) PRIMARY KEY,
NOME_ALUNO VARCHAR(100),
BAIRRO VARCHAR(75),
EMAIL VARCHAR (50)
);

-- Primeiro select
select * FROM aluno;

-- VAMOS INSERIR O ALUNO
INSERT INTO aluno VALUES
('01212127 ', 'lUCAS ALVES', 'VILA MARIA', ' LUCAS.AFERREIRA@BANDTEC@GMAIL.COM');

-- VAMOS INSERIR VARIOS ALUNOS AO MESMO TEMPO
INSERT INTO aluno VALUES
('01212999 ' , 'Vivian Silva' , ' Campos Elisios' ,'VIVIAN.SILVA@BANDTEC.COM'),
('01212153' , 'Matheus Eloy' , ' Vila Maria' ,'MATHEUS.ELOY@BANDTEC.COM'),
('01212072', 'Sara costa' , ' São Miguel' ,'SARA.COSTA@BANDTEC.COM'),
('01212039' , 'William Ribeiro' , ' Jardim Rosansa' ,'JARDIM.ROSANA@BANDTEC.COM');













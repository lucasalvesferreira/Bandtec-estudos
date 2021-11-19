/* Criando banco de dados exemplo*/

Create database exemplo;
use exemplo;

-- criando tabela emprego 
	Create table Empregado (
	codEmp int primary key auto_increment,
	nome varchar (45),
	salario double);

-- inserindo valores

insert into Empregado values
	(null,' Lucas alves', 10000),
	(null,' Lucas Ferreria', 1000),
	(null,' matheus', 1200),
	(null,' Vivian', 20000),
	(null,' alexandre', 20000);

select * from Empregado;

-- criando tabela dependente 
	Create table Dependente(
	codDep int auto_increment,
	nome varchar(45),
	dataNasc date,
	fkEmp int,
	primary key (codDep, fkEmp),
	foreign key (fkEmp) references Empregado (codEmp)); 

-- inserindo valores
insert into Dependente (nome,dataNasc,fkEmp) values
	('larissa','2010-05-03',1),
	('denise','2000-06-02',2),
	('joao','2001-05-03',3),
	('joao lucas','2015-05-03',4);

Select * from Dependente;

select Empregado.nome as 'Nome do Empregado', Empregado.salario, Dependente.dataNasc ,Dependente.nome as 'Nome do Dependente'
  from Empregado left join Dependente on fkEmp = codEmp;

drop database exemplo;
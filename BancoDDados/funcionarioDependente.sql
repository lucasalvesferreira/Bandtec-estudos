/* Criando banco de dados exemplo2*/

Create database exemplo2;
use exemplo2;


-- criando tabela emprego 
	Create table Funcionario (
	codFunc int primary key auto_increment,
	nome varchar (45),
    genero char (1),
    cpf char (11),
	salario double,
    fkSuper int,
	foreign key (fkSuper) references Funcionario (codFunc));
    
-- inserindo valores
insert into Funcionario values
	(null,' Lucas alves','M', '49006368894', 10000,null),
	(null,' Lucas Ferreria','M','49006368764', 1000,null),
	(null,' matheus','M','49006368123', 1200,null),
	(null,' Vivian','F','49006368987', 20000,null),
	(null,' alexandre','M','49006368764', 20000,null);

update Funcionario set fkSuper ='1' where codFunc ='2';
update Funcionario set fkSuper ='2' where codFunc ='3';
update Funcionario set fkSuper ='1' where codFunc ='4';
update Funcionario set fkSuper ='2' where codFunc ='5';

select * from Funcionario;


-- criando tabela dependente 
	Create table Dependente(
	codDep int auto_increment,
	nome varchar(45),
    parentesco varchar(45),
	dataNasc date,
	fkFunc int, 
    primary key(codDep,fkFunc),
	foreign key (fkFunc) references Funcionario(codFunc)
    )auto_increment =100; 


-- inserindo valores
insert into Dependente  values
	(100,'larissa','Irmao','2010-05-03',2),
	(0,'denise','Irma','2000-06-02',1),
	(0,'joao','filho','2001-05-03',4),
	(0,'joao lucas','sobrinho','2015-05-03',5);

Select * from Dependente;


select Funcionario.nome as 'Nome do Empregado', Funcionario.salario,Funcionario.genero,Funcionario.cpf, 
Dependente.dataNasc ,Dependente.nome as 'Nome do Dependente', Dependente.parentesco
  from Funcionario left join Dependente on fkEmp = codEmp;

drop database exemplo;
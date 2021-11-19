/* Banco de dados
Sistema de cadastro de grupos
*/

-- Banco de dados 
	Create database Sprint2;
		Use sprint2;
        
-- Tabelas

Create table Grupos(
idGrupos int primary key auto_increment,
nomeGrupo varchar(45),
descProject varchar(45),
Dia datetime,
Nota int
);

create table Alunos(
ra  char(8) primary key,
nomeAluno varchar (45),
email varchar(45),
fkGrupo int,
foreign key (fkGrupo) references Grupos(idGrupos)
);

create table Professores(
idprof int primary key auto_increment,
nomeProf varchar (45),
Diciplina varchar (45)) auto_increment = 1000;

create table Relacionamento(
fkGrupoAva int,
primary key (Dia,nota,fkGrupoAva,fkProfAva),
foreign key (fkGrupoAva) references grupo(idGrupo),
fkProfAva int,
primary key (Dia,nota,fkGrupoAva,fkProfAva),
foreign key (fkProfAva) references Professores(idprof),
Dia Datetime primary key,
Nota int
);


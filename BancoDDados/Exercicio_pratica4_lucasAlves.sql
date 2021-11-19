/*  Pratica 4 - BDD   */

	-- Criando banco Sprint2
		Create database Sprint2;
				use Sprint2;
                
   -- Tabelas do banco
   
		Create table Alunos(
			ra int primary key ,
			nome varchar(45),
			email varchar(45)
            );
            
		Insert into Alunos values
			(21001,'Goku','Goku@tecband.com.br'),
            (21002,'Naruto Uzumaki','Naruto.Uzumaki@tecband.com.br'),
            (21003,'Frezza','Frezza@tecband.com.br'),
            (21004,'Light Yagami','Light.Yagami@tecband.com.br'),
            (21005,'Barba Negra','Barba.Negra@tecband.com.br'),
            (21006,'Mokey d luffy','Mokey.luffy@tecband.com.br'),
            (21007,'Mosca','mosca@tecband.com.br'),
            (21008,'Saitama','Saitama@tecband.com.br'),
            (21009,'Sasuke Uchiha','Sasuke.Uchiha@tecband.com.br'),
            (21010,'L','L@tecband.com.br');
			
            select * from Alunos;

    
		Create table  Grupo(
			idGrupo int primary key auto_increment,
			nomeGrupo varchar(45),
			descProject varchar(45),
			fkAlunos int ,
           constraint fk_grupoalunos foreign key (fkAlunos)references Alunos(ra)
            );
            
            Insert into Grupo values
            (null,'Protagonista','Estufa',null),
            (null,'Rivais','Estacionamento',null);
            
            
			select * from Grupo;
            
            update Grupo set fkAlunos = 1 where idGrupo = '1';
            update Grupo set fkAlunos = 2 where idGrupo = '2';
            update Grupo set fkAlunos = 4 where idGrupo = '3';
            update Grupo set fkAlunos = 6 where idGrupo = '4';
            update Grupo set fkAlunos = 8 where idGrupo = '5';
            
            update Grupo set fkAlunos = 3 where idGrupo = '6';
            update Grupo set fkAlunos = 5 where idGrupo = '7';
            update Grupo set fkAlunos = 7 where idGrupo = '8';
            update Grupo set fkAlunos = 9 where idGrupo = '9';
            update Grupo set fkAlunos = 10 where idGrupo = '10';
            
       
            
		Create table Professor(
			idProf int auto_increment primary key,
			nomeProf varchar(45),
			disciplina varchar(45)
            );
            
            select * from Professor;

		Create table Avaliaçao( 
			fkGrupo int ,
            foreign key (fkGrupo) references Grupo(idGrupo),
			fkProf int ,
            foreign key (fkProf) references Professor(idProf),
			data_hora datetime, 
			nota varchar(45)
            );
            
            select * from Avaliaçao;
            
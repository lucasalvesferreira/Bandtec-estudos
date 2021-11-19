Use sprint01;

-- Criando a tabala Pais 
	Create table Pais(
		idPais int primary key auto_increment,
		nome varchar (40),
		capital varchar (40));

-- add coluna fkpais
	Alter table atleta add column fkPais int;

-- unindo as duas 
	Alter table atleta add foreign key (fkPais)
	references pais (idPais);
    
    Select * from atleta;
    
    -- Add valores
    Insert into pais values
    (null,"Brasil",'Brasilia'),
    (null,"Alemanha",'Berlim'),
    (null,"Austrália",'Camberra'),
    (null,"Canadá",'Otava'),
    (null,"Filipinas",'Manila, D.C.'),
    (null,"Estados Unidos da América",'Washington, D.C.'),
    (null," França",'Paris');
    
    
    Select *from atleta, pais ;
    
    Select count(nome) from atleta;
    
    update atleta set fkPais = '1' where ID_Atleta = '10';
    update atleta set fkPais = '2' where ID_Atleta = '11';
    update atleta set fkPais = '3' where ID_Atleta = '20';
    update atleta set fkPais = '4' where ID_Atleta = '30';
    update atleta set fkPais = '5' where ID_Atleta = '40';
    update atleta set fkPais = '6' where ID_Atleta = '50';
    update atleta set fkPais = '7' where ID_Atleta = '51';
     select * from atleta;
     select * from pais;
    
    Select * from atleta,pais where ID_Atleta = idPais;
    
    SELECT ra as 'Matrícula', nome_aluno as 'Nome do Aluno',
nomeEmpresa as 'Empresa de Interesse' from aluno
JOIN empresa ON idEmpresa = fkEmpresa
WHERE nomeEmpresa = 'Safra';
    
    
    
    
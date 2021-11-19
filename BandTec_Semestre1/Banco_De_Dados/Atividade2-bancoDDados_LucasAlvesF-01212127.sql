/* pratica 02 */
-- DataBase Revista

	CREATE DATABASE Revista;
		Use Revista;
    -- Criar tabela revista com auto emcrementaçao començando por 1
    
		CREATE TABLE Revista
	(idRevista int auto_increment primary key,
    Nome varchar(40),
    Categoria varchar (30));
    
    
    INSERT INTO Revista Values 
		(Null,'Quatro Rodas',null),
		(null,'Recreio',null),
		(null,'Isto é',null),
		(null,'Veja',null);
    
    -- Exibir dados da tabela.
			Select * From Revista;
    
    -- Atualizar as 4 categorias da revista e visualizar.
			UPDATE Revista SET Categoria ='Automobilistica' WHERE IdRevista = '1';
			UPDATE Revista SET Categoria ='Intretenimento' WHERE IdRevista = '2';
			UPDATE Revista SET Categoria ='Noticia' WHERE IdRevista = '3';
			UPDATE Revista SET Categoria ='Moda' WHERE IdRevista = '4';
				Select * From Revista;
                
	-- Inserir mais 3 dados na tabela
			Insert Into Revista Values
			(5,'PlayStation','Jogos' ),
			(NULL,'Mad','Humor'),
			(null,'Microsoft','Tecnologia' );
    
	-- Exibir dados da tabela.
			Select * From Revista;
            
	-- Exibir descriçao estrutura tabela
			Desc Revista;
            
	-- Alterar a tabela para que a coluna categoria possa ter no maximo 40 caracteres
		Alter table Revista modify column Categoria varchar(40);
        
	-- Exibir descriçao estrutura tabela
			Desc Revista;
            
	-- Add coluna periodicidade varchar (15)
		Alter table revista add column Periodicidade varchar(15);
        
	-- Exibir dados da tabela.
			Select * From Revista;
	
    -- Excluir a coluna periodicidade 
    ALter table Revista Drop column periodicidade;
    
    -- Exibir dados da tabela.
			Select * From Revista;
            
       -- Excluir database revista     
			Drop database revista;

/* Banco de dados termoVinhpos */

Create database TermoVinhos;
	Use TermoVinhos;


/* Tabelas */

-- Tabela Dos usuarios
	Create table Cadastro
		(id_users	int primary key auto_increment,
		Nome varchar(40),
		Endereço varchar(40),
		Cep char(30),
		Telefone char (40),
		Email Varchar (50),
        Permissao varchar(30)
		);
        
        /* Inserindo dados */
		Insert into Cadastro values
			( null,'LUCAS ALVES ','Rua Frei tarcisio 62','02118-020','1196546348','Lucas.aferreria@bandtec.com.br','All'),
			( null,'MATHEUS ELOY ',null,null,null,'matheus.palasson@bandtec.com.br','All'),
			( null,'THIAGO HENRIQUE ',null,null,null,'thiago.cordeiro@bandtec.com.br','All'),
			( null,'BRUNO HENRIQUE',null,null,null,'bruno.calmeida@bandtec.com.br','All'),
			( null,'VITORIA OLIVEIRA',null,null,null,'vitoria.osantos@bandtec.com.br','Crude'),
			( null,'ERICK SARAIVA',null,null,null,'erick.ssilva@bandtec.com.br','Crude'),
			( null,'RODRIGO RODRIGUES ',null,null,null,'rodrigo.campos@bandtec.com.br','Crude');
    
			Select * from Cadastro;
            
            
-- Tabela de vinhos
	create table Vinhos 
        (id int primary key auto_increment,
		Nome varchar (50),
		Temperatura varchar (50),
		Estilo varchar (50),
		Madeira varchar (50),
		Maturação varchar (50),
		Preço_médio varchar (50)
		);
        
        /* Inserindo dados */
		Insert into Vinhos values
			(NULL, 'Cabernet Sauvignon', '16 graus', 'Tinto', 'Carvalho francês', '19 meses', 'R$ 60'),
			(NULL, 'Maison Belleroche Chardonnay', '10 graus', 'Branco', 'Carvalho francês', '8 meses', 'R$ 200'),
			(NULL, 'Louis Jadot Meursault', '10 graus', 'Branco','Carvalho americano', '15 meses', 'R$ 1000'),
			(NULL, 'Susana Balbo Crios', '16 graus', 'Rosé', 'Carvalho francês', '9 meses', 'R$ 95'),
			(NULL, 'M. Chapoutier Pays d Oc Rosé','9 graus', 'Rosé', 'Carvalho americano', '4 meses', 'R$ 120');
           
           Select * From Vinhos;
    
-- Tabela de madeiras
	Create table Madeiras 
		(Id_madeiras int primary key auto_increment,
		Nome varchar (40),
        Espécie varchar (75),
		Sabor_adicionado_ao_vinho varchar (75),
		Temperatura_ideal varchar(40),
        Preço_medio varchar (40)
		);
		
        /* Inserindo dados */
		Insert into Madeiras values
			(1, 'Quercus alba', 'Carvalho norte-americano', 'Baunilha, coco e manteiga','10graus',null),
			(2, 'Quercus petraea', 'Carvalho francês', 'Especiarias doces','10 graus',null),
			(3, 'Quercus pedunculata', 'Carvalho francês', 'Cacau','10 graus',null),
			(NUll,'Quercus sessiliflora', 'Carvalho francês', 'Café e Canela','10 graus',null);
            
			Select * From madeiras;
        
-- Tabela de Temperatura 
	Create table Temperaturas
		( id_Temperatura int primary key auto_increment,
		Temperatura_Sensor varchar (50),
        Dia datetime (6),
		Hora time (6)
		);
        
        
	 /* Inserindo dados */
        INSERT INTO Temperaturas VALUES
			(NULL, '10 Graus', '2021-08-31', '11:36'),
			(NULL, '11 Graus', '2021-08-31', '11:37'),
			(NULL, '14 Graus', '2021-08-31', '11:38'),
			(NULL, '12 Graus', '2021-08-31', '11:39'),
			(NULL, '13 Graus', '2021-08-31', null),
			(null, '15 Graus', '2021-08-31', '11:45'),
			(Null, '10 Graus', '2021-08-31', '11:49:51'),
			(NULL, '28 Graus', '2021-08-31', '11:54'),
			(NULL, '10 Graus', '2021-08-31', '11:57'),
			(null, '12 Graus', '2021-08-31', '115930');
    
		Select * from Temperaturas;


	-- Atualizando graus	
		update Temperaturas set Temperatura_Sensor = '20 Graus' WHERE id_Temperatura = 5;


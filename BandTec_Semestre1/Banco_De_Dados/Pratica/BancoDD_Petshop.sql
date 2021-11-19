/* Sistema de cadastro para Petshop */

-- Criando banco do Petshop
	Create database Petshop;
		Use Petshop;

-- Tabela cliente
		Create table Cliente (
			idCliente int auto_increment primary key,
			Nome varchar(45),
			Telefone varchar (11),
			Celular varchar (11),
			Endereço varchar(45));
        
    -- Inserindo dados na tabela Cliente
		Insert into Cliente values
			(null,'Lucas Alves',1127265493,11965466348,'Rua Frei tarcisio 62'),
			(null,'Luana Alves',1128265490,11966566347,'Rua Volta dos que nao foram 82'),
			(null,'Gabriel machado',1127265493,11965466398,'Rua Bonde dos carecas 121'),
			(null,'Pericleitonrasta',1123455493,11965477348,'Rua Onde faz a volta 54'),
			(null,'Fabio assunção',1127267655,11963399987,'Rua Volta redonda 12'),
			(null,'Pericles',112227655,1196337787,'Rua bed stuy -  so doido vai 87'),
			(null,'fabio assunção',1127244444,11963378987,'Rua grande pequena viela 122');
        
        Select * From Cliente;

    -- Tabela Pet
		Create table Pet(
			idPet int primary key auto_increment,
			Nome varchar (45),
			Tipo varchar (45),
			raça varchar(45),
			dtNasc date) auto_increment = 101;
    
  
    -- Inserindo dados na tabela Pet
		insert into Pet values
			(null,'Geraldo','Papagaio','Sem raça','2019-02-05'), 
            (null,'Fagundes','Ramister','Sem raça','2020-05-07'),
            (null,'Anubis','Gato','Bombay','2018-07-05'),
            (null,'Bob','Cachorro','Labrador Retriever','2015-09-09'),
            (null,'Bolota','Cachorro','Bernese Mountain ','2019-02-05'),
            (null,'Ghost','Cachorro','Siberian Husky','2021-04-05'),
            (null,'Garfield','Gato','persa','2018-04-05'),
            (null,'Mel','Cachorro','Poodle','2017-02-10');
            
            
     -- Colocando chave estrangeira 
			ALter table Pet add fkCliente int;
			Alter table Pet add Foreign key (fkCliente) references Cliente(idCliente);
      
      -- Atualiando o compo fkCliente
			update Pet set fkCliente='1' where idPet ='106';
			update Pet set fkCliente='2' where idPet ='101';
			update Pet set fkCliente='2' where idPet ='104';
			update Pet set fkCliente='4' where idPet ='105';
			update Pet set fkCliente='5' where idPet ='103';
			update Pet set fkCliente='6' where idPet ='107';
			update Pet set fkCliente='7' where idPet ='102';
			update Pet set fkCliente='1' where idPet ='108';
            
            Select * From pet;
       
       
	-- Alterando tamano coluna nome cliente
			Alter table cliente modify nome varchar(50);
				Desc cliente;
            
	-- Exibindo dados de um tipoespecifico de animal
			Select * from Pet where Tipo ='Cachorro';
		
	-- Exibindo nomes e as datas de Nasc dos pets
			Select nome,dtNasc from pet ; 
            
	-- Exibindo dados dos pets ordenando por nome Asc
			Select * from Pet order by nome;
            
	-- Exibindo os dados dos clientes ordenado pelo bairro desc 
            Select * from Cliente order by Endereço desc;
            
	-- Exibindo clientes com o mesmo sobrenome 
			Select * from cliente where nome like'% Alves';
            
	-- Atualizando telefone de um cliente
		Update cliente set telefone='1127216601' where idCliente ="3";
			Select idCliente, nome, telefone from Cliente;
            
	-- Exibindo o nome dos pets e seus donos 
			Select 
			Pet.Nome as 'Nome do Pet',
			Pet.Tipo as 'Tipo do Pet',
			Pet.Raça ,
			Pet.dtNasc as 'Nascimento do Pet',
			Cliente.nome as 'Dono',
			Cliente.Telefone, celular, Endereço
			from Pet join Cliente where fkCliente= idCliente;
            
	-- Exibindo o nome dos pets e do seu dono especifico
			Select 
			Pet.Nome as 'Nome do Pet',
			Pet.Tipo as 'Tipo do Pet',
			Pet.Raça ,
			Pet.dtNasc as 'Nascimento do Pet',
			Cliente.nome as 'Dono',
			Cliente.Telefone, celular, Endereço
			from Pet join Cliente on fkCliente= idCliente 
            where idCliente= '1';
            
	-- Excluindo um pet
		delete from pet where idPet='108';
			Select * from pet;
            
	-- Excluindo as tabelas
		Drop tables Cliente,Pet;
            
        
        
                
/* Filmes, Diretores e atores */ 

-- Banco de dados AC3_filme.

	Create database AC3_filme;
		Use AC3_filme;
        
	-- tabela diretor 
		Create table Diretores(
			idDiretor int primary key auto_increment,
			NomeDiretor varchar (45),
			PaisNasc varchar(45));
    
    -- Inserindo dados tabela Diretores
		Insert into Diretores values 
			(null,"George Lucas","California"),
			(null,"James Cameron","Canada"),
			(null,"Tatsuya Nagamine","Japan"),
			(null,"Akira Toriyama","Japan");
            
				Select * from Diretores;
    
    -- Tabela Filmes.
		Create table Filmes(
			idFilm int primary key auto_increment,
			nomeFilm varchar(45),
			genero varchar(45),
			fkDiretor int,
			foreign key (fkDiretor) references Diretores(idDiretor))auto_increment =1000;
        
	-- Inserindo dados tabela Filmes
			Insert into Filmes values 
				(null,"Star Wars","Ficsao/Açao",1),
				(null,"Titanic","Romance/Drama",2),
				(null,"One Piece","Comedia/Animaçao",3),
				(null,"Dragon ball","Comedia/Luta",4),
				(null,"Avatar","Ficsao/Açao",2);
    
						Select * from Filmes;
                        
	-- Tabela Atores.
		Create table Atores(
        idAtores int primary key auto_increment,
        nomeAtor varchar(45),
        dtNasc date) auto_increment = 100;
	
	-- Inserindo dados tabela Atores
			Insert into Atores values
				(null,"Mark Hamill","1951-09-25"),
				(null,"Leonardo DiCaprio","1974-10-11"),
				(null,"Wendel Bezerra","1974-06-18"),
				(null,"Marco Antônio Costa","1963-02-23"),
				(null,"Carrie Fisher","1963-09-21");
		
        Select * from Atores;
        
	-- Tabela Atores.
		Create table AtoresFilmes(
			idFilmAtor int auto_increment,
			fkAtores int,
			foreign key (fkAtores) references Atores(idAtores),
			fkFilm int,
			foreign key (fkFilm) references Filmes(idFilm),
			primary key(idFilmAtor,fkAtores,fkFilm),
			papel Varchar(45),
			Ganho double);
        
     
	-- Inserindo dados tabela Atores
			Insert into AtoresFilmes values
				(null,100,1000,"luck SkyWalker",10000), 
				(null,101,1001,"Jack Dawson",20000), 
				(null,102,1002,"Monkey D.luffy",10000), 
				(null,102,1002,"Vegeta",10000),
				(null,104,1000,"Princesa Leia",10000);
                
                
               select * from AtoresFilmes;
               
	
    
    
      -- Exibindo os diretores e seus filmes
      Select NomeDiretor as "Diretor", PaisNasc as "Nascido em:", nomeFilm as "Filme", genero from  Diretores
		join Filmes on idDiretor = fkDiretor;
        
	-- Exibindo os dados de um diretor e seus filhos
        Select NomeDiretor as "Diretor", PaisNasc as "Nascido em:" ,nomeFilm as "Filme", genero from Diretores
		join Filmes on idDiretor = fkDiretor where idDiretor =2; 
        
	-- Exibuir a media e a soma dos ganhos
		Select avg(Ganho) as "Media do Valor Ganho", sum(Ganho) as "Soma de todos os Ganhos" from AtoresFilmes;
        
	-- Exibir o menor valor e o maior valor 
		Select max(Ganho) as "Maximo do Valor Ganho", min(Ganho) as "Minimode todos os Ganhos" from AtoresFilmes;
        
	-- Exibir os dados dos filmes, atores, papeis e valores 
		Select nomeAtor as "Ator", dtNasc as "nascimento" ,nomeFilm as "Filme" ,genero,papel , ganho 
        from Filmes join AtoresFilmes on idFilm = fkFilm
			join Atores on idAtores = fkAtores;
            
	-- Exiba um filme com atores papeis e ganhos 
		Select nomeAtor as "Ator", dtNasc as "nascimento" ,nomeFilm as "Filme" ,genero,papel , ganho 
			from Filmes join AtoresFilmes on idFilm = fkFilm
				join Atores on idAtores = fkAtores WHERE idFilm =1000;
            
	-- Exibir filmes os diretores atores,papeis,ganhos.
     Select NomeDiretor as "Diretor", PaisNasc as "Nascido em:", 
     nomeFilm as "Filme", genero ,nomeAtor as "Ator", dtNasc as "nascimento" ,papel , ganho 
     from  Diretores join Filmes on idDiretor = fkDiretor
		join AtoresFilmes on  idFilm = fkFilm
        join Atores on idAtores = fkAtores;
        
	-- Exibir nome dos filmes a media e a soma dos ganhos agrupadas por filme
    Select nomeFilm as "Filme",avg(Ganho) as "Media do Valor Ganho", sum(Ganho) as "Soma de todos os Ganhos"
    from Filmes join AtoresFilmes on idFilm = fkFilm join Atores on idAtores = fkAtores group by Filme;
          
	-- Exibir ator a media e a soma dos valores ganhos agrupados por ator
    Select nomeAtor as "Ator", avg(Ganho) as "Media do Valor Ganho", sum(Ganho) as "Soma de todos os Ganhos"
    from  AtoresFilmes  join Atores on idAtores = fkAtores group by nomeAtor ;
    
    -- Exibir nome dos filmes o menor valor e o maior valor ganhos agrupadas por filme
    Select nomeFilm as "Filme",max(Ganho) as "Maximo do Valor Ganho", min(Ganho) as "Minimode todos os Ganhos"
    from Filmes join AtoresFilmes on idFilm = fkFilm join Atores on idAtores = fkAtores group by Filme;
    
    -- Exibir ator a media e a soma dos valores ganhos agrupados por ator
    Select nomeAtor as "Ator", max(Ganho) as "Maximo do Valor Ganho", min(Ganho) as "Minimode todos os Ganhos"
    from  AtoresFilmes  join Atores on idAtores = fkAtores group by Ator ;
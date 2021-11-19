
/* Atividade banco de dados */
-- Exercicio 01

Create Database Sprint1;
	Use Sprint1;


Create Table Atleta (
	Id_Atleta int Primary Key, 
	Nome Char(40) ,
	Modalidade varchar(40), 
	Qtd_Medalhas int);


Insert into Atleta values
	('1101', 'Nadian Rilsto','skate','3'), 
    ('1102','Lucas ALves','Skate','2'), 
	('1103','Caetano Veloso','Tenis','3'),
    ('1104','Tim Maia','Volei','2'),
    ('1105','Matheus Eloy','Volei','1'),
    ('1106','Claudia leite','Corrida','2'),
	('1107','Zeca pagodinho','Corrida','1'); 
    
-- Comandos 
    
-- Exibir todos os dados da tabela.
	Select * From Atleta;
    
-- Exibir Apenas os Nome e Medalhas
	Select Nome, Qtd_Medalhas From Atleta;
    
-- Exibir apenas os dados de uma determinada modalidade.
	Select * From Atleta Where Modalidade = "Skate";
		
-- Exibir os dados ordenados pela Modalidade
	Select * From Atleta Order by modalidade Asc;
    
-- Exibir os dados ordenados pela quantidade de medalhas Decrescente
	Select * From Atleta Order by Qtd_Medalhas desc;
    
-- Exibir os dados cujo nome contenha a letra 'S'
    Select * From Atleta where Nome like "%S%"; 
    
-- Exibir os dados cujo nome termine com a letra "O"
	Select * From Atleta Where Nome like "%o %";
    
-- Exibir os dados cujo nome tenha a penultima letra "A"
	Select * From Atleta Where nome like "%a_ %";

-- Elimine a Tabela
	Drop table Atleta;
    

-- Exercicio 02

	Create Table Musica (
		Id_Musica int Primary Key,
		Titulo Char(40) , 
		Artista varchar(40), 
		Genero char (40) );
    
    Insert into Musica Values
		('1201','In the End','Link park','Rock'),
		('1202','waiting for the end','Link park','Rock'),
		('1203','Ela partiu','Tim maia','Mpb'),
		('1204','Pontes Indestrutiveis','charlie brown jr','mpb'),
		('1205','Crime','Febem','Trap'),
		('1206','EU','Djonga','Rap'),
		('1207','Godzilla','Eminem','Rap'),
		('1208','Preciso me encontrar','Cartola','Mpb');
        

-- Comandos 
	-- Exibir todos os dados
		Select * From Musica;
        
    -- Exibir apenas os Titulos e Artista 
		Select Titulo ,Artista From Musica;

	-- Exibir os dados das Musica de um detreminado genero
		Select * From Musica where Genero = 'Mpb';
        
	-- Exibir os dados das musicas de determinado artista   
		Select * From Musica where Artista = 'Link park';

	-- Exibir os dados da tabela ordenados pelo titulo
		Select * From Musica Order By Titulo Asc;
        
     -- Exibir os dados ordenados pelo artista em ordem desc
		Select * From Musica Order by Artista Desc;
        
     -- Exibir os dados das musicas cujo Titulo comece com "P"
		Select * From Musica Where Titulo Like "E%"; 
        
     -- Exibir os dados das musicas cujo Artista Termine com "M"
		Select * From Musica Where Artista Like "%M";     
        
     -- Exibir os dados das musicas cujo genero tenha como segunda letra "P "   
		Select * From Musica Where Genero Like "_P%"; 
	
	-- Exibir os dados das musicas cujo Titulo tenha como Penultima letra "L "   
		Select * From Musica Where Titulo Like "%L_ %"; 
	
    Drop Table Musica;
    









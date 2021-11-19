-- Banco de dados AC3_Produto.

	Create database AC3_Produto;
		Use AC3_Produto;
 
 -- Tabela Categoria
	Create table Categoria(
		idCateg int primary key auto_increment,
		nomeCateg varchar(45))auto_increment= 10;


-- Inserindo dados na tabela Categoria 
	insert into Categoria values
		(null,'eletrônico'),
		(null,'alimento'),
		(null,'perfumaria'),
		(null,'utencilios'),
		(null,'roupas'),
		(null,'bebidas');
        
	select * from Categoria;
    
-- Tabela Produtos 
	Create table Produtos(
		IdProdutos int primary key auto_increment,
        Descrição varchar(45),
        Marca varchar(45),
        fkCategoria int,
        foreign key (fkCategoria) references Categoria(idCateg))auto_increment =100;
        
-- Inserindo dados tabela Produtos
	insert into Produtos(Descrição,Marca) values
		("Microondas","electroluz"),
		("Calça","Nike"),
		("Geladeira","electroluz"),
		("Hamburguer","Sadia"),
		("RedLabel","JOHNNIE WALKER"),
		("jack daniels","JOHNNIE WALKER"),
		("Bolacha","Traquinas"),
		("Creme","Skala"),
		("Shampo","Skala"),
		("Corta vento","Nike"),
		("Televisao","Samsung");
        
			select * from Produtos;
	
    -- Atualizando fkCategoria 
		update Produtos set fkCategoria = 10 where idProdutos =100;
		update Produtos set fkCategoria = 10 where idProdutos =102;
		update Produtos set fkCategoria = 10 where idProdutos =110;
		update Produtos set fkCategoria = 11 where idProdutos =103;
		update Produtos set fkCategoria = 11 where idProdutos =106;
		update Produtos set fkCategoria = 14 where idProdutos =104;
		update Produtos set fkCategoria = 14 where idProdutos =105;
		update Produtos set fkCategoria = 15 where idProdutos =101;
		update Produtos set fkCategoria = 15 where idProdutos =109;
		update Produtos set fkCategoria = 12 where idProdutos =107;
		update Produtos set fkCategoria = 12 where idProdutos =108;
		
			select * from Produtos;
    
    
-- Tabela Loja
	Create table Lojas(
		idLojas int primary key auto_increment,
		NomeLoja varchar(45),
		fundação date)auto_increment=1000;
        
-- Inserindo dados tabela Loja
	Insert into Lojas value
		(null,"Bela vista","2019-08-01"),
		(null,"BemVestido","2017-01-01"),
		(null,"AdegaSocios","2015-09-03"),
		(null,"Mercado Dourado","2020-02-21"),
		(null,"Perfumaria DoceAroma","2018-04-22"),
		(null,"Mercadao Vila","2021-02-09"),
		(null,"EletroLar","2014-10-01");
        
        select * from Lojas;
        
        
-- Tabela ProdutoLoja 
	Create table ProdutoLoja(
		idProdLoja int auto_increment,
		fkLojas int,
		foreign key (fkLojas) references Lojas(idLojas),
		fkProdutos int,
		foreign key (fkProdutos) references Produtos(IdProdutos),
		primary key(idProdLoja,fkLojas,fkProdutos),
		preço decimal);

-- Inserindo dados tabela ProdutoLoja
	Insert into ProdutoLoja values
		(null,1000,107,5.00),
		(null,1000,108,8.00),
		(null,1001,101,35.00),
		(null,1001,109,115.00),
		(null,1002,104,100.00),
		(null,1002,105,150.00),
		(null,1003,103,10.00),
		(null,1003,106,2.00),
		(null,1004,107,5.00),
		(null,1004,108,8.00),
		(null,1005,103,10.00),
		(null,1005,105,150.00),
		(null,1005,106,2.00),
		(null,1005,107,9.00),
		(null,1006,100,350.00),
		(null,1006,102,35.00),
		(null,1006,110,3000.00);
        
        
	select * from  ProdutoLoja;
    
    
    -- Exiba Categoria e produto
    Select * from Categoria join Produtos on fkCategoria = idCateg;
    
    -- Exiba uma categoria e os dados dos produtos
     Select * from Categoria join Produtos on fkCategoria = idCateg where idCateg =10;
     
     -- Media e soma dos produtos 
     Select avg(preço) as "Media do preço",sum(preço) as "Soma dos Preços" from ProdutoLoja;
        
	-- Exibir o menor valor e o maior dos produtos
	Select min(preço) as "Minimo do preço", max(preço) as "Maximo dos Preços" from ProdutoLoja;
    
    -- Exiba um produto a loja e os preço 
    Select Descrição, marca, NomeLoja, preço
    From Produtos join ProdutoLoja on idProdutos= fkProdutos 
		join Lojas on fkLojas =idLojas where idProdutos =103;
        
        -- Exiba os produtos as lojas e os preços 
    Select Descrição, marca, NomeLoja, preço
    From Produtos join ProdutoLoja on idProdutos= fkProdutos 
		join Lojas on fkLojas =idLojas;
        
	-- Exibir Produtos as categorias 
    select Descrição, avg(preço) as "Media do preço",sum(preço) as "Soma dos Preços" from Produtos 
		join ProdutoLoja on idProdutos= fkProdutos group by Descrição;
        
        
	
       
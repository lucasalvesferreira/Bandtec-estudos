-- Criando tabela sensor

-- Ver data atual do sistema
select sysdate();

-- Criando tabela sensor
Create table Sensor (
idSensor int primary key auto_increment,
nomeSensor varchar (50),
localSensor varchar (70),
temperatura double not null,
dtTemp datetime default current_timestamp,
statusSensor varchar (40),
check (statusSensor ='ativo' or statusSensor = 'inavito')
);


-- Temperarutas:

-- int 
-- float 7 digitos(32-bit)
-- double 15 digitos (64-bit)
-- decimal: 28 digitos(128-bit)
-- decimal (8,5)



-- Inserindo dados na tabela

Insert into Sensor (nomeSensor, localSensor, temperatura, statusSensor) values
('Sensor A', 'Estufa Alfa', 34.8,'ativo');

Select * from sensor;

alter table sensor drop check sensor_chk_1;

alter table sensor add check (statusSensor = 'ativo' or statusSensor = 'inativo' or statusSensor ='manutenção');

Insert into Sensor (nomeSensor, localSensor, temperatura, statusSensor) values
('Sensor B', 'Estufa Beta', 38.8,'ativo');

Insert into Sensor (nomeSensor, localSensor, temperatura, statusSensor) values
('Sensor C', 'Estufa charlie', 24.8,'inativo');

Insert into Sensor (nomeSensor, localSensor, temperatura, statusSensor) values
('Sensor D', 'Estufa Delta ', 14.8,'ativo');

Insert into Sensor (nomeSensor, localSensor, temperatura, statusSensor) values
('Sensor E', 'Estufa Gama', 44.8,'inativo');

Insert into Sensor (nomeSensor, localSensor, temperatura, statusSensor) values
('Sensor F', 'Estufa Prota', 28.8,'inativo');

Select * From Sensor;

-- count 

Select count(idSensor) from sensor;
Select count(localSensor) from sensor;


-- sum ()
select sum(temperatura) from sensor;

-- avg ()
Select avg(temperatura) from sensor;

-- roud
Select round(avg(temperatura),2 )from sensor;

-- truncate 
select truncate(avg(temperatura),2) from sensor;

Select min(temperatura), max(temperatura) FROM sensor;

select min(temperatura) as 'temperatura minima',
		max(temperatura) as 'temperatura maxima' from sensor;
        
        
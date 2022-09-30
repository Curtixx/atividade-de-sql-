create database carros2;
use carros2;


create table veiculo(
	placa varchar(7) not null primary key ,
    marca enum ('fiat','chevrolet','volkswagen','ford') not null,
    modelo varchar(50) not null,
    ano integer(4) not null,
    cor enum('preto','prata','branco','vermelho','azul','outras')

)

create table estacionamento(
	cod int auto_increment primary key not null,
    placa varchar(7) not null,
    nro_vaga integer(3) not null,
    hora_entrada datetime not null,
    hora_saida datetime not null

)

alter table estacionamento
add foreign key estacionamento(placa) references veiculo(placa)

insert into veiculo
values ('abc','fiat','SUV','2010','preto'),
('abcd','chevrolet','sedan','2018','prata'),
('abcde','ford','hatch','2009','branco');


insert into estacionamento
values ('01','abc','1','2022-05-07','2022-05-07 20:00:00'),
('02','abc','2','2022-05-07','2022-05-07 20:00:00'),
('03','abc','3','2022-05-07','2022-05-07 20:00:00');


insert into estacionamento 
values ('04','abcdef','4','2022-05-07','2022-05-07 20:00:00');

update estacionamento 
SET hora_saida = '2022-05-07 20:45:00'
where cod = '02';

insert into veiculo
values 
('abcdefg','volkswagen','hatch','2021','vermelho');


delete from estacionamento 
where cod = '03';

insert into estacionamento
values 
('03','abcdef','3','2022-05-07','2022-05-07 20:00:00');

delete from veiculo 
where placa = 'abc';
select * from veiculo;

select placa, marca, modelo, cor from veiculo;

select  (hora_saida - hora_entrada)/10000  from estacionamento;

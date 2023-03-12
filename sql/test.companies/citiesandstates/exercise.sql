-- For this problem, you gonna need to return the city's name,
-- state's name, and the number of habitants for cities with more
-- than one million habitants and order by the number of habitants. From biggest to smallest


CREATE TABLE STATE (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name varchar(255) NOT NULL
);

CREATE TABLE CITY (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    population double NOT NULL,
    id_state int NOT NULL,
    FOREIGN KEY (id_state) REFERENCES STATE(id)
);


insert into STATE (name) values ('São Paulo');
insert into STATE (name) values ('Rio de Janeiro');
insert into STATE (name) values ('Bahia');
insert into STATE (name) values ('Rio Grande do Sul');
insert into STATE (name) values ('Amazonas');

insert into CITY (name, population,id_state) values ('São Paulo', 12300000, (select s.id from STATE s where s.name = 'São Paulo'));
insert into CITY (name, population,id_state) values ('Santos', 433656, (select s.id from STATE s where s.name = 'São Paulo'));
insert into CITY (name, population,id_state) values ('Rio de Janeiro', 6320000, (select s.id from STATE s where s.name = 'Rio de Janeiro'));
insert into CITY (name, population,id_state) values ('Niteroi', 515317, (select s.id from STATE s where s.name = 'Rio de Janeiro'));
insert into CITY (name, population,id_state) values ('Salvador', 2900319, (select s.id from STATE s where s.name = 'Bahia'));
insert into CITY (name, population,id_state) values ('Porto Alegre', 1492530, (select s.id from STATE s where s.name = 'Rio Grande do Sul'));
insert into CITY (name, population,id_state) values ('Manaus', 2020000, (select s.id from STATE s where s.name = 'Amazonas'));

--answer
select c.name, s.name, c.population  from STATE s
join city c on s.id = c.id_state
where c.population > 1000000
order by c.population desc
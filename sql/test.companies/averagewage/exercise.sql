-- For this problem you gonna need to calculate the average
-- salary of employees over 35 years old. Only for sectors
-- where there is more than one employee.


CREATE TABLE EMPLOYEE (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    age int NOT NULL
);


CREATE TABLE SECTOR (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    remuneration_per_month int NOT NULL,
    id_employee int NOT NULL,
    FOREIGN KEY (id_employee) REFERENCES EMPLOYEE(id)
);


insert into EMPLOYEE (name, age) values ('Pedro', 35);
insert into EMPLOYEE (name, age) values ('Joao', 40);
insert into EMPLOYEE (name, age) values ('Maria', 35);
insert into EMPLOYEE (name, age) values ('Fernanda', 39);
insert into EMPLOYEE (name, age) values ('Maikel', 44);
insert into EMPLOYEE (name, age) values ('Juliana', 34);

insert into SECTOR (name, remuneration_per_month, id_employee) values ('Admin', 1500, (select e.id from EMPLOYEE e where e.name = 'Pedro'));
insert into SECTOR (name, remuneration_per_month, id_employee) values ('Admin', 2000, (select e.id from EMPLOYEE e where e.name = 'Maria'));
insert into SECTOR (name, remuneration_per_month, id_employee) values ('Mkt', 2500, (select e.id from EMPLOYEE e where e.name = 'Joao'));
insert into SECTOR (name, remuneration_per_month, id_employee) values ('Fina', 1000, (select e.id from EMPLOYEE e where e.name = 'Fernanda'));
insert into SECTOR (name, remuneration_per_month, id_employee) values ('Fina', 1000, (select e.id from EMPLOYEE e where e.name = 'Maikel'));
insert into SECTOR (name, remuneration_per_month, id_employee) values ('Fina', 2000, (select e.id from EMPLOYEE e where e.name = 'Juliana'));


--answer
select s.name , avg(s.remuneration_per_month) from EMPLOYEE e
join SECTOR s on e.id  = s.id_employee
where e.age  >= 35
group by s.name
having count(s.name) > 1

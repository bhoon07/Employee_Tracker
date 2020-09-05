drop database if not exists employeeTrackerdb;

create database employeeTrackerdb;

use employeeTrackerdb;

create table department(
    id int not null auto_increment,
    handle varchar(30) null,
    primary key(id)
);

create table job(
    id int not null auto_increment,
    title varchar(30) null,
    salary decimal(7,0) null,
    department_id int null,
    primary key(id)
);

create table employee(
    id int not null auto_increment,
    first_name varchar(30) null,
    last_name varchar (30) null,
    role_id int null,
    manager_id int null,
    primary key(id)
);

insert into department (handle) values ("Engineering");
insert into department (handle) values ("Sales");
insert into department (handle) values ("Financing");
insert into department (handle) values ("Legal");

insert into job (title, salary, department_id) values ("Salesman", 80000, 2);

drop database if not exists employeeTrackerdb;

create database employeeTrackerdb;

use employeeTrackerdb;

create table department(
    id int not null auto_increment,
    ID varchar(30) null,
    handle varchar(30) null,
    primary key(id)
);

create table job(
    id int not null auto_increment,
    ID varchar(30) null,
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
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
insert into job (title, salary, department_id) values ("Software Engineer", 100000, 1);
insert into job (title, salary, department_id) values ("Accountant", 60000, 3)
insert into job (title, salary, department_id) values ("Attorney", 90000, 4);

insert into employee (first_name, last_name, role_id, manager_id) values ("John", "Johnson", 1, 1);
insert into employee (first_name, last_name, role_id, manager_id) values ("Bill", "Williams", 1, 2);
insert into employee (first_name, last_name, role_id, manager_id) values ("Diana", "Prince", 1, 4);
insert into employee (first_name, last_name, role_id, manager_id) values ("Dick", "Richards", 1, 3);

select * from department;
select * from job;
select * from employee;

select handle, title, salary, department_id
from department
inner join job on department.job = job.id;
select handle, title, salary, department_id
from department
left join job on department.job = job.id;
select handle, title, salary, department_id
from department
right join job on department.job = job.id;

select first_name, last_name, title, salary, role_id, manager_id
from job
inner join employee on job.employee = employee.id;
select first_name, last_name, title, salary, role_id, manager_id
from job
left join employee on job.employee = employee.id;
select first_name, last_name, title, salary, role_id, manager_id
from job
right join employee on job.employee = employee.id;
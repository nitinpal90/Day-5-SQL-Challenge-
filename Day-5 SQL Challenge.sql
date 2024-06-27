use University;

show tables;

select * from employees;
select * from project;
-- Problem Statement: Create a comprehensive report that include both the empoyees and project information indicating the project lead for each project. include all employees and project, even if they are not assigned to a project? --

select project_name, emp_id, emp_name from employees outer join project  on employees.emp_id = project.project_lead_id;

-- Problem Statement: Genrate a metrix for all posible combination of employees and departments regardless of whether there is an actual assignment of employees to department this is usefull for explorinng for all posible and pairing? --
select emp_id, emp_name, department_name from employees cross join departments;

-- Create a Adhar Card Database --
create database AdharCard;
use Adharcard;

create table Adhar (
UID bigint primary key,
FirstName varchar(20),
LastName varchar(20),
PhoneNumber int (15),
Address varchar(250)
);

insert into Adhar(UID, FirstName, LastName, PhoneNumber, Address) values
(123456739123, "Nitin", "Pal", '2121343456', "A-78 UP"),
(123456789124, "Bobby", "Pal", '2121343456', "A-78 MP"),
(123456789125, "Rahul", "Pal", '2121543456', "A-78 MP");

select * from Adhar;


create table Regions
(
REGION_ID int identity (1,1) primary key,
REGION_NAME varchar(25)
)

create table Countries
(
COUNTRY_ID int identity(1,1) primary key,
COUNTRY_NAME varchar(40),
REGION_ID int
)
create table Locations
(
LOCATIONS_ID int identity(1,1) primary key,
STREET_ADDRESS varchar(25),
POSTAL_CODE varchar(12),
CITY varchar(30),
STATE_PROVINCE varchar(12),
COUNTRY_ID int
)

create table Departments
(
DEPARTMENT_ID int identity(1,1) primary key,
DEPARTMENT_NAME varchar(30),
MANAGER_ID int,
LOCATIONS_ID int
)
create table Job_history
(
EMPLOYEE_ID int identity(1,1) primary key,
START_DATE date,
END_DATE date,
JOB_ID varchar(10),
DEPARTMENT_ID int
)

create table Employees
(
EMPLOYE_ID int identity(1,1) primary key,
FIRST_NAME varchar(20),
LAST_NAME varchar(20),
EMAIL varchar(25),
PHONE_NUMBER varchar(25),
HIRE_DATE date,
JOB_ID varchar(20),
SALARY decimal,
COMMISSION_PCT decimal,
MANAGER_ID int,
DEPARTMENT_ID int
)

create table Jobs
(
JOB_ID int identity(1,1) primary key,
JOB_TITLE varchar(35),
MIN_SALARY decimal,
MAX_SALARY decimal
)

create table Job_grades
(
GRADE_LEVEL varchar(2),
LOWEST_SAL int,
HIGHEST_SAL int,

)

select*from Job_grades
drop table Job_grades
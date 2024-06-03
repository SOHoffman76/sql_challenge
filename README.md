# sql_challenge
Pewlett Hackard employee research

# Data Model
Reviewed each .csv file to create logic model.

department.csv
-dept_no varchar(10) PK
-dept_name varchar(50)

dept_emp.csv
-emp_no varchar(20)
-dept_no varchar(10)

dept_manager.csv
-dept_no varchar(10)
-emp_no varchar(20)

employees.csv
-emp_no PK varchar(20)
-emp_title_id FK varchar(20)
-birth_date datetime
-first_name varchar(50)
-last_name varchar(50)
-sex char(1)
-hire_date datetime

salaries.csv
-emp_no varchar(20)
-salary int

titles.csv
-title_id PK varchar(20)
-title varchar(50)


# Creating the Entity Relationship Diagram
In employees.csv, title_id and emp_title_id are PK/FK
dept_emp.csv requires a composite key because an employee can belong to
multiple departments over time. 

dept_manager.csv requires a composite key because an employee can manage
multiple departments over time.

salaries.csv requres a composite key because an employee can have more than
one salarie over time.


department.csv
-dept_no varchar(10) PK
-dept_name varchar(50)

titles.csv
-title_id varchar(20) PK
-title varchar(50)

employees.csv
-emp_no varchar(20) PK
-emp_title_id varchar(20) FK
-birth_date datetime
-first_name varchar(50)
-last_name varchar(50)
-sex char(1)
-hire_date datetime

dept_emp.csv
-emp_no varchar(20) PK, FK
-dept_no varchar(10) PK, FK

dept_manager.csv
-dept_no varchar(10) PK, FK
-emp_no varchar(20) PK, FK

salaries.csv
-emp_no varchar(20) PK, FK
-salary int


# Data Engineering
Creating the table schema, etc. in pgAdmin4
working in PostgreSQL
Database title: Pewlett Hackard
Checking NOT NULL (determined based on PK, FK, and 
mandatory values - all employee data required.)

Data imported.

# Data Analysis





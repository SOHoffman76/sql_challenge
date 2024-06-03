-- DROP TABLE IF EXISTS department;
-- DROP TABLE IF EXISTS titles;
-- DROP TABLE IF EXISTS employees;
-- DROP TABLE IF EXISTS dept_emp;
-- DROP TABLE IF EXISTS dept_manager;
-- DROP TABLE IF EXISTS salaries;

-- create tables
CREATE TABLE department (
    dept_no VARCHAR(10) PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

CREATE TABLE titles (
    title_id VARCHAR(20) PRIMARY KEY,
    title VARCHAR(50) NOT NULL
);
CREATE TABLE employees (
    emp_no VARCHAR(20) PRIMARY KEY,
    emp_title_id VARCHAR(20) NOT NULL,
    birth_date TIMESTAMP NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    sex CHAR(1) NOT NULL,
    hire_date TIMESTAMP NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);
CREATE TABLE dept_emp (
    emp_no VARCHAR(20) NOT NULL,
    dept_no VARCHAR(10) NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES department(dept_no)
);

CREATE TABLE dept_manager (
    dept_no VARCHAR(10) NOT NULL,
    emp_no VARCHAR(20) NOT NULL,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES department(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries (
    emp_no VARCHAR(20) NOT NULL,
    salary INT NOT NULL,
    PRIMARY KEY (emp_no, salary),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "titles" ("title_id");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "department" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "department" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");



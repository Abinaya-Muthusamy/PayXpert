create database payXpert;
use payXpert;

create table employee(
    employee_id int primary key,
    f_name varchar(30),
    l_name varchar(30),
    dob date,
    gender varchar(15),
    email varchar(50),
    phone_num varchar(15),
    address varchar(50),
    position varchar(50),
    doj date,
    dol date);

create table payroll(
    payroll_id int primary key,
    employee_id int,
    foreign key (employee_id) references employee(employee_id), 
    PayPeriodStartDate date,
    PayPeriodEndDate date,
    basicsalary float,
    OvertimePay float,
    deductions float,
    Net_Sal float);

create table tax(
    tax_id int primary key,
    employee_id int,
    foreign key (employee_id) references employee(employee_id),
    tax_year year,
    taxable_income float,
    tax_amt float);

create table f_record(
    record_id int primary key,
    employee_id int,
    foreign key (employee_id) references employee(employee_id),
    record_date date,
    description varchar(50),
    amount float,
    record_type varchar(50));

insert into employee(employee_id,f_name,l_name,dob,gender,email,phone_num,address,position,doj) values(1,'Abdul','Rahuman','2003-04-09','Male','rahuman9apr@gmail.com','9870098767','Tenkasi','Software Developer','2024-07-01'),
    
insert into employee(employee_id,f_name,l_name,dob,gender,email,phone_num,address,position,doj) values
(2,'Banu','Priya','2002-11-02','Female','banumsss@gmail.com','9876545678','Karur','FrontEnd Developer','2024-05-01'),
(3,'Deebhika','Sree','2003-05-15','Female','deebhika@gmail.com','8123454321','Vellakovil','FullStack Developer','2024-03-01'),
(4,'Hari','Priya','2002-09-13','Female','hkpriya@gmail.com','6379794567','Dharapuram','Software Developer','2024-04-01'),
(5,'Isai','Vani','2002-06-14','Female','mozhiisai@gmail.com','7865983445','Vellakovil','FrontEnd Developer','2024-01-01'),
(6,'Joshva','Arockiaraj','2002-09-15','Male','josh@gmail.com','6765686964','Trichy','FullStack Developer','2024-02-01'),
(7,'Benedick','Raj','2002-06-19','Male','benraj@gmail.com','7879767574','Dharapuram','Software Developer','2024-01-15'),
(8,'Mansoor','Ali','2002-05-10','Male','mansoor@gmail.com','8283485683','Sivagiri','FrontEnd Developer','2024-08-01'),
(9,'Kural','Arasu','2003-07-18','Male','sarathy@gmail.com','7876659675','Kodaikanal','FullStack Developer','2024-03-21'),
(10,'Nithiya','Shree','2003-08-07','Female','nithiya@gmail.com','9879549393','Thennilai','Software Developer','2024-05-01');


insert into payroll values(101,1,'2024-07-01','2024-08-01',200000,100000,5000,295000),
(102,2,'2024-05-01','2024-08-01',500000,100000,50000,550000),
(103,3,'2024-03-01','2024-05-01',350000,115000,15000,450000),
(104,4,'2024-04-01','2024-06-01',800000,200000,50000,950000),
(105,5,'2024-01-01','2024-12-01',1000000,500000,200000,1300000),
(106,6,'2024-07-01','2024-08-01',200000,100000,5000,295000),
(107,7,'2024-05-01','2024-08-01',500000,100000,50000,550000),
(108,8,'2024-03-01','2024-05-01',350000,115000,15000,450000),
(109,9,'2024-04-01','2024-06-01',800000,200000,50000,950000),
(110,10,'2024-01-01','2024-12-01',1000000,500000,200000,1300000);

insert into tax values(1001,5,'2024',800000,100000),
(1002,4,'2024',500000,50000),
(1003,3,'2024',400000,45000),
(1004,2,'2024',300000,30000),
(1005,1,'2024',100000,10000),
(1006,10,'2024',800000,100000),
(1007,9,'2024',500000,50000),
(1008,8,'2024',400000,45000),
(1009,7,'2024',300000,30000),
(1010,6,'2024',100000,10000);

insert into f_record values(10001,1,'2024-04-18','Salary',200000,'Income'),
(10002,2,'2024-04-18','Expenditure',200000,'Expense'),
(10003,3,'2024-04-18','Salary',300000,'Income'),
(10004,4,'2024-04-18','Expenditure',300000,'Expense'),
(10005,5,'2024-04-18','Salary',500000,'Income'),
(10006,6,'2024-04-18','Salary',200000,'Income'),
(10007,7,'2024-04-18','Expenditure',200000,'Expense'),
(10008,8,'2024-04-18','Salary',300000,'Income'),
(10009,7,'2024-04-18','Expenditure',300000,'Expense'),
(10010,10,'2024-04-18','Salary',500000,'Income');



    

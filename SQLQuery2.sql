/*create database wadduwa_super_cennter*/

/*create table
create table stock(
st_id int not null primary key,
st_quantity int,
availability_stock int,
purchase_price decimal(10,2),
sell_price decimal(10,2)
)

create table supplier(
sup_id varchar(10) not null primary key,
brand varchar(20),
sup_contact varchar(25),
sup_email varchar(50),
sup_address varchar(70)
)

create table product(
product_id varchar(10) not null primary key,
product_name varchar(50)
)

create table bill_information(
bill_id varchar(10) not null primary key,
bill_date datetime default getdate(),
)

create table discount(
discount_id int not null primary key,
discount_values decimal(10,2),
discount_desc varchar(50)
)

create table employee(
employee_id varchar(10) not null primary key,
employee_name varchar(50),
contact varchar(20),
employee_address varchar(50),
enroll_date datetime default getdate()
)

create table employee_role(
role_id varchar(10) not null primary key,
role_name varchar(50),
salary decimal(10,2)
)

CREATE TABLE supplier (
    sup_id varchar(10) NOT NULL PRIMARY KEY,
    brand varchar(30) NOT NULL,
	sup_contact varchar(20),
	sup_email varchar(50),
	sup_address varchar(50)  
)

CREATE TABLE stock (
    st_id int NOT NULL PRIMARY KEY,
    st_quantity int NOT NULL,
	stock_availability varchar(50),
	purchase_price decimal(10,2),
	sell_price decimal(10,2)
   
)

create table product(
product_id varchar(10) not null primary key,
product_name varchar(50),
st_id int,
FOREIGN KEY(st_id) REFERENCES stock(st_id)
)

CREATE TABLE supplier (
    sup_id varchar(10) NOT NULL PRIMARY KEY,
	st_id int,
    brand varchar(30) NOT NULL,
	sup_contact varchar(20),
	sup_email varchar(50),
	sup_address varchar(50),
	FOREIGN KEY(st_id) REFERENCES stock(st_id)
)

create table deals(
deal_id varchar(10) not null primary key,
bill_id varchar(10),
product_id varchar(10),
FOREIGN KEY(bill_id) REFERENCES bill_information(bill_id),
FOREIGN KEY(product_id) REFERENCES product(product_id)
)

create table discount(
bill_id varchar(10),
discount_id int not null primary key,
discount_values decimal(10,2),
discount_desc varchar(50),
FOREIGN KEY(bill_id) REFERENCES bill_information(bill_id)
)


create table employee(
employee_id varchar(10) not null primary key,
role_id varchar(10),
employee_name varchar(50),
contact varchar(20),
employee_address varchar(50),
enroll_date datetime default getdate(),
FOREIGN KEY(role_id) REFERENCES employee_role(role_id)
)


create table category(
category_code varchar(10) not null primary key,
category_name varchar(40)
)

create table product(
product_id varchar(10) not null primary key,
product_name varchar(50),
st_id int,
category_code varchar(10),
FOREIGN KEY(st_id) REFERENCES stock(st_id),
FOREIGN KEY(category_code) REFERENCES category(category_code)
)


create table deals(
deal_id varchar(10) not null primary key,
bill_id varchar(10),
product_id varchar(10),
FOREIGN KEY(bill_id) REFERENCES bill_information(bill_id),
FOREIGN KEY(product_id) REFERENCES product(product_id)
)


create table child_items(
category_code varchar(10),
product_type varchar(50),
FOREIGN KEY(category_code) REFERENCES category(category_code)
)

create table home_ware(
category_code varchar(10),
product_type varchar(50),
FOREIGN KEY(category_code) REFERENCES category(category_code)
)

create table house_hold(
category_code varchar(10),
manufacture_date date,
expire_date date,
FOREIGN KEY(category_code) REFERENCES category(category_code)
)

create table electrics(
category_code varchar(10),
manufacture_date date,
FOREIGN KEY(category_code) REFERENCES category(category_code)
)


create table electronics(
category_code varchar(10),
manufacture_date date,
FOREIGN KEY(category_code) REFERENCES category(category_code)
)

*/



















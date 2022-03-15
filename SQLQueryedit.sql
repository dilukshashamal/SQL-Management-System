/*create database wadduwa_super_cennterdemo

create table Employee_role(
role_id varchar(10) not null primary key,
role_name varchar(50),
salary decimal(10,2)
)

create table Employee(
employee_id varchar(10) not null primary key,
employee_name varchar(50),
contact varchar(20),
employee_address varchar(50),
enroll_date datetime default getdate(),
roll_id varchar(10),
FOREIGN KEY(roll_id) REFERENCES Employee_role(role_id)
)

create table Invoice(
employee_id varchar(10),
invoice_id varchar(10) not null primary key,
bill_date datetime default getdate(),
FOREIGN KEY(employee_id) REFERENCES Employee(employee_id)
)

create table Discount(
invoice_id varchar(10),
discount_id int not null primary key,
discount_percentage decimal(10,2),
discount_describe varchar(50),
FOREIGN KEY(invoice_id) REFERENCES Invoice(invoice_id)
)


create table Customer(
customer_id varchar(10) not null primary key,
customer_name varchar(50),
customer_contact varchar(30),
customer_address varchar(40)
)

create table Customer_Invoice(
invoice_id varchar(10),
customer_id varchar(10),
FOREIGN KEY(invoice_id) REFERENCES Invoice(invoice_id),
FOREIGN KEY(customer_id) REFERENCES Customer(customer_id)
)

create table category(
category_id varchar(10) not null primary key,
category_name varchar(40)
)

CREATE TABLE Stock (
    stock_id int NOT NULL PRIMARY KEY,
    stock_quantity int NOT NULL,
	stock_availability varchar(50),
	purchase_price decimal(10,2),
	sell_price decimal(10,2),
	employee_id varchar(10),
	FOREIGN KEY(employee_id) REFERENCES Employee(employee_id)  
)

create table Supplier(
supplier_id varchar(10) not null primary key,
supplier_name varchar(50),
supplier_contact varchar(20),
supplier_email varchar(40),
supplier_address varchar(50)
)

create table Stock_Supplier(
stock_id int,
supplier_id varchar(10),
FOREIGN KEY(stock_id) REFERENCES Stock(stock_id),
FOREIGN KEY(supplier_id) REFERENCES Supplier(supplier_id)
)



create table Product(
product_id varchar(10) not null primary key,
product_brand varchar(30),
product_name varchar(30),
stock_id int,
category_id varchar(10),
FOREIGN KEY(stock_id) REFERENCES Stock(stock_id),
FOREIGN KEY(category_id) REFERENCES category(category_id)
)


create table Deals(
invoice_id varchar(10),
product_id varchar(10),
quantity int,
FOREIGN KEY(invoice_id) REFERENCES Invoice(invoice_id),
FOREIGN KEY(product_id) REFERENCES Product(product_id)
)*/

/*
/*creating a trigger*/
CREATE TRIGGER Supplier_DEl 
ON Supplier /*the table where the modification occurs*/
AFTER delete /*checks whats deleted*/
as
begin/*begining the statement*/
    declare @supplier_id INT /*creating variable*/
    
    SELECT @supplier_id = deleted.supplier_id /*extracting the deleted Supplier id and storing it in the variable*/
    FROM deleted /*temporary location where droped data is stored*/
	   
     /*deleting the related records to the suplier id in the stock table*/
    DELETE FROM Stock
    WHERE @supplier_id = @supplier_id;
end;/*ending statement*/
*/



/*
/*this trigger is a safety measure*/
CREATE TRIGGER safety_trigger_DDL
    ON DATABASE
    FOR drop_table
    AS 
    PRINT 'Unable to perform this task'
    ROLLBACK;
*/

/*
CREATE FUNCTION stockstatus(@stock_quantity AS INT)
--function takes the parameter as stock quantity
--and produce whether the stock status -->Unavailable ||-->Available
RETURN varchar(15) --returning type
    BEGIN 
        declare @stock_quantity INT
        declare @stockstatus varchar(15)
        IF(@stock_quantity = 0) 
        set @stockstatus = 'Unavailable';
        
        else
        SET @stockstatus = 'Available';
        
        return @stockstatus;
    end
go;*/



/*CREATE TRIGGER Supplier_DEl --creating a trigger
ON Supplier --the table where the modification occurs
AFTER delete --checks whats deleted 
as
begin --begining the statement
    declare @supplier_id INT --creating variable
    
    SELECT @supplier_id = deleted.supplier_id  --extracting the deleted Supplier id and storing it in the variable
    FROM deleted  --temporary location where droped data is stored
     
    --deleting the related records to the suplier id in the stock table
    DELETE FROM Stock
    WHERE @supplier_id = @supplier_id;
 end; --ending statement*/



 /*
 CREATE FUNCTION stockstatus(@stock_quantity AS INT)
--function takes the parameter as stock quantity
-- and produce whether the stock status -->Unavailable ||-->Available
RETURNS varchar(15) --returning type
    BEGIN 
        
        declare @stockstatus varchar(15)
        IF(@stock_quantity=0) 
        set @stockstatus = 'Unavailable';
        
        else
        SET @stockstatus = 'Available';
        
        return @stockstatus;
    end;
go*/

/*
CREATE TRIGGER Category_DEl 
ON category
AFTER delete  
as
begin
    declare @category_id INT 
    
    SELECT @category_id = deleted.category_id 
    FROM deleted 
    
    DELETE FROM Product
    WHERE category_id = @category_id;
    end;
	*/

--DROP TRIGGER Supplier_DEl
/*
CREATE TRIGGER Supplier_DEl --creating a trigger
ON Supplier --the table where the modification occurs
AFTER delete --checks whats deleted 
as
begin --begining the statement
    declare @supplier_id INT --creating variable
    
    SELECT @supplier_id = deleted.supplier_id  --extracting the deleted Supplier id and storing it in the variable
    FROM deleted  --temporary location where droped data is stored
     
    --deleting the related records to the suplier id in the stock table
    DELETE FROM Stock_Supplier
    WHERE supplier_id = @supplier_id;
 end;
 */


 /*
CREATE TRIGGER product_del
       ON category
AFTER DELETE
AS
BEGIN
       DECLARE @Catid INT

       SELECT @Catid = deleted.category_id
       FROM deleted

       DELETE FROM Product
       WHERE category_id=@Catid;
END;
*/

--alter table Stock alter stock_availability bit;

/*
ALTER TABLE Stock
ADD stock_availability bit;*/

/*
CREATE VIEW [Employee_detail]
AS 
SELECT E.employee_id,E.employee_name,E.roll_id,R.role_name,R.salary,E.Enroll_Date,E.employee_address
FROM Employee AS E
LEFT JOIN Employee_role AS R
ON E.roll_id = R.role_id;*/

/*
CREATE VIEW [category_Product_details]
AS
select category.category_name, product.product_id, product.product_name
from category
left outer join product
on category.category_id = product.category_id;
*/

/*
CREATE VIEW [product_stock_details]
AS
select product.product_id, product.product_name, stock.stock_id, stock.stock_quantity
from product
left outer join stock
on product.stock_id = stock.stock_id;*/

/*
//get employee id
CREATE PROCEDURE Get_Emp_Id @Emp_Id varchar(10)
AS
SELECT *
FROM [Employee_detail] WHERE employee_id=@Emp_Id;
GO*/

/*
//get product name using product stock details 
CREATE PROCEDURE Get_Product_name @product_name varchar(30)
AS
SELECT *
FROM [product_stock_details] WHERE product_name=@product_name;
GO*/

/*
CREATE PROCEDURE Get_Product_Id @Pro_Id varchar(10)
AS
SELECT *
FROM Product
WHERE product_id = @Pro_Id;
GO
*/

--Drop PROCEDURE Get_Product_Id

/*CREATE PROCEDURE Get_Product_Id @Pro_Id varchar(10)
AS
SELECT *
FROM Product
WHERE product_id = @Pro_Id;
GO*/

--EXEC Get_Product_Id @Pro_Id= P001;
--EXEC Get_Product_name @product_name='furniture';

/*
CREATE FUNCTION age_cal(@bdate AS DATE)
RETURNS int
BEGIN 
    DECLARE @year AS DATE
    set @year = GETDATE();
    RETURN YEAR(@year)- YEAR(@bdate);
end;
go*/

/*
execute age cal function
SELECT *,dbo.age_cal(employee_bdate) AS Age
FROM Employee;
*/

/*
CREATE TRIGGER safety_trigger
    ON DATABASE
    FOR
    alter_table,drop_table
    AS
    PRINT 'you are not allowed to perform this task'
ROLLBACK;
*/
/*
SELECT *,dbo.age_cal(employee_bdate) AS Age
FROM Employee;*/









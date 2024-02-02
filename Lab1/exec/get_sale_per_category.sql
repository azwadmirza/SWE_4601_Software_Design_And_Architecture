use kids_shop;

delimiter //
create procedure get_sale_per_category(IN employeeID int)
begin
	select product_id, invoice_id, (unit_price)*count AS sales FROM sale WHERE employee_id=employeeID;
end;//
delimiter ;
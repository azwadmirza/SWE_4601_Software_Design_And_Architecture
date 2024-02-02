use kids_shop;

delimiter //
drop procedure get_sale_per_category;
create procedure get_sale_per_category(IN employeeID int)
begin
	select product_id, invoice_id, (unit_price)*count AS sales FROM sale WHERE employee_id=employeeID;
end;//
delimiter ;

use kids_shop_migrations;
call add_to_change_log('Mirza Mohammad Azwad','15_get_sale_per_category.sql');
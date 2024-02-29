use reporting_db;
drop procedure if exists get_top3_products;

DELIMITER //
create procedure get_top3_products() 
begin
	select * from dim_product order by average_rating desc limit 3 ;
end //

DELIMITER ;

call get_top3_products();

use kids_shop;
call add_to_change_log("Mirza Mohammad Azwad","012_procedureA.sql","GET TOP 3 Products Procedure Task A Lab 2");

use reporting_db;
drop procedure if exists get_top_employee_by_duration;

DELIMITER //



create procedure get_top_employee_by_duration(
	in start_date date,
    in end_date date
) 
begin
	select employee_id, count(sale_id) as total_sales 
    from dim_sale
    where sale_timestamp between start_date and end_date
    group by employee_id
    order by total_sales desc
    limit 1;
end //

DELIMITER ;

call get_top_employee_by_duration('2024-02-08', '2024-03-08');

use kids_shop;
call add_to_change_log("Mirza Mohammad Azwad","016_procedureE.sql","GET TOP EMPLOYEE BY DURATION Procedure Task E Lab 2");

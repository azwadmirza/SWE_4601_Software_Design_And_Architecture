use reporting_db;
drop procedure if exists get_top_product_by_duration;

DELIMITER //

create procedure get_top_product_by_duration(
	IN start_date DATE, 
    IN end_date DATE
) 
begin
	SELECT dp.name AS product_name, MAX(dr.rating_value) AS top_rating
    FROM dim_product dp
    INNER JOIN dim_rating dr ON dp.id = dr.product_id
    WHERE dr.rating_datetime BETWEEN start_date AND end_date
    GROUP BY dp.name
    ORDER BY top_rating DESC
    LIMIT 1;
end //

DELIMITER ;

call get_top_product_by_duration( '2024-02-08', '2024-03-08');

use kids_shop;
call add_to_change_log("Mirza Mohammad Azwad","014_procedureC.sql","GET TOP Product By Duration Procedure Task C Lab 2");

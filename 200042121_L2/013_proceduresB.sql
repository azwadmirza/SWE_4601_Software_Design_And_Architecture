use reporting_db;
drop procedure if exists get_top2_categories;

DELIMITER //

create procedure get_top2_categories() 
begin
	SELECT dc.id, dc.name
    FROM dim_category dc
    INNER JOIN (
        SELECT dp.category_id, ifnull(AVG(dp.average_rating), 0) AS avg_rating
        FROM dim_product dp
        GROUP BY dp.category_id
        ORDER BY avg_rating DESC
        LIMIT 2
    ) AS top_categories ON dc.id = top_categories.category_id;
end //

DELIMITER ;

call get_top2_categories();

use kids_shop;
call add_to_change_log("Mirza Mohammad Azwad","013_procedureB.sql","GET TOP 2 Categories Procedure Task B Lab 2");

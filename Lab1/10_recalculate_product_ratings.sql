use kids_shop;
ALTER TABLE rating ADD column rating INT CHECK(rating<=5) NULL;
SET SQL_SAFE_UPDATES = 0;
UPDATE rating SET rating=5 WHERE is_up_vote=1;
UPDATE rating SET rating=0 WHERE is_up_vote=0;
ALTER TABLE rating DROP column is_up_vote;
DROP procedure recalculate_product_ratings;
delimiter //
create procedure recalculate_product_ratings()
begin
	declare productID int;
    declare name varchar(100);
    declare category_id int;
    declare average_rating float default Null;
    declare product_count int;
    declare assigned_rating int;
	declare done int default 0;
	declare product_cursor cursor for select * from product;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    open product_cursor;
    add_rating: loop
		if done = true then  
			leave add_rating;
		end if;
		fetch product_cursor into productID,name,category_id,average_rating;
        select sum(rating) into assigned_rating from rating where product_id=productID;
        SELECT assigned_rating;
        select count(*) into product_count from rating where product_id=productID;
        if product_count>0 then
			update product set average_rating=(assigned_rating/product_count) where id=productID;
		else
			update product set average_rating=0 where id=productID;
		end if;
    end loop add_rating;
    close product_cursor;
end;//
delimiter ;

call recalculate_product_ratings();

SELECT * FROM product;


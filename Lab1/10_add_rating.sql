use kids_shop;
delimiter //
create procedure add_rating(IN productID int,IN customer_id int,IN rating float)
begin
	declare average float;
    declare product_count int;
	INSERT INTO rating(product_id,rating,rater_id) VALUES(productID,rating,customer_id);
    SELECT average_rating INTO average FROM product WHERE id=productID;
    SELECT count(*) INTO product_count FROM rating where product_id=productID;
    update product SET average_rating=(average*product_count+rating)/(product_count+1) WHERE id=productID;
end;//
delimiter ;

call add_to_change_log("Mirza Mohammad Azwad","10_add_rating.sql");

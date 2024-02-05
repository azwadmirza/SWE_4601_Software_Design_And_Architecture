use kids_shop;
delimiter //
create procedure get_average_rating(IN productID int)
begin
	declare average float;
    SELECT average_rating INTO average FROM product WHERE id=productID;
	select average;
end;//
delimiter ;
call add_to_change_log("Mirza Mohammad Azwad","11_get_average_rating.sql");

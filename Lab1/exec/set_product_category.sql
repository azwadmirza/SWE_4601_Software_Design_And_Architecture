use kids_shop;

delimiter //
drop procedure set_product_category;
create procedure set_product_category(IN productID int,IN categoryID int)
begin
	UPDATE sale SET category_id=categoryID WHERE product_id=productID;
    UPDATE product SET category_id=categoryID where id=productID;
end;//
delimiter ;
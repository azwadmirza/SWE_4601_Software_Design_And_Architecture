use kids_shop;
delimiter //
CREATE PROCEDURE add_to_change_log (IN APPLIED_BY varchar(150),IN OPERATION text )  
BEGIN  
    INSERT INTO changelog(APPLIED_BY,OPERATION) VALUES(APPLIED_BY,OPERATION);  
END ;//
delimiter ;
use kids_shop_migrations;
delimiter //
CREATE PROCEDURE add_to_change_log (IN APPLIED_BY varchar(150),IN OPERATION text )  
BEGIN  
    INSERT INTO changelog(APPLIED_BY,OPERATION) VALUES(APPLIED_BY,OPERATION);  
END ;//
delimiter ;

INSERT INTO changelog(APPLIED_BY,OPERATION) VALUES("Mirza Mohammad Azwad","2_create_procedure_add_to_change_log.sql");
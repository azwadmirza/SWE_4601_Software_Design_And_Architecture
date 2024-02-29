use kids_shop;
drop procedure if exists add_to_change_log;

delimiter //
CREATE PROCEDURE add_to_change_log (IN APPLIED_BY varchar(150),IN SCRIPT_NAME text,IN SCRIPT_DETAILS text)  
BEGIN  
    INSERT INTO changelog(APPLIED_BY,SCRIPT_NAME,SCRIPT_DETAILS) VALUES(APPLIED_BY,SCRIPT_NAME,SCRIPT_DETAILS);  
END ;//
delimiter ;

call add_to_change_log("Mirza Mohammad Azwad","001_create_changelog.sql","CREATE CHANGE LOG");
call add_to_change_log("Mirza Mohammad Azwad","002_add_to_change_log.sql","CREATE PROCEDURE FOR ADD TO CHANGE LOG");
drop database if exists kids_shop;
create database kids_shop;
use kids_shop;
DROP TABLE if exists changelog;
create table changelog(
	CHANGE_NUMBER  int NOT NULL AUTO_INCREMENT,
    COMPLETE_DT datetime NOT NULL DEFAULT NOW(),
    APPLIED_BY varchar(150),
    SCRIPT_NAME text,
    SCRIPT_DETAILS text,
    PRIMARY KEY(CHANGE_NUMBER)
);
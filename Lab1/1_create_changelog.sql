create database kids_shop_migrations;
create table changelog(
	CHANGE_NUMBER  int NOT NULL AUTO_INCREMENT,
    COMPLETE_DT datetime NOT NULL DEFAULT NOW(),
    APPLIED_BY varchar(150),
    OPERATION text,
    PRIMARY KEY(CHANGE_NUMBER)
);

INSERT INTO changelog(APPLIED_BY,OPERATION) VALUES("Mirza Mohammad Azwad","1_create_changelog.sql");
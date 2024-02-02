use kids_shop;
create table changelog(
	CHANGE_NUMBER  int NOT NULL AUTO_INCREMENT,
    COMPLETE_DT datetime NOT NULL DEFAULT NOW(),
    APPLIED_BY varchar(150),
    OPERATION text,
    PRIMARY KEY(CHANGE_NUMBER)
);
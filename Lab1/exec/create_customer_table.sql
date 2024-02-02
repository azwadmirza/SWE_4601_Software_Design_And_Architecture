use kids_shop;
CREATE TABLE customer(
	id int NOT NULL AUTO_INCREMENT,
	name varchar(255),
    rating float,
    rating_timestamp datetime default NOW(),
    PRIMARY KEY(id)
);
use kids_shop;
CREATE TABLE customer(
	id int NOT NULL AUTO_INCREMENT,
	name varchar(255),
    rating float,
    rating_timestamp datetime default NOW(),
    PRIMARY KEY(id)
);

use kids_shop_migrations;
call add_to_change_log("Mirza Mohammad Azwad","8_create_customer_table.sql");
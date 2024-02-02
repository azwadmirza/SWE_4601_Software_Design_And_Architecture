use kids_shop;

CREATE TABLE seller(
	id int NOT NULL AUTO_INCREMENT,
    PRIMARY KEY(id)
);

CREATE TABLE invoice(
	id int,
    customer_id int,
    seller_id int,
    selling_datetime datetime DEFAULT NOW(),
    primary key(id),
    foreign key(customer_id) references customer(id),
    foreign key(seller_id) references seller(id)
);

CREATE TABLE sale(
	product_id int,
	invoice_id int NOT NULL,
    unit_price float,
    count int,
    primary key(invoice_id),
    foreign key(invoice_id) references invoice(id),
    foreign key(product_id) references product(id)
);

use kids_shop_migrations;
call add_to_change_log("Mirza Mohammad Azwad","9_create_sales_table.sql");
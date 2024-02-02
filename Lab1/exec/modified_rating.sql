
use kids_shop;


ALTER TABLE customer ADD COLUMN product_id int NULL;
ALTER TABLE customer ADD FOREIGN KEY (product_id) REFERENCES product(id);

ALTER TABLE rating ADD COLUMN rater_id int NULL;
ALTER TABLE rating ADD FOREIGN KEY (rater_id) REFERENCES customer(id);

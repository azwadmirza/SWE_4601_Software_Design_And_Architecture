
use kids_shop;


ALTER TABLE customer ADD COLUMN product_id int NULL;
ALTER TABLE customer ADD FOREIGN KEY (product_id) REFERENCES product(id);

ALTER TABLE rating ADD COLUMN rater_id int NULL;
ALTER TABLE rating ADD FOREIGN KEY (rater_id) REFERENCES customer(id);

use kids_shop_migrations;
call add_to_change_log("Mirza Mohammad Azwad","12_modified_rating.sql"); 

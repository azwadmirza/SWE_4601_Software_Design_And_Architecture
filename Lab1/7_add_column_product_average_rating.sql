use kids_shop;
ALTER TABLE product ADD column average_rating float NULL;

use kids_shop_migrations;
call add_to_change_log("Mirza Mohammad Azwad","7_add_column_product_average_rating.sql");
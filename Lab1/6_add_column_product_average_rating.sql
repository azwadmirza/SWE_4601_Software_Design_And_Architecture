use kids_shop;
ALTER TABLE product ADD column average_rating float NULL;
ALTER TABLE product DROP column votes;

call add_to_change_log("Mirza Mohammad Azwad","6_add_column_product_average.sql");
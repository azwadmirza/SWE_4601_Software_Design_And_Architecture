use kids_shop;
ALTER TABLE product ADD column average_rating float NULL;
ALTER TABLE product DROP column votes;
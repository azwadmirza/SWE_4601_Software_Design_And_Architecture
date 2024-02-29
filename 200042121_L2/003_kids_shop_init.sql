use kids_shop;

create table category (
    id int not null auto_increment primary key,
    name varchar(100)
);

create table product (
    id int not null auto_increment primary key,
    name varchar(100),
    category_id int not null,
    votes int not null default 0
);

create table vote (
    id int not null auto_increment primary key,
    product_id int not null,
    is_up_vote bit
);

delimiter //
create procedure recalculate_product_votes()
begin
    update product p
        set votes =
            (select count(*) from vote where product_id = p.id and is_up_vote = true)
            - (select count(*) from vote where product_id = p.id and is_up_vote = false)
    where 1 = 1;
end;//
delimiter ;

call add_to_change_log("Mirza Mohammad Azwad","003_kids_shop_init.sql","CREATE THE KIDS_SHOP TABLES");
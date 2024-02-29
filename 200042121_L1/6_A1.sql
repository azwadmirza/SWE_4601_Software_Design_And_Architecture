use kids_shop;
drop table if exists customer;
create table customer (
    id int not null auto_increment primary key,
    name varchar(100)
);

alter table rating
    add column rater_id int not null,
    add column rating_datetime timestamp;
    
call add_to_change_log("Mirza Mohammad Azwad","6_A1.sql","IMPLEMENTATION FOR TASK A1 Lab 1");
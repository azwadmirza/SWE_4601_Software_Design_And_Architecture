use kids_shop;
ALTER TABLE sale ADD column employee_id int Null;
ALTER TABLE sale ADD FOREIGN KEY (employee_id) REFERENCES employee(id);
ALTER TABLE sale ADD column category_id int Null;
ALTER TABLE sale ADD FOREIGN KEY (category_id) REFERENCES category(id);
call add_to_change_log("Mirza Mohammad Azwad","13_modify_for_sale_category_optimisation.sql");
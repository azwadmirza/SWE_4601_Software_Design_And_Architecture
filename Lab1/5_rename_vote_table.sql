
use kids_shop;
ALTER TABLE vote RENAME rating;

call add_to_change_log("Mirza Mohammad Azwad","5_rename_vote_table.sql");
#!/bin/bash

echo "Executing custom initialization script..."

mysql --user="$MYSQL_USER" -p"$MYSQL_PASSWORD" "$MYSQL_DATABASE" < create_changelog.sql

mysql --user="$MYSQL_USER" -p"$MYSQL_PASSWORD" "$MYSQL_DATABASE" < add_to_change_log.sql

mysql --user="$MYSQL_USER" -p"$MYSQL_PASSWORD" "$MYSQL_DATABASE" -e "CALL add_to_change_log('Mirza Mohammad Azwad', '1 created_changelog.sql')";

mysql --user="$MYSQL_USER" -p"$MYSQL_PASSWORD" "$MYSQL_DATABASE" -e "CALL add_to_change_log('Mirza Mohammad Azwad', '2 add_to_change_log.sql')";

var=3

while IFS= read -r sql_file; do
    echo "Executing SQL file: $sql_file"
    mysql --user="$MYSQL_USER" -p"$MYSQL_PASSWORD" "$MYSQL_DATABASE" < "./exec/$sql_file"

    filename=$(basename "$sql_file")

    mysql --user="$MYSQL_USER" -p"$MYSQL_PASSWORD" "$MYSQL_DATABASE" -e "CALL add_to_change_log('$MYSQL_USER', '$var\_$filename')"
    ((var++))
done < "./exec/0_migration_log.txt"
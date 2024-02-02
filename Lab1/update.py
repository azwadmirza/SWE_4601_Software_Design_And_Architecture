import sys
import shutil

def update():
    if len(sys.argv) <= 1:
        raise Exception("Usage: python3 update.py <name of sql file in bucket>")

    sql_file_name = sys.argv[1]
    
    with open("init/0_migration_log.txt", 'a') as filehandler:
        filehandler.write(sql_file_name + "\n")

    source_path = f"bucket/{sql_file_name}"
    destination_path = f"exec/{sql_file_name}"

    try:
        shutil.move(source_path, destination_path)
        print(f"SQL file '{sql_file_name}' moved to 'exec' directory.")
    except FileNotFoundError:
        print(f"Error: SQL file '{sql_file_name}' not found in 'init' directory.")
    except shutil.Error as e:
        print(f"Error: Failed to move SQL file '{sql_file_name}' to 'exec' directory. {e}")

if __name__ == "__main__":
    update()

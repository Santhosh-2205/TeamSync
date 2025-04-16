import psycopg2

DB_NAME = "task_db"
DB_USER = "postgres"
DB_PASSWORD = "password"
DB_HOST = "localhost"
DB_PORT = "5432"
SQL_FILE = "task.sql"

def run_sql_file(filename):
    with open(filename, 'r') as file:
        sql = file.read()

    # Connect to PostgreSQL
    conn = psycopg2.connect(
        dbname=DB_NAME,
        user=DB_USER,
        password=DB_PASSWORD,
        host=DB_HOST,
        port=DB_PORT
    )

    try:
        with conn:
            with conn.cursor() as cur:
                cur.execute(sql)
                print("✅ SQL executed successfully.")
    except Exception as e:
        print("❌ Error executing SQL:")
        print(e)
    finally:
        conn.close()

if __name__ == "__main__":
    run_sql_file(SQL_FILE)

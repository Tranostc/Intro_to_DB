import mysql.connector
from mysql.connector import Error

def create_database():
    connection = None
    try:
        # Connect to MySQL server (adjust credentials)
        connection = mysql.connector.connect(
            host="localhost",   # Change if not local
            user="root",        # Your MySQL username
            password="your_password"  # Your MySQL password
        )

        if connection.is_connected():
            cursor = connection.cursor()
            # Create database if it doesn't already exist
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            print("Database 'alx_book_store' created successfully!")

    except Error as e:
        print(f"Error: Could not connect to MySQL server. {e}")

    finally:
        # Ensure resources are released
        if connection and connection.is_connected():
            cursor.close()
            connection.close()

##How to run it
python MySQLServer.py

if __name__ == "__main__":

    create_database()

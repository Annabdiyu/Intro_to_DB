import mysql.connector
from mysql.connector import Error  

try:
    mydb = mysql.connector.connect(
        host="localhost",
        user="root",          
        passwd="AASTUSOFT1"  
    )
    mycursor = mydb.cursor()
    mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")

    print("Database created successfully!")

except mysql.connector.Error:
    print(f"Error: Could not connect to the MySQL server.")

finally:
    if mydb.is_connected():
        mycursor.close()
        mydb.close()
        print("MySQL connection is closed.")

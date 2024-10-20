import mysql.connector
from mysql.connector import Error  

try:
    mydb = mysql.connector.connect(
        host="localhost",
        user="root",          
        passwd="AASTUSOFT1"  
    )
    mycursor = mydb.cursor()
    mycursor.execute("CREATE DATABASE my_new_database")

    print("Database created successfully!")

except Error as e:
    print(f"Error: Could not connect to the MySQL server. {e}")

finally:
    if mydb.is_connected():
        mycursor.close()
        mydb.close()
        print("MySQL connection is closed.")

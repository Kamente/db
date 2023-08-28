import sqlite3

class Students:
    def __init__(self, student_name, student_reg):
        self.student_name = student_name
        self.student_reg = student_reg
        

connection = sqlite3.connect('library.db')

db_cursor = connection.cursor() # used to enable execution of the sql commands

db_cursor.execute("SELECT * FROM books;")

for book in db_cursor:
    print (book)
    
# ternminating the connection or db_cursor
# db_cursor.close()
# connection.close()
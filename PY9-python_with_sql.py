#Python with SQL

import sqlite3
connection=sqlite3.connect("info.db")
cursor=connection.cursor()
#cursor.execute("DROP table student;")
cursor.execute("CREATE table student (name,age);")
print("Enter 10 students names and their ages respectively:")
for i in range(10):
    who=[input("Enter Name:")]
    age=[int(input("Enter Age:"))]
    n=len(who)
    for i in range(n):
        cursor.execute("INSERT into student values (?,?)",(who[i],age[i]))

cursor.execute("select * from student order by age desc;")
print("Displaying All the Records From student Table in Descending order of age")
print(*cursor.fetchall(),sep='\n')
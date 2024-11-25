import mysql.connector
conn=mysql.connector.connect(host="localhost",username="root",password="Ajay@787898",database="collage_database")

cur=conn.cursor()
q="insert into student(rollno,student_name,branch)"
cur.execute("create table student(rollno int not null primary key,student_name varchar(20) not null, branch varchar(20)not null)") 

q="insert into student(rollno,student_name,branch) values(%s,%s,%s)"
v=[(102,"arjun","ece"),(103,"sachin","IS"),(104,"Charan","Mechenical")]
try:
    cur.executemany(q,v)
    conn.commit()
except:
    conn.rollback()


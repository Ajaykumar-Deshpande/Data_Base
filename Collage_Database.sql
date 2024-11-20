create database collage;
use collage;
create table student(
rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(20)
);

insert into student(rollno,name,marks,grade,city)
values
(105,"Ajay",685,"A","Bagalkot"),
(106,"Akshay",485,"B","KAMATAGI"),
(107,"Akshay",320,"C","Mangolre");
insert into student(rollno,name,marks,grade,city)
values
(108,"amulya",555,"B","Davangeri");
use student;
insert into student(rollno,name,marks,grade,city)
values
(108,"Charan",472,"B","Mysore");


select*from student;
select name, grade from student;

select *from student where marks>300;
select *from student where city="Bagalkot";
select *from student where marks>300 and city="Bagalkot";
select *from student where marks=485;
use collage;

select*from student order by city asc;
select*from student order by name desc;
select*from student order by city asc;
select*from student order by marks desc limit 2;
select max(marks) from student;
select min(marks) from student;
select avg(marks) from student;
select count(name) from student;

update student
set grade="D"
where grade="B";
select*from student;

update student
set marks=412
where roolno=107;

update student
set marks=412
where rollno=107;
select*from student;

update student
set name="sachin"
where rollno=107;
select*from student;

update student
set name="Umesh"
where rollno=107;
select*from student;
use collage;



alter table student
add column address int;
select*from student;

alter table student
rename to child;
select*from student;

alter table child
rename to student;
select*from student;

alter table student
drop column address;








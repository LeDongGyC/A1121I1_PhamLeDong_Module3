use ss1_bt;
create table student(
id int primary key auto_increment,
`name` varchar(25)
);
insert into student(name) values("a"),("b");
update student set name ="Le Dong" where id = 1;
delete from student where id = 2;
create table teacher(
id int,
age int,
country varchar(25)
);
insert into teacher(age,country) values(45,"Quang Nam"),(26,"Ha Noi"),(56,"HCM");
select * from student;
select * from teacher;
delete from teacher;

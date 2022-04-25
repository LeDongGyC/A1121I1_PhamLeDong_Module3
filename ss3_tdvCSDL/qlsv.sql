create database ss3_qlsv;
use ss3_qlsv;

-- tạo bảng class
create table class(
	class_id int auto_increment not null primary key,
	class_name varchar(60) not null,
	start_date datetime,
	`status` bit(1)
);
-- tạo bảng student
create table student(
	student_id int not null auto_increment primary key,
    student_name varchar(30) not null,
    address varchar(50),
    phone varchar(20),
    status bit(1),
    class_id int not null,
    foreign key (class_id) references class(class_id)
);
-- tạo bảng subject
create table `subject`(
	sub_id int not null primary key auto_increment,
	sub_name varchar(30),
    credit tinyint not null default 1 check(credit>=1),
    status bit(1) default 1
);
-- tạo bảng mark
create table mark(
	mark_id int not null primary key auto_increment,
    sub_id int not null,
    student_id int not null,
    mark float default 0 check(mark between 0 and 100),
    exam_times tinyint default 1,
    unique(sub_id,student_id),
    foreign key (sub_id) references `subject`(sub_id),
    foreign key (student_id) references student(student_id)
);

-- insert vào bảng class
insert into class values
(1, 'A1', '2008-12-20', 1),
(2, 'A2', '2008-12-22', 1),
(3, 'B3', current_date, 0);
-- insert vào bảng student
insert into student(student_name,address,phone,status,class_id) values
('Hung', 'Ha Noi', '0912113113', 1, 1);
insert into student(student_name, address,status,class_id) values
('Hoa', 'Hai phong', 1, 1);
insert into student(student_name,address,phone,status,class_id) values
('Manh', 'HCM', '0123123123', 0, 2);
-- insert bảng subject
insert into subject(sub_name,credit,status) values 
('CF', 5, 1),
('C', 6, 1),
('HDJ', 5, 1),
('RDBMS', 10, 1);
-- insert bảng mark
insert into mark(sub_id,student_id,mark,exam_times) values
(1, 1, 8, 1),
(1, 2, 10, 2),
(2, 1, 12, 1);

select * from student;
select * from student where status = true;
select * from subject where credit < 10;
select student.student_id,student.student_name,class.class_name from student 
join class on student.class_id = class.class_id having class.class_name = 'A1'; 
select student.student_id,student.student_name,`subject`.sub_name,mark.mark from student 
join mark on student.student_id = mark.student_id 
join subject on mark.sub_id = subject.sub_id having `subject`.sub_name = 'CF';
select * from student where student_name like "h%";
select * from class where start_date like "%-12-%";
select * from subject where credit between 3 and 5;
update student set class_id = 2 where student_name = "Hung"; 
select student.student_name,subject.sub_name, mark.mark from student
join subject on student.student_id = subject.sub_id
join mark on subject.sub_id = mark.mark_id
order by mark.mark desc, student_name asc;



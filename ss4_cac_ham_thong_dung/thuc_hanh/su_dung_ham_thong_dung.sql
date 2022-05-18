create database ss4_cac_ham_thong_dung;
use ss3_qlsv;

select address,count(student_id) as 'so_luong' from student group by address;
select s.student_id,s.student_name,avg(mark) from student s join mark m on s.student_id = m.student_id 
group by s.student_id, s.student_name
having avg(mark)>15;
select s.student_id,s.student_name,avg(mark) from student s join mark m on s.student_id = m.student_id 
group by s.student_id, s.student_name
having avg(mark) >= all(select avg(mark) from mark group by student_id);
create database ss4_luyen_tap_su_dung_cac_ham;
use ss3_qlsv;
select * from subject having credit >= (select credit from subject 
											group by sub_id 
                                            order by credit desc
                                            limit 1);
-- select * ,max(credit) as max_credit from subject;
select * from subject where sub_id = (select s.sub_id from subject s join mark m on s.sub_id = m.sub_id order by mark desc limit 1);
-- select * , max(mark) from subject join mark on subject.sub_id = mark.sub_id;
select * , avg(mark) diem_tb from student s join mark m on s.student_id = m.student_id
group by s.student_id
order by diem_tb desc; 
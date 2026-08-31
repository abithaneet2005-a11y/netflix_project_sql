create table student_details(id int not null,
student_name varchar(30),
student_email varchar(50) unique,
address varchar(100));

insert into student_details(id,student_name,student_email,address)
values(1,'Abitha','abi@gmail.com','abc st ,chennai'),
(2,'Nivetha','nivi@gmail.com','def st,madurai'),
(3,'Dhanam','dhanam@gmail.com','ghi st,trichy'),
(4,'Mani','mani@gmail.com','jkl st,salem'),
(5,'Archana','achu@gamil.com','lmo st,erode');

update student_details set student_email='xyz@gmail.com'
where id=3;
delete from student_details where id=5;
alter table student_details
add column student_mobile int;


select * from student_details
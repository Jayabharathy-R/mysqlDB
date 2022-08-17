-- BATCH TABLE
create table batch (BatchId int primary key ,BatchName varchar(50),NoOfStudents int1,No_of_classes int);
insert into batch values (1,'B30 WE-Tamil',26,40),(2,'D28 WE-English',18,35),(3,'B32 WD-English',28,45);

-- STUDENT TABLE 
create table student (studentId int primary key,StudentName varchar(50),Email varchar(50),BatchId int,phoneNumber bigint,address varchar(255),courseName varchar(255),Duration varchar(50),foreign key (BatchId) references batch(BatchId));
insert into student values (1,'Jayabharathy R','rjbharathy.1991@gmail.com',1,9788332244,'Bangaore','Full stack','5 months'),(2,'Vinosh M','vinosh@gmail.com',2,9766532244,'Chennai','Data Science','5 months'),(3,'Nivedha R','nivedha@gmail.com',3,9600332244,'Bangalore','Full stack','3 months'),(4,'Aarthy M','aarthy@gmail.com',1,9788376244,'Hyderabad','Full stack','5 months'),(5,'Divya M','divya@gmail.com',1,9677415469,'Bangalore','Full stack','5 months');

-- TASK TABLE
create table task1 (StudentId int primary key,BatchId int,TaskName varchar(50),foreign key (BatchId) references batch(BatchId),foreign key (StudentId) references student(StudentId)); 
alter table task rename to task;
alter table task add column (No_of_TaskGiven int,No_of_TaskCompleted int,No_of_TaskPending int);
insert into task values (1,1,'MySQL',10,7,3),(2,2,'Python',15,14,1),(3,3,'ReactJs',12,7,5);
insert into task values (4,1,'MySQL',10,9,1),(5,1,'MySQL',10,10,0);

-- MENTOR TABLE
create table mentor (Id int primary key,BatchId int unique,MentorName varchar(50),No_of_classes_completed int,foreign key (BatchId) references batch(BatchId));
insert into mentor values (1,1,'Sivaranjini',38),(2,2,'Mariappan',35),(3,3,'Sanjay',42);

-- SELECT ALL VALUES FROM TABLE
select * from student;
select * from batch;
select * from task;
select * from mentor;

-- JOIN TABLES
select s.studentName,b.batchName,t.TaskName,m.mentorName,t.No_of_TaskGiven,t.No_of_TaskCompleted,t.No_of_TaskPending from student s inner join batch b on s.batchid=b.batchid inner join task t on s.studentId=t.StudentId inner join mentor m on s.batchId=m.batchId;


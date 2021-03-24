
create table Course(Course_id int primary key,Course_Name varchar(100),Course_Description varchar(max),Amount decimal)

create table Payment(Payment_id int primary key,Payment_Date datetime,Final_Amount decimal,Tax decimal)

create table Student(Student_Id int primary key,Stud_Name varchar(20),Email varchar(50),
                     Address varchar(100),DateOfBirth datetime,Gender char(10),Phone int,
					 City varchar(20),Application_Status varchar(10),Course_Id int constraint fk_Student_Course_Id foreign key references Course(Course_Id),
					 Payment_Id int constraint fk_Student_Payment_Id foreign key references Payment(Payment_Id))


create table Document(Document_Id int primary key,Upload_Date datetime,Document_Type varchar(50),
                     [File_Name] varchar(100),File_Extension varchar(20),File_Location varchar(max),
					 Student_Id int constraint fk_Document_Student_Id foreign key references Student(Student_Id))



create table Teacher(
TeaID int IDENTITY (1, 1) NOT NULL Primary key,
TeaFname nvarchar (20) NOT NULL ,
TeaLname nvarchar (8) NOT NULL ,
TeaBirthday Date NOT NULL,
TeaNo int NOT NULL ,
TeaTel varchar (12) NOT NULL  
Check(TeaTel like '09[0-9][0-9] [0-9][0-9][0-9][0-9][0-9][0-9]' or TeaTel like '[1-9]%-[0-9][0-9][0-9][0-9][0-9][0-9]'),
Address nvarchar (40) NULL ,
Email varchar (30) NULL Check(Email  like '[a-z]%@[a-z]%.[a-z]%'),
Gender varchar(1) NOT NULL	CHECK(Gender in('F','M')),
Degree nvarchar(10),
)
Insert into Teacher values(N'Nguyễn Văn',N'An','1987-02-12',523456789,'0912 345678','Nha Trang','An@gmail.com','F',N'Mầm non')
Insert into Teacher values(N'Phan Bui',N'Vien','1976-05-23',223456789,'0934 518615','Da Nang','Vien@gmail.com','F',N'Mầm non')
Insert into Teacher values(N'Phan Thanh',N'Hang','1977-04-13',323456789,'0978 678563','Hue','Hang@gmail.com','F',N'Mầm non')
Insert into Teacher values(N'Duong Bui',N'Quan','1980-07-16',723456789,'0945 456544','Nghe An','Quan@gmail.com','F','')
Insert into Teacher values(N'Phan Duy',N'Hoc','1987-05-13',323456782,'0978 678363','Hue','Hoc@gmail.com','F',N'Mầm non')
Insert into Teacher values(N'Nguyen Trinh',N'Ngoc','1943-03-23',323426789,'0978 674563','LA','Ngoc@gmail.com','F',N'Mầm non')
create table Parent(
ParentID int IDENTITY (100, 1) NOT NULL Primary key,
ParentFname nvarchar (20) NOT NULL ,
ParentLname nvarchar (8) NOT NULL ,
ParentBirthday Date NOT NULL,
ParentNo int NOT NULL,
ParentTel varchar (12) NOT NULL
Check(ParentTel like '09[0-9][0-9] [0-9][0-9][0-9][0-9][0-9][0-9]' or ParentTel like '[1-9]%-[0-9][0-9][0-9][0-9][0-9][0-9]'),
Address nvarchar (40) NULL ,
Email varchar (30) NULL Check(Email  like '[a-z]%@[a-z]%.[a-z]%'),
Password varchar(10),
)
Insert into Parent values(N'Nguyen',N'Quan','1950-12-16',123456671,'0934 345634','Nghe An','Vinh@gmail.com','abcd')
Insert into Parent values(N'Nguyen Van',N'A','1950-12-13',123456672,'0934 345633','Binh Dinh','A@gmail.com','abcd')
Insert into Parent values(N'Nguyen van',N'B','1950-12-14',123456673,'0934 345635','Vung Tau','B@gmail.com','abcd')
Insert into Parent values(N'Nguyen Van',N'C','1950-12-15',123456674,'0934 345637','Ben Tre','C@gmail.com','abcd')

create table Class(
ClassID int  IDENTITY (1000, 1) NOT NULL Primary key,
ClassName nvarchar(20) NOT NULL,
GroupClassID varchar(20) NOT NULL,
TeaID int NOT NULL  FOREIGN KEY references Teacher(TeaID),
)
Insert into Class values(N'Lớp Chồi 1',N'12-18 tháng',1) 
Insert into Class values(N'Lớp Chồi 2',N'19-24 tháng',2) 
Insert into Class values(N'Lớp Chồi 3',N'25-36 tháng',3) 
Insert into Class values(N'Lớp Lá 1',N'3-4 tuổi',4) 
Insert into Class values(N'Lớp Lá 2',N'4-5 tuổi',5) 
Insert into Class values(N'Lớp Lá 3',N'5-6 tuổi',6) 
create table Student(
StuID int IDENTITY (200, 1) NOT NULL Primary key,
StuFname nvarchar (20) NOT NULL ,
StuLname nvarchar (8) NOT NULL ,
StuBirthday Date NOT NULL,
Gender varchar(1) NOT NULL	CHECK(Gender in('F','M')),
ParentID int NOT NULL  FOREIGN KEY references Parent(ParentID),
ClassID int NOT NULL  FOREIGN KEY references Class(ClassID),
)
Insert into Student values(N'Nguyen Minh',N'B','2020-02-16','M',100,1000)
Insert into Student values(N'Nguyen Minh',N'A','2019-03-12','M',101,1003)
Insert into Student values(N'Nguyen Minh',N'C','2019-04-13','M',102,1003)
Insert into Student values(N'Nguyen Minh',N'D','2019-05-13','M',103,1003)

create table Admin(
Admin nvarchar(20) NOT NULL Primary key,
Password varchar(10),
)
Insert into Admin values('preschool','a')

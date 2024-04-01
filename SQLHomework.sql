create database Course

use Course

create table Teachers(
	[Id] int primary key identity(1,1),
	[Name] nvarchar(50),
	[Surname] nvarchar(50),
	[Email] nvarchar(100) unique,
	[Age] int
)

create table Students(
	[Id] int primary key identity(1,1),
	[FullName] nvarchar(50),
	[Age] int,
	[Address] nvarchar(100)
)

insert into Teachers([Name],[Surname],[Email],[Age])
values('Cavid','Bashirov','cavid@code.edu.az',30),
	  ('Ilqar','Shiriyev','ilqar@code.edu.az',26),
	  ('Zeyqem','Ashurov','zeyqem@code.edu.az',39)


insert into Students([FullName],[Age],[Address])
values('Kamran',24,'Sumqayit'),
	  ('Behruz',26,'Baki'),
	  ('Resad',21,'Baki')

insert into Teachers([Name],[Surname],[Email],[Age])
values('Fatime','Qayxanova','fatime@gmail.com',19)

insert into Teachers([Name],[Surname],[Email],[Age])
values('Kamran','Muradov','kamran@mail.ru',24)



--1) Butun muellimlerin siyahisini gosterin.
select * from Teachers

--2) Butun telebelerin siyahisini gosterin.
select * from Students

--3) Studentlerin sayini gosterin.
select COUNT(*) as 'Student Count' from Students 

--4) Yashi 20-den yuxari olan muellimlerin ad, soyadini ekranda gosterin.
select [Name],[Surname] from Teachers where [Age] > 20

--5) Emailinde  c herfi olan muellimlerin butun melumatlarini ekranda gosterin.
select * from Teachers where [Email] like '%c%'




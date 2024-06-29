USE master
GO


--CREATE DATABASE Teachers
--GO

USE Teachers
GO


--CREATE TABLE POSTS (
--    [Id] INT IDENTITY(1,1) NOT NULL,
--    [Name] NVARCHAR(20) NOT NULL
--	  CONSTRAINT PK_Posts_Id PRIMARY KEY([Id])
--);

--CREATE TABLE TEACHERS (
--    [Id] INT IDENTITY(1,1) NOT NULL,
--    [Name] NVARCHAR(15) NOT NULL,
--    [Code] CHAR(10) NOT NULL,
--    [IdPost] INT NOT NULL ,
--    [Tel] CHAR(7) NOT NULL,
--    [Salary] INT NOT NULL,
--    [Rise] NUMERIC(6,2) NOT NULL,
--    [HireDate] DATETIME NOT NULL,
--	  CONSTRAINT PK_Teachers_Id PRIMARY KEY([Id]),
--    CONSTRAINT FK_Teachers_IdPost FOREIGN KEY (IdPost) REFERENCES POSTS(Id)
--);
 
------------------------2--------------------------------
--DROP TABLE POSTS
------------------------3--------------------------------


--ALTER TABLE TEACHERS
--DROP CONSTRAINT FK_Teachers_IdPost;

--ALTER TABLE TEACHERS
--DROP COLUMN IdPost;

-- ISLEMIR 

------------------------4--------------------------------
--ALTER TABLE TEACHERS
--ADD CONSTRAINT CK_Teachers_HireDate CHECK ([HireDate] >= '1990-01-01');

------------------------5--------------------------------
--ALTER TABLE TEACHERS
--ADD CONSTRAINT UQ_Teachers_Code UNIQUE([Code])
------------------------6--------------------------------
--ALTER TABLE TEACHERS
--ALTER COLUMN Salary NUMERIC(6,2);
------------------------7--------------------------------
--ALTER TABLE TEACHERS
--ADD CONSTRAINT CK_Salary CHECK (Salary >= 1000 AND Salary <= 5000);
------------------------8--------------------------------
--EXEC sp_rename 'TEACHERS.Tel', 'Phone', 'COLUMN';
------------------------9--------------------------------
--ALTER TABLE TEACHERS
--ALTER COLUMN Phone CHAR(11);
------------------------10-------------------------------
--DROP TABLE POSTS
--CREATE TABLE POSTS (
--    Id INT IDENTITY(1,1) NOT NULL,
--    [Name] NVARCHAR(20) NOT NULL
--);
------------------------11-------------------------------
--ALTER TABLE POSTS
--ADD CONSTRAINT CK_Posts_Name CHECK (Name IN ('professor', 'assistant professor', 'teacher', 'assistant'));
------------------------12-------------------------------
--ALTER TABLE TEACHERS
--ADD CONSTRAINT CK_Teachers_Name CHECK (Name NOT LIKE '%[0-9]%');
------------------------13-------------------------------
--ALTER TABLE TEACHERS
--ADD IdPost INTEGER;

--TABLE YARADANDA ICINDE ARTIQ YARATMISDIM
------------------------14-------------------------------
--ALTER TABLE TEACHERS
--ADD CONSTRAINT FK_Teachers_IdPost FOREIGN KEY (IdPost) REFERENCES POSTS(Id);

--BU CONSTRAINTI DE YARATMISAM
------------------------15-------------------------------

--INSERT INTO POSTS (Id, Name) VALUES (1, N'professor');
--INSERT INTO POSTS (Id, Name) VALUES (2, N'assistant professor');
--INSERT INTO POSTS (Id, Name) VALUES (3, N'teacher');
--INSERT INTO POSTS (Id, Name) VALUES (4, N'assistant');

--INSERT INTO TEACHERS (Id, Name, Code, IdPost, Phone, Salary, Rise, HireDate)
--VALUES (1, N'Sidorov', '0123456789', 1, NULL, 1070, 470, '1992-09-01');

--INSERT INTO TEACHERS (Id, Name, Code, IdPost, Phone, Salary, Rise, HireDate)
--VALUES (2, N'Ramishevsky', '4567890123', 2, '4567890', 1110, 370, '1998-09-09');

--INSERT INTO TEACHERS (Id, Name, Code, IdPost, Phone, Salary, Rise, HireDate)
--VALUES (3, N'Horenko', '1234567890', 3, NULL, 2000, 230, '2001-10-10');

--INSERT INTO TEACHERS (Id, Name, Code, IdPost, Phone, Salary, Rise, HireDate)
--VALUES (4, N'Vibrovsky', '2345678901', 4, NULL, 4000, 170, '2003-09-01');

--INSERT INTO TEACHERS (Id, Name, Code, IdPost, Phone, Salary, Rise, HireDate)
--VALUES (5, N'Voropaev', NULL, 4, NULL, 1500, 150, '2002-09-02');

--INSERT INTO TEACHERS (Id, Name, Code, IdPost, Phone, Salary, Rise, HireDate)
--VALUES (6, N'Kuzintsev', '5678901234', 3, '4567890', 3000, 270, '1991-01-01');

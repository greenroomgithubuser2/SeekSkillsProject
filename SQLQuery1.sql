create table [dbo].[myAWSSkillsTable]
(
	UniqueID int NOT NULL Identity PRIMARY KEY, 
	StaffID nvarchar(50) NOT NULL,
	Firstname nvarchar(50) NOT NULL, 
	Surname nvarchar(50) NOT NULL, 
	Age int NOT NULL, 
	Gender nvarchar(50) NOT NULL, 
	Skill nvarchar(50) NOT NULL
)


insert into [dbo].[myAWSSkillsTable] (StaffID, FirstName, Surname, Age, Gender, Skill)
values
('P1234', 'John', 'Smith', 22, 'Male', 'Swimming'),
('W2468', 'Beth', 'Jones', 22, 'Female', 'Football'),
('J2356', 'Luke', 'Brown', 22, 'Male', 'Football'),
('G2457', 'Emma', 'Green', 22, 'Female', 'Hockey'),
('K7892', 'Mary', 'Hall', 22, 'Female', 'Swimming'),
('B6734', 'Joe', 'White', 22, 'Male', 'Hockey');



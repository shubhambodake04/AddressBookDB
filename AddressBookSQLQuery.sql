create database address_book
select * from sys.databases
use address_book
select db_name()

create table contacts
(
id int identity(1,1) primary key,
Firstname varchar(100) not null,
Lastname varchar(100) not null,
Address varchar(100) not null,
City varchar(20) not null,
State varchar(20) not null,
Zip varchar(10) not null,
PhoneNumber varchar(15) not null,
Email varchar(100) not null
)

select * from contacts

insert into contacts values
('Shubham','Bodake','Katarkhatav,Satara','Satara','Maharastra','415507','7757929383','shubhambodake6476@gmail.com'),
('ravi','kumar','MG Road Pune','Pune','Maharastra','412345','70514267851','ravi@gmail.com'),
('abhi','patil','Karad road, vita','Sangli','Maharastra','543246','4562489563','abhipatil@gmail.com'),
('rishi','bhosale','kasba bawda,kolhapur','Kolhapur','Maharastra','416006','5264891234','rishi@gmail.com')

update contacts set City = 'Karad' where Firstname = 'abhi'
update contacts set Firstname = 'Amol' where Firstname = 'ravi'

delete from contacts where Firstname = 'rishi'

select * from contacts where City = 'Satara'
select * from contacts where State = 'Maharastra'

select count(City) from contacts where City = 'Satara'
select count(State) from contacts where State = 'Maharastra'

select * from contacts order by Firstname
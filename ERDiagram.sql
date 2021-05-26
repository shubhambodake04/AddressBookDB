use address_book

create table Details(
PersonID int Identity(1,1) primary key,
FirstName varchar(50) not null,
LastName varchar(50) not null,
);
select * from Details

create table AddressDetail(
Address varchar(50) not null,
Zip int,
State varchar(50) not null,
city varchar(50) not null,
foreign key (Zip) references Details(PersonID)
);
select * from AddressDetail

create table Contact(
PhoneNumber int primary key,
Email varchar(100) not null
);
select * from Contact

create table PerID_Phone(
PersonID int,
PhoneNumber int,
foreign key (PersonID) references Details(PersonID),
foreign key (PhoneNumber) references Contact(PhoneNumber)
);
select * from PerID_Phone

create table Type(
PersonID int Identity(1,1),
Type varchar(50) not null
foreign key (PersonID) references Details(PersonID)
);
select * from Type
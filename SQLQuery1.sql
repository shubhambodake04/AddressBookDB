create procedure [dbo].[SpAddPersonDetails]
(
@FirstName varchar(200),
@LastName varchar(200),
@Address varchar(250),
@City varchar(50),
@State varchar(50),
@Zip varchar(10),
@PhoneNumber varchar(15),
@Email varchar(100),
@Type varchar(100)
)
as
begin
insert into contacts values
(
@FirstName,@LastName,@Address,@City,@State,@Zip,@PhoneNumber,@Email,@Type
)
end
GO
create  database Menu_List

use Menu_List

CREATE TABLE [Menu Items]
(
id int not null primary key,
Name varchar(max),
Price decimal(10,2),
Active varchar(3),
[Date of Launch] Date,
Category varchar(max),
[Free Delivery] varchar(3)
)

create table TUser
(
	U_Id int primary key not null,
	U_Name varchar(max)
)


create table CART_ITEM
(
	Cart_id int not null primary key,
	User_id int,
	foreign key(User_id) references [Menu Items](id),
	foreign key (User_Id) references TUser(U_Id)
)


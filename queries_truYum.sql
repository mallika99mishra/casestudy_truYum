


--1.a

select*from [Menu Items]
set dateformat dmy;
insert into [Menu Items] values(1,'Sandwich',99.00,'Yes','2017/03/15','MainCourse','Yes')
insert into [Menu Items] values(2,'Burger',129.00,'Yes','2017/12/23','MainCourse','No')
insert into [Menu Items] values(3,'Pizza',149.00,'Yes','2017/08/21','MainCourse','No')
insert into [Menu Items] values(4,'French Fries',57.00,'No','2017/07/02','Starter','Yes')
insert into [Menu Items] values(5,'Chocolate Brownie',32.00,'Yes','2022/11/02','Dessert','Yes')

--1.b

select id,Name,'Rs.'+Price,Active,Convert(varchar,[Date of Launch],103),Category,[Free Delivery] from [Menu Items]

--2.a

 select* from [Menu Items]
where Active like '%Yes%' and [Date of Launch]<=getDate()

--3.a

select * from [Menu Items] 
where id=2

--3.b

update [Menu Items] set
Name='Momos',Price='60',Active='Yes',[Date of Launch]=GETDATE(),Category='Starters',[Free Delivery]='NO'
where id=4
go

--4.a

insert into TUser values(1,'Mallika'),(2,'Rashi'),(3,'Akash'),('4','Ravi')
insert into CART_ITEM values(1,1,4),(2,3,2),(3,2,3),(4,1,3),(5,2,3),(6,5,5)

--5.a

select M.Name, M.Active,M.Price,M.Category,T.U_Name,C.User_id
from [Menu Items] M inner join CART_ITEM C
on C.Item_id=M.id 
inner join TUser T on 
T.U_Id=C.User_id
where C.User_id='1'

--5.b

select sum(M.Price) as Total_Price,T.U_Id,T.U_Name
from [Menu Items] M inner join CART_ITEM C
on C.Item_id=M.id 
inner join TUser T on 
T.U_id=C.User_id
where T.U_id=1
group by T.U_id,T.U_Name

--6.a

delete CART_ITEM
where User_id=3 and Item_id=1

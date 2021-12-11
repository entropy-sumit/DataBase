create database AddressBookService


create table AddressBookTable(

Id int identity(1,1),
First_name varchar(255),
Last_name varchar(255),
Address varchar(255),
City varchar(50),
State varchar(50),
ZipCode int,
Phone_No bigint,
Email_Id varchar(255)
)

select * from AddressBookTable

insert into AddressBookTable(First_name, Last_name,Address,City,State,Zipcode,Phone_No,Email_Id)
values('Raj','Man','street A','howrah','westbengal',3900002,7798758551,'raj1@gmail.com')
insert into AddressBookTable(First_name, Last_name,Address,City,State,Zipcode,Phone_No,Email_Id)
values('Vijay','Man','street B','Kanpur','Uttar Pradesh',3900003,7798758552,'vij1@gmail.com')

update AddressBookTable
set first_name='ajay'
where  Id = 1 

delete AddressBookTable 
where First_name = 'Vjay'
     
select City from AddressBookTable

insert into AddressBookTable(First_name, Last_name,Address,City,State,Zipcode,Phone_No,Email_Id)
values('Rama','ashi','street D','Pune','Maharastra',3900004,7798758553,'rama1@gmail.com')

insert into AddressBookTable(First_name, Last_name,Address,City,State,Zipcode,Phone_No,Email_Id)
values('shikahar','she','121 north','saket','new delhi',558855,8888888888,'aryan1@gmail.com')

insert into AddressBookTable(First_name, Last_name,Address,City,State,Zipcode,Phone_No,Email_Id)
values('nazi','k','125 south hope st','karol bhag','new delhi',99855,7798148855,'nazi1@gmail.com')





select count(city) from AddressBookTable

select count(state) from AddressBookTable



select First_name from AddressBookTable ORDER BY First_name ASC

alter table AddressBookTable add name varchar(50)
alter table AddressBookTable add Type varchar(50)

select * from AddressBookTable

UPDATE [AddressBookTable] SET name = 'sam'  WHERE first_name = 'nazi';

UPDATE [AddressBookTable] SET type = 'brother'  WHERE first_name = 'nazi';






create table bank_details(
    id int not null,
    bank_name varchar(50) unique,
    bank_code int,
    bank_location varchar(50) not null
);

insert into bank_details
values
(1,'Canara Bank',1234,'Cheyyur'),
(2,'Central Bank',2871,'Villupuram'),
(3,'TamilNadu Grama Bank',2870,'Gingee'),
(4,'ICICI Bank',4321,'Tiruvannamalai'),
(5,'Karur Vysya Bank',2887,'Tindivanam'),
(6,'Indian Bank',5678,'Kancheepuram'),
(7,'HDFC Bank',7890,'Vellore'),
(8,'Bank of Baroda',6543,'Tirunelveli'),
(9,'State Bank',2234,'Chengalpat'),
(10,'Reserve Bank',1433,'Chennai');

-- Add not null

alter table bank_details
alter column bank_code set not null;

insert into bank_details
values
(11,'South Indian Bank',9565,'Kollar'),
(12,'Union Bank',2535,'Nattarmangalam'),
(13,'City Union Bank',3525,'Tambaram'),
(14,'Punjab National Bank',6595,'Chrompet'),
(15,'UCO Bank',6789,'Guduvancheri');

-- Drop not null

alter table bank_details
alter column bank_location drop not null;

insert into bank_details
values
(16,'RBL Bank',2560,'Hosur'),
(17,'Tamilnad Mercantile Bank',6025,'Nagercoil'),
(18,'IndusInd Bank',9834,'Maambalam'),
(19,'Karnataka Bank',2349,'Melmaruvathur'),
(20,'Pallavn Bank',8787,'Cuddalore');

select * from bank_details;
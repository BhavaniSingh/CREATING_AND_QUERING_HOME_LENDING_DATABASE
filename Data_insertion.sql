INSERT INTO Jobcode VALUES('C','CEO');
INSERT INTO Jobcode VALUES('M','Manager');
INSERT INTO Jobcode VALUES('R','Repair');

INSERT INTO staff VALUES('p00','Bob Bureaucrat',Null,Null,'C'); 
INSERT INTO staff VALUES('p01','Sam Supervisor',Null,Null,'M');
INSERT INTO staff VALUES('p02','Fred Foreman',Null,Null,'M');
INSERT INTO staff VALUES('p03','Mary Manager',Null,Null,'M');
INSERT INTO staff VALUES('p04','Alex Johnson','2015-10-01',Null,'R');
INSERT INTO staff VALUES('p05','Gail Steward','2015-10-01','2017-12-21','R');
INSERT INTO staff VALUES('p06','Ben Jackson','2017-12-22',Null,'R');
INSERT INTO staff VALUES('p07','Beth Redding','2017-12-22',Null,'R');

INSERT INTO Managers VALUES('P01','');
INSERT INTO Managers VALUES('P02','');
INSERT INTO Managers VALUES('P03','');


INSERT INTO Complex VALUES('L','Lakeview','P01');
INSERT INTO Complex VALUES('N','Northside','P02');
INSERT INTO Complex VALUES('P','Princeton','P03');


INSERT INTO Apartment VALUES(1,'101G','L',2);
INSERT INTO Apartment VALUES(2,'201','L',1);
INSERT INTO Apartment VALUES(5,'201','N',1);
INSERT INTO Apartment VALUES(7,'209','L',1);
INSERT INTO Apartment VALUES(8,'333','P',1);
INSERT INTO Apartment VALUES(9,'431P','P',2);
INSERT INTO Apartment VALUES(12,'310','L',Null);
INSERT INTO Apartment VALUES(14,'201','P',Null);

INSERT INTO Prospectors VALUES(55,'Jack Black','555-81-3232','73 Maple Ave');
insert into Prospectors values(60, 'Prem Chand','317-360-3645','402 w West St');
insert into Prospectors values(11, 'Kevin White','555-222-1234','234 Main St');
insert into Prospectors values(31, 'Gail Green','555-234-2525','P.O. Box 22');
insert into Prospectors values(45, 'Ed Brown','555-234-8888','12 N 1st St');
insert into Prospectors values(46, 'Ann Black','555-881-3233','73 Maple Ave');

insert into Status values(0, 'Incomplete');
insert into Status values(1, 'References');
insert into Status values(2, 'Waiting');
insert into Status values(3, 'Complete');

insert into Waitlist values(1,55,3);
insert into Waitlist values(1,60,2);
insert into Waitlist values(2,60,2);
insert into Waitlist values(5,11,1);
insert into Waitlist values(5,31,2);
insert into Waitlist values(12,45,1);
insert into Waitlist values(14,46,0);


insert into Type values('I', 'Insured');
insert into Type values('U', 'Uninsured');

insert into manualLabour VALUES('P04');
insert into manualLabour VALUES('P05');
insert into manualLabour VALUES('P07');
insert into manualLabour VALUES('P06');

insert into repair VALUES(23,'Faucet','2017-12-22','2017-12-23',1,'U','P04');
insert into repair VALUES(28,'Window','2017-12-28','2017-12-31',5,'I','P06');
insert into repair VALUES(31,'Carpet','2017-12-28','2017-12-31',5,'I','P05');
insert into repair VALUES(33,'Roof','2018-01-05','2018-02-23',8,'I',NULL);
insert into repair VALUES(35,'Lock','2018-01-10','2018-01-11',2,'U','P04');

insert into Renter values('A021','Jack Black');
insert into Renter values('C222','Fred Jones');
insert into Renter values('A025','Mike Allen');
insert into Renter values('A023','Jane Black');
insert into Renter values('B444','John Dough');
insert into Renter values('B456','Bill Smith');

insert into CEO values('P00',NULL);


insert into Lease values('A021',1,1100,'2016-12-01');
insert into Lease values('C222',1,1200,'2017-11-15');
insert into Lease values('A025',2,1100,'2016-12-01');
insert into Lease values('A023',5,1200,'2017-11-01');
insert into Lease values('A023',7,1250,'2017-11-15');
insert into Lease values('B444',8,700,'2017-12-01');
insert into Lease values('B456',9,900,'2017-12-01');


insert into Payment values(211,1100,'2017-01-01','2016-12-30','A021',1);
insert into Payment values(397,1100,'2017-02-01','2017-01-29','A021',1);
insert into Payment values(402,1200,'2017-12-15','2017-12-30','C222',1);
insert into Payment values(399,1100,'2017-01-01','2017-01-01','A025',2);
insert into Payment values(400,1200,'2017-12-01','2017-12-01','A023',5);
insert into Payment values(401,1200,'2017-12-15','2017-12-15','A023',7);
insert into Payment values(488,700,'2018-01-01','2016-12-30','B444',8);
insert into Payment values(511,500,'2018-01-01','2017-12-30','B456',9);
insert into Payment values(512,400,'2018-01-01','2017-12-31','B456',9);


select * from Apartment;
select * from CEO;
select * from Complex;
select * from Jobcode;
select * from Lease;
select * from Managers;
select * from manualLabour;
select * from Payment;
select * from Prospectors;
select * from Renter;
select * from repair;
select * from staff;
select * from Status;
select * from Type;
select * from Waitlist;

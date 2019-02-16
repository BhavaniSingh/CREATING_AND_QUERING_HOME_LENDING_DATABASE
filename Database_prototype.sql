use master;
create database AAA60;
use AAA60;

CREATE TABLE Jobcode
( 
	JobCode              char(1)  NOT NULL ,
	Description          char(10)  NULL ,
	PRIMARY KEY  CLUSTERED (JobCode ASC)
)
go

CREATE TABLE staff
( 
	PersonID             char(4)  NOT NULL ,
	Name                 char(20)  NULL ,
	StartDate            date  NULL ,
	EndDate              date  NULL ,
	JobCode              char(1)  NULL ,
	PRIMARY KEY  CLUSTERED (PersonID ASC),
	 FOREIGN KEY (JobCode) REFERENCES Jobcode(JobCode)
)
go

CREATE TABLE Managers
( 
	PersonID             char(4)  NOT NULL ,
	LastAccess           datetime  NULL ,
	PRIMARY KEY  CLUSTERED (PersonID ASC),
	 FOREIGN KEY (PersonID) REFERENCES staff(PersonID)
)
go

CREATE TABLE Complex
( 
	ComplexID            char(1)  NOT NULL ,
	Descripton           char(10)  NULL ,
	PersonID             char(4)  NULL ,
	PRIMARY KEY  CLUSTERED (ComplexID ASC),
	 FOREIGN KEY (PersonID) REFERENCES Managers(PersonID)
)
go

CREATE TABLE Apartment
( 
	ApartmentID          integer  NOT NULL ,
	Number               char(4)  NULL ,
	ComplexID            char(1)  NULL ,
	NumbeRents           integer  NULL ,
	PRIMARY KEY  CLUSTERED (ApartmentID ASC),
	 FOREIGN KEY (ComplexID) REFERENCES Complex(ComplexID)
)
go

CREATE TABLE Prospectors
( 
	ProspectNumber       integer  NOT NULL ,
	Name                 char(20)  NULL ,
	Phone                char(12)  NULL ,
	Address              char(20)  NULL ,
	PRIMARY KEY  CLUSTERED (ProspectNumber ASC)
)
go

CREATE TABLE Status
( 
	StatusCode           integer  NOT NULL ,
	Description          char(10)  NULL ,
	PRIMARY KEY  CLUSTERED (StatusCode ASC)
)
go

CREATE TABLE Waitlist
( 
	ApartmentID          integer  NOT NULL ,
	ProspectNumber       integer  NOT NULL ,
	StatusCode           integer  NULL ,
	PRIMARY KEY  CLUSTERED (ApartmentID ASC,ProspectNumber ASC),
	 FOREIGN KEY (ApartmentID) REFERENCES Apartment(ApartmentID),
	 FOREIGN KEY (ProspectNumber) REFERENCES Prospectors(ProspectNumber),
	 FOREIGN KEY (StatusCode) REFERENCES Status(StatusCode)
)
go

CREATE TABLE Type
( 
	Type                 char(1)  NOT NULL ,
	Description          char(10)  NULL ,
	PRIMARY KEY  CLUSTERED (Type ASC)
)
go

CREATE TABLE manualLabour
( 
	PersonID             char(4)  NOT NULL ,
	PRIMARY KEY  CLUSTERED (PersonID ASC),
	 FOREIGN KEY (PersonID) REFERENCES staff(PersonID)
)
go

CREATE TABLE repair
( 
	RepairNum            integer  NOT NULL ,
	Description          char(10)  NULL ,
	DateOrdered          date  NULL ,
	DateCompleted        date  NULL ,
	ApartmentID          integer  NULL ,
	Type                 char(1)  NULL ,
	PersonID             char(4)  NULL ,
	PRIMARY KEY  CLUSTERED (RepairNum ASC),
	 FOREIGN KEY (ApartmentID) REFERENCES Apartment(ApartmentID),
	 FOREIGN KEY (Type) REFERENCES Type(Type),
	 FOREIGN KEY (PersonID) REFERENCES manualLabour(PersonID)
)
go

CREATE TABLE Renter
( 
	RenterID             char(5)  NOT NULL ,
	Name                 char(20)  NULL ,
	PRIMARY KEY  CLUSTERED (RenterID ASC)
)
go

CREATE TABLE Lease
( 
	RenterID             char(5)  NOT NULL ,
	ApartmentID          integer  NOT NULL ,
	Rent                 money  NULL ,
	StartDate            date  NULL ,
	PRIMARY KEY  CLUSTERED (RenterID ASC,ApartmentID ASC),
	 FOREIGN KEY (RenterID) REFERENCES Renter(RenterID),
	 FOREIGN KEY (ApartmentID) REFERENCES Apartment(ApartmentID)
)
go

CREATE TABLE Payment
( 
	PaymentNumber        integer  NOT NULL ,
	Amount               money  NULL ,
	DateDue              date  NULL ,
	DatePaid             date  NULL ,
	RenterID             char(5)  NULL ,
	ApartmentID          integer  NULL ,
	PRIMARY KEY  CLUSTERED (PaymentNumber ASC),
	 FOREIGN KEY (RenterID,ApartmentID) REFERENCES Lease(RenterID,ApartmentID)
)
go



CREATE TABLE CEO
( 
	PersonID             char(4)  NOT NULL ,
	NextVisit            date  NULL ,
	PRIMARY KEY  CLUSTERED (PersonID ASC),
	 FOREIGN KEY (PersonID) REFERENCES staff(PersonID)
)
go

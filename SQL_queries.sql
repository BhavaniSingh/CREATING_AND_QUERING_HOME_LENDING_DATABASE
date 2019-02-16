/* 1) List information for rent payments (and when and for what apartment) that are less than the lease specifies. */
select Payment.PaymentNumber,Payment.Amount,Payment.DateDue,Payment.DatePaid,Lease.RenterID,Lease.ApartmentID,Lease.Rent from Payment JOIN Lease on Lease.RenterID=Payment.RenterID and Lease.ApartmentID=Payment.ApartmentID where Lease.Rent > Payment.Amount;

/*2) For each apartment, list the rent payments in chronological order.*/
select * from Payment JOIN Lease on Lease.RenterID=Payment.RenterID and Lease.ApartmentID=Payment.ApartmentID order by 
Payment.ApartmentID,Payment.DatePaid;

/*3) List the name and number for prospects who are waiting for an apartment.*/
select Waitlist.ApartmentID,Prospectors.Name,Prospectors.ProspectNumber,status.Description from Waitlist JOIN Prospectors on Waitlist.ProspectNumber = Prospectors.ProspectNumber JOIN status on Waitlist.StatusCode=status.StatusCode where status.Description='Waiting';

/*4) List the top two leases based on rent.*/
select TOP 2 * from Lease order by Lease.Rent DESC;

/* 5) List Information about leases signed/started on November 1,2017 and those signed/started on December 1,2017 */

select * from Lease where Lease.StartDate='2017-11-01' or Lease.StartDate = '2017-12-01';

/* 6) List Information about the late rent payments. */
select * from Payment where Payment.DatePaid > Payment.DateDue;

/* 7) List Apartment Rental Information by complex */
select Complex.ComplexID,Complex.Descripton,Apartment.ApartmentID,Lease.RenterID,Lease.StartDate, Lease.Rent  from Lease JOIN Apartment on Lease.ApartmentID=Apartment.ApartmentID JOIN Complex on Apartment.ComplexID = Complex.ComplexID order by Apartment.ComplexID;


/* 8) who (Name and ID) manages the Princeton complex? */
select staff.Name,staff.PersonID from Complex JOIN staff on Complex.PersonID=staff.PersonID where Complex.Descripton='Princeton';

/* 9) who (Name and ID) has access to repair data for the northside complex? */
select staff.Name,staff.PersonID from Complex JOIN staff on Complex.PersonID=staff.PersonID where Complex.Descripton='northside';

/* 10) How many times has each apartment has been leased ? */
select Apartment.ApartmentID,Apartment.NumbeRents from Apartment;


/* 11) List all Insured repairs, Include the name of maintenance person if known. */
select repair.RepairNum,staff.Name,repair.Description,repair.DateOrdered,repair.DateCompleted,Type.Description from repair JOIN Type on repair.Type =Type.Type LEFT OUTER JOIN staff on repair.PersonID=staff.PersonID  where Type.Description='Insured';

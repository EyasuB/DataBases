use `homedream`;
insert into Branch(branchNo, street, city, postcode)
values ('B005', '22 Deer Rd','London','SW1 4EH'),
('B007', '16 Argyll St', 'Aberdeen', 'Ab2 3SU'),
('B003', '163 Main St', 'Glasgrow', 'G11 9QX'),
('B004', '32 Manse Rd', 'Bristol', 'BS99 1NZ'),
('B002', '56 Clover Dr', 'London', 'NW10 6EU');

insert into Staff(staffNo, fname, lname, position, sex, DOB, salary, branchNo)
values ('SL21', 'John', 'White', 'Manager', 'M', '1-Oct-45', 30000, 'B005'),
       ('SG37', 'Ann', 'Beech', 'Assistant', 'F', '10-Oct-60', 12000, 'B003'),
       ('SG14', 'David', 'Ford', 'Supervisor', 'M', '10-Oct-60', 18000, 'B003'),
       ('SA9', 'Mary', 'Howe', 'Assistat', 'F', '19-Feb-70', 9000, 'B007'),
       ('SG5', 'Susan', 'Brand', 'Manager', 'F', '3-Jun-40', 24000, 'B003');
  

       
insert into homedream.propertyforrent (propertyNo, street,city,postcode,type,rooms,rent,ownerNo,staffNo,branchNo)
values ('PA14', '16 Holhead', 'Aberdeen','AB7 5SU', 'House', '6','650','CO46','SA9','B007'),
		('PL94', '6 Argyll St', 'London','NW2', 'Flat', '4','400','CO87','SG14','B005'),
		('PG4', '6 Lawrence St', 'Glasgow','G11 9QX', 'Flat', '3','350','CO40', null,'B003'),
		('PG36', '2 Manor Rd', 'Glasgow','G32 4QX', 'Flat', '3','375','CO93','SG37','B003'),
		('PG21', '18 Dale Rd', 'Glasgow','G12', 'House', '5','600','CO87','SG37','B003'),
		('PG16', '5 Novar Dd', 'Glasgow','G12 9AX', 'Flat', '4','450','CO93','SG14','B003');
        
insert into homedream.clientno(clientNo, fname, lname, telNo, prefType, maxRent, eMail)
values ('CR76', 'John', 'Kay', '0207-774-5632', 'Flat', 425, 'john.kay@gmail.com'),
('CR56', 'Aline', 'Stewart', '0141-848-1825', 'Flat', 350, 'astewart@hotmail.com'),
('CR74', 'Mike', 'Ritchie', '01475-392178', 'House', 750, 'mrichie01@yahoo.com'),
('CR62', 'Mary', 'Tregeat', '01224-196720', 'Flat', 600, 'mary@hotmail.co.uk');

insert into homedream.privateowner(ownerNo,fname,lname,address, telNo, eMail,password)
Values('CO46', 'Joe', 'Keogh', '2 Fergus Dr, Aberdeen AB2 75X', '01224-861212','jkeogh@lhh.com', '********'),
('CO87', 'Carol', 'Farrel', '6 Achray St. Glasgow G32 9DX', '0141-357-7419','cfarrelgmail.com', '********'),
('CO40', 'Tina', 'Murphy', '63 Well St. Glasgrow G42', '0141-943-1728','tinam@hotmail.com', '********'),
('CO93', 'Tony', 'Shaw', '12 Park Pl. Glasgow G4 0QR', '0141-225-7025','tony.shaw@ark.com', '********');

insert into homedream.viewing(clientNo, propertyNo, viewDate, comment)
Values('CR56', 'PA14', '24-May-13', 'too small'),
      ('CR76', 'PG4', '20-Apr-13', 'too remote'),
      ('CR56', 'PG4', '26-May-13', null),
      ('CR62', 'PA14', '14-May-13', 'no dining room'),
      ('CR56', 'PG36', '28-Apr-13', null);

insert into homedream.registration(clientNo, branchNo, staffNo, dateJoined)
values('CR76','B005','SG14', '2-Jan-13'),
        ('CR56','B003','SG37', '11-Apr-12'),
        ('CR74','B003','SG37', '16-Nov-11'),
        ('CR62','B007','SA9', '7-Mar-12');
	
    
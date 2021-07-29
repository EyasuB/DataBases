use  homedream;
create table branch(branchNo varchar(4) primary key,
                    street varchar(100), city varchar(50),
                        postcode varchar(50));
                       
create table staff(staffNo varchar(4) primary key,
                    fname varchar(100), lname varchar(50),
                        position varchar(50), sex char(1),
                        DOB varchar(20), salary decimal(9,2),
                        branchNo varchar(4),
                        foreign key(branchNo) references branch(branchNo));
                       
create table propertyForRent(propertyNo varchar(4) primary key,
                    street varchar(100), city varchar(50),
                    postcode varchar(50), type varchar(50),
                    rooms varchar(100), rent decimal(9,2),
                    ownerNo varchar(50), staffNo varchar(4),
                    branchNo varchar(4),
                    foreign key(staffNo) references staff(staffNo),
                    foreign key(branchNo) references branch(branchNo)
                    );
create table clientNo(clientNo varchar(4) primary key,
                    fname varchar(100), lname varchar(50),
                        telNo varchar(25), prefType varchar(50),
                        maxRent decimal(9,2), eMail varchar(50));
create table privateOwner(ownerNo varchar(4) primary key,
                    fname varchar(100), lname varchar(50),
                        telNo varchar(25), eMail varchar(50),
                        password nvarchar(50));
create table viewing(clientNo varchar(4), propertyNo varchar(4),
                    viewDate varchar(20), comment varchar(255),
                    primary key (clientNo, propertyNo),
                    foreign key(clientNo) references clientNo(clientNo),
                    foreign key(propertyNo) references propertyForRent(propertyNo));
                   
create table registration(clientNo varchar(4), branchNo varchar(4),
                    staffNo varchar(4), dateJoined varchar(20),
                    primary key (clientNo, branchNo),
                    foreign key(clientNo) references clientNo(clientNo),
                    foreign key(branchNo) references branch(branchNo),
                    foreign key(staffNo) references staff(staffNo));
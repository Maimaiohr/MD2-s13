USE session13;
CREATE TABLE Customer(
cID int(100) primary key auto_increment,
cName varchar(100) not null,
cAge int(10) not null
);
CREATE TABLE Orderr(
oID int(100) primary key auto_increment,
cID int(100) not null,
foreign key (cID) references Customer(cID),
oDate datetime not null,
oTotalPrice float not null
);
CREATE TABLE Product(
pID int(50) primary key auto_increment,
pName varchar(100) not null,
pPrice float not null
);
CREATE TABLE OrderDetail(
oID int(100) not null,
foreign key (oID) references Orderr(oID),
pID int(100) not null,
foreign key (pID) references Product(pID),
odQTY float not null
);
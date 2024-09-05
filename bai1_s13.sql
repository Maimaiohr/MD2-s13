CREATE DATABASE session13;
USE session13;
CREATE TABLE PHIEUXUAT(
soPX int(50) primary key auto_increment,
ngayXuat datetime not null
);
CREATE TABLE vattu(
maVT int(20) primary key auto_increment,
tenVT varchar(100) not null
);
CREATE TABLE PHIEUXUAT_detail(
soPX int(50) not null,
foreign key (soPX) references PHIEUXUAT(soPX),
maVT int(20) not null,
foreign key (maVT) references vattu(maVT),
donGiaXuat float not null,
soLuongXuat int(100)  not null
);
CREATE TABLE PHIEUNHAP(
soPN int(50) primary key auto_increment,
ngayNhap datetime not null
);
CREATE TABLE PHIEUNHAP_detail(
soPN int(50) not null,
foreign key (soPN) references PHIEUNHAP(soPN),
maVT int(20) not null,
foreign key (maVT) references vattu(maVT),
dongianhap float not null,
soluongnhap int(100)  not null
);
CREATE TABLE nhacungcap(
maNCC int(50) primary key auto_increment,
tenNCC varchar(100) not null unique,
diaChi varchar(200) not null,
soDienThoai varchar(11) not null
);
CREATE TABLE DonDatHang(
soDH int(50) primary key auto_increment,
ngayDH datetime not null,
maNCC int(20) not null,
foreign key (maNCC) references nhacungcap(maNCC)
);
CREATE TABLE DonDatHang_detail(
maVT int(50) not null,
foreign key (maVT) references vattu(maVT),
soDH int(20) not null,
foreign key (soDH) references DonDatHang(soDH)
);



create database QuanlydiemSV;
create table DMKhoa(
	MaKhoa varchar(3) primary key,
	TenKhoa varchar(30) not null
);
insert into DMKhoa(MaKhoa, TenKhoa)
	values("AV","Anh Văn");
insert into DMKhoa(MaKhoa, TenKhoa)
	values("TH","Tin Học");
insert into DMKhoa(MaKhoa, TenKhoa)
	values("TR","Triết");
insert into DMKhoa(MaKhoa, TenKhoa)
	values("VL","Vật Lý");


create table DMSV(
	MaSV varchar(3) not null primary key,
	HoSV varchar(50) not null,
	TenSV varchar(50) not null,
	Gioitinh varchar(7), 
	Ngaysinh date not null,
	Quequan varchar(50),
	MaKhoa varchar(3),
	Hocbong decimal(10,2)
);
insert into DMSV(MaSV,HoSV,TenSV,Gioitinh,Ngaysinh,Quequan,MaKhoa,Hocbong)
	values('A01', 'Nguyễn Thị', 'Hải', 'Nữ','1990/02/24', 'Hà Nội','TH',130000);
insert into DMSV(MaSV,HoSV,TenSV,Gioitinh,Ngaysinh,Quequan,MaKhoa,Hocbong)
	values('A02', 'Nguyễn Văn', 'Hà', 'Nam','1991/03/24', 'HCM','TR',120000);
insert into DMSV(MaSV,HoSV,TenSV,Gioitinh,Ngaysinh,Quequan,MaKhoa,Hocbong)
	values('A03', 'Trần Thị', 'Vi', 'Nữ','1990/02/27', 'Đà Nẵng','AV',140000);
insert into DMSV(MaSV,HoSV,TenSV,Gioitinh,Ngaysinh,Quequan,MaKhoa,Hocbong)
	values('A04', 'Lê Như', 'Huỳnh', 'Nữ','1990/05/20', 'Quảng Nam','TH',130000);
insert into DMSV(MaSV,HoSV,TenSV,Gioitinh,Ngaysinh,Quequan,MaKhoa,Hocbong)
	values('B01', 'Nguyễn Thị', 'Lệ', 'Nữ','1990/05/22', 'Hà Nội','TH',0);
insert into DMSV(MaSV,HoSV,TenSV,Gioitinh,Ngaysinh,Quequan,MaKhoa,Hocbong)
	values('B02', 'Trần', 'Định', 'Nam','1990/05/11', 'Hà Nội','TH',100000);

create table DMMH(
	MaMH varchar(3) not null primary key,
	TenMH varchar(30) not null,
	Sotiet int
);
insert into DMMH(MaMH,TenMH,Sotiet)
	values("01","Cơ sở dữ liệu",45);
insert into DMMH(MaMH,TenMH,Sotiet)
	values("02","Trí tuệ nhân tạo",45);
insert into DMMH(MaMH,TenMH,Sotiet)
	values("03","Truyền tin",45);
insert into DMMH(MaMH,TenMH,Sotiet)
	values("04","Đồ họa",60);
insert into DMMH(MaMH,TenMH,Sotiet)
	values("05","Văn phạm",60);


create table Ketqua(
	MaSV varchar(3) not null,
	MaMH varchar(3) not null,
	Lanthi int,
	Diem decimal(4,2)
);
insert into Ketqua(MaSV,MaMH,Lanthi,Diem)
	values("A01","01",1,3);
insert into Ketqua(MaSV,MaMH,Lanthi,Diem)
	values("A01","01",2,6);
insert into Ketqua(MaSV,MaMH,Lanthi,Diem)
	values("A01","02",2,6);
insert into Ketqua(MaSV,MaMH,Lanthi,Diem)
	values("A01","03",1,5);

insert into Ketqua(MaSV,MaMH,Lanthi,Diem)
	values("A02","01",1,4.5);
insert into Ketqua(MaSV,MaMH,Lanthi,Diem)
	values("A02","01",2,7);
insert into Ketqua(MaSV,MaMH,Lanthi,Diem)
	values("A02","03",1,10);
insert into Ketqua(MaSV,MaMH,Lanthi,Diem)
	values("A02","05",1,9);

insert into Ketqua(MaSV,MaMH,Lanthi,Diem)
	values("A03","01",1,2);
insert into Ketqua(MaSV,MaMH,Lanthi,Diem)
	values("A03","01",2,5);
insert into Ketqua(MaSV,MaMH,Lanthi,Diem)
	values("A03","03",1,2.5);
insert into Ketqua(MaSV,MaMH,Lanthi,Diem)
	values("A03","03",2,4);

insert into Ketqua(MaSV,MaMH,Lanthi,Diem)
	values("A04","05",2,10);

insert into Ketqua(MaSV,MaMH,Lanthi,Diem)
	values("B01","01",1,7);
insert into Ketqua(MaSV,MaMH,Lanthi,Diem)
	values("B01","03",1,2.5);
insert into Ketqua(MaSV,MaMH,Lanthi,Diem)
	values("B01","03",2,5);

insert into Ketqua(MaSV,MaMH,Lanthi,Diem)
	values("B02","02",1,6);
insert into Ketqua(MaSV,MaMH,Lanthi,Diem)
	values("B02","04",1,10);

--câu1
select MaSV, HoSV, TenSV, Hocbong from dmsv order by MaSV ASC;
--câu2
select MaSV, HoSV, TenSV, Gioitinh, Ngaysinh from dmsv order by Gioitinh ASC;
--câu3
select MaSV, HoSV, Ngaysinh, Hocbong from dmsv order by Ngaysinh ASC;
select MaSV, HoSV, Ngaysinh, Hocbong from dmsv order by Hocbong DESC;
--câu4
select MaMH, TenMH, Sotiet from dmmh where TenMH like 'T%';
--câu5
select MaSV, HoSV,TenSV, Ngaysinh, Gioitinh from dmsv where TenSV like '%i';
--câu6
select MaKhoa, TenKhoa from dmkhoa where TenKhoa like '_n%';
--câu7
select MaSV, HoSV,TenSV, TenKhoa, Hocbong 
from dmsv right join dmkhoa on dmsv.MaKhoa=dmkhoa.MaKhoa where dmsv.Hocbong>100000;
--câu8
select MaSV, HoSV,TenSV, MaKhoa, Quequan, Hocbong 
from dmsv where Hocbong>100000 and Quequan='Hà Nội';
--câu9
select MaSV, dmkhoa.MaKhoa, Gioitinh 
from dmsv right join dmkhoa on dmsv.MaKhoa=dmkhoa.MaKhoa where dmkhoa.MaKhoa='AV' or dmkhoa.MaKhoa='VL'
group by dmKhoa.MaKhoa, dmKhoa.TenKhoa;
--câu10
select MaSV, TenSV, Ngaysinh, Quequan, Hocbong 
from dmsv where Ngaysinh between '1990/01/01' and '1990/12/30';
--câu11
select MaSV, Ngaysinh, Gioitinh, MaKhoa from dmsv where Hocbong between 100000 and 120000;
--câu12
select MaMH, TenMH, Sotiet from dmmh where Sotiet>30 and Sotiet<=45;
--câu13
select MaSV, HoSV, TenSV, dmkhoa.TenKhoa, Gioitinh from dmsv join dmkhoa on dmsv.MaKhoa=dmkhoa.MaKhoa 
where dmsv.Gioitinh='Nam' and (dmkhoa.TenKhoa='Tin Học' or dmkhoa.TenKhoa='Triết');
--câu14
select  HoSV, TenSV from dmsv where Month(Ngaysinh) = '02' and Quequan='Hà Nội';
--câu15
select HoSV, TenSV DATEDIFF(year, Ngaysinh, GETDATE()) as Tuoi 
from dmsv where (YEAR(CURDATE())-YEAR(Ngaysinh))>29;
--câu16
--câu17
select HoSV, TenSV, Gioitinh, Ngaysinh from dmsv where Month(Ngaysinh)='01' or Month(Ngaysinh)='02'or Month(Ngaysinh)='03';
--câu18
select count(*) from dmsv;
--câu19
select count(dmsv.Gioitinh='Nữ') as TSVN from dmsv where dmsv.Gioitinh='Nữ';
--câu20
select MaMH, count(*) as sl from ketqua where MaMH='01' and Lanthi!='02'
union all
select MaMH, count(*) as sl from ketqua where MaMH='02' and Lanthi!='02'
union all
select MaMH, count(*) as sl from ketqua where MaMH='03' and Lanthi!='02'
union all
select MaMH, count(*) as sl from ketqua where MaMH='04' and Lanthi!='02'
union all
select MaMH, count(*) as sl from ketqua where MaMH='05' and Lanthi!='02';
create database QuanLySinhSvien;
create table Publisher(
 pid int not null auto_increment primary key,
 pname varchar(100) not null,
 pcity varchar(50) not null
 );
insert into Publisher(pname,pcity)
	values("NXB Giáo Dục","Hà Nội");
insert into Publisher(MaMH,TenMH,Sotiet)
	values("02","Trí tuệ nhân tạo",45);
insert into Publisher(MaMH,TenMH,Sotiet)
	values("03","Truyền tin",45);

create table Authors(
 pid int not null auto_increment primary key,
 firstname varchar(100) not null,
 lastname varchar(50) not null,
 acity varchar(50) not null
 );
 insert into Authors(firstname,lastname,acity)
	values("Chế Lan","Viên","TP HCM");
 insert into Authors(firstname,lastname,acity)
	values("Lưu Quang","Vũ","Hà Nội");
 insert into Authors(firstname,lastname,acity)
	values("Hàn Mặc","Tử","Quy Nhơn");
 insert into Authors(firstname,lastname,acity)
	values("Trần Hữu","Tri","Ninh Bình");
 insert into Authors(firstname,lastname,acity)
	values("Nguyễn","Bính","Nam Định");
 insert into Authors(firstname,lastname,acity)
	values("Tô","Hoài","Hà Nội");
 insert into Authors(firstname,lastname,acity)
	values("Nguyên","Ngọc","Quảng Nam");
 insert into Authors(firstname,lastname,acity)
	values("Nguyễn Nhật","Ánh","TP HCM");
--câu 2 ý 1
SELECT count(*) as sl_tg_nsx_cung_tp
from Publisher join Authors on Publisher.pcity = Authors.acity;
--câu 2 ý 2 cách 1
select sum((select count(authors.acity) from authors) - (select count(authors.acity) as sl
from publisher join authors on authors.acity=publisher.pcity)) as soluong;
--chọn tất cả
select *, count(*) from publisher left join authors on authors.acity=publisher.pcity
group by authors.acity, publisher.pcity
union
select *, count(*) from publisher right join authors on authors.acity=publisher.pcity
group by authors.acity, publisher.pcity;
--câu 2 ý 2
SELECT count(case when pid is null then 1 end) as sl_tg_khong_o_cung_tp 
from publisher right join authors on publisher.pcity=authors.acity;
--câu 2 ý 3
SELECT count(case when aid is null then 1 end) as sl_nsx_khong_o_cung_tp 
from publisher left join authors on publisher.pcity=authors.acity;
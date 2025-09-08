--Tạo 3 bảng sau

--1. BaiDoXe gồm các column sau
--- Tên bãi: nvarchar(50)
--- mã bãi đỗ xe: int ->primary key -> identity(1,1)
--- địa chỉ: nvarchar(200)
--2. ThongTinGui gồm các column sau
--- id: int -> primary key -> identity(1,1)
--- tên xe: nvarchar(50)
--- biển số xe: nvarchar(20)
--- mã bãi đỗ xe: int
--- id chủ sở hữu: int
--3. Bảng chủ sở hữu
--- id chủ sở hữu: int -> primary key -> identity(1,1)
--- tên: nvarchar(50)
--- số cmtnd: nvarchar(20)
--- địa chỉ: nvarchar(200)

--Yêu cầu :
--- Tạo bản trên
--- chèn mỗi bảng 5 bản nghỉ
--- Hiển thị thông tin dữ liệu từng bản
CREATE TABLE BaiDoXe (
ten_bai nvarchar(50),
ma_bai int primary key identity (1,1),
dia_chi nvarchar (200)
)
CREATE TABLE ThongTinGui(
id int primary key identity(1,1),
ten_xe nvarchar (50),
bien_so nvarchar (20),
ma_bai int,
id_owner int
)
create table ChuSoHuu (
id_owner int primary key identity(1,1),
name nvarchar(50),
cmtnd nvarchar (20),
diachi nvarchar(200)
)
insert into BaiDoXe (ten_bai,dia_chi)
values ('A', 'hqv'),
('B', 'hqv'),
('C', 'hqv'),
('D', 'hqv'),
('E', 'hht')

insert into ThongTinGui (ten_xe,bien_so,ma_bai,id_owner)
values ('vision', '29', '1', '2'),
('vision', '30', '2', '3'),
('vision', '31', '4', '5'),
('vision', '32', '1', '2'),
('vision', '33', '1', '2')

insert into ChuSoHuu (name,cmtnd, diachi)
values ('ok', '1122334455', 'Hanoi'),
('ok', '1122334455', 'Hanoi'),
('ok', '1122334455', 'Hanoi'),
('ok', '1122334455', 'Hanoi'),
('ok', '1122334455', 'Hanoi')

select * from BaiDoXe
select * from ThongTinGui
select * from ChuSoHuu

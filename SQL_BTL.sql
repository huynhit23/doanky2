use master;
go
Drop DATABASE DB_BTL;
go
CREATE DATABASE DB_BTL;
GO
USE DB_BTL;
GO
CREATE TABLE Categories
(
	Id int PRIMARY KEY IDENTITY,
	Name nvarchar(100) NOT NULL UNIQUE
)
GO
CREATE TABLE Restaurant
(
	Id int PRIMARY KEY IDENTITY,
	Name nvarchar(100) NOT NULL,
	Address nvarchar(100) NOT NULL,
    Status tinyint DEFAULT '1'
)
GO
CREATE TABLE Products
(
	Id int PRIMARY KEY IDENTITY,
	Name nvarchar(120) NOT NULL,
    Category_id int,
    FOREIGN KEY (Category_id) REFERENCES Categories(Id),
	Restaurant_id int,
    FOREIGN KEY (Restaurant_id) REFERENCES Restaurant(Id),
	Price float NOT NULL,
    Sale_price float NULL,
    Img nvarchar(120) NOT NULL ,
    Content nvarchar(300) NOT NULL,
    Status tinyint DEFAULT '1'
)
GO
CREATE TABLE [Role](
Id int IDENTITY(1,1) NOT NULL primary key,
Name nvarchar(50) NULL,
)
GO
CREATE TABLE Account (
Id int IDENTITY(1,1) NOT NULL primary key,
Username nvarchar(45) NULL,
Email nvarchar(50) NULL,
Phone nvarchar(50) Null,
[Password] nvarchar(100) NULL,
Fullname nvarchar(100) NULL,
[Address] nvarchar(100) NULL,
Gender bit Null,
[Enabled] bit DEFAULT 'true',
)
GO
CREATE TABLE Account_roles(
Id int IDENTITY(1,1) NOT NULL primary key,
UserId int NULL foreign key references Account(Id),
RoleId int NULL foreign key references [Role](Id),
)
GO
CREATE TABLE Orders
(
    Id int PRIMARY KEY IDENTITY,
	UserName nvarchar(100) NULL,
	AcId int Null foreign key references Account(Id),
	[Address] nvarchar(100) NULL,
	Phone nvarchar(50),
	Quantity int NULL
)
GO
CREATE TABLE OrderDetail
(
    Id int PRIMARY KEY IDENTITY,
	ProId int Null foreign key references Products(Id),
	OrId int NULL foreign key references Orders(Id)
)

GO
INSERT [Role] VALUES (N'ROLE_ADMIN')
GO
INSERT [Role] VALUES (N'ROLE_USER')
GO
INSERT Account(Username ,Email ,Phone ,[Password] ,Fullname ,[Address] ,Gender ) VALUES (N'admin',N'admin@gmail.com', N'123456', N'$2a$12$fgQHk4ioj5KmleObfoj/7OzSW0DUdkB53erRQdXxx9GW5yG2TdnGK','Nguyen','Ha Noi - Viet Nam',1)
GO
INSERT Account(Username ,Email ,Phone ,[Password] ,Fullname ,[Address] ,Gender ) VALUES (N'user',N'user@gmail.com', N'123456', N'$2a$12$94jpVXkBWiZ5QRt6OZFdbOEe2A9W2M3wk63sNjuu5NC52WS75OaR6','Hoa','TP HCM - Viet Nam',0)
go

GO
INSERT Account_roles (UserId, RoleId) VALUES (1, 1)
GO
INSERT Account_roles (UserId, RoleId) VALUES (1, 2)
GO
INSERT Account_roles (UserId, RoleId) VALUES (2, 2)
GO
INSERT Restaurant VALUES (N'KFC',N'Cầu Giấy - Hà Nội',1),
(N'SuShi',N'Cầu Giấy - Hà Nội',1),
(N'Aha Cafe',N'Cầu Giấy - Hà Nội',1),
(N'Tocotoco',N'Cầu Giấy - Hà Nội',1),
(N'Pizza Hut',N'Cầu Giấy - Hà Nội',1),
(N'VinMart',N'Cầu Giấy - Hà Nội',1)
go
INSERT Categories VALUES (N'Fastfood'),
(N'Trà Sữa'),
(N'Pizza'),
(N'Coffee'),
(N'Cơm'),
(N'Thịt'),
(N'Rau'),
(N'Hải sản')
go
insert into Products values
(N'Combo Gà Quay', 1, 1, 130000, 0,'Fastfood1.jpg', N'1 Miếng Gà Quay Giấy Bạc + 1 Salad Hạt',1),
(N'Combo Burger', 1, 1, 100000, 91000,'Fastfood2.jpg', N'1 Burger Tôm + 1 Miếng Gà + 1 Lon Pepsi. Giá gốc: 100000',1),
(N'Combo Hash Browns', 1, 1, 115000, 99000,'Fastfood3.jpg', N'2 Bánh Khoai Tây Chiên + 1 Burger Zinger/ Burger Gà Quay Flava/ Burger Tôm + 1 miếng Gà + 1 Pepsi Lon.',0),
(N'Cơm Phi-Lê Gà Quay', 5, 1, 46000, 0,'com.jpg', N'1 Cơm Phi-lê Gà Quay',1),
(N'Cơm Gà Xiên Que', 5, 1, 46000, 0,'com_2.jpg', N'1 Cơm Gà Xiên Que',1),
(N'Khay Mix Đặc Biệt Sushi', 8, 2, 365000, 0,'sushi.jpg', N'Khay mix đặc biệt gồm 28 viên sushi gồm các loại: futo trứng tam sắc, futo nấm hương rong biển tươi, futo xúc xích, futo chả mực, thanh cua, trứng tôm 2 màu, sốt ngô, sốt thanh cua, rong biển',1),
(N'Khay Tròn 6', 8, 2, 599000, 0,'sushi_2.jpg', N'Lưu ý: thời gian làm đồ 25 phút. Khay tròn 6 gồm 30 viên sushi cá hồi, lươn, trứng tôm, sốt thanh cua, rong biển, thanh cua và sashimi cá hồi, sashimi cá trích 2 màu phù hợp cho 3 - 4 người ăn',1),
(N'Pizza Hawaiian 20cm', 3, 5, 119000, 0,'pizza.jpg', N'Phủ giăm bông và thơm ngọt dịu trên nền sốt cà chua truyền thống',1),
(N'Pizza Bò BBQ Xốt Cay 20cm', 3, 5, 119000, 0,'pizza_2.jpg', N'Thịt bò Úc, thơm trên nền xốt Hàn Quốc cay nồng, phủ rau mầm và mè rang',1),
(N'Trà Sữa Trân Châu Size L', 2, 4, 30000, 0,'trasua.jpg', N'Hồng trà tươi Phú Thọ đạt chuẩn Châu Âu hòa với vị sữa hài hòa cùng trân châu hoàng kim dẻo bùi',1),
(N'Trà Sữa Panda Size L', 2, 4, 25000, 0,'trasua_2.jpg', N'Trà xanh Organic vị nhài quyện cùng sữa. hài hòa, trân châu hoàng kim dẻo bùi và trân châu sợi dai mềm chỉ có tại ToCoToCo',1),
(N'Bạc Sỉu Đá', 4, 3, 40000, 33000,'cafe.jpg', N'Cafe Arabica tươi với sữa và kem tươi, uống lạnh. Hương vị: Rõ vị cafe và ngọt ngậy.',1),
(N'Solar Latte', 4, 3, 50000, 45000,'cafe_2.jpg', N'Cafe Arabica tươi với kem tươi, sữa đặc, và sữa tươi thanh trùng không đường. Hương vị cafe đậm, ít ngọt, ngậy vừa và cân bằng.',1),
(N'Ba chỉ bò nhập khẩu 500g', 6, 6, 139000, 115000,'thit.jpg', N'Đơn vị tính: KGXuất xứ: Úc Quy cách thái: Lẩu/ NướngĐóng gói: 0.5Kg/KhayBảo quản: -18 độ  |  HDS: 30 ngàyChế biến: Lẩu, nướng, hấp…',1),
(N'Thịt 3 chỉ 1kg', 6, 6, 110000, 100000,'thit_2.jpg', N'Đơn vị tính: KG Xuất xứ: Việt Nam Quy cách thái: Lẩu/ NướngĐóng gói: 1Kg/KhayBảo quản: -18 độ  |  HDS: 30 ngàyChế biến: Lẩu, nướng, hấp…',1),
(N'Cá hồi tươi 300g', 8, 6, 240000, 215000,'thit_3.jpg', N'Đơn vị tính: KG Xuất xứ: Nhật Đóng gói: 0.3Kg/KhayBảo quản: -18 độ  |  HDS: 30 ngàyChế biến: Lẩu, nướng, hấp…',1),
(N'Cà Chua', 7, 6, 20000, 0,'rau.jpg', N'Đơn vị tính: KG Xuất xứ: Việt Nam Đóng gói: 0.5Kg/Túi',1),
(N'Cải Ngọt', 7, 6, 15000, 0,'rau_2.jpg', N'Đơn vị tính: KG Xuất xứ: Việt Nam Đóng gói: 0.5Kg/Túi',1),
(N'Dưa Chuột', 7, 6, 20000, 0,'rau_3.jpg', N'Đơn vị tính: KG Xuất xứ: Việt Nam Đóng gói: 0.5Kg/Túi',1)
Go
select * from [Role];
select * from Account;
select * from Account_roles;
select * from Restaurant;
select * from Products;
select * from Categories;
select * from Orders;
select * from OrderDetail;

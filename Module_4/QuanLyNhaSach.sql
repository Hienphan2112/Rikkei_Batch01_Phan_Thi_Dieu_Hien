-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: quanlysachnhanam
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chitietdonhang`
--

DROP TABLE IF EXISTS `chitietdonhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chitietdonhang` (
  `MaDonHang` varchar(10) DEFAULT NULL,
  `MASanPham` varchar(10) DEFAULT NULL,
  `SoLuong` int DEFAULT NULL,
  KEY `MaDonHang` (`MaDonHang`),
  KEY `MASanPham` (`MASanPham`),
  CONSTRAINT `chitietdonhang_ibfk_1` FOREIGN KEY (`MaDonHang`) REFERENCES `donhang` (`MaDonHang`),
  CONSTRAINT `chitietdonhang_ibfk_2` FOREIGN KEY (`MASanPham`) REFERENCES `sanphamsach` (`MaSPSach`),
  CONSTRAINT `chitietdonhang_ibfk_3` FOREIGN KEY (`MASanPham`) REFERENCES `sanphamdungcu` (`MaSPDungCu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitietdonhang`
--

LOCK TABLES `chitietdonhang` WRITE;
/*!40000 ALTER TABLE `chitietdonhang` DISABLE KEYS */;
/*!40000 ALTER TABLE `chitietdonhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dmdochoi`
--

DROP TABLE IF EXISTS `dmdochoi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dmdochoi` (
  `MaDMDochoi` varchar(10) NOT NULL,
  `Nhom` varchar(100) DEFAULT NULL,
  `Mota` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`MaDMDochoi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dmdochoi`
--

LOCK TABLES `dmdochoi` WRITE;
/*!40000 ALTER TABLE `dmdochoi` DISABLE KEYS */;
INSERT INTO `dmdochoi` VALUES ('DMDC01','Nhóm 0-3 tuổi',''),('DMDC02','Nhóm 4-8 tuổi',''),('DMDC03','Nhóm trên 8 tuổi','');
/*!40000 ALTER TABLE `dmdochoi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dmdungcu`
--

DROP TABLE IF EXISTS `dmdungcu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dmdungcu` (
  `MaDMDungCu` varchar(10) NOT NULL,
  `Khoi` varchar(100) DEFAULT NULL,
  `Mota` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`MaDMDungCu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dmdungcu`
--

LOCK TABLES `dmdungcu` WRITE;
/*!40000 ALTER TABLE `dmdungcu` DISABLE KEYS */;
INSERT INTO `dmdungcu` VALUES ('DMDCu01','Tiểu học',''),('DMDCu02','Trung học',''),('DMDCu03','Phổ thông','');
/*!40000 ALTER TABLE `dmdungcu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dmsach`
--

DROP TABLE IF EXISTS `dmsach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dmsach` (
  `MaDMSach` varchar(10) NOT NULL,
  `TheLoai` varchar(100) DEFAULT NULL,
  `Mota` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`MaDMSach`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dmsach`
--

LOCK TABLES `dmsach` WRITE;
/*!40000 ALTER TABLE `dmsach` DISABLE KEYS */;
INSERT INTO `dmsach` VALUES ('DMS01','Văn học',''),('DMS02','Khoa học',''),('DMS03','Chính trị',''),('DMS04','Tôn giáo',''),('DMS05','Thiếu nhi','');
/*!40000 ALTER TABLE `dmsach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donhang`
--

DROP TABLE IF EXISTS `donhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donhang` (
  `MaDonHang` varchar(10) NOT NULL,
  `MaKhachHang` varchar(10) DEFAULT NULL,
  `MaNhanVien` varchar(10) DEFAULT NULL,
  `NgayMuaHang` date DEFAULT NULL,
  `TongTien` double DEFAULT NULL,
  PRIMARY KEY (`MaDonHang`),
  KEY `MaKhachHang_idx` (`MaKhachHang`),
  KEY `MaNhanVien` (`MaNhanVien`),
  CONSTRAINT `MaKhachHang` FOREIGN KEY (`MaKhachHang`) REFERENCES `khachhang` (`MaKhachHang`),
  CONSTRAINT `MaNhanVien` FOREIGN KEY (`MaNhanVien`) REFERENCES `nhanvien` (`MaNhanVien`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donhang`
--

LOCK TABLES `donhang` WRITE;
/*!40000 ALTER TABLE `donhang` DISABLE KEYS */;
INSERT INTO `donhang` VALUES ('DH01','KH01','NV01','2021-03-05',50000),('DH02','KH02','NV02','2020-03-01',1000000),('DH03','KH03','NV03','2021-02-28',500000),('DH04','KH04','NV04','2021-02-27',1500000),('DH05','KH05','NV05','2021-02-26',2000000),('DH06','KH06','NV06','2021-02-25',700000),('DH07','KH07','NV01','2021-02-25',600000),('DH08','KH01','NV02','2021-02-24',1250000),('DH09','KH02','NV03','2021-02-23',1000000),('DH10','KH03','NV04','2021-02-21',1500000);
/*!40000 ALTER TABLE `donhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khachhang` (
  `MaKhachHang` varchar(10) NOT NULL,
  `TenKhachHang` varchar(50) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `SoDienThoai` varchar(10) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `MaLoai` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`MaKhachHang`),
  KEY `MaLoai` (`MaLoai`),
  CONSTRAINT `khachhang_ibfk_1` FOREIGN KEY (`MaLoai`) REFERENCES `loaikhachhang` (`MaLoai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khachhang`
--

LOCK TABLES `khachhang` WRITE;
/*!40000 ALTER TABLE `khachhang` DISABLE KEYS */;
INSERT INTO `khachhang` VALUES ('KH01','TRAN LINH PHUONG','1999-12-21','0963604889','abc@gmail.com','LK01'),('KH02','KHANH LINH','2000-06-07','0123456789','HKGG@GMAIL.COM','LK01'),('KH03','TRAN LAN ANH','1999-06-07','0123456789','bcd@gmail.com','LK02'),('KH04','HA LONG HAI','1999-05-04','0123456789','cde@gmail.com','LK03'),('KH05','PHAN THI HIEN','1999-03-02','0123456789','def@gmail.com','LK01'),('KH06','HOANG TUAN MANH','1999-02-01','0123456789','fgh@gmail.com','LK02'),('KH07','NGUYEN VIET TRONG','2000-12-01','0123456789','hfg@gmail.com','LK03'),('KH08','HA VAN THUAN THIEN','2000-11-10','0123456789','hndk@gmail.com','LK01'),('KH09','TRAN HOANG ANH','2000-10-09','0123456789','khk@gmail.com','LK02'),('KH10','LE THI THAO','2000-09-08','0123456789','hooo@gmail.com','LK03');
/*!40000 ALTER TABLE `khachhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loaikhachhang`
--

DROP TABLE IF EXISTS `loaikhachhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loaikhachhang` (
  `MaLoai` varchar(10) NOT NULL,
  `TenLoai` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`MaLoai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaikhachhang`
--

LOCK TABLES `loaikhachhang` WRITE;
/*!40000 ALTER TABLE `loaikhachhang` DISABLE KEYS */;
INSERT INTO `loaikhachhang` VALUES ('LK01','Thường'),('LK02','VIP1'),('LK03','VIP2');
/*!40000 ALTER TABLE `loaikhachhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhanvien` (
  `MaNhanVien` varchar(10) NOT NULL,
  `TenNhanVien` varchar(100) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `ViTri` varchar(50) DEFAULT NULL,
  `SoDienThoai` varchar(10) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Diachi` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`MaNhanVien`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanvien`
--

LOCK TABLES `nhanvien` WRITE;
/*!40000 ALTER TABLE `nhanvien` DISABLE KEYS */;
INSERT INTO `nhanvien` VALUES ('NV01','Phan Thị Diệu Hiền','1999-12-21','Nhân Viên','0123456789','hiendieu@gmail.com','Quảng Nam'),('NV010','Nguyễn Văn B','1999-08-22','Nhân Viên','0123456789','nguyenb@gmail.com','Quảng Nam'),('NV02','Nguyễn Văn A','1999-11-26','Giám đốc','0123456789','abc@gmail.com','Quảng Trị'),('NV03','Phan Văn B','1999-12-21','Thư kí','0913002441','xyz@gmail.com','Gia Lai'),('NV04','Trần Văn C','1999-03-08','Nhân Viên','0123456789','abcxyz@gmail.com','Quảng Trị'),('NV05','Hà Văn D','1999-05-07','Giám đốc','0123456789','had@gmail.com','Quảng Nam'),('NV06','Luong Thanh H','1999-08-07','Nhân Viên','0123456789','thanhh@gmail.com','Quảng Nam'),('NV07','Ngô Lan','1999-08-09','Nhân Viên','0123456789','ngolan@gmail.com','Quảng Nam'),('NV08','Trần Văn D','1999-03-07','Nhân Viên','0123456789','tranvand@gmail.com','Quảng Bình'),('NV09','Nguyễn Văn C','1999-03-07','Nhân Viên','0123456789','nguyenc@gmail.com','Quảng Nam');
/*!40000 ALTER TABLE `nhanvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanphamdochoi`
--

DROP TABLE IF EXISTS `sanphamdochoi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sanphamdochoi` (
  `MaSPDoChoi` varchar(10) NOT NULL,
  `TenSPDoChoi` varchar(50) DEFAULT NULL,
  `SoLuong` int DEFAULT NULL,
  `DonGia` double DEFAULT NULL,
  `DonVi` varchar(50) DEFAULT NULL,
  `MaDMDoChoi` varchar(10) DEFAULT NULL,
  `XuatXu` varchar(100) DEFAULT NULL,
  `ThuongHieu` varchar(100) DEFAULT NULL,
  `NhaCungCap` varchar(50) DEFAULT NULL,
  `HuongDan` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`MaSPDoChoi`),
  KEY `MaDMDoChoi` (`MaDMDoChoi`),
  CONSTRAINT `sanphamdochoi_ibfk_1` FOREIGN KEY (`MaDMDoChoi`) REFERENCES `dmdochoi` (`MaDMDochoi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanphamdochoi`
--

LOCK TABLES `sanphamdochoi` WRITE;
/*!40000 ALTER TABLE `sanphamdochoi` DISABLE KEYS */;
INSERT INTO `sanphamdochoi` VALUES ('DC01','Xe oto',100,200000,'chiec','DMDC01','VIET NAM','VNXK','LAN ANH','RUA SACH'),('DC02','Xe can cau',500,150000,'chiec','DMDC01','HAN QUOC','HQXK','HOANG ANH','RUA SACH'),('DC03','Xe cap cuu',200,250000,'chiec','DMDC01','NHAT BAN','NBXK','LINH NHI','RUA SACH'),('DC04','Xe cuu hoa',200,200000,'chiec','DMDC01','TRUNG QUOC','TQXK','HA NAM','RUA SACH'),('DC05','Bup be',500,150000,'bo','DMDC02','VIET NAM','VNXKK','NHAT MINH','RUA SACH'),('DC06','Nau an',200,200000,'bo','DMDC02','HAN QUOC','HQXKK','LAN DAO','RUA SACH'),('DC07','Xep hinh',200,200000,'bo','DMDC03','NHAT BAN','NBXKK','HOA MAI','RUA SACH'),('DC08','Rubik',100,100000,'chiec','DMDC03','TRUNG QUOC','TQXKK','HUNG LA','RUA SACH'),('DC09','Cau Ca',200,150000,'bo','DMDC03','VIET NAM','VNXKKK','HUNG YEN','RUA SACH'),('DC10','Xe xich lo',150,100000,'chiec','DMDC02','HAN QUOC','HQXKKK','HA GIANG','RUA SACH');
/*!40000 ALTER TABLE `sanphamdochoi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanphamdungcu`
--

DROP TABLE IF EXISTS `sanphamdungcu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sanphamdungcu` (
  `MaSPDungCu` varchar(10) NOT NULL,
  `TenSPDungCu` varchar(50) DEFAULT NULL,
  `SoLuong` int DEFAULT NULL,
  `DonGia` double DEFAULT NULL,
  `DonVi` varchar(50) DEFAULT NULL,
  `MaDMDungCu` varchar(10) DEFAULT NULL,
  `XuatXu` varchar(100) DEFAULT NULL,
  `ThuongHieu` varchar(100) DEFAULT NULL,
  `NhaCungCap` varchar(50) DEFAULT NULL,
  `MauSac` varchar(10) DEFAULT NULL,
  `KichThuoc` float DEFAULT NULL,
  `ChatLieu` varchar(200) DEFAULT NULL,
  `HuongDan` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`MaSPDungCu`),
  KEY `MaDMDungCu` (`MaDMDungCu`),
  CONSTRAINT `sanphamdungcu_ibfk_1` FOREIGN KEY (`MaDMDungCu`) REFERENCES `dmdungcu` (`MaDMDungCu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanphamdungcu`
--

LOCK TABLES `sanphamdungcu` WRITE;
/*!40000 ALTER TABLE `sanphamdungcu` DISABLE KEYS */;
INSERT INTO `sanphamdungcu` VALUES ('DCU01','DAN',100,2000000,'CHIEC','DMDCU03','VIET NAM','VNKK','HA LAN','NAU',20,'GO','GIU GIN'),('DCU02','SAO',100,1500000,'CHIEC','DMDCU03','HAN QUOC','HQKK','DUNG LAM','NAU',30,'GO','GIU GIN'),('DCU03','TRONG',50,3000000,'CHIEC','DMDCU03','NHAT BAN','NBKK','LAM HA','DEN',40,'GO','GIU GIN'),('DCU04','KEN',50,200000,'CHIEC','DMDCU03','TRUNG QUOC','TQKK','HUNG LANH','VANG',50,'KIM LOAI','GIU GIN'),('DCU05','KEO',500,20000,'CHIEC','DMDCU02','VIET NAM','VNKKK','LINH TRANG','HONG',60,'NHU','GIU GIN'),('DCU06','GIAY',1000,5000,'TO','DMDCU01','HAN QUOC','HQKKK','HA NAM','TRANG',20,'GIAY','GIU GIN'),('DCU07','DAO',100,10000,'CHIEC','DMDCU02','NHAT BAN','NBKKK','HAI NHAT','DO',10,'NHUA','GIU GIN'),('DCU08','BUT',1000,80000,'CHIEC','DMDCU01','TRUNG QUOC','TQKKK','NHAT MINH','XANH',15,'NHUA','GIU GIN'),('DCU09','VO',500,10000,'CUON','DMDCU01','VIET NAM','VNKKKK','MINH HUONG','TRANG',25,'GIAT','GIU GIN'),('DCU10','LOA',100,500000,'CHIEC','DMDCU03','NHAT BAN','NBKKKK','HONG HOA','DEN',53,'LANH','GIU GIN');
/*!40000 ALTER TABLE `sanphamdungcu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanphamsach`
--

DROP TABLE IF EXISTS `sanphamsach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sanphamsach` (
  `MaSPSach` varchar(10) NOT NULL,
  `TenSPSach` varchar(50) DEFAULT NULL,
  `SoLuong` int DEFAULT NULL,
  `DonGia` double DEFAULT NULL,
  `DonVi` varchar(50) DEFAULT NULL,
  `MaDMSach` varchar(10) DEFAULT NULL,
  `NhaXuatBan` varchar(100) DEFAULT NULL,
  `NamXuatBan` varchar(4) DEFAULT NULL,
  `TacGia` varchar(50) DEFAULT NULL,
  `NgayXuatBan` date DEFAULT NULL,
  `LanTaiBan` int DEFAULT NULL,
  PRIMARY KEY (`MaSPSach`),
  KEY `MaDMSach` (`MaDMSach`),
  CONSTRAINT `sanphamsach_ibfk_1` FOREIGN KEY (`MaDMSach`) REFERENCES `dmsach` (`MaDMSach`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanphamsach`
--

LOCK TABLES `sanphamsach` WRITE;
/*!40000 ALTER TABLE `sanphamsach` DISABLE KEYS */;
INSERT INTO `sanphamsach` VALUES ('S01','MAT BIEC',100,100000,'CUON','DMS01','KIM DONG','2012','NGUYEN NHAT ANH','2012-02-02',1),('S02','TOAN HINH',50,200000,'CUON','DMS02','TUOI TRE','2010','HOANG LAN','2010-10-10',2),('S03','NUOC MY',20,300000,'CUON','DMS03','KIM DONG','2015','KIM ANH','2015-05-05',1),('S04','PHAT GIAO',10,150000,'CUON','DMS04','TUOI TRE','2016','KIM HA','2016-06-06',2),('S05','TRUYEN HE',150,100000,'CUON','DMS05','KIM DONG','2017','HA LAN','2017-07-07',1),('S06','TRUYEN KIEU',100,500000,'CUON','DMS01','TUOI TRE','2018','LAN HO','2018-08-08',2),('S07','HOA HOC',50,200000,'CUON','DMS02','KIM DONG','2019','HONG HU','2019-09-09',1),('S08','NUOC ANH',20,250000,'CUON','DMS03','TUOI TRE','2020','HUONG HOA','2020-10-02',3),('S09','THIEN CHUA GIAO',10,200000,'CUON','DMS04','KIM DONG','2019','HOA LAN','2019-09-10',1),('S10','TRUYEN VE',150,80000,'CUON','DMS05','TUOI TRE','2018','NHA NAM','2018-09-08',2);
/*!40000 ALTER TABLE `sanphamsach` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-09  0:03:38

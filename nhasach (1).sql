-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 10, 2026 at 02:00 PM
-- Server version: 8.4.7
-- PHP Version: 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nhasach`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

DROP TABLE IF EXISTS `chitietdonhang`;
CREATE TABLE IF NOT EXISTS `chitietdonhang` (
  `don_hang_id` int NOT NULL,
  `sach_id` int NOT NULL,
  `so_luong` int DEFAULT NULL,
  `don_gia` decimal(10,2) DEFAULT NULL,
  `thanh_tien` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`don_hang_id`,`sach_id`),
  KEY `sach_id` (`sach_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`don_hang_id`, `sach_id`, `so_luong`, `don_gia`, `thanh_tien`) VALUES
(1, 1, 2, 45000.00, 90000.00),
(1, 2, 1, 120000.00, 120000.00),
(2, 4, 1, 90000.00, 90000.00);

-- --------------------------------------------------------

--
-- Table structure for table `chitietgiohang`
--

DROP TABLE IF EXISTS `chitietgiohang`;
CREATE TABLE IF NOT EXISTS `chitietgiohang` (
  `gio_hang_id` int NOT NULL,
  `sach_id` int NOT NULL,
  `so_luong` int DEFAULT NULL,
  `don_gia` decimal(10,2) DEFAULT NULL,
  `thanh_tien` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`gio_hang_id`,`sach_id`),
  KEY `sach_id` (`sach_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `chitietgiohang`
--

INSERT INTO `chitietgiohang` (`gio_hang_id`, `sach_id`, `so_luong`, `don_gia`, `thanh_tien`) VALUES
(1, 1, 2, 45000.00, 90000.00),
(1, 3, 1, 350000.00, 350000.00),
(2, 4, 1, 90000.00, 90000.00);

-- --------------------------------------------------------

--
-- Table structure for table `chitietphieunhap`
--

DROP TABLE IF EXISTS `chitietphieunhap`;
CREATE TABLE IF NOT EXISTS `chitietphieunhap` (
  `phieu_nhap_id` int NOT NULL,
  `sach_id` int NOT NULL,
  `so_luong` int DEFAULT NULL,
  `don_gia_du_kien` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`phieu_nhap_id`,`sach_id`),
  KEY `sach_id` (`sach_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `chitietphieunhap`
--

INSERT INTO `chitietphieunhap` (`phieu_nhap_id`, `sach_id`, `so_luong`, `don_gia_du_kien`) VALUES
(1, 1, 50, 30000.00),
(1, 2, 30, 90000.00),
(2, 3, 20, 250000.00);

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

DROP TABLE IF EXISTS `donhang`;
CREATE TABLE IF NOT EXISTS `donhang` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nguoi_dung_id` int DEFAULT NULL,
  `ngay_tao` datetime DEFAULT CURRENT_TIMESTAMP,
  `thanh_tien` decimal(10,2) DEFAULT NULL,
  `tong_tien` decimal(10,2) DEFAULT NULL,
  `so_tien_giam` decimal(10,2) DEFAULT NULL,
  `trang_thai` varchar(50) DEFAULT NULL,
  `ghi_chu` text,
  `ten_nguoi_nhan` varchar(255) DEFAULT NULL,
  `sdt_nguoi_nhan` varchar(20) DEFAULT NULL,
  `dia_chi_giao_hang` varchar(255) DEFAULT NULL,
  `so_luong_sach` int DEFAULT NULL,
  `phuong_thuc_thanh_toan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `nguoi_dung_id` (`nguoi_dung_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`id`, `nguoi_dung_id`, `ngay_tao`, `thanh_tien`, `tong_tien`, `so_tien_giam`, `trang_thai`, `ghi_chu`, `ten_nguoi_nhan`, `sdt_nguoi_nhan`, `dia_chi_giao_hang`, `so_luong_sach`, `phuong_thuc_thanh_toan`) VALUES
(1, 2, '2026-03-10 20:57:49', 210000.00, 210000.00, NULL, 'ĐANG_GIAO', NULL, 'Nguyễn Văn B', '0911111111', 'Hà Nội', NULL, NULL),
(2, 3, '2026-03-10 20:57:49', 90000.00, 90000.00, NULL, 'ĐÃ_GIAO', NULL, 'Trần Thị C', '0922222222', 'Đà Nẵng', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `giohang`
--

DROP TABLE IF EXISTS `giohang`;
CREATE TABLE IF NOT EXISTS `giohang` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nguoi_dung_id` int DEFAULT NULL,
  `ngay_tao` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `nguoi_dung_id` (`nguoi_dung_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `giohang`
--

INSERT INTO `giohang` (`id`, `nguoi_dung_id`, `ngay_tao`) VALUES
(1, 2, '2026-03-10 20:57:49'),
(2, 3, '2026-03-10 20:57:49');

-- --------------------------------------------------------

--
-- Table structure for table `loaisach`
--

DROP TABLE IF EXISTS `loaisach`;
CREATE TABLE IF NOT EXISTS `loaisach` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ten_loai` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `loaisach`
--

INSERT INTO `loaisach` (`id`, `ten_loai`) VALUES
(1, 'Tiểu thuyết'),
(2, 'Khoa học'),
(3, 'Thiếu nhi'),
(4, 'Lập trình'),
(5, 'Kinh tế');

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

DROP TABLE IF EXISTS `nguoidung`;
CREATE TABLE IF NOT EXISTS `nguoidung` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ten_dang_nhap` varchar(100) DEFAULT NULL,
  `mat_khau` varchar(255) DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `so_dien_thoai` varchar(20) DEFAULT NULL,
  `dia_chi` text,
  `provider` enum('local','google') DEFAULT 'local',
  `role` enum('admin','khach_hang') DEFAULT 'khach_hang',
  `ngay_tao` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `ten_dang_nhap` (`ten_dang_nhap`),
  UNIQUE KEY `google_id` (`google_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`id`, `ten_dang_nhap`, `mat_khau`, `google_id`, `email`, `so_dien_thoai`, `dia_chi`, `provider`, `role`, `ngay_tao`) VALUES
(1, 'admin', '123456', NULL, 'admin@gmail.com', NULL, NULL, 'local', 'admin', '2026-03-10 20:57:49'),
(2, 'user01', '123456', NULL, 'user01@gmail.com', NULL, NULL, 'local', 'khach_hang', '2026-03-10 20:57:49');

-- --------------------------------------------------------

--
-- Table structure for table `phieunhap`
--

DROP TABLE IF EXISTS `phieunhap`;
CREATE TABLE IF NOT EXISTS `phieunhap` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ngay_nhap` datetime DEFAULT NULL,
  `tong_tien` decimal(10,2) DEFAULT NULL,
  `trang_thai` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `phieunhap`
--

INSERT INTO `phieunhap` (`id`, `ngay_nhap`, `tong_tien`, `trang_thai`) VALUES
(1, '2026-03-01 00:00:00', 2000000.00, 'DA_NHAP'),
(2, '2026-03-05 00:00:00', 1500000.00, 'DA_NHAP');

-- --------------------------------------------------------

--
-- Table structure for table `sach`
--

DROP TABLE IF EXISTS `sach`;
CREATE TABLE IF NOT EXISTS `sach` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ten_sach` varchar(255) DEFAULT NULL,
  `tac_gia` varchar(255) DEFAULT NULL,
  `nha_xuat_ban` varchar(255) DEFAULT NULL,
  `gia` decimal(10,2) DEFAULT NULL,
  `so_luong` int DEFAULT NULL,
  `trong_luong` int DEFAULT NULL,
  `kich_thuoc` varchar(50) DEFAULT NULL,
  `so_trang` int DEFAULT NULL,
  `mo_ta` text,
  `anh_bia` text,
  `trang_thai` tinyint DEFAULT NULL,
  `loai_sach_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `loai_sach_id` (`loai_sach_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `sach`
--

INSERT INTO `sach` (`id`, `ten_sach`, `tac_gia`, `nha_xuat_ban`, `gia`, `so_luong`, `trong_luong`, `kich_thuoc`, `so_trang`, `mo_ta`, `anh_bia`, `trang_thai`, `loai_sach_id`) VALUES
(1, 'Dế Mèn Phiêu Lưu Ký', 'Tô Hoài', 'Kim Đồng', 45000.00, 50, NULL, NULL, NULL, 'Truyện thiếu nhi nổi tiếng', NULL, NULL, 3),
(2, 'Lập Trình Java Cơ Bản', 'Nguyễn Văn A', 'NXB Giáo Dục', 120000.00, 30, NULL, NULL, NULL, 'Sách học Java', NULL, NULL, 4),
(3, 'Clean Code', 'Robert C. Martin', 'Prentice Hall', 350000.00, 20, NULL, NULL, NULL, 'Sách lập trình nổi tiếng', NULL, NULL, 4),
(4, 'Đắc Nhân Tâm', 'Dale Carnegie', 'NXB Trẻ', 90000.00, 40, NULL, NULL, NULL, 'Sách kỹ năng sống', NULL, NULL, 5),
(5, 'Nhà Giả Kim', 'Paulo Coelho', 'NXB Văn Học', 80000.00, 35, NULL, NULL, NULL, 'Tiểu thuyết nổi tiếng', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `thanhtoan`
--

DROP TABLE IF EXISTS `thanhtoan`;
CREATE TABLE IF NOT EXISTS `thanhtoan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `don_hang_id` int DEFAULT NULL,
  `phuong_thuc` varchar(50) DEFAULT NULL,
  `so_tien` decimal(10,2) DEFAULT NULL,
  `trang_thai` varchar(50) DEFAULT NULL,
  `ngay_thanh_toan` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `don_hang_id` (`don_hang_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `thanhtoan`
--

INSERT INTO `thanhtoan` (`id`, `don_hang_id`, `phuong_thuc`, `so_tien`, `trang_thai`, `ngay_thanh_toan`) VALUES
(1, 1, 'COD', 210000.00, 'CHUA_THANH_TOAN', '2026-03-10 20:57:49'),
(2, 2, 'ONLINE', 90000.00, 'DA_THANH_TOAN', '2026-03-10 20:57:49');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

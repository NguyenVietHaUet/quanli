-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 12, 2019 lúc 05:27 PM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `_user`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `phone` char(15) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `sex` varchar(50) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `address`, `phone`, `sex`, `birthday`) VALUES
(3, 'Trịnh Xuân Đinh', 'trinhdinh0210@gmail.com', '0c9f71c3b008a35a9b8a8e915d84079e', 'Kim Bảng , Hà Nam', '0961314556', 'Nam', '1999-10-02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bangluong`
--

CREATE TABLE `bangluong` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `congviec` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `tienthuong` int(20) DEFAULT NULL,
  `tienphat` int(20) DEFAULT NULL,
  `congmotgio` int(20) DEFAULT NULL,
  `tonggiolam` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `bangluong`
--

INSERT INTO `bangluong` (`id`, `name`, `congviec`, `tienthuong`, `tienphat`, `congmotgio`, `tonggiolam`) VALUES
(1, 'Phạm Văn Hoàng', 'Bán Hàng', 50, 10, 2, 280),
(2, 'Nguyễn Văn Hùng', 'Xếp Kho', 60, 2, 2, 300),
(3, 'Vũ Văn Học ', 'Bán Hàng', 30, 5, 2, 210),
(4, 'Nguyễn Việt Hà', 'Bảo Vệ', 50, 0, 2, 260);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `madon` varchar(255) NOT NULL,
  `masp` varchar(255) NOT NULL,
  `tensp` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `soluongban` int(11) NOT NULL,
  `dongia` int(11) NOT NULL,
  `tongtien` int(11) NOT NULL,
  `ngayban` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`madon`, `masp`, `tensp`, `soluongban`, `dongia`, `tongtien`, `ngayban`) VALUES
('AF1', 'AF', 'Aquafina', 10, 6000, 60000, '2019-05-01'),
('BQ1', 'BQ', 'Bánh quy', 2, 25000, 50000, '2019-05-06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giolam`
--

CREATE TABLE `giolam` (
  `idNhanvien` int(11) NOT NULL,
  `tennv` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngaylam` date NOT NULL,
  `giobatdau` time NOT NULL,
  `gionghi` time NOT NULL,
  `ghichu` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `giolam`
--

INSERT INTO `giolam` (`idNhanvien`, `tennv`, `ngaylam`, `giobatdau`, `gionghi`, `ghichu`) VALUES
(1, 'Hoàng', '2019-05-06', '08:00:00', '17:00:00', 'Nghỉ trưa 1 tiếng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kho`
--

CREATE TABLE `kho` (
  `masp` varchar(255) NOT NULL,
  `tensp` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `kho`
--

INSERT INTO `kho` (`masp`, `tensp`, `soluong`) VALUES
('AF', 'Aquafina', 140),
('BQ', 'Bánh quy', 48),
('DA', 'Dầu ăn', 50);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `phone` char(15) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `gioitinh` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`id`, `name`, `email`, `phone`, `address`, `password`, `gioitinh`, `birthday`) VALUES
(2, 'Nguyễn Văn Hùng', 'hung@gmal.com', '0388486727', 'Quế Võ,Bắc Ninh', 'e10adc3949ba59abbe56e057f20f883e', 'Nam', '1999-03-21'),
(3, 'Phạm Văn Hoàng', 'hoang@gmail.com', '0982284416', 'Anh Sơn,Nghệ An', 'e10adc3949ba59abbe56e057f20f883e', 'Nam', '1999-05-07'),
(4, 'Vũ Văn Học ', 'hoc@gmail.com', '0343847478', 'Gia Bình , Bắc Ninh', 'd41d8cd98f00b204e9800998ecf8427e', 'Nam', '1999-10-14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhapkho`
--

CREATE TABLE `nhapkho` (
  `manhap` varchar(255) NOT NULL,
  `masp` varchar(255) NOT NULL,
  `tensp` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gia` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `ngaynhap` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nhapkho`
--

INSERT INTO `nhapkho` (`manhap`, `masp`, `tensp`, `gia`, `soluong`, `ngaynhap`) VALUES
('NAF1', 'AF', 'Aquafina', 4000, 100, '2019-05-01'),
('NAF2', 'AF', 'Aquafina', 4000, 50, '2019-05-01'),
('NBQ1', 'BQ', 'Bánh quy', 20000, 50, '2019-05-01'),
('NDA1', 'DA', 'Dầu ăn', 35000, 50, '2019-05-06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `person`
--

CREATE TABLE `person` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `Re_pass` varchar(255) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `person`
--

INSERT INTO `person` (`id`, `email`, `pass`, `Re_pass`, `username`) VALUES
(87, 'Sontung@gmail.com', '123456', '123456', 'Sơn Tùng'),
(88, 'Hoang@gmail.com', '123456', '123456', 'Hoàng'),
(89, 'phamvanhoang@gmail.com', '123456', '123456', 'Hoàng'),
(90, 'phamvanhoang123@gmail.com', '123456', '123456', 'Văn Hoàng'),
(91, 'phamphuong@gmail.com', '123456', '123456', 'Phạm Thị Phượng'),
(92, 'hoc123@gmail.com', '123456', '123456', 'hoc');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tongnhap`
--

CREATE TABLE `tongnhap` (
  `masp` varchar(255) NOT NULL,
  `tensp` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `soluongnhap` int(11) NOT NULL,
  `gianhap` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tongnhap`
--

INSERT INTO `tongnhap` (`masp`, `tensp`, `soluongnhap`, `gianhap`) VALUES
('AF', 'Aquafina', 150, 4000),
('BQ', 'Bánh quy', 50, 20000),
('DA', 'Dầu ăn', 50, 35000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `xuatkho`
--

CREATE TABLE `xuatkho` (
  `masp` varchar(255) NOT NULL,
  `tensp` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `soluongxuat` int(11) NOT NULL,
  `giaban` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `xuatkho`
--

INSERT INTO `xuatkho` (`masp`, `tensp`, `soluongxuat`, `giaban`) VALUES
('AF', 'Aquafina', 10, 6000),
('BQ', 'Bánh quy', 2, 25000);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bangluong`
--
ALTER TABLE `bangluong`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`madon`);

--
-- Chỉ mục cho bảng `giolam`
--
ALTER TABLE `giolam`
  ADD PRIMARY KEY (`idNhanvien`);

--
-- Chỉ mục cho bảng `kho`
--
ALTER TABLE `kho`
  ADD PRIMARY KEY (`masp`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhapkho`
--
ALTER TABLE `nhapkho`
  ADD PRIMARY KEY (`manhap`);

--
-- Chỉ mục cho bảng `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tongnhap`
--
ALTER TABLE `tongnhap`
  ADD PRIMARY KEY (`masp`);

--
-- Chỉ mục cho bảng `xuatkho`
--
ALTER TABLE `xuatkho`
  ADD PRIMARY KEY (`masp`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `bangluong`
--
ALTER TABLE `bangluong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `giolam`
--
ALTER TABLE `giolam`
  MODIFY `idNhanvien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `person`
--
ALTER TABLE `person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 24, 2023 lúc 06:47 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dtn`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_canbo`
--

CREATE TABLE `tb_canbo` (
  `idCB` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `HoTenCB` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NSCB` date NOT NULL,
  `GTCB` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cmtCB` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NCapCB` date DEFAULT NULL,
  `NoiCapCB` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `QueQuanCB` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DC_HTaiCB` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SDTCB` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MailCB` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DVCT` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ChucVu` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anhCB` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_canbo`
--

INSERT INTO `tb_canbo` (`idCB`, `HoTenCB`, `NSCB`, `GTCB`, `cmtCB`, `NCapCB`, `NoiCapCB`, `QueQuanCB`, `DC_HTaiCB`, `SDTCB`, `MailCB`, `DVCT`, `ChucVu`, `anhCB`) VALUES
('CB0001', 'Đinh Hồng Quân', '2001-12-27', 'nam', '095783683435', NULL, NULL, 'Nam Định', 'Hà Nội', '0974583625', 'quan@gmail.com', 'Bát Xát-Lào Cai', 'Bí thư huyện Đoàn', NULL),
('CB0002', 'Vũ Thị Hồng Gấm', '2001-06-23', 'nữ', '0973379943', NULL, NULL, 'Hưng Yên', 'Hà Nội', '0333854783', 'gam@gmail.com', 'Bát Xát-Lào Cai', 'Phó Bí thư huyện Đoàn', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_khachhang`
--

CREATE TABLE `tb_khachhang` (
  `idKH` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `HoTenKH` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `idNVien` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_khachhang`
--

INSERT INTO `tb_khachhang` (`idKH`, `HoTenKH`, `idNVien`) VALUES
('KH001', 'Nguyễn Văn An', NULL),
('KH002', 'Nguyễn Văn Bình', NULL),
('KH003', 'Phạm Thị Yến', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_lienhe`
--

CREATE TABLE `tb_lienhe` (
  `CauHoi` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `TraLoi` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idNVien` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idKH` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_lienhe`
--

INSERT INTO `tb_lienhe` (`CauHoi`, `TraLoi`, `idNVien`, `idKH`) VALUES
('Em vừa đõ viên chức đi làm được 2 tháng trong thời gian tập sự phải về sinh con nhưng tại sao nhà trường lại không cho nghỉ chế độ thai sản mà con em được 1 tháng đã phải đi làm ạ', 'Câu hỏi này đã được Cổng TTDT chuyển cho phòng nội nội vụ huyện Bát Xát trả lời, để xem chi tiết đề nghị bà xem toàn bộ văn bản tại đây', NULL, ''),
('Mức lương nghỉ hưu trước tuổi năm 2020 là bao nhiêu', '', NULL, ''),
('Tôi muốn biết địa chỉ vào xem điểm thi tuyển công chức giáo dục năm 2020', 'Đề nghị ông vào cổng TTDT huyện Bát Xát mục thông báo, báo cáo để xem kết quả điểm thi tuyển viên chức Giáo dục & Đào tạo huyện Bát xát năm 2020', NULL, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_nhanvien`
--

CREATE TABLE `tb_nhanvien` (
  `idNVien` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `HoTenNV` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NSNV` date NOT NULL,
  `GTNV` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cmtNV` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NCapNV` date DEFAULT NULL,
  `NoiCapNV` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `QueQuanNV` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DC_HTaiNV` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SDTNV` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MailNV` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anhNV` mediumblob NOT NULL,
  `idCB` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_nhanvien`
--

INSERT INTO `tb_nhanvien` (`idNVien`, `HoTenNV`, `NSNV`, `GTNV`, `cmtNV`, `NCapNV`, `NoiCapNV`, `QueQuanNV`, `DC_HTaiNV`, `SDTNV`, `MailNV`, `anhNV`, `idCB`) VALUES
('NV001', 'Trần Văn Tiến', '1990-12-11', 'nam', '08758734543', NULL, NULL, 'Tuyên Quang', 'Lào Cai', '09745738846', 'tien@gmail.com', '', NULL),
('NV002', 'Nguyễn Thị Hồng', '0000-00-00', 'nữ', '08758004543', NULL, NULL, 'Hà Tĩnh', 'Lào Cai', '09745739646', 'hong@gmail.com', '', NULL),
('NV003', 'Võ Văn Tấn', '1993-09-11', 'nam', '08758983143', NULL, NULL, 'Sơn La', 'Lào Cai', '09745737626', 'tan@gmail.com', '', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_tintuc`
--

CREATE TABLE `tb_tintuc` (
  `MSo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `NDang` date DEFAULT NULL,
  `TrichYeu` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ndung` varchar(10000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ploai` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idNVien` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idKH` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_tintuc`
--

INSERT INTO `tb_tintuc` (`MSo`, `NDang`, `TrichYeu`, `ndung`, `ploai`, `idNVien`, `idKH`) VALUES
('Số: 1052 - CV/TWDTN/', '2023-05-17', 'Công văn tuyên truyền chỉ thị 16 của thủ tướng chính phủ về phòng ngừa tổ chức đánh bạc và đánh bạc', 'Đoàn công tác đã tổ chức khởi công xây dựng “Ngôi nhà 19/8” cho em Nguyễn Thùy Trang, học sinh có hoàn cảnh đặc biệt khó khăn tại Trường THCS Quảng Thuận, phường Quảng Thuận (TX. Ba Đồn). Số tiền hỗ trợ xây dựng nhà cho em Trang là 50 triệu đồng cùng 1 tivi trị giá 10 triệu đồng.', '3 chương trình', NULL, NULL),
('Số: 116 - TB/TWDTN-B', '2023-06-10', 'Thông báo triệu tập thí sinh dự thi vòng 2 kỳ thi tuyển sinh công chứcc cơ quan Trung Ương Đoàn năm 2023', 'Đây là những hoạt động nổi bật của chương trình sinh hoạt chính trị, tri ân và an sinh xã hội tại các tỉnh miền Trung năm 2023 của Ban Thanh niên CAND phối hợp cùng Tỉnh đoàn Quảng Bình, thiết thực hướng tới kỷ niệm 78 năm Ngày truyền thống lực lượng CAND, 18 năm Ngày hội toàn dân bảo vệ an ninh Tổ quốc.', 'công tác giáo dục', NULL, NULL),
('Số: 121 - TB/TWDTN-T', '2023-07-13', 'Thông báo về dự án tham gia vòng bán kết cuộc thi Dự án khởi nghiệp thanh thanh niên nông thôn năm 2023', 'Tham dự chương trình có các đồng chí: Đồng Đức Vũ, Ủy viên Ban Thường vụ Trung ương Đoàn, Trưởng ban Thanh niên CAND; Đặng Đại Bàng, Tỉnh ủy viên, Bí thư Tỉnh đoàn Quảng Bình; đại diện lãnh đạo Ban Thanh niên CAND, Tỉnh đoàn, Công an tỉnh Quảng Bình.', '3 phong trào', NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tb_canbo`
--
ALTER TABLE `tb_canbo`
  ADD PRIMARY KEY (`idCB`);

--
-- Chỉ mục cho bảng `tb_khachhang`
--
ALTER TABLE `tb_khachhang`
  ADD PRIMARY KEY (`idKH`),
  ADD KEY `idNVien` (`idNVien`);

--
-- Chỉ mục cho bảng `tb_lienhe`
--
ALTER TABLE `tb_lienhe`
  ADD PRIMARY KEY (`idKH`,`CauHoi`),
  ADD KEY `idNVien` (`idNVien`);

--
-- Chỉ mục cho bảng `tb_nhanvien`
--
ALTER TABLE `tb_nhanvien`
  ADD PRIMARY KEY (`idNVien`),
  ADD KEY `idNV_idCB` (`idCB`);

--
-- Chỉ mục cho bảng `tb_tintuc`
--
ALTER TABLE `tb_tintuc`
  ADD PRIMARY KEY (`MSo`),
  ADD KEY `idNVien` (`idNVien`),
  ADD KEY `idKH` (`idKH`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tb_khachhang`
--
ALTER TABLE `tb_khachhang`
  ADD CONSTRAINT `tb_khachhang_ibfk_1` FOREIGN KEY (`idNVien`) REFERENCES `tb_nhanvien` (`idNVien`);

--
-- Các ràng buộc cho bảng `tb_lienhe`
--
ALTER TABLE `tb_lienhe`
  ADD CONSTRAINT `tb_lienhe_ibfk_1` FOREIGN KEY (`idNVien`) REFERENCES `tb_nhanvien` (`idNVien`);

--
-- Các ràng buộc cho bảng `tb_nhanvien`
--
ALTER TABLE `tb_nhanvien`
  ADD CONSTRAINT `idNV_idCB` FOREIGN KEY (`idCB`) REFERENCES `tb_canbo` (`idCB`);

--
-- Các ràng buộc cho bảng `tb_tintuc`
--
ALTER TABLE `tb_tintuc`
  ADD CONSTRAINT `tb_tintuc_ibfk_1` FOREIGN KEY (`idNVien`) REFERENCES `tb_nhanvien` (`idNVien`),
  ADD CONSTRAINT `tb_tintuc_ibfk_2` FOREIGN KEY (`idKH`) REFERENCES `tb_khachhang` (`idKH`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

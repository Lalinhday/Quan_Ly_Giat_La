-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 21, 2024 lúc 08:14 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laundrydb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `role` int(11) NOT NULL,
  `employee_id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `password`, `role`, `employee_id`) VALUES
('sa', '123', 2, 'E001'),
('sa1', '123', 1, 'E004'),
('sa2', '123', 0, 'E005'),
('sa3', '123', 0, 'E008'),
('sa5', '123', 1, 'E009'),
('sa6', '123', 0, 'E111'),
('sa7', '1234', 0, 'E112');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_phone` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `payment` float NOT NULL DEFAULT 0,
  `shipper_id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `address`, `created_at`, `user_email`, `user_phone`, `status`, `payment`, `shipper_id`) VALUES
(21, '51 Ngô Xuân Quảng, Trâu Quỳ, Gia Lâm, Hà Nội', '2024-07-16 10:16:10', 'sa1@gmail.com', '0908090119', 0, 55000, NULL),
(22, '51 Ngô Xuân Quảng, Trâu Quỳ, Gia Lâm, Hà Nội', '2024-07-16 10:31:03', 'sa1@gmail.com', '0908090119', 0, 33000, 's001'),
(23, '51 Ngô Xuân Quảng, Trâu Quỳ, Gia Lâm, Hà Nội', '2024-07-16 10:32:09', 'sa1@gmail.com', '0908090119', 5, 0, NULL),
(24, '51 Ngô Xuân Quảng, Trâu Quỳ, Gia Lâm, Hà Nội', '2024-07-16 10:32:17', 'sa1@gmail.com', '0908090119', 5, 0, NULL),
(25, '51 Ngô Xuân Quảng, Trâu Quỳ, Gia Lâm, Hà Nội', '2024-07-16 11:13:46', 'sa1@gmail.com', '0908090119', 0, 44000, NULL),
(26, '51 Ngô Xuân Quảng, Trâu Quỳ, Gia Lâm, Hà Nội', '2024-07-16 11:16:01', 'sa1@gmail.com', '0908090119', 0, 22000, NULL),
(27, '51 Ngô Xuân Quảng, Trâu Quỳ, Gia Lâm, Hà Nội', '2024-07-16 11:21:32', 'hieutkhd03@gmail.com', '0908090119', 2, 33000, 'S002'),
(28, '51 Ngô Xuân Quảng, Trâu Quỳ, Gia Lâm, Hà Nội', '2024-07-16 11:30:50', 'hieutkhd03@gmail.com', '0908090119', 5, 33000, NULL),
(29, '51 Ngô Xuân Quảng, Trâu Quỳ, Gia Lâm, Hà Nội', '2024-07-16 11:56:24', 'hieutkhd03@gmail.com', '0908090119', 5, 33000, NULL),
(30, '51 Ngô Xuân Quảng, Trâu Quỳ, Gia Lâm, Hà Nội', '2024-07-16 11:57:03', 'hieutkhd03@gmail.com', '0908090119', 5, 33000, NULL),
(31, '51 Ngô Xuân Quảng, Trâu Quỳ, Gia Lâm, Hà Nội', '2024-07-16 11:57:11', 'hieutkhd03@gmail.com', '0908090119', 5, 33000, NULL),
(32, '51 Ngô Xuân Quảng, Trâu Quỳ, Gia Lâm, Hà Nội', '2024-07-16 12:04:07', 'hieutkhd03@gmail.com', '0908090119', 5, 33000, NULL),
(33, '51 Ngô Xuân Quảng, Trâu Quỳ, Gia Lâm, Hà Nội', '2024-07-16 16:35:10', 'hieutkhd03@gmail.com', '0908090119', 0, 44000, NULL),
(34, '51 Ngô Xuân Quảng, Trâu Quỳ, Gia Lâm, Hà Nội', '2024-07-16 16:45:12', 'hieutkhd03@gmail.com', '0908090119', 0, 44000, NULL),
(35, '51 Ngô Xuân Quảng, Trâu Quỳ, Gia Lâm, Hà Nội', '2024-07-16 16:52:45', 'hieutkhd03@gmail.com', '0908090119', 0, 33000, NULL),
(36, '51 Ngô Xuân Quảng, Trâu Quỳ, Gia Lâm, Hà Nội', '2024-07-16 16:55:23', 'hieutkhd03@gmail.com', '0908090119', 0, 22000, NULL),
(37, '51 Ngô Xuân Quảng, Trâu Quỳ, Gia Lâm, Hà Nội', '2024-07-17 14:35:28', 'hieutkhd03@gmail.com', '0908090119', 5, 44000, NULL),
(38, '51 Ngô Xuân Quảng, Trâu Quỳ, Gia Lâm, Hà Nội', '2024-07-19 18:36:48', 'hieutkhd03@gmail.com', '0908090119', 5, 44000, NULL),
(39, '51 Ngô Xuân Quảng, Trâu Quỳ, Gia Lâm, Hà Nội', '2024-07-19 23:29:56', 'hieutkhd03@gmail.com', '0908090119', 5, 22000, NULL),
(40, '51 Ngô Xuân Quảng, Trâu Quỳ, Gia Lâm, Hà Nội', '2024-07-19 23:33:20', 'hieutkhd03@gmail.com', '0908090119', 5, 55000, NULL),
(41, '51 Ngô Xuân Quảng, Trâu Quỳ, Gia Lâm, Hà Nội', '2024-07-20 00:31:39', 'hieutkhd03@gmail.com', '0908090119', 0, 33000, NULL),
(42, '51 Ngô Xuân Quảng, Trâu Quỳ, Gia Lâm, Hà Nội', '2024-07-20 15:58:57', 'hieutkhd03@gmail.com', '0908090119', 5, 55000, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `services_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `shipping_fee` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `services_id`, `price`, `shipping_fee`, `quantity`) VALUES
(25, 21, 1, 40000, 0, 1),
(26, 21, 20, 10000, 0, 1),
(27, 22, 10, 30000, 0, 1),
(28, 25, 1, 40000, 0, 1),
(29, 26, 2, 20000, 0, 1),
(30, 27, 10, 30000, 0, 1),
(31, 28, 10, 30000, 0, 1),
(32, 29, 10, 30000, 0, 1),
(33, 30, 10, 30000, 0, 1),
(34, 31, 10, 30000, 0, 1),
(35, 32, 10, 30000, 0, 1),
(36, 33, 1, 40000, 0, 1),
(37, 34, 1, 40000, 0, 1),
(38, 35, 10, 30000, 0, 1),
(39, 36, 2, 20000, 0, 1),
(40, 37, 1, 40000, 0, 1),
(41, 38, 1, 40000, 0, 1),
(42, 39, 11, 20000, 0, 1),
(43, 40, 1, 40000, 0, 1),
(44, 40, 21, 10000, 0, 1),
(45, 41, 2, 20000, 0, 1),
(46, 41, 20, 10000, 0, 1),
(47, 42, 1, 40000, 0, 1),
(48, 42, 20, 10000, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `services`
--

INSERT INTO `services` (`id`, `name`, `price`, `type`, `image`, `description`) VALUES
(1, 'Giặt ủi trọn gói', 40000, 'Kg', 'dry-cleaning.svg', 'Các mặt hàng và vải tinh tế. Làm sạch, ủi và treo lên móc treo.\r\nChúng tôi giặt khô hoặc giặt đồ của bạn theo nhãn chăm sóc. Quần áo được ủi phẳng và treo lên móc treo.'),
(2, 'Là ủi', 20000, 'Kg', 'ironing.svg', 'Chúng tôi chỉ cung cấp dịch vụ ủi cho áo sơ mi và áo cánh. Bạn giặt và phơi khô, chúng tôi là ủi!'),
(9, 'Giặt ướt', 20000, 'Kg', 'wash.svg', 'Giặt ướt : quần áo bình thường, khăn tắm, ga trải giường và vỏ chăn. Giặt ướt và sấy khô, không là ủi.'),
(10, 'Giặt khô', 30000, 'Kg', 'laundry-clean-clothes-2-svgrepo-com.svg', 'Giặt khô : quần áo bình thường, khăn tắm, ga trải giường và vỏ chăn. Giặt khô, không là ủi.'),
(11, 'Chăn gối', 20000, 'Item', 'laundry-svgrepo-com (1).svg', 'Những đồ vật lớn hơn cần quy trình làm sạch khác. Bao gồm chăn, gối, nệm'),
(20, 'OMO', 10000, 'Demand', 'Omo.jpg', 'Nước giặt. Chúng tôi sẽ nhận nước, bột giặt theo yêu cầu'),
(21, 'Lix', 10000, 'Demand', 'Lix.jpg', 'Nước giặt. Chúng tôi sẽ nhận nước, bột giặt theo yêu cầu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shipper`
--

CREATE TABLE `shipper` (
  `id` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `shipper`
--

INSERT INTO `shipper` (`id`, `password`, `phone`, `salary`, `name`, `image`, `status`) VALUES
('s001', '123456', '0935097778', 6605, 'Nguyễn Văn Hậu', 'Shipper1.png', 1),
('S002', '2222', '01678954698', 6603, 'Lương Phúc Hải', 'Shipper2.png', 1),
('s005', '123', '0937378889', 1, 'Nguyễn Thanh Bình', 'Shipper3.png', 1),
('S009', '123', '0896494621', 2, 'Phúc Hậu', 'Shipper4.png', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbpayslip`
--

CREATE TABLE `tbpayslip` (
  `id` varchar(20) NOT NULL,
  `name2` varchar(50) DEFAULT NULL,
  `depart3` varchar(50) DEFAULT NULL,
  `atm4` varchar(50) DEFAULT NULL,
  `salmonth5` date DEFAULT NULL,
  `coefsal7` decimal(15,2) UNSIGNED DEFAULT 0.00,
  `coefposis8` decimal(15,2) UNSIGNED DEFAULT 0.00,
  `liabfac9` decimal(15,2) UNSIGNED DEFAULT 0.00,
  `marsys10` decimal(15,2) UNSIGNED DEFAULT 0.00,
  `acworkday12` smallint(6) UNSIGNED DEFAULT 0,
  `oversal14` decimal(15,2) UNSIGNED DEFAULT 0.00,
  `superdiem15` decimal(15,2) UNSIGNED DEFAULT 0.00,
  `phonesup16` decimal(15,2) UNSIGNED DEFAULT 0.00,
  `tradeallow17` decimal(15,2) UNSIGNED DEFAULT 0.00,
  `salincrease18` decimal(15,2) UNSIGNED DEFAULT 0.00,
  `midsimeal19` decimal(15,2) UNSIGNED DEFAULT 0.00,
  `bonoustet20` decimal(15,2) UNSIGNED DEFAULT 0.00,
  `monthlyunfe25` decimal(15,2) UNSIGNED DEFAULT 0.00,
  `advances` decimal(15,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbpayslip`
--

INSERT INTO `tbpayslip` (`id`, `name2`, `depart3`, `atm4`, `salmonth5`, `coefsal7`, `coefposis8`, `liabfac9`, `marsys10`, `acworkday12`, `oversal14`, `superdiem15`, `phonesup16`, `tradeallow17`, `salincrease18`, `midsimeal19`, `bonoustet20`, `monthlyunfe25`, `advances`) VALUES
('E001', 'Dương Minh Hiếu', 'director', 'ATM666777888', '2021-09-02', 5.00, 7.00, 0.00, 1.00, 21, 3000000.00, 1.00, 300000.00, 1000000.00, 500000.00, 800000.00, 2000000.00, 100000.00, 1000000.00),
('E004', 'Triệu Việt Anh', 'leader', 'ATM999000888', '2021-09-10', 5.00, 5.00, 0.00, 1.00, 22, 3000000.00, 1.00, 300000.00, 1000000.00, 500000.00, 800000.00, 2000000.00, 100000.00, 2000000.00),
('E005', 'Nguyễn Quang Linh', 'staff', 'ATM999000777', '2021-09-01', 5.00, 4.00, 0.00, 1.00, 20, 3000000.00, 1.00, 300000.00, 1000000.00, 500000.00, 800000.00, 2000000.00, 100000.00, 1000000.00),
('E008', 'Lê Bá Phú', 'iron', 'ATM111999888', '2021-09-10', 5.00, 0.00, 3.00, 1.00, 22, 3000000.00, 1.00, 300000.00, 1000000.00, 500000.00, 800000.00, 2000000.00, 100000.00, 0.00),
('E009', 'Phạm Trung Đức', 'chiefAccountant', 'ATM6667778889', '2021-12-09', 6.00, 0.00, 0.00, 1.00, 22, 3000000.00, 1.00, 300000.00, 1000000.00, 500000.00, 800000.00, 2000000.00, 100000.00, 0.00),
('E111', 'Nguyễn Thùy Dung', 'worker', 'ATM8877999', '2021-09-10', 5.00, 0.00, 1.00, 1.00, 20, 3000000.00, 1.00, 300000.00, 1000000.00, 500000.00, 800000.00, 2000000.00, 100000.00, 0.00),
('E112', 'Nguyễn Thu Phương', 'technicians', 'ATM1119998889', '2021-09-11', 5.00, 0.00, 0.00, 1.00, 20, 3000000.00, 1.00, 300000.00, 1000000.00, 500000.00, 800000.00, 2000000.00, 100000.00, 0.00);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `email` varchar(225) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `full_name` varchar(225) DEFAULT NULL,
  `link_image` varchar(225) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`email`, `password`, `full_name`, `link_image`, `phone`, `address`) VALUES
('hieutkhd03@gmail.com', 'Duonghieutkhd123', 'Dương Minh Hiếu', 'Photo-1.jpeg', '0908090119', '51 Ngô Xuân Quảng, Trâu Quỳ, Gia Lâm, Hà Nội'),
('hieutkhd2003@gmail.com', '123', 'Hiếu', 'Aba.jpg', '0981266403', '123'),
('sa1@gmail.com', '123', 'Nguyễn Triển Chiêu', 'comfort.webp', '0908090119', '51 Ngô Xuân Quảng, Trâu Quỳ, Gia Lâm, Hà Nội'),
('sa2@gmail.com', '123', 'Chiển chiêu', 'boy.jpg', '0912345536', '123 Nguyen Hue');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_email` (`user_email`),
  ADD KEY `shipper_id` (`shipper_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `services_id` (`services_id`);

--
-- Chỉ mục cho bảng `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shipper`
--
ALTER TABLE `shipper`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbpayslip`
--
ALTER TABLE `tbpayslip`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `tbpayslip` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_email`) REFERENCES `users` (`email`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`shipper_id`) REFERENCES `shipper` (`id`);

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`services_id`) REFERENCES `services` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

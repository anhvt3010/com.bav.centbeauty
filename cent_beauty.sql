-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 21, 2024 lúc 06:15 PM
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
-- Cơ sở dữ liệu: `cent_beauty`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `appointments`
--

CREATE TABLE `appointments` (
  `appointment_id` int(11) NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `date_slot` int(11) DEFAULT NULL,
  `time_id` int(11) DEFAULT NULL,
  `patient_name` varchar(50) DEFAULT NULL,
  `patient_gender` tinyint(1) DEFAULT NULL,
  `patient_dob` date DEFAULT NULL,
  `patient_phone` varchar(11) DEFAULT NULL,
  `patient_email` varchar(150) DEFAULT NULL,
  `patient_description` varchar(500) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `result` varchar(500) DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `appointments`
--

INSERT INTO `appointments` (`appointment_id`, `patient_id`, `service_id`, `employee_id`, `date_slot`, `time_id`, `patient_name`, `patient_gender`, `patient_dob`, `patient_phone`, `patient_email`, `patient_description`, `status`, `result`, `update_at`, `update_by`, `created_at`) VALUES
(100, NULL, 1, 104, 19896, 15, 'Hoa Minh', 0, '1997-04-02', '0987654322', 'hoaminh678@gmail.com', 'Đổ mồ hôi đêm', 0, NULL, '2024-06-22 05:53:23', 67, '2024-06-20 01:14:38'),
(101, NULL, 3, 105, 19896, 6, 'Nguyễn Thùy Linh', 0, '1968-10-20', '0987654323', 'nguyenthuylinh852003@gmail.com', 'Đau bụng', 1, NULL, '2024-06-22 05:52:02', 67, '2024-06-20 01:15:56'),
(102, 1, 1, 105, 19897, 10, 'Vũ Thị Thắm', 1, '2002-05-23', '0987654321', 'tham@gmail.com', 'Đau nửa đầu, buồn nôn', 3, NULL, '2024-06-22 06:41:37', 76, '2024-06-22 06:40:43'),
(103, NULL, 24, 103, 20020, 4, 'Bệnh nhân 36', 1, '2002-10-30', '0964444444', 'chatgpt3010@gmail.com', 'không biết gì cả', 2, NULL, NULL, NULL, '2024-10-23 00:05:03'),
(104, NULL, 1, 107, 20048, 1, 'Khách hàng vãng lai 1', 1, '2002-10-30', '0978901234', 'kh1@gmail.com', 'không', 0, NULL, NULL, NULL, '2024-11-20 23:42:16'),
(105, 53, 1, 107, 20048, 11, 'Trần Huyền Trang', 0, '2002-10-30', '0888888888', 'trang01@gmail.com', '', 2, NULL, NULL, NULL, '2024-11-21 01:17:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `patient_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`patient_id`, `name`, `password`, `dob`, `gender`, `address`, `phone`, `email`, `status`, `create_at`, `update_by`, `update_at`) VALUES
(53, 'Trần Huyền Trang 1', '$2y$12$4bwEoetAx77yZUEPabt2aeGShHf3q5Ytioo0nXfrXGJ1co/l9N4jK', '2002-10-30', 0, '11 Kim Mã Thượng, Ba Đình, Hà Nội', '0888888888', 'trang01@gmail.com', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `employees`
--

CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `position_id` int(11) DEFAULT NULL,
  `employee_code` varchar(55) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `avt` varchar(250) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `employees`
--

INSERT INTO `employees` (`employee_id`, `role_id`, `service_id`, `position_id`, `employee_code`, `name`, `password`, `avt`, `phone`, `email`, `dob`, `gender`, `address`, `status`, `create_at`, `update_at`, `update_by`) VALUES
(1, 1, NULL, NULL, 'ADMIN', 'admin', '$2a$12$1TZWRMnPAwbzIY6M.dML.ux1BNAJQoxDHhZbOaksdfUhPWQvkWIjG', 'https://cdn.vectorstock.com/i/500p/52/38/avatar-icon-vector-11835238.jpg', '0999999999', 'admin@gmail.com', '2002-12-01', 1, '20 Hồ Tùng Mậu, Mai Dịch, Cầu Giấy, Hà Nội', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(103, 2, 2, 1, 'DOC103', 'Vũ Ngọc Huyền', '$2y$12$PppGnZzBm4s1qPsx34/Y5erGsGljp62WZLTO5Ir/5/R90N8v0XTZy', 'https://res.cloudinary.com/dnp6p86dp/image/upload/v1732115576/hlelrxfwstfeanin42a6.jpg', '0999999998', 'huyen123@gmail.com', '2002-10-30', 0, '8 Đồng Bát, Mỹ Đình 2, Nam Từ Liêm, Hà Nội', 1, '2024-11-20 22:12:58', NULL, 1),
(104, 2, 3, 1, 'DOC104', 'Vũ Tuấn Anhh', '$2y$12$w2GUWLjPGl.W.zscOaCkIuavZ6Sc6qLVrZgokbESTGt/2MT.Oi.xq', 'https://res.cloudinary.com/dnp6p86dp/image/upload/v1732116435/lu7spbnigiddwawyl5ug.jpg', '0999999997', 'anhvt123@gmail.com', '2002-10-30', 1, '858 Kim Giang, Thanh Liệt, Thanh Trì, Hà Nội', 1, '2024-11-20 22:27:16', '2024-11-20 22:31:37', 1),
(105, 2, 3, 4, 'EMP105', 'Nguyễn Thị Thu Huyền', '$2y$12$x.GG5skVdgx4yjJjy0UR/eqHw8A8pFK67HxX9lJTQew9YbRqvCp7a', 'https://res.cloudinary.com/dnp6p86dp/image/upload/v1732117858/tas3mb5qyd3ixaw9qxrq.jpg', '0999999996', 'thuhuyen11@gmail.com', '2002-05-22', 0, '217 Lạc Long Quân, Tây Hồ , Hà Nội', 1, '2024-11-20 16:50:58', NULL, 1),
(106, 2, 4, 2, 'EMP106', 'Vũ Thị Thuý Hiền', '$2y$12$GfT9gFjwhGOzkupG23LJh.qyH38BEx1ZbKHnqx1E7c6djhf1eDVHO', 'https://res.cloudinary.com/dnp6p86dp/image/upload/v1732118327/wyzp3iqeqwm08grpudzs.jpg', '0999999995', 'thuyhien22@gmail.com', '2002-10-30', 0, 'Tân Hồng, Bình Giang, Hải Dương', 1, '2024-11-20 16:58:47', NULL, 1),
(107, 2, 1, 5, 'EMP107', 'Vũ Minh Anh', '$2y$12$ZMlb8gXm4Rc8eA1G9RWUTunTlDU39jmcAayIgFbnvJSDRUsNOOwCq', 'https://res.cloudinary.com/dnp6p86dp/image/upload/v1732120230/crf4ow00e8jvi1v29m3d.jpg', '0988888887', 'anh11@gmail.com', '2002-06-10', 1, 'Vĩnh Hồng, Bình Giang, Hải Dương', 1, '2024-11-20 23:30:30', NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `positions`
--

CREATE TABLE `positions` (
  `position_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `positions`
--

INSERT INTO `positions` (`position_id`, `name`) VALUES
(1, 'Giám sát viên'),
(2, 'Thợ chính'),
(3, 'Thợ phụ'),
(4, 'Học việc'),
(5, 'Giám sát viên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'admin'),
(2, 'employee');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `services`
--

CREATE TABLE `services` (
  `service_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `price` int(11) NOT NULL,
  `update_at` datetime DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `services`
--

INSERT INTO `services` (`service_id`, `name`, `description`, `price`, `update_at`, `update_by`, `create_at`, `status`) VALUES
(1, 'Gội đầu dưỡng sinh', 'Khám & điều trị các bệnh lý cơ bản, chưa rõ nguyên nhân, chưa có định hướng chuyên khoa cụ thể', 0, '2024-06-18 16:16:08', 76, '2024-05-19 12:48:17', 1),
(2, 'Massage ', 'Khám & điều trị các bệnh về da và những phần phụ của da', 0, '2024-11-20 23:00:31', 1, '2024-05-13 12:48:17', 1),
(3, 'Làm nail ngắn', 'Tư vấn chế độ dinh dưỡng cũng như chế độ ăn uống phù hợp cho từng thể trạng và bệnh lý khác nhau ở mọi lứa tuổiLàm nail theo nhu cầu của khách, không úp móng', 0, '2024-06-03 09:22:35', NULL, '2024-05-14 12:48:17', 1),
(4, 'Làm nail dài', 'Làm nail kèm úp móng theo yêu cầu', 0, '2024-06-03 16:55:44', NULL, '2024-05-24 12:48:17', 1),
(38, 'Dịch vụ mới 1', 'Mô tả dịch vụ mới 1', 0, NULL, 1, '2024-11-20 16:08:43', 1),
(39, 'Dịch vụ mới 2', 'Moo tar Dịch vụ mới 1', 300000, '2024-11-21 23:21:00', 1, '2024-11-21 17:15:13', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `time_slots`
--

CREATE TABLE `time_slots` (
  `time_id` int(11) NOT NULL,
  `slot_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `time_slots`
--

INSERT INTO `time_slots` (`time_id`, `slot_time`) VALUES
(1, '08:00:00'),
(2, '08:30:00'),
(3, '09:00:00'),
(4, '09:30:00'),
(5, '10:00:00'),
(6, '10:30:00'),
(7, '11:00:00'),
(8, '13:00:00'),
(9, '13:30:00'),
(10, '14:00:00'),
(11, '14:30:00'),
(12, '15:00:00'),
(13, '15:30:00'),
(14, '16:00:00'),
(15, '16:30:00');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`appointment_id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `specialty_id` (`service_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `date_id` (`date_slot`),
  ADD KEY `time_id` (`time_id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`patient_id`);

--
-- Chỉ mục cho bảng `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `specialty_id` (`service_id`),
  ADD KEY `position_id` (`position_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Chỉ mục cho bảng `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`position_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Chỉ mục cho bảng `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Chỉ mục cho bảng `time_slots`
--
ALTER TABLE `time_slots`
  ADD PRIMARY KEY (`time_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `appointments`
--
ALTER TABLE `appointments`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `employees`
--
ALTER TABLE `employees`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT cho bảng `positions`
--
ALTER TABLE `positions`
  MODIFY `position_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `time_slots`
--
ALTER TABLE `time_slots`
  MODIFY `time_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `services` (`service_id`),
  ADD CONSTRAINT `appointments_ibfk_3` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`),
  ADD CONSTRAINT `appointments_ibfk_5` FOREIGN KEY (`time_id`) REFERENCES `time_slots` (`time_id`);

--
-- Các ràng buộc cho bảng `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `services` (`service_id`),
  ADD CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`position_id`) REFERENCES `positions` (`position_id`),
  ADD CONSTRAINT `employees_ibfk_3` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

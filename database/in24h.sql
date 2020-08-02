-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 16, 2019 lúc 02:19 PM
-- Phiên bản máy phục vụ: 10.1.25-MariaDB
-- Phiên bản PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `in24h`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_baiviet_hinhanh`
--

CREATE TABLE `db_baiviet_hinhanh` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `id_baiviet` int(11) NOT NULL,
  `hinh_anh` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_category`
--

CREATE TABLE `db_category` (
  `id` int(11) NOT NULL,
  `id_loai` int(11) NOT NULL,
  `alias_vn` varchar(255) NOT NULL,
  `alias_us` varchar(255) NOT NULL,
  `alias_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `ten_us` varchar(255) NOT NULL,
  `ten_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta_vn` text NOT NULL,
  `mo_ta_us` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung_vn` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung_us` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hinh_anh` varchar(255) NOT NULL,
  `so_thu_tu` int(11) NOT NULL,
  `title_vn` varchar(255) NOT NULL,
  `title_us` varchar(255) NOT NULL,
  `title_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `des` varchar(255) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL,
  `tieu_bieu` tinyint(1) NOT NULL,
  `menu` tinyint(1) NOT NULL,
  `module` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_category`
--

INSERT INTO `db_category` (`id`, `id_loai`, `alias_vn`, `alias_us`, `alias_ch`, `ten_vn`, `ten_us`, `ten_ch`, `mo_ta_vn`, `mo_ta_us`, `mo_ta_ch`, `noi_dung_vn`, `noi_dung_us`, `noi_dung_ch`, `hinh_anh`, `so_thu_tu`, `title_vn`, `title_us`, `title_ch`, `keyword`, `des`, `hien_thi`, `tieu_bieu`, `menu`, `module`, `level`) VALUES
(466, 0, 'doi-tac', '', '', 'Đối tác', '', '', '', '', '', '', '', '', '', 8, 'Đối tác', '', '', '', '', 1, 0, 0, 1, 0),
(258, 0, 'lien-he', 'contacts', '', 'Liên hệ', 'Contacts', '', '', '', '', '', '', '', '', 5, 'Liên hệ', '', '', '', '', 1, 1, 0, 5, 0),
(272, 0, 'gioi-thieu', 'about-us', '', 'Giới thiệu', 'About us', '', '', '', '', '', '', '', '', 1, 'Giới thiệu', 'About us', '', '', '', 1, 1, 1, 2, 0),
(490, 0, 'tin-tuc', '', '', 'Tin tức', '', '', '', '', '', '', '', '', '', 4, 'Tin tức', '', '', '', '', 1, 1, 1, 2, 0),
(491, 0, 'dich-vu', '', '', 'Dịch vụ', '', '', '', '', '', '', '', '', '', 2, 'Dịch vụ', '', '', '', '', 1, 1, 1, 2, 0),
(492, 251, 'bang-gia-in-nhanh-96', '', '', 'Bảng Giá In nhanh', '', '', '', '', '', '', '', '', '', 10, 'Bảng Giá In nhanh', '', '', '', '', 0, 0, 0, 3, 1),
(494, 251, 'in-an-pham-van-phong-13', '', '', 'In ấn phẩm văn phòng', '', '', '', '', '', '', '', '', '', 12, 'In ấn phẩm văn phòng', '', '', '', '', 0, 0, 0, 3, 1),
(495, 251, 'in-an-pham-qua-tang', '', '', 'In ấn phẩm quà tặng', '', '', '', '', '', '', '', '', '', 13, 'In ấn phẩm quà tặng', '', '', '', '', 0, 0, 0, 3, 1),
(497, 0, 'y-kien-khach-hang', '', '', 'Ý kiến khách hàng', '', '', '', '', '', '', '', '', '', 15, 'Ý kiến khách hàng', '', '', '', '', 1, 0, 0, 2, 0),
(498, 0, 'cong-trinh-mau', '', '', 'Công trình mẫu', '', '', '', '', '', '', '', '', '', 4, 'Công trình mẫu', '', '', '', '', 1, 1, 1, 2, 0),
(507, 0, 'du-an', '', '', 'Dự án', '', '', '', '', '', '', '', '', '', 3, 'Dự án', '', '', '', '', 1, 0, 0, 3, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_chitietdathang`
--

CREATE TABLE `db_chitietdathang` (
  `id` int(11) NOT NULL,
  `id_dh` int(11) NOT NULL,
  `ma_dh` varchar(255) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `gia` int(11) NOT NULL,
  `khuyen_mai` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_chitietdathang`
--

INSERT INTO `db_chitietdathang` (`id`, `id_dh`, `ma_dh`, `id_sp`, `gia`, `khuyen_mai`, `so_luong`) VALUES
(409, 203, 'DH203790MJ', 435, 55800000, 0, 1),
(408, 202, 'DH202EKPLB', 434, 0, 0, 1),
(407, 201, 'DH201RUBZH', 311, 15000000, 0, 1),
(406, 200, 'DH200KWHFE', 297, 0, 0, 1),
(405, 199, 'DH199QPYWL', 427, 8500000, 0, 1),
(412, 204, 'DH204W6ATQ', 302, 0, 0, 1),
(411, 204, 'DH204W6ATQ', 427, 85000, 0, 1),
(417, 205, 'DH205KLELM', 305, 90000, 0, 1),
(414, 205, 'DH205KLELM', 427, 85000, 0, 5),
(415, 205, 'DH205KLELM', 300, 150000, 0, 1),
(418, 205, 'DH205KLELM', 296, 12000000, 0, 1),
(419, 206, 'DH206L4HVP', 311, 150000, 0, 1),
(420, 206, 'DH206L4HVP', 301, 750000, 0, 1),
(421, 207, 'DH207WQRHB', 302, 0, 0, 1),
(422, 208, 'DH208OXEZI', 311, 60000, 0, 1),
(423, 209, 'DH209HE8SJ', 299, 105000, 0, 1),
(424, 210, 'DH210KCEBU', 449, 0, 0, 1),
(425, 211, 'DH211CHHQ6', 442, 100000, 0, 1),
(426, 212, 'DH21201MVT', 450, 0, 0, 1),
(427, 213, 'DH2136ZQUF', 299, 65000, 0, 1),
(428, 214, 'DH214Q8M2L', 450, 0, 0, 5),
(429, 215, 'DH215X62MZ', 311, 60000, 0, 1),
(431, 217, 'DH217CEAVK', 427, 200000, 0, 2),
(432, 218, 'DH218XL6DS', 311, 60000, 0, 1),
(433, 219, 'DH219DW03Y', 311, 60000, 0, 1),
(434, 220, 'DH220H7ZGK', 427, 200000, 0, 1),
(435, 220, 'DH220H7ZGK', 310, 0, 0, 1),
(437, 221, 'DH2214VVGQ', 427, 200000, 0, 2),
(438, 221, 'DH2214VVGQ', 311, 60000, 0, 1),
(439, 222, 'DH222AA50W', 311, 60000, 0, 1),
(440, 222, 'DH222AA50W', 443, 90000, 0, 1),
(441, 222, 'DH222AA50W', 310, 0, 0, 1),
(442, 223, 'DH223MK2R1', 427, 200000, 0, 1),
(443, 224, 'DH2246EDJB', 311, 60000, 0, 1),
(444, 224, 'DH2246EDJB', 427, 200000, 0, 1),
(458, 230, 'DH2300ONVS', 427, 200000, 0, 1),
(454, 0, 'DHU01M0', 427, 200000, 0, 1),
(453, 0, 'DHU01M0', 443, 90000, 0, 1),
(456, 228, 'DH228JW3X8', 442, 100000, 0, 1),
(459, 230, 'DH2300ONVS', 442, 100000, 0, 1),
(460, 231, 'DH231OFY3S', 442, 100000, 0, 5),
(461, 230, 'DH2300ONVS', 441, 80000, 0, 1),
(462, 232, 'DH232T7UT4', 442, 100000, 0, 1),
(463, 233, 'DH2338DUZ4', 310, 0, 0, 1),
(464, 233, 'DH2338DUZ4', 427, 200000, 0, 1),
(465, 233, 'DH2338DUZ4', 442, 100000, 0, 1),
(466, 234, 'DH234PA99R', 427, 200000, 0, 1),
(467, 235, 'DH235W9X38', 443, 90000, 0, 1),
(469, 236, 'DH2364FYS8', 443, 90000, 0, 1),
(470, 236, 'DH2364FYS8', 464, 22222222, 0, 1),
(471, 237, 'DH2376NI8R', 469, 10000000, 0, 1),
(472, 238, 'DH238HOS0A', 491, 15000000, 0, 1),
(473, 239, 'DH2394XNPO', 491, 15000000, 0, 1),
(474, 240, 'DH2402ZVKS', 495, 0, 0, 1),
(475, 241, 'DH241IE9RP', 491, 15000000, 0, 1),
(476, 242, 'DH242FT86N', 482, 200000, 0, 1),
(477, 243, 'DH243SITME', 493, 3500000, 0, 1),
(479, 245, 'DH245F8TMX', 630, 0, 0, 1),
(480, 246, 'DH246J7YUS', 671, 20000, 0, 3),
(481, 246, 'DH246J7YUS', 670, 20000, 0, 1),
(482, 246, 'DH246J7YUS', 669, 20000, 0, 1),
(483, 246, 'DH246J7YUS', 665, 0, 0, 1),
(484, 246, 'DH246J7YUS', 679, 0, 0, 1),
(485, 247, 'DH2477CUW6', 679, 0, 0, 1),
(486, 248, 'DH2482UK0T', 670, 20000, 0, 1),
(488, 249, 'DH249ITYXW', 679, 0, 0, 5),
(489, 249, 'DH249ITYXW', 678, 40000000, 0, 6),
(490, 250, 'DH250FI9AZ', 678, 40000000, 0, 1),
(491, 251, 'DH25199Z7C', 679, 0, 0, 1),
(492, 252, 'DHZ2LR7', 723, 0, 0, 1),
(493, 252, 'DHZ2LR7', 742, 0, 0, 1),
(494, 253, 'DHGELJO', 724, 0, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_danhmuc_hoidap`
--

CREATE TABLE `db_danhmuc_hoidap` (
  `id` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `alias_vn` varchar(255) NOT NULL,
  `so_thu_tu` int(11) NOT NULL,
  `title_vn` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `des` varchar(255) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_danhmuc_hoidap`
--

INSERT INTO `db_danhmuc_hoidap` (`id`, `ten_vn`, `alias_vn`, `so_thu_tu`, `title_vn`, `keyword`, `des`, `hien_thi`) VALUES
(1, 'Nhóm câu 1', 'nhom-cau-1', 1, 'Nhóm câu 1', '', '', 1),
(3, 'Nhóm câu 2', 'nhom-cau-2', 2, 'Nhóm câu 2', '', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_dathang`
--

CREATE TABLE `db_dathang` (
  `id` int(11) NOT NULL,
  `ho_ten` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dia_chi` varchar(255) NOT NULL,
  `dien_thoai` varchar(20) NOT NULL,
  `thoi_gian_giao_hang` varchar(255) NOT NULL,
  `ngay_giao_hang` varchar(20) NOT NULL,
  `hinh_thuc_thanh_toan` tinyint(1) NOT NULL,
  `loi_nhan` varchar(1000) NOT NULL,
  `ngay_dat_hang` varchar(20) NOT NULL,
  `trang_thai` tinyint(1) NOT NULL,
  `tinh_trang` tinyint(1) NOT NULL,
  `ma_dh` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_dathang`
--

INSERT INTO `db_dathang` (`id`, `ho_ten`, `email`, `dia_chi`, `dien_thoai`, `thoi_gian_giao_hang`, `ngay_giao_hang`, `hinh_thuc_thanh_toan`, `loi_nhan`, `ngay_dat_hang`, `trang_thai`, `tinh_trang`, `ma_dh`) VALUES
(203, '', '', '', '', '', '', 0, '', '1474361374', 0, 0, ''),
(202, '', '', '', '', '', '', 0, '', '1474270363', 0, 0, ''),
(200, '', '', '', '', '', '', 0, '', '1473933509', 0, 0, ''),
(221, '', '', '', '', '', '', 0, '', '1476415764', 0, 0, ''),
(204, '', '', '', '', '', '', 0, '', '1474517040', 0, 0, ''),
(207, '', '', '', '', '', '', 0, '', '1474535353', 0, 0, ''),
(208, '', '', '', '', '', '', 0, '', '1474887718', 0, 0, ''),
(209, '', '', '', '', '', '', 0, '', '1474901603', 0, 0, ''),
(210, '', '', '', '', '', '', 0, '', '1474982724', 0, 0, ''),
(211, '', '', '', '', '', '', 0, '', '1475224560', 0, 0, ''),
(212, '', '', '', '', '', '', 0, '', '1475718508', 0, 0, ''),
(213, '', '', '', '', '', '', 0, '', '1475917408', 0, 0, ''),
(215, '', '', '', '', '', '', 0, '', '1476348052', 0, 0, ''),
(223, '', '', '', '', '', '', 0, '', '1477366331', 0, 0, ''),
(224, '', '', '', '', '', '', 0, '', '1477375215', 0, 0, ''),
(225, '', '', '', '', '', '', 0, '', '1478308078', 0, 0, ''),
(226, '', '', '', '', '', '', 0, '', '1478308314', 0, 0, ''),
(227, '', '', '', '', '', '', 0, '', '1478308582', 0, 0, ''),
(228, '', '', '', '', '', '', 0, '', '1478308596', 0, 0, ''),
(229, '', '', '', '', '', '', 0, '', '1478308897', 0, 0, ''),
(230, '', '', '', '', '', '', 0, '', '1478313638', 0, 0, ''),
(231, '', '', '', '', '', '', 0, '', '1478315872', 0, 0, ''),
(232, '', '', '', '', '', '', 0, '', '1478315975', 0, 0, ''),
(233, '', '', '', '', '', '', 0, '', '1478315999', 0, 0, ''),
(234, '', '', '', '', '', '', 0, '', '1478316041', 0, 0, ''),
(235, '', '', '', '', '', '', 0, '', '1478318010', 0, 0, ''),
(236, '', '', '', '', '', '', 0, '', '1478480613', 0, 0, ''),
(237, '', '', '', '', '', '', 0, '', '1479274184', 0, 0, ''),
(238, '', '', '', '', '', '', 0, '', '1479693211', 0, 0, ''),
(240, '', '', '', '', '', '', 0, '', '1480920250', 0, 0, ''),
(241, '', '', '', '', '', '', 0, '', '1487061317', 0, 0, ''),
(243, '', '', '', '', '', '', 0, '', '1487317319', 0, 0, ''),
(245, '', '', '', '', '', '', 0, '', '1488294374', 0, 0, ''),
(249, '', '', '', '', '', '', 0, '', '1496741047', 0, 0, ''),
(251, '', '', '', '', '', '', 0, '', '1496800110', 0, 0, ''),
(252, 'Lê Na', 'lena@phuongnamvina.vn', '312 Lê Quang Định', '0912817117', '', '1560161301', 1, '', '1560160855', 1, 2, 'DHZ2LR7'),
(253, 'Le Lena', 'lena@phuongnamvina.vn', '190 Bạch Đằng, Phường 24, Quận Bình Thạnh', '0912817117', '', '', 1, 'Test mail đăt hàng', '1560408941', 1, 0, 'DHGELJO');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_datlich`
--

CREATE TABLE `db_datlich` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `donvi` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `chuyenmon` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mota` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mucdo` int(11) NOT NULL,
  `vaitro` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `khac` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tuvan` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `capthiet` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `day` int(11) NOT NULL,
  `view` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `db_datlich`
--

INSERT INTO `db_datlich` (`id`, `name`, `donvi`, `chuyenmon`, `email`, `phone`, `mota`, `mucdo`, `vaitro`, `khac`, `tuvan`, `capthiet`, `day`, `view`) VALUES
(1, 'Hoàng Hiển', 'Trường Trung Cấp Công Nghiệp Bình Dương', 'Công nghệ thông tin và kỹ thuật máy tính', 'thantaihoi@zing.vn', '45345435', 'Công dụng, đặc tính, những điểm nổi bật so với những sản phẩm/dịch vụ hiện có trên thị trườngCông dụng, đặc tính, những điểm nổi bật so với những sản phẩm/dịch vụ hiện có trên thị trườngCông dụng, đặc tính, những điểm nổi bật so với những sản phẩm/dịch vụ hiện có trên thị trườngCông dụng, đặc tính, những điểm nổi bật so với những sản phẩm/dịch vụ hiện có trên thị trường', 1, '0', 'test khác lung tung xì ngầu', '(Ví dụ: tư vấn nghiên cứu hoàn thiện sản phẩm/dịch vụ; kiểm nghiệm tính khả thi của ý tưởng; tư vấn xây dựng/hoàn thiện KHKD; tư vấn bảo hộ SHTT; tư vấn pháp lý; tư vấn cách thức triển khai; ...)...)', 'rất cần thiết lun đó nha! dự án trăm triệu đô la đó', 1461295558, 1),
(2, 'Nguyễn Văn A', 'Trường Đại Học Hồng Bàng', 'Nghiên cứu vi sinh vật', 'hnhoanghien@gmail.com', '554534566', 'Công dụng, đặc tính, những điểm nổi bật so với những sản phẩm/dịch vụ hiện có trên thị trườngCông dụng, đặc tính, những điểm nổi bật so với những sản phẩm/dịch vụ hiện có trên thị trườngCông dụng, đặc tính, những điểm nổi bật so với những sản phẩm/dịch vụ hiện có trên thị trường', 2, '5,6,10', '', '(Ví dụ: tư vấn nghiên cứu hoàn thiện sản phẩm/dịch vụ; kiểm nghiệm tính khả thi của ý tưởng; tư vấn xây dựng/hoàn thiện KHKD; tư vấn bảo hộ SHTT; tư vấn pháp lý; tư vấn cách thức triển khai; ...)...)', 'Nếu dự án của bạn đang cần được hỗ trợ gấp hãy thông tin để chúng tôi biết và ưu tiên xếp lịch hẹn sớm', 1461296811, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_dknhamau`
--

CREATE TABLE `db_dknhamau` (
  `id` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `so_dien_thoai` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dia_chi` varchar(255) NOT NULL,
  `ngay_dang` int(11) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_dknhamau`
--

INSERT INTO `db_dknhamau` (`id`, `ten_vn`, `so_dien_thoai`, `email`, `dia_chi`, `ngay_dang`, `hien_thi`) VALUES
(1, 'Nguyễn Long', '0982 382 323', 'kythuat01.pnvn@gmail.com', '', 272637, 1),
(2, 'Nguyễn Long', '0928 329 212', 'kythuat01.pnvn@gmail.com', '', 1446870899, 1),
(3, '', '', '', '', 1447053480, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_email`
--

CREATE TABLE `db_email` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ngay_gui` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_extra`
--

CREATE TABLE `db_extra` (
  `id` int(11) NOT NULL,
  `stt` int(11) NOT NULL,
  `hide` int(11) NOT NULL,
  `title_vn` text COLLATE utf8_unicode_ci NOT NULL,
  `gia` int(11) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_extra`
--

INSERT INTO `db_extra` (`id`, `stt`, `hide`, `title_vn`, `gia`, `type`) VALUES
(1, 1, 1, 'CÔNG LUẬN', 0, 0),
(5, 0, 1, 'KAIJIELI', 0, 1),
(7, 1, 1, 'HP Smart Array P440ar/2GB FBWC 12Gb 2-ports Int SAS Controller ', 9000000, 2),
(8, 2, 1, 'HP Smart Array P440ar/2GB FBWC 12Gb 4-ports', 15000000, 2),
(11, 5, 1, 'Proliant DL380 Gen9 motherboard, Intel C610 chipset, 24 DIMM slot, 6 PCIe, iLo', 12500000, 3),
(12, 1, 1, ' Proliant DL380 Gen9 chassis, 2U rackmount, 8*2.5 SFF drives, 1x 500W', 11050000, 4),
(13, 2, 1, 'Proliant DL380 Gen9 chassis, 2U rackmount, 8*2.5 SFF drives, 2x 500W', 14500000, 4),
(15, 1, 1, 'HP 300GB 6G SAS 10K SFF SC HDD', 4800000, 5),
(16, 2, 1, 'HP 300GB 6G SAS 15K SFF SC HDD', 6500000, 5),
(17, 1, 1, 'Embedded HP 1Gb Ethernet 4-port 331i Adapter ', 7500000, 6),
(18, 2, 1, 'HP NC365T 4-port 1GbE adapter', 1500000, 6),
(19, 1, 1, 'Integrated VGA onboard ', 1600000, 7),
(20, 1, 1, 'External Slim USB DVD-RW', 850000, 8),
(21, 2, 1, 'External Slim USB Bluray Combo Drive', 1780000, 8),
(22, 1, 1, 'Không chọn Màn hình ', 0, 9),
(23, 1, 1, 'Không chọn Bộ lưu điện ', 0, 10),
(24, 1, 1, 'Không chọn Hệ Điều Hành', 0, 11),
(28, 3, 1, 'HP 300GB 12G SAS 10K SFF SC HDD ', 4080000, 5),
(29, 4, 1, 'HP 300GB 12G SAS 15K SFF SC HDD', 6950000, 5),
(30, 5, 1, 'HP 500GB 6G SATA 7.2K SFF SC HDD ', 5000000, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_file`
--

CREATE TABLE `db_file` (
  `id` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `ngay_dang` varchar(255) NOT NULL,
  `id_code` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_gallery`
--

CREATE TABLE `db_gallery` (
  `id` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `picture` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `stt` int(11) NOT NULL,
  `hide` int(11) NOT NULL,
  `title_vn` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_us` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `link` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `body_vn` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `body_us` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `body_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `db_gallery`
--

INSERT INTO `db_gallery` (`id`, `parent`, `picture`, `stt`, `hide`, `title_vn`, `title_us`, `title_ch`, `link`, `body_vn`, `body_us`, `body_ch`) VALUES
(94, 466, '510193383126_logo-HP.png', 5, 1, 'CÔNG TY CỔ PHẦN THUỐC BVTV HP', '', '', 'http://bvtvhp.com/', '', '', ''),
(93, 466, '713980712287_logo-3.jpg', 4, 1, 'Giấy Phùng Vĩnh Hưng', '', '', 'http://phungvinhhung.com/', '', '', ''),
(92, 466, '438969951631_logo-tran-the.png', 3, 1, 'Điện Máy Trần Thế', '', '', 'http://www.sieuthidienmaytranthe.com/', '', '', ''),
(91, 466, '624534916480_logo30.png', 2, 1, 'Vietcombank', '', '', 'http://vietcombank.com.vn/', '', '', ''),
(90, 466, '523224410528_logo-(1).png', 1, 1, 'CÔNG TY RINAI VIỆT NAM', '', '', 'http://www.rinnai.com.vn/index.php/vi/', '', '', ''),
(95, 466, '008784146329_logo.png', 6, 1, 'CÔNG TY BÁNH KẸO KINH ĐÔ', '', '', 'http://www.kinhdo.vn/', '', '', ''),
(96, 466, '911042601379_logo-1.jpg', 7, 1, 'TỔNG CÔNG TY CỔ PHẦN NƯỚC GIẢI KHÁT SÀI GÒN', '', '', 'http://www.sabeco.com.vn/', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_hinhanh`
--

CREATE TABLE `db_hinhanh` (
  `id` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `id_mau` int(11) NOT NULL,
  `hinh_lon` varchar(255) NOT NULL,
  `hinh_nho` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_hinhthucthanhtoan`
--

CREATE TABLE `db_hinhthucthanhtoan` (
  `id` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `noi_dung_vn` text NOT NULL,
  `so_thu_tu` int(11) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_hinhthucthanhtoan`
--

INSERT INTO `db_hinhthucthanhtoan` (`id`, `ten_vn`, `noi_dung_vn`, `so_thu_tu`, `hien_thi`) VALUES
(1, 'Thanh toán khi nhận hàng (COD)', '', 1, 1),
(2, 'Chuyển khoản', 'Transfer', 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_hotro`
--

CREATE TABLE `db_hotro` (
  `id` int(11) NOT NULL,
  `id_loai` varchar(255) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `ten_us` varchar(255) NOT NULL,
  `ten_jp` varchar(255) NOT NULL,
  `ten_ch` varchar(255) NOT NULL,
  `hinh_anh` varchar(255) NOT NULL,
  `yahoo` varchar(255) NOT NULL,
  `skype` varchar(255) NOT NULL,
  `sdt` varchar(20) NOT NULL,
  `so_thu_tu` int(11) NOT NULL DEFAULT '1',
  `hien_thi` tinyint(1) NOT NULL,
  `zalo` varchar(255) NOT NULL,
  `mo_ta_vn` text NOT NULL,
  `mo_ta_us` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_hotro`
--

INSERT INTO `db_hotro` (`id`, `id_loai`, `ten_vn`, `ten_us`, `ten_jp`, `ten_ch`, `hinh_anh`, `yahoo`, `skype`, `sdt`, `so_thu_tu`, `hien_thi`, `zalo`, `mo_ta_vn`, `mo_ta_us`) VALUES
(18, '', 'Kinh Doanh 1', '', '', '', '', '0986.175.175', 'live:hcmthienan', '0986.175.175', 1, 1, '0933 642 269', '', ''),
(23, '', 'Kinh Doanh 2', '', '', '', '', '0961145454', 'live:hcmthienan', '0961.14.5454', 2, 1, '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_khachhang`
--

CREATE TABLE `db_khachhang` (
  `id` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `mat_khau` varchar(255) NOT NULL,
  `ho_ten` varchar(255) NOT NULL,
  `so_dien_thoai` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dia_chi` varchar(255) NOT NULL,
  `ngay_dang` int(11) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_khachhang`
--

INSERT INTO `db_khachhang` (`id`, `ten_vn`, `mat_khau`, `ho_ten`, `so_dien_thoai`, `email`, `dia_chi`, `ngay_dang`, `hien_thi`) VALUES
(3, 'kythuat01', 'c9ece136c3e846349a5a1312442fb99a', 'ho ten', 'so dt', 'emai', 'dc', 1442303304, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_kichthuoc`
--

CREATE TABLE `db_kichthuoc` (
  `id` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `ten_us` varchar(255) NOT NULL,
  `gia` int(11) NOT NULL,
  `so_thu_tu` int(11) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_kichthuoc`
--

INSERT INTO `db_kichthuoc` (`id`, `ten_vn`, `ten_us`, `gia`, `so_thu_tu`, `hien_thi`) VALUES
(1, 'Lớn', '', 0, 1, 1),
(2, 'Trung bình', '', 0, 2, 1),
(3, 'Nhỏ', '', 0, 3, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_lienhe`
--

CREATE TABLE `db_lienhe` (
  `id` int(11) NOT NULL,
  `ho_ten` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sdt` varchar(20) NOT NULL,
  `dia_chi` varchar(255) NOT NULL,
  `ten_cong_ty` varchar(255) NOT NULL,
  `tieu_de` varchar(255) NOT NULL,
  `noi_dung` text NOT NULL,
  `ngay_hoi` varchar(20) NOT NULL,
  `trang_thai` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_lienketwebsite`
--

CREATE TABLE `db_lienketwebsite` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `link` text NOT NULL,
  `so_thu_tu` int(11) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_lienketwebsite`
--

INSERT INTO `db_lienketwebsite` (`id`, `title`, `link`, `so_thu_tu`, `hien_thi`) VALUES
(77, 'vnexpress', 'http://vnexpress.net', 7, 1),
(76, 'dantri', 'htpp://dantri.com', 6, 1),
(75, 'facebook', 'http://facebook.com', 5, 1),
(74, 'Youtube', 'http://youtube.com', 4, 1),
(78, 'google.com', 'http://google.com.vn', 8, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_loaisanpham`
--

CREATE TABLE `db_loaisanpham` (
  `id` int(11) NOT NULL,
  `id_loai` int(11) NOT NULL,
  `alias_vn` varchar(255) NOT NULL,
  `alias_us` varchar(255) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `ten_us` varchar(255) NOT NULL,
  `mo_ta_vn` text NOT NULL,
  `hinh_anh` varchar(255) NOT NULL,
  `so_thu_tu` int(11) NOT NULL,
  `title_vn` varchar(255) NOT NULL,
  `title_us` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `des` varchar(255) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL,
  `tieu_bieu` tinyint(1) NOT NULL,
  `menu` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_loaitintuc`
--

CREATE TABLE `db_loaitintuc` (
  `id` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `ten_us` varchar(255) NOT NULL,
  `alias_vn` varchar(255) NOT NULL,
  `alias_us` varchar(255) NOT NULL,
  `noi_dung_vn` text NOT NULL,
  `noi_dung_us` text NOT NULL,
  `so_thu_tu` int(11) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL,
  `tieu_bieu` tinyint(1) NOT NULL,
  `id_loai` int(11) DEFAULT '0',
  `title_vn` varchar(255) NOT NULL,
  `title_us` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `des` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_loaitintuc`
--

INSERT INTO `db_loaitintuc` (`id`, `ten_vn`, `ten_us`, `alias_vn`, `alias_us`, `noi_dung_vn`, `noi_dung_us`, `so_thu_tu`, `hien_thi`, `tieu_bieu`, `id_loai`, `title_vn`, `title_us`, `keyword`, `des`) VALUES
(24, 'Đại sứ', '', 'dai-su', '', '', '', 3, 1, 0, 0, 'Đại sứ', '', 'Đại sứ', 'Đại sứ'),
(25, 'Giới thiệu', '', 'gioi-thieu', '', '', '', 1, 1, 0, 0, 'Giới thiệu', '', 'Giới thiệu', 'Giới thiệu'),
(26, 'Thư viện', '', 'thu-vien', '', '', '', 5, 1, 0, 0, 'Thư viện', '', 'Thư viện', 'Thư viện'),
(39, 'Gương mặt đại sứ', '', 'guong-mat-dai-su', '', '', '', 9, 1, 0, 0, 'Gương mặt đại sứ', '', 'Gương mặt đại sứ', 'Gương mặt đại sứ'),
(34, 'Những người yêu hàng việt', '', 'nhung-nguoi-yeu-hang-viet', '', '', '', 4, 1, 0, 0, 'Những người yêu hàng việt', '', 'Những người yêu hàng việt', 'Những người yêu hàng việt'),
(35, 'Hỏi đáp', '', 'hoi-dap', '', '', '', 6, 1, 0, 0, 'Hỏi đáp', '', 'Hỏi đáp', 'Hỏi đáp'),
(36, 'Tin tức', '', 'tin-tuc', '', '', '', 2, 1, 0, 0, 'Tin tức', '', 'Tin tức', 'Tin tức'),
(37, 'Hoạt động CLB', '', 'hoat-dong-clb', '', '', '', 7, 1, 0, 0, 'Hoạt động CLB', '', 'Hoạt động CLB', 'Hoạt động CLB'),
(38, 'Thông tin hàng Việt', '', 'thong-tin-hang-viet', '', '', '', 8, 1, 0, 0, 'Thông tin hàng Việt', '', 'Thông tin hàng Việt', 'Thông tin hàng Việt'),
(40, 'Đại sứ với hàng Việt', '', 'dai-su-voi-hang-viet', '', '', '', 10, 1, 0, 0, 'Đại sứ với hàng Việt', '', 'Đại sứ với hàng Việt', 'Đại sứ với hàng Việt'),
(41, 'Đời thường đại sứ', '', 'doi-thuong-dai-su', '', '', '', 11, 1, 0, 0, 'Đời thường đại sứ', '', 'Đời thường đại sứ', 'Đời thường đại sứ'),
(42, 'Hiến kế hàng Việt', '', 'hien-ke-hang-viet', '', '', '', 12, 1, 0, 0, 'Hiến kế hàng Việt', '', 'Hiến kế hàng Việt', 'Hiến kế hàng Việt'),
(43, 'Vui buồn cùng hàng Việt', '', 'vui-buon-cung-hang-viet', '', '', '', 13, 1, 0, 0, 'Vui buồn cùng hàng Việt', '', 'Vui buồn cùng hàng Việt', 'Vui buồn cùng hàng Việt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_map`
--

CREATE TABLE `db_map` (
  `id` int(11) NOT NULL,
  `map` text NOT NULL,
  `ten_vn` text NOT NULL,
  `ten_us` text NOT NULL,
  `ten_ch` text NOT NULL,
  `mo_ta_vn` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta_us` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung_vn` text NOT NULL,
  `noi_dung_us` text NOT NULL,
  `noi_dung_ch` text NOT NULL,
  `so_thu_tu` int(11) NOT NULL DEFAULT '1',
  `hien_thi` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_map`
--

INSERT INTO `db_map` (`id`, `map`, `ten_vn`, `ten_us`, `ten_ch`, `mo_ta_vn`, `mo_ta_us`, `mo_ta_ch`, `noi_dung_vn`, `noi_dung_us`, `noi_dung_ch`, `so_thu_tu`, `hien_thi`) VALUES
(17, '10.757722, 106.659059', 'Tên công ty chi nhánh 3', '', '', 'Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3', '', '', '0985 357 584Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3<br />\r\n<br />\r\nTên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3<br />\r\n<br />\r\nTên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3<br />\r\n<br />\r\nTên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3<br />\r\n<br />\r\nTên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3<br />\r\n<br />\r\nTên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3<br />\r\n<br />\r\nTên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3', '', '', 1, 1),
(18, '10.754707, 106.657053', 'Tên công ty chi nhánh 2', '', '', 'Tên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2', '', '', 'Tên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2<br />\r\n<br />\r\nTên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2<br />\r\n<br />\r\nTên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2<br />\r\n<br />\r\n<br />\r\nTên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2<br />\r\n<br />\r\nTên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2', '', '', 2, 1),
(19, '10.753210, 106.661151', 'Tên chi nhánh 1', '', '', 'Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1', '', '', 'Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1', '', '', 3, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_mausac`
--

CREATE TABLE `db_mausac` (
  `id` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `so_thu_tu` int(11) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_mausac`
--

INSERT INTO `db_mausac` (`id`, `ten_vn`, `so_thu_tu`, `hien_thi`) VALUES
(11, 'Xanh nhạt', 5, 1),
(10, 'Hồng', 4, 1),
(9, 'Đỏ', 3, 1),
(8, 'Trắng', 2, 1),
(7, 'Vàng', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_module`
--

CREATE TABLE `db_module` (
  `id` int(11) NOT NULL,
  `stt` int(11) NOT NULL,
  `hide` int(11) NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `db_module`
--

INSERT INTO `db_module` (`id`, `stt`, `hide`, `title`) VALUES
(1, 1, 1, 'Hình ảnh'),
(2, 2, 1, 'Bài viết'),
(3, 3, 1, 'Sản phẩm'),
(4, 4, 0, 'Bất động sản'),
(5, 5, 1, 'Liên hệ'),
(6, 6, 1, 'Video'),
(7, 7, 1, 'Giỏ hàng'),
(8, 8, 1, 'Đặt hàng thành công');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_nhomhotro`
--

CREATE TABLE `db_nhomhotro` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `stt` int(11) NOT NULL,
  `hide` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `db_nhomhotro`
--

INSERT INTO `db_nhomhotro` (`id`, `title`, `stt`, `hide`) VALUES
(1, 'Hỗ trợ kinh doanh', 1, 1),
(2, 'Tư vấn khách hàng', 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_permission_group`
--

CREATE TABLE `db_permission_group` (
  `id` int(11) NOT NULL,
  `page` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `stt` int(11) NOT NULL,
  `hide` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_permission_group`
--

INSERT INTO `db_permission_group` (`id`, `page`, `title`, `stt`, `hide`) VALUES
(1, 'san-pham', 'Sản phẩm', 1, 1),
(2, 'bai-viet', 'Bài viết', 2, 1),
(3, 'gallery', 'Gallery', 3, 1),
(4, 'category', 'Category', 4, 1),
(5, 'nhom-ho-tro', 'Nhóm hỗ trợ', 5, 1),
(6, 'ho-tro-truc-tuyen', 'Hỗ trợ trực tuyến', 6, 1),
(7, 'video', 'Video', 7, 1),
(8, 'upload-file', 'Upload file', 8, 1),
(9, 'danh-sach-don-hang', 'Danh sách đơn hàng', 9, 1),
(10, 'ql-user', 'Quản lý User', 10, 1),
(11, 'ql-thongtin', 'Quản lý thông tin', 11, 1),
(12, 'lien-he', 'Liên hệ', 12, 1),
(13, 'giaodien', 'Giao diện', 13, 1),
(14, 'seo-co-ban', 'Seo cơ bản', 14, 1),
(15, 'seo-nang-cao', 'Seo nâng cao', 15, 1),
(16, 'extra0', 'Mở rộng 0', 16, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_quan`
--

CREATE TABLE `db_quan` (
  `id` int(11) NOT NULL,
  `id_loai` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `so_thu_tu` int(11) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_quan`
--

INSERT INTO `db_quan` (`id`, `id_loai`, `ten_vn`, `so_thu_tu`, `hien_thi`) VALUES
(1, 1, 'Quận 1', 1, 1),
(2, 1, 'Quận 2', 2, 1),
(3, 1, 'Quận 3', 3, 1),
(4, 4, 'Hoàng Kiếm', 4, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_question`
--

CREATE TABLE `db_question` (
  `id` int(11) NOT NULL,
  `ten` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cau_hoi` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tra_loi` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngay` int(11) NOT NULL,
  `hien_thi` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `db_question`
--

INSERT INTO `db_question` (`id`, `ten`, `cau_hoi`, `tra_loi`, `ngay`, `hien_thi`) VALUES
(1, 'Hoang hien', 'Làm sao để có thể làm giàu nhanh chóng không cần làm việc', 'Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!<br />\r\n<br />\r\n<br />\r\nBỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!<br />\r\n<br />\r\n<br />\r\nBỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!', 1459741196, 1),
(2, 'Tèo si rô', 'Kinh doanh cà phê làm giàu kiểu nào bà con, tiền sao nhiều nhiều vào', 'Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!<br />\r\n<br />\r\n<br />\r\nBỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!<br />\r\n<br />\r\n<br />\r\nBỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!', 1459741247, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_sanpham`
--

CREATE TABLE `db_sanpham` (
  `id` int(11) NOT NULL,
  `id_loai` int(11) NOT NULL,
  `id_hang` varchar(255) NOT NULL DEFAULT '0',
  `alias_vn` varchar(255) NOT NULL,
  `alias_us` varchar(255) NOT NULL,
  `alias_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ma_sp` varchar(255) NOT NULL,
  `ten_vn` varchar(1000) NOT NULL,
  `ten_us` varchar(255) NOT NULL,
  `ten_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta_vn` text NOT NULL,
  `mo_ta_us` text NOT NULL,
  `mo_ta_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hinh_anh` varchar(255) NOT NULL,
  `gia` double NOT NULL DEFAULT '0',
  `khuyen_mai` int(11) NOT NULL DEFAULT '0',
  `thong_tin_vn` text NOT NULL,
  `thong_tin_us` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thong_tin_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thong_so_vn` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thong_tai_vn` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thong_chon_vn` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngay_dang` int(11) DEFAULT NULL,
  `tieu_bieu` tinyint(1) DEFAULT NULL,
  `sp_moi` tinyint(1) NOT NULL DEFAULT '0',
  `sp_hot` tinyint(1) NOT NULL,
  `title_vn` varchar(255) DEFAULT NULL,
  `title_us` varchar(255) NOT NULL,
  `title_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `des` varchar(255) DEFAULT NULL,
  `view` int(11) NOT NULL DEFAULT '0',
  `thanh_pho` int(11) NOT NULL DEFAULT '0',
  `quan` int(11) NOT NULL DEFAULT '0',
  `hien_thi` tinyint(1) NOT NULL DEFAULT '1',
  `extra0` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `extra1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `extra2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `extra3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `extra4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `extra5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `extra6` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `extra7` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `extra8` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `extra9` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `extra10` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `con_hang` tinyint(4) NOT NULL,
  `so_thu_tu` int(11) NOT NULL,
  `style` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_sanpham`
--

INSERT INTO `db_sanpham` (`id`, `id_loai`, `id_hang`, `alias_vn`, `alias_us`, `alias_ch`, `ma_sp`, `ten_vn`, `ten_us`, `ten_ch`, `mo_ta_vn`, `mo_ta_us`, `mo_ta_ch`, `hinh_anh`, `gia`, `khuyen_mai`, `thong_tin_vn`, `thong_tin_us`, `thong_tin_ch`, `thong_so_vn`, `thong_tai_vn`, `thong_chon_vn`, `ngay_dang`, `tieu_bieu`, `sp_moi`, `sp_hot`, `title_vn`, `title_us`, `title_ch`, `keyword`, `des`, `view`, `thanh_pho`, `quan`, `hien_thi`, `extra0`, `extra1`, `extra2`, `extra3`, `extra4`, `extra5`, `extra6`, `extra7`, `extra8`, `extra9`, `extra10`, `con_hang`, `so_thu_tu`, `style`) VALUES
(732, 251, '0', 'in-tem-vo-tem-bao-hanh-', '', '', 'VR3C', 'In tem vỡ, tem bảo hành...', '', '', 'Tem bảo hành :  là loại tem chỉ sử dụng được duy nhất  một lần để ghi ngày tháng năm bảo hành cho sản phẩm. Tem bảo hành  được in trên chất liệu giấy giòn tan dễ vỡ, vì vậy khi đã dán lên sản phẩm thì không thể bóc ra.', '', '', '295708245156_25.jpg', 0, 0, '<p><span style=\"color:#FF0000\"><strong>Tem bảo hành</strong></span> : &nbsp;là loại tem chỉ sử dụng được duy nhất &nbsp;một lần để ghi ngày tháng năm bảo hành cho sản phẩm.</p>\r\n\r\n<p>Tem bảo hành&nbsp; được in trên chất liệu giấy giòn tan dễ vỡ, vì vậy khi đã dán lên sản phẩm thì không thể bóc ra.</p>\r\n\r\n<p>Giấy in tem bảo hành thì có rất nhiều loại, nhưng phổ biến nhất là decal vỡ. Loại giấy này đáp &nbsp;ứng hầu hết các tiêu chí mà việc in tem bảo hành đề ra.&nbsp;</p>\r\n', '', '', '', '', '', 1557981752, 1, 0, 0, 'In tem vỡ, tem bảo hành...', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 9, 0),
(747, 507, '0', 'du-an-noi-bat-03', '', '', 'Tm 24', 'Dự án nổi bật 03', '', '', '  Nhận sản xuất và cung cấp các vật phẩm quảng cáo.', '', '', '199866246596_duan.png', 0, 0, '<p><img alt=\"\" src=\"http://in24.vn/img_data/images/109(2).jpg\" style=\"height:522px; width:806px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://in24.vn/img_data/images/111.jpg\" style=\"height:390px; width:804px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://in24.vn/img_data/images/112(2).jpg\" style=\"height:531px; width:792px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://in24.vn/img_data/images/113(1).jpg\" style=\"height:391px; width:803px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 1558342585, 1, 0, 0, 'Dự án nổi bật 03', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 24, 0),
(748, 507, '0', 'du-an-noi-bat-02', '', '', 'TM023', 'Dự án nổi bật 02', '', '', 'Chuyên in PP trong nhà và treo ngoài trời chất lượng cao.', '', '', '249210913247_duan.png', 0, 0, '<p>&nbsp; &nbsp;<span style=\"color:#008080\"><span style=\"font-size:14px\"><strong> &nbsp; &nbsp;Quy cách và công dụng của in PP :</strong></span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"color:rgb(255, 0, 0)\"><strong>In PP</strong></span>&nbsp;dạng cán màng bóng có keo: Dùng dán tường, poster quảng cáo, decal dán vật phẩm quảng cáo..</li>\r\n	<li><span style=\"color:rgb(255, 0, 0)\"><strong>In PP</strong></span>&nbsp;dạng cán màng mờ có keo: Thường thì màng mờ màu không tươi bằng màng bóng nhưng không phản ánh đèn nên có thể được sử dụng nhiều trong trang trí nội thất.</li>\r\n	<li><span style=\"color:rgb(255, 0, 0)\"><strong>IN PP</strong></span>&nbsp;dạng không keo có thể sử dụng làm standee, khung tranh...</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"http://in24.vn/img_data/images/107.jpg\" style=\"height:507px; width:803px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://in24.vn/img_data/images/108.jpg\" style=\"height:449px; width:804px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; Chúng tôi nhận in cho các xưởng quảng cáo dịch vụ và các Công ty tổ chức sự kiện với giá thành và thời gian nhanh.</p>\r\n', '', '', '', '', '', 1558342611, 1, 0, 0, 'Dự án nổi bật 02', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 23, 0),
(733, 251, '0', 'menu-nha-hang-quan-an-', '', '', 'TM 008', 'MENU nhà hàng, quán ăn...', '', '', 'Chúng tôi sẽ giúp bạn thực hiện các menu: \r\n\r\n- Menu cán màng, đóng gáy lò xo hay gáy bọc Simili mới lạ.\r\n\r\n- Menu in bằng giấy nhựa (xé không rách).\r\n\r\n- Menu bìa Simili, Menu bìa gỗ khắc laser....\r\n\r\n* Đặt biệt: Menu nhựa độ dày lên đến 0,6mm', '', '', '579548059792_26.jpg', 0, 0, '<p><span style=\"font-size:14px\"><strong>&nbsp; &nbsp; &nbsp; &nbsp; QUY CÁCH:</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">&nbsp; &nbsp; &nbsp; &nbsp; - Khổ thành phẩm: 21 x 29.7cm (đứng) hoặc 21 x 29cm (ngang).</span></p>\r\n\r\n<p><span style=\"font-size:14px\">&nbsp; &nbsp; &nbsp; &nbsp; - In 4 màu 2 mặt giấy Couche, Bristol 300gms, cán màng 2 mặt đóng lò xo gáy hay bìa simili lồng bóng kiếng.</span></p>\r\n\r\n<p><img alt=\"\" src=\"http://in24.vn/img_data/images/84(1).jpg\" style=\"height:507px; width:813px\" /></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;Ghi chú: Với số lượng lớn hơn hoặc với quy cách khác vui lòng liên hệ để có giá tốt nhất.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 1557990648, 1, 0, 0, 'MENU nhà hàng, quán ăn...', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 18, 0),
(734, 251, '0', 'in-the-treo-nhan-quan-ao-', '', '', 'TM 009', 'In Thẻ Treo, Nhãn quần áo... ', '', '', 'In thẻ treo áo quần hay nhãn mác được sử dụng để treo, gài vào các sản phẩm hàng hóa. Chất lượng, hình thức, mẫu mã của thẻ treo cũng thể hiện được rất nhiều thông điệp mà nhà sản xuất, nhà kinh doanh muốn gửi tới quý khách hàng của mình, một thương hiệu mới mà bạn muốn quảng bá cho khách hàng biết đến thương hiệu của mình.', '', '', '168203449637_31.jpg', 0, 0, '<p style=\"text-align:justify\"><strong><span style=\"font-size:14px\">&nbsp; &nbsp; &nbsp; &nbsp;- In trên giấy Couche, Kraft, giấy mỹ thuật...<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;- Số mặt in: 1 mặt, 2 mặt<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;- Kích thước: theo yêu cầu<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;- Thời gian in: 2h - 3 ngày (Tùy số lượng)<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;- Bế khoan lổ, xỏ dây...&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;- Gia công theo yêu cầu</span></strong></p>\r\n\r\n<p style=\"text-align:justify\"><strong><span style=\"font-size:14px\">&nbsp; &nbsp; </span></strong></p>\r\n\r\n<p style=\"text-align:justify\"><strong><span style=\"font-size:14px\">&nbsp; &nbsp; &nbsp;&nbsp;<span style=\"font-size:16px\"><span style=\"color:#008080\"> BẢNG GIÁ THAM KHẢO</span></span></span></strong></p>\r\n\r\n<p style=\"text-align:justify\"><strong><span style=\"font-size:14px\"><span style=\"color:#008080\">&nbsp; &nbsp; </span></span></strong><span style=\"font-size:14px\"><span style=\"color:#008080\">&nbsp; &nbsp; </span>Quy cách: In trên giấy Couche, Bristol, For dịnh lượng 250gms, khoan lổ.</span></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"http://in24.vn/img_data/images/83.jpg\" style=\"height:347px; width:812px\" /></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">&nbsp; &nbsp; &nbsp; &nbsp; Ghi chú: Giá trên là giá có khoan lổ và không xỏ dây, nếu quý khách có xỏ dây hoặc đóng mắt ngổng vui lòng liên hệ để có giá tốt nhất.</span></p>\r\n', '', '', '', '', '', 1557990658, 1, 0, 0, 'In Thẻ Treo, Nhãn quần áo... ', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 17, 0),
(735, 251, '0', 'giay-khen-chung-chi-chung-nhan-', '', '', 'TM 010', 'Giấy khen, chứng chỉ, chứng nhận...', '', '', 'Bạn cần in 1 hay nhiều tờ giấy chứng nhận, giấy khen cho trường, doanh nghiệp của mình có in tên từng học sinh hay nhân viên của mình mà không biết phải tìm nơi nào in, chúng tôi sẵn sàng đáp ứng nhu cầu của bạn.\r\n', '', '', '838969136371_33.jpg', 0, 0, '<p style=\"text-align:center\"><strong><span style=\"color:#008080\">BẢNG GIÁ IN GIẤY KHEN, GIẤY CHỨNG NHẬN</span></strong></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p><span style=\"color:#008080\">&nbsp; &nbsp; &nbsp;Quy cách in: Giấy for 200 - 250gms hay giấy Couche 200 - 250gms.</span></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;In 4 màu 1 mặt.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Kích thước: 14.8cm x 21cm</p>\r\n\r\n<p><img alt=\"\" src=\"http://in24.vn/img_data/images/69(1).jpg\" style=\"height:453px; width:812px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kích thước: 21 x 29.7cm</p>\r\n\r\n<p><img alt=\"\" src=\"http://in24.vn/img_data/images/70(1).jpg\" style=\"height:453px; width:812px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kích thước: 26 x 36cm hoặc 27 x 39cm&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://in24.vn/img_data/images/71.jpg\" style=\"height:453px; width:812px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kích thước: 30 x 42cm</p>\r\n\r\n<p><img alt=\"\" src=\"http://in24.vn/img_data/images/72.jpg\" style=\"height:453px; width:812px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ghi chú: Số lượng nhiều vui lòng liên hệ để có giá tốt nhất.</p>\r\n', '', '', '', '', '', 1557990667, 1, 0, 0, 'Giấy khen, chứng chỉ, chứng nhận...', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 12, 0),
(736, 251, '0', 'lich-de-ban-lich-tet', '', '', 'TM 010', 'Lịch để bàn, Lịch tết', '', '', '- Bạn cần vài quyển lịch cho gia đình, người thân, khóa học.  Bạn cần ít quyển cho các đối tác quan trọng với chất liệu và thiết kế riêng. Bạn cần Lịch ảnh kỷ niệm cho chuyến đi chơi với bạn bè hay muốn lưu lại những khoảnh khắc cưới, yêu nhau....', '', '', '283592302440_35.jpg', 0, 0, '<p style=\"text-align:center\"><span style=\"color:#008080\"><strong><span style=\"font-size:16px\">BÁO GIÁ IN LỊCH TREO TƯỜNG</span></strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">&nbsp; &nbsp; &nbsp; &nbsp;Quy cách: In 4 màu 1 mât, 7 tờ 2 mặt.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">&nbsp; &nbsp; &nbsp; &nbsp;Kích thước: 30 x 30cm, đóng lò xo giữa, khoen treo.</span></p>\r\n\r\n<p><img alt=\"\" src=\"http://in24.vn/img_data/images/79.jpg\" style=\"height:330px; width:812px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\">&nbsp; &nbsp; &nbsp; &nbsp; Quy cách: In 4 màu 1 mât.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">&nbsp; &nbsp; &nbsp; &nbsp; Kích thước: 31 x 46cm, đóng lò xo giữa, khoen treo.</span></p>\r\n\r\n<p><img alt=\"\" src=\"http://in24.vn/img_data/images/74(1).jpg\" style=\"height:330px; width:812px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#008080\"><strong><span style=\"font-size:16px\">BÁO GIÁ IN LỊCH ĐỂ BÀN CHỮ A</span></strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; Quy cách: 13 tờ khổ 15 x 20cm</p>\r\n\r\n<p>&nbsp; &nbsp; Đóng lò xo gáy, hộp đựng có sẵn.</p>\r\n\r\n<p><img alt=\"\" src=\"http://in24.vn/img_data/images/77(1).jpg\" style=\"height:726px; width:793px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ghi chú:</p>\r\n\r\n<p>&nbsp; &nbsp; - Đây là thời gian sản xuất (trừ ngày chủ nhật) và không tính thời gian thiết kế.&nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; - Quý khách có nhu cầu in số lượng khác vui lòng liên hệ để có giá chính xác.</p>\r\n', '', '', '', '', '', 1557990681, 1, 0, 0, 'Lịch để bàn, Lịch tết', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 13, 0),
(737, 251, '0', 'thiep-cuoi-thiep-bao-hy-', '', '', 'TM 012', 'Thiệp cưới, Thiệp báo hỷ...', '', '', '- Chất liệu giấy: Giấy Couche, giấy kraft, giấy mỹ thuật... Mẫu mã đa dạng. Thiết kế độc quyền dành cho bạn.', '', '', '556626631871_123.jpg', 0, 0, '<p>&nbsp; &nbsp; Quy cách:&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; 1.&nbsp; Thiệp loại 1 chữ nhật: Kích thước 12 x 19cm (Bao thư 13 x 20cm) hoặc 13 x 18cm (Bao thư 14 x 19cm)</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;In 2 màu 2 tờ gồm thiệp mời + thiệp báo, bao đựng cùng chủng loại chưa buộc dây hoặc nơ.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; 2. Thiệp loại 2 vuổng: Kích thước 14 x 14cm (Bao thư 14.5 x 14.5cm)&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;In 2 màu 2 tờ gồm thiệp mời + thiệp báo, bao đựng cùng chủng loại&nbsp;chưa buộc dây hoặc nơ.</p>\r\n\r\n<p><img alt=\"\" src=\"http://in24.vn/img_data/images/78.jpg\" style=\"height:330px; width:812px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://in24.vn/img_data/images/80(3).jpg\" style=\"height:551px; width:773px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://in24.vn/img_data/images/81(2).jpg\" style=\"height:645px; width:768px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; Còn rất nhiều mẫu mã đẹp hoặc sẽ thiết kế riêng dành cho bạn !!!</p>\r\n', '', '', '', '', '', 1557990690, 1, 0, 0, 'Thiệp cưới, Thiệp báo hỷ...', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 14, 0),
(738, 251, '0', 've-giu-xe', '', '', 'TM 013', 'Vé giữ xe', '', '', 'Chúng tôi chuyên in ấn các loại vé như : in vé giữ xe, vé cho các nhà xe , vé xem phim...', '', '', '013440567740_40.jpg', 0, 0, '<div class=\"marquee-heading\" style=\"box-sizing: border-box; color: rgb(40, 62, 73); font-family: font1; font-size: 14px; outline: none; margin: 0px; padding: 0px;\"><span style=\"font-size:14px\"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Qui cách sản phẩm:</strong></span></div>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\">Qui cách:&nbsp;In 1 mặt 1 màu, cắt , cấn răng cưa, đóng cuốn.</span></li>\r\n	<li><span style=\"font-size:14px\">Chất liệu:&nbsp;&nbsp;Giấy Ford 60gsm, 100 tờ/cuốn.</span></li>\r\n	<li><span style=\"font-size:14px\"><span style=\"color:rgb(255, 0, 0)\"><strong>Có thể in số nhảy hoặc barcode thay đổi theo seri, chuỗi ký tự ngẫu nhiên trên mỗi vé để chống giả.</strong></span></span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:14px\"><strong><img alt=\"\" src=\"http://in24.vn/img_data/images/82.jpg\" style=\"height:347px; width:812px\" /></strong></span></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;<span style=\"font-size:14px\"> &nbsp;Ghi chú: Nếu có chạy số nhảy vui lòng cộng 500đ/cuốn. Chạy barcode cộng 800đ/cuốn.</span></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n', '', '', '', '', '', 1557990705, 1, 0, 0, 'Vé giữ xe', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 15, 0),
(739, 251, '0', 'the-cao-trung-thuong', '', '', 'TM 014', 'Thẻ cào trúng thưởng', '', '', 'Bạn cần thẻ cào cho chương trình khuyến mãi của doanh nghiệp hoặc mã số dự thưởng cần có sự bảo mật cao, hãy liên hệ ngay với chúng tôi để được tư vấn và báo giá chi tiết.', '', '', '691812111375_88.jpg', 0, 0, '<h2><span style=\"font-size:16px\"><strong><span style=\"color:#008080\">&nbsp; &nbsp; &nbsp; Quy cách thẻ cào:</span></strong></span></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Kích thước: 5 x 9cm hoặc 5.5 x 10cm</span></p>\r\n\r\n<p><span style=\"font-size:14px\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - In 4 màu 2 mặt, cán màng bóng, in phủ nhũ lên phần thông tin cần bảo mật.</span></p>\r\n', '', '', '', '', '', 1557997154, 1, 0, 0, 'Thẻ cào trúng thưởng', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 19, 0),
(740, 251, '0', 'bao-bi-hop-giay', '', '', 'TM 015', 'Bao Bì Hộp Giấy', '', '', 'Bao bì dược,  mỹ phẩm, bánh kẹo, thuốc bảo vệ thực vật, Hộp quà tăng....', '', '', '625046615734_45.jpg', 0, 0, '<p>* Chất liệu giấy: Coucher, Ivory, Duplex, Bristol 250gsm - 400gsm, giấy mỹ thuật...</p>\r\n\r\n<p>*&nbsp;Gia công sau in:&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp;- Cán màng bóng, mờ, Metallzed...</p>\r\n\r\n<p>&nbsp; &nbsp;- Ép kim, dập chìm , nổi, tạo gân...</p>\r\n\r\n<p>&nbsp; &nbsp;- Phủ UV gốc nước, UV gốc dầu, UV định hình...</p>\r\n\r\n<p>&nbsp; &nbsp;- Bế, dán cửa sổ, thành phẩm.</p>\r\n\r\n<p><img alt=\"\" src=\"http://in24.vn/img_data/images/67(1).jpg\" style=\"height:255px; width:805px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://in24.vn/img_data/images/66.jpg\" style=\"height:532px; width:803px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://in24.vn/img_data/images/64(1).jpg\" style=\"height:459px; width:803px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://in24.vn/img_data/images/68.jpg\" style=\"height:561px; width:803px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ghi chú: Để yêu cầu báo giá vui lòng cung cấp kích thước chiều ngang, chiều rộng, chiều cao, quy cách của hộp .</p>\r\n', '', '', '', '', '', 1557997172, 1, 0, 0, 'Bao Bì Hộp Giấy', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 11, 0),
(741, 251, '0', 'tui-giay-', '', '', 'TM 016', 'Túi giấy ', '', '', 'Túi giấy thời trang, túi đựng sản phẩm, túi quảng cáo... Đặc biệt túi giấy Kraft thân thiện với môi trường.', '', '', '114562159381_51.jpg', 0, 0, '<div style=\"box-sizing: border-box; font-family: RobotoCondensed, Arial; font-size: 16px;\"><span style=\"color:#008080\"><span style=\"font-size:14px\"><strong>&nbsp; &nbsp; &nbsp;TÚI GIẤY TRUYỀN TẢI THÔNG ĐIỆP MARKETING CỰC KỲ HIỆU QUẢ VÀ NÂNG CAO GIÁ TRỊ SẢN PHẨM, GIÚP BẠN QUẢNG BÁ THƯƠNG HIỆU VÀ THỂ HIỆN SỰ CHUYÊN NGHIỆP.</strong></span></span></div>\r\n\r\n<div style=\"box-sizing: border-box; font-family: RobotoCondensed, Arial; font-size: 16px;\">&nbsp;</div>\r\n\r\n<div style=\"box-sizing: border-box; font-family: RobotoCondensed, Arial; font-size: 16px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt=\"\" src=\"http://intoanquoc.net/img_data/images/tui%2010.jpg\" style=\"border:0px; box-sizing:border-box; height:259px; max-width:100%; vertical-align:middle; width:397px\" /></div>\r\n\r\n<div style=\"box-sizing: border-box; font-family: RobotoCondensed, Arial; font-size: 16px;\">&nbsp;</div>\r\n\r\n<div style=\"box-sizing: border-box; font-family: RobotoCondensed, Arial; font-size: 16px; text-align: center;\"><span style=\"font-size:14px\"><em>Túi giấy giúp bạn quảng bá thương hiệu và thể hiện sự chuyên nghiệp</em></span></div>\r\n\r\n<div style=\"box-sizing: border-box; font-family: RobotoCondensed, Arial; font-size: 16px;\">&nbsp;</div>\r\n\r\n<div style=\"box-sizing: border-box; font-family: RobotoCondensed, Arial; font-size: 16px; text-align: justify;\"><span style=\"font-size:14px\">&nbsp; &nbsp; &nbsp;Việc đựng sản phẩm trong túi giấy hoặc túi ni-lông không nhãn mác không chỉ làm giảm giá trị của sản phẩm mà còn giảm uy tín của thương hiệu. Vì vậy, rất nhiều công ty cũng như các shop bán hàng đã chuyển sang in túi giấy riêng mang thương hiệu đặc trưng của mình. Việc sử dụng túi giấy riêng không chỉ mang lại thẩm mỹ, giá trị cho sản phẩm mà còn quảng cáo cho thương hiệu của bạn. Khách hàng sau khi mua sản phẩm, sẽ tái sử dụng túi giấy cho những việc khác như đựng sách vở, hàng hóa, đựng quà tặng,… và qua đó sẽ quảng bá thương hiệu của bạn cho những người xung quanh&nbsp;khẳng định uy tín và chất lượng dịch vụ của bạn. Khách hàng sẽ đánh giá cao sự nghiêm túc trong kinh doanh cũng như chu đáo trong chăm sóc khách hàng.&nbsp;</span></div>\r\n\r\n<div style=\"box-sizing: border-box; font-family: RobotoCondensed, Arial; text-align: justify;\"><span style=\"font-size:14px\">Đặc biệt túi giấy làm bằng nguyên liệu giấy raft rất thân thiện với môi trường được các khách hàng nước ngoài cực kỳ tin dùng.</span></div>\r\n\r\n<div style=\"box-sizing: border-box; font-family: RobotoCondensed, Arial; font-size: 16px;\"><span style=\"font-size:14px\">..........................................................................................................................</span></div>\r\n\r\n<div style=\"box-sizing: border-box; font-family: RobotoCondensed, Arial;\"><span style=\"font-size:14px\">Chất liệu in túi giấy : Giấy Couche, Bristol, Giấy raft, giấy mỹ thuật...</span></div>\r\n\r\n<div style=\"box-sizing: border-box; font-family: RobotoCondensed, Arial;\"><span style=\"font-size:14px\">Quy cách: in 1 - 4 màu tùy nhu cầu</span></div>\r\n\r\n<div style=\"box-sizing: border-box; font-family: RobotoCondensed, Arial;\"><span style=\"font-size:14px\">Kích thước: Theo yêu cầu</span></div>\r\n\r\n<div style=\"box-sizing: border-box; font-family: RobotoCondensed, Arial;\"><span style=\"font-size:14px\">Gia công: cán màng, đóng mắt ngổmg, xỏ dây...</span></div>\r\n\r\n<div style=\"box-sizing: border-box; font-family: RobotoCondensed, Arial;\">&nbsp;</div>\r\n\r\n<div style=\"box-sizing: border-box; font-family: RobotoCondensed, Arial;\">&nbsp;</div>\r\n\r\n<div style=\"box-sizing: border-box; font-family: RobotoCondensed, Arial;\"><span style=\"font-size:14px\"><span style=\"color:#008080\"><strong>Muốn biết giá sản phẩn vui lòng cung cấp: Chiều ngang, chiều cao, hông và chất liệu của túi cần làm chúng tôi sẽ có giá tốt nhất cho bạn.</strong></span></span></div>\r\n\r\n<div style=\"box-sizing: border-box; font-family: RobotoCondensed, Arial;\">&nbsp;</div>\r\n\r\n<div style=\"box-sizing: border-box; font-family: RobotoCondensed, Arial; font-size: 16px;\">&nbsp;</div>\r\n\r\n<div style=\"box-sizing: border-box; font-family: RobotoCondensed, Arial; font-size: 16px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>\r\n', '', '', '', '', '', 1557997187, 1, 0, 0, 'Túi giấy ', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 10, 0),
(742, 251, '0', 'in-ho-so-bao-cao-ho-so-du-thau', '', '', 'TM 021', 'In hồ sơ báo cáo, Hồ sơ dự thầu', '', '', 'Bạn cần in 1 cuốn báo cáo hay 1 bộ hồ sơ thầu với tính chuyên nghiệp và tạo ấn tượng tốt với đối tác, hãy để chúng tôi giúp bạn.', '', '', '097411664546_76.jpg', 0, 0, '', '', '', '', '', '', 1557997198, 1, 0, 0, 'In hồ sơ báo cáo, Hồ sơ dự thầu', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 16, 0),
(743, 251, '0', 'bang-gia-in-nhanh-gia-cong', '', '', 'TM 020', 'Bảng giá in nhanh gia công', '', '', 'Được in trên máy thế hệ mới nhất của hãng Ricoh và Konica Minolta  Nhật Bản.', '', '', '087732936235_52.jpg', 0, 0, '<p style=\"text-align:justify\"><span style=\"color:rgb(73, 73, 73); font-family:tahoma,geneva,sans-serif; font-size:16px\">In nhanh (kỹ thuật số) là công nghệ in mới có thể đáp ứng được yêu cầu in số lượng ít và cần gấp. Chất lượng in đẹp tương tự in offset và có thể in trên nhiều loại giấy khác nhau. Hiện tại in24.vn đang sở hữu hệ thống máy in công nghiệp hiện đại nhất của hãng Ricoh và Konica Minolta Nhật Bản, kết hợp với xưởng thành phẩm có đầy đủ các máy móc thiết bị phục vụ cho việc đóng cuốn, hoàn thiện sản phẩm in, đảm bảo in và giao hành nhanh chóng, chất lượng tốt nhất cho khách hàng.</span></p>\r\n', '', '', '', '', '', 1557997234, 0, 0, 0, 'Bảng giá in nhanh gia công', '', '', '', '', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', 0, 20, 0),
(749, 507, '0', 'du-an-noi-bat-01', '', '', 'GBWW', 'Dự án nổi bật 01', '', '', 'mô tả', '', '', '266201808525_duan.png', 0, 0, '', '', '', '', '', '', 1558419878, 1, 0, 0, 'Dự án nổi bật 01', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 21, 0),
(744, 502, '0', 'thi-cong-bang-hieu', '', '', 'GP38', 'Thi công bảng hiệu', '', '', 'Chúng tôi nhận thiết kế và thi công hoàn thiện bảng hiệu cho các cửa hàng, công ty... ', '', '', '783478217515_115.jpg', 0, 0, '<p>Quy cách: Bảng hiệu Hiflex, hộp đèn, bảng quảng cáo Alu...</p>\r\n\r\n<p><img alt=\"\" src=\"http://in24.vn/img_data/images/116(2).jpg\" style=\"height:1041px; width:804px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://in24.vn/img_data/images/118(3).jpg\" style=\"height:470px; width:804px\" /></p>\r\n', '', '', '', '', '', 1558064344, 1, 0, 0, 'Thi công bảng hiệu', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 22, 0),
(746, 507, '0', 'du-an-noi-bat-04', '', '', 'TM 022', 'Dự án nổi bật 04', '', '', 'Bạn cần 1 tấm băng rôn để treo nhân tiệc sinh nhật, thôi nôi, tiệc mừng tân gia... hay cần số lượng nhiều để quảng bá sản phẩm chúng tôi sẵn sàng đáp ứng nhu cầu của bạn.', '', '', '804923126255_duan.png', 0, 0, '<p><span style=\"color:#008080\"><span style=\"font-family:open sans,sans-serif; font-size:16px\"><strong>in24.vn</strong></span></span><span style=\"color:rgb(34, 34, 34); font-family:open sans,sans-serif; font-size:16px\"> thực hiện in nhanh hiflex, in giá rẻ hiflex với hệ thống nhiều máy in mực dầu, đầu phun hiện đại, tốc độ in ấn vượt trội, giúp bạn có hàng in nhanh từ 1 – 2 ngày.</span><span style=\"color:rgb(34, 34, 34); font-family:open sans,sans-serif; font-size:16px\">&nbsp;Ngoài ra, </span><span style=\"font-family:open sans,sans-serif; font-size:16px\"><span style=\"color:#008080\"><strong>in24.vn</strong></span><strong>&nbsp;</strong></span><span style=\"font-family:open sans,sans-serif; font-size:16px\">không chỉ dừng lại ở tốc độ in hiflex nhanh, in hiflex sắc nét mà <span style=\"color:#008080\"><strong>in24.vn</strong></span><strong>&nbsp;</strong>&nbsp;còn đảm bảo mang đến bạn sản phẩm in hiflex chất lượng với giá thành tốt nhất.</span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>Quy cách:</strong> In 4 màu trên bạt 3 -&nbsp; zem, đóng khoen 4 góc để treo hoặc dén mép 2 đầu cho khách hàng xỏ cây.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;In chất lượng cao: +10.000đ/m2</span></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style=\"font-size:16px\">&nbsp; &nbsp; &nbsp; &nbsp; Thiết kế miễn phí .</span></p>\r\n\r\n<p><img alt=\"\" src=\"http://in24.vn/img_data/images/104.jpg\" style=\"height:348px; width:805px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://in24.vn/img_data/images/105.jpg\" style=\"height:555px; width:803px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://in24.vn/img_data/images/125.jpg\" style=\"height:256px; width:813px\" /></p>\r\n\r\n<p><span style=\"font-size:14px\">&nbsp;<span style=\"font-size:16px\"> &nbsp; &nbsp; &nbsp;Ngoài ra chúng tôi còn nhận in cho các công ty quảng cáo và thi công bảng hiệu với giá thành hợp lý nhật. Vui lòng liên hệ để có giá chính xác.</span></span></p>\r\n', '', '', '', '', '', 1558251109, 1, 0, 0, 'Dự án nổi bật 04', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 22, 0),
(720, 251, '0', 'in-bao-thu', '', '', 'TM 002', 'In bao thư', '', '', 'In trên giấy Couche, giấy for, giấy mỹ thuật...\r\nSố mặt in: 1 mặt, 2 mặt\r\nKích thước: theo yêu cầu\r\nThời gian in: 2h - 3 ngày (Tùy số lượng)\r\nBế dán theo khuôn.', '', '', '394213097192_10.jpg', 0, 0, '<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"color:#FF0000\"><strong>BẢNG GIÁ BAO THƯ 12 X 22CM</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Quy cách: In 4 màu, giấy for 80gms.&nbsp;</span></p>\r\n\r\n<p><img alt=\"\" src=\"http://in24.vn/img_data/images/54(7).jpg\" style=\"height:325px; width:812px\" /></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"color:#FF0000\"><strong>BẢNG GIÁ BAO THƯ 16 X 23CM</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\">In 4 màu, giấy for 80, bế dán thành phẩm.</span></p>\r\n\r\n<p><img alt=\"\" src=\"http://in24.vn/img_data/images/55(1).jpg\" style=\"height:324px; width:812px\" /></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"color:#FF0000\"><strong>BẢNG GIÁ BAO THƯ 24 X 34CM</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Quy cách: In 4 màu giấy for 120gms, bế dán thành phẩm.</span></p>\r\n\r\n<p><img alt=\"\" src=\"http://in24.vn/img_data/images/56(1).jpg\" style=\"height:297px; width:812px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\">Ghi chú: Với những loại giấy khác vui lòng liên hệ để có giá chính xác.</span></p>\r\n', '', '', '', '', '', 1557113582, 1, 0, 0, 'In bao thư', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 3, 0),
(726, 251, '0', 'bia-dung-ho-so-fonder', '', '', 'TM 003', 'Bìa đựng hồ sơ, Fonder', '', '', 'Dùng để đựng hồ sơ trình ký, bảng báo giá, thư mời và thông tin....\r\nChuyên nghiệp và tạo sắc thái riêng cho Doanh nghiệp.', '', '', '445356692423_14.jpg', 0, 0, '<p style=\"text-align:center\"><span style=\"color:#008080\"><span style=\"font-size:16px\"><strong>BÁO GIÁ IN FOLDER SỐ LƯỢNG ÍT</strong></span></span></p>\r\n\r\n<ul style=\"list-style-type:disc\">\r\n	<li><span style=\"font-size:14px\"><strong>In </strong>trên giấy Couche, Bristol 300gms</span></li>\r\n	<li><span style=\"font-size:14px\"><strong>Kích thước:</strong> 22 x 32cm tay dán&nbsp;6cm (hoặc theo kích thước yêu cầu).</span></li>\r\n	<li><span style=\"font-size:14px\"><strong>Số mặt:</strong> 1 mặt, 2 mặt, cán&nbsp;màng bóng hoặc mờ</span></li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"http://in24.vn/img_data/images/61(1).jpg\" style=\"height:266px; width:813px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\">Ghi chú: Đối với giấy mỹ thuật hoặc Folder bế theo các dạng khuôn theo yêu cầu Quý khách liên lạc để có giá tốt nhất.</span></p>\r\n', '', '', '', '', '', 1557975846, 1, 0, 0, 'Bìa đựng hồ sơ, Fonder', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 5, 0),
(727, 251, '0', 'nhan-decal', '', '', 'TM 005', 'Nhãn Decal', '', '', 'In trên chất liệu: Decal giấy; Decal giấy Kraft; Decal nhựa trắng đục; Decal  nhựa trong; Decal Si bạc...In nọi số lượng.\r\n', '', '', '676738804179_15.jpg', 0, 0, '<p style=\"text-align:justify\"><span style=\"color:#008080\"><strong>&nbsp;<span style=\"font-size:16px\">In nhãn trên Decal giấy</span></strong></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp;-&nbsp; Nhãn in màu trên chất liệu giấy decal có sẵn keo dán.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp;-&nbsp; In theo mẫu, theo file thiết kế</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp;-&nbsp; Kích thước tùy vào khách hàng,</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp;-&nbsp; Có thể cán màng hoặc không cán màng (có 2 loại màng bóng hoặc màng mờ)</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp;-&nbsp; In xong có thể cắt thành phẩm hay bế demi, cắt demi (Cắt demi dễ lột hơn)</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<h1 style=\"text-align:justify\"><span style=\"color:#008080\"><span style=\"font-size:16px\"><strong>In nhãn trên Decal giấy Kraft</strong></span></span></h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1 style=\"text-align:justify\"><span style=\"font-size:14px\">Tem decal giấy Kraft : (hay còn gọi là decal da bò)&nbsp;là chất liệu decal có bề mặt màu nâu nhạt, có độ sần nhẹ, có lớp keo phủ để làm nhãn dán sản phẩm.</span></h1>\r\n\r\n<p style=\"text-align:justify\"><strong>Đặc tính :</strong></p>\r\n\r\n<ul>\r\n	<li>Độ bám dính cao , bền , dẻo dai</li>\r\n	<li>Thân thiện với môi trường</li>\r\n	<li>Mang đậm nét tinh tế&nbsp; , cổ điển&nbsp; và sang trọng</li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><strong>&nbsp;Ứng dụng :</strong></p>\r\n\r\n<ul>\r\n	<li>làm nhãn dán túi giấy. Giúp giảm giá thành làm túi giấy</li>\r\n	<li>Làm nhãn dán trên chai , lọ thủy tinh</li>\r\n	<li>Làm nhãn dán trên hộp mỹ phẩm , hộp thực phẩm .....</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#008080\"><strong><span style=\"font-family:arial\">In nhãn trên Decal nhựa trắng đục</span></strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:rgb(73, 73, 73); font-family:arial\">Nhãn decal nhựa đục có đặc tính :</span></p>\r\n\r\n<div class=\"padding0 content-boder col-lg-6 col-md-6 col-xsm-12 col-xs-12\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding: 0px; float: left; width: 600px; font-size: 14px; text-align: justify; color: rgb(73, 73, 73); font-family: Arial;\">\r\n<ul>\r\n	<li>Độ bám dính cao , bền, dẻo, chịu đựng trong môi trường ẩm ướt</li>\r\n	<li>Màu sắc , hình ảnh của nhãn decal nhựa mờ sẽ không bị phai mờ khi gặp nước.</li>\r\n	<li>Gia công cán màng băng keo bóng hoặc mờ</li>\r\n</ul>\r\n\r\n<p>Ứng dụng :Nhãn decal nhựa đục thường được dùng :</p>\r\n\r\n<ul>\r\n	<li>Làm nhãn dán cho sản phẩm đông lạnh,</li>\r\n	<li>Những sản phẩm có tiếp xúc với nước,</li>\r\n	<li>Những sản phẩm có bề mặt gồ ghề.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"padding0 content-boder col-lg-6 col-md-6 col-xsm-12 col-xs-12\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding: 0px; float: left; width: 600px;\">\r\n<h1><span style=\"color:#008080\"><span style=\"font-size:16px\"><strong>In nhãn trên decal nhựa trong</strong></span></span></h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Decal nhựa trong :<strong> là</strong>&nbsp;<strong>chất liệu decal có lớp màng ni long trong suốt có độ bền và độ thẩm mỹ cao</strong></p>\r\n\r\n<p><strong>Đặc tính :</strong></p>\r\n\r\n<ul>\r\n	<li>Độ bám dính cao , bền , dẻo , chịu đựng trong môi trường ẩm ướt</li>\r\n	<li>Có độ thẩm mỹ cao</li>\r\n	<li>Gia công cán màng băng keo bóng hoặc mờ</li>\r\n</ul>\r\n\r\n<p>Ứng dụng :&nbsp;</p>\r\n\r\n<p>Decal nhựa trong này phổ biến được sử dụng để làm nhãn dán lên sản phẩm :</p>\r\n\r\n<ul>\r\n	<li>Decal dán xe, dán kính, dán bình đựng nước,</li>\r\n	<li>Logo dán nón bảo hiểm, logo dán máy ATM,</li>\r\n	<li>Nhãn dán mỹ phẩm ...</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1><span style=\"color:#008080\"><span style=\"font-size:16px\"><strong>In nhãn trên decal xi bạc</strong></span></span></h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tem decal xi bạc mờ : là chất liệu decal mà trên bề mặt được si một lớp mỏng kim loại với màu bạc cố định</p>\r\n\r\n<p>Đặc tính :</p>\r\n\r\n<ul>\r\n	<li>Độ bền cao, rất khó có thể xé rách bằng tay và ít khi bị trầy xước.</li>\r\n	<li>Không thấm nước, chịu nhiệt tốt, vì bên ngoài phủ lớp kim loại mạnh nên cũng có thể tránh được hóa chất, hay quá trình oxy hóa</li>\r\n	<li>Gia công cán màng băng keo bóng hoặc mờ</li>\r\n</ul>\r\n\r\n<p>Ứng dụng :</p>\r\n\r\n<p>Tem xi bạc được ứng dụng rộng rãi để niêm phong, bảo hành các sản phẩm cao cấp, đặc biệt trong các sản phẩm&nbsp;mang tính chất kỹ thuật như điện tử, điện lạnh, máy móc cơ khí…để chứng minh hàng chất lượng có nguồn gốc xuất xứ</p>\r\n</div>\r\n</div>\r\n', '', '', '', '', '', 1557976218, 1, 0, 0, 'Nhãn Decal', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 6, 0),
(728, 251, '0', 'in-catalogue-brochure-', '', '', 'TM 006', 'In Catalogue, Brochure...', '', '', 'Bạn cần in vài quyển catalog nhưng không nơi nào nhận in số lượng ít? Những nơi không chuyên thì in không đẹp hoặc đóng cuốn sơ sài?\r\n\r\nHãy liên hệ với công ty chúng tôi - in24.vn có thể nhận in chỉ từ 1 quyển, in và thành phẩm đóng cuốn đẹp như in offset.', '', '', '023590343910_20.jpg', 0, 0, '<div style=\"box-sizing: border-box; font-family: RobotoCondensed, Arial; font-size: 16px;\">\r\n<p><span style=\"color:#008080\"><span style=\"font-size:16px\"><strong>&nbsp; &nbsp; &nbsp; &nbsp; BẢNG GIÁ CATALOG KHỔ A4 ĐỨNG THAM KHẢO:</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:medium\">&nbsp; &nbsp; &nbsp; &nbsp;- Bìa in giấy C300gsm + Cán màng 1 mặt bìa</span></p>\r\n\r\n<p><span style=\"font-size:medium\">&nbsp; &nbsp; &nbsp; &nbsp;- Ruột in giấy C150gsm</span></p>\r\n\r\n<p><span style=\"font-size:medium\">&nbsp; &nbsp; &nbsp; &nbsp;- Đóng kim thành phẩm.&nbsp;</span></p>\r\n\r\n<p><img alt=\"\" src=\"http://in24.vn/img_data/images/63(2).jpg\" style=\"height:693px; width:813px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\">&nbsp; &nbsp; &nbsp; &nbsp; Ghi chú: Với số lượng nhiều hoặc quy cách khác vui lòng liên hệ để có giá tốt nhất.</span></p>\r\n</div>\r\n', '', '', '', '', '', 1557976235, 1, 0, 0, 'In Catalogue, Brochure...', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 7, 0),
(729, 251, '0', 'in-to-roi-to-gap', '', '', 'TM 007', 'In tờ rơi, tờ gấp', '', '', '• Kích thước : A5, A4, A3, hoặc theo yêu cầu\r\n• Chất liệu giấy : For, Couche, Briston…\r\n• Công nghệ in : In  4 màu 1 mặt, 2 mặt', '', '', '825630349440_23.jpg', 0, 0, '<div style=\"box-sizing: border-box; font-family: RobotoCondensed, Arial; text-align: center;\"><span style=\"color:#008080\"><span style=\"font-size:18px\"><strong>BẢNG GIÁ IN NHANH TỜ RƠI&nbsp;</strong></span></span></div>\r\n\r\n<div style=\"box-sizing: border-box; font-family: RobotoCondensed, Arial;\"><span style=\"font-size:14px\"><strong>&nbsp; &nbsp; &nbsp; </strong></span></div>\r\n\r\n<div style=\"box-sizing: border-box; font-family: RobotoCondensed, Arial;\"><span style=\"font-size:14px\"><strong>&nbsp; &nbsp; &nbsp; &nbsp;</strong>&nbsp;Quy cách: In 4 màu 1 mặt, giấy Couche 150gms,&nbsp;</span></div>\r\n\r\n<div style=\"box-sizing: border-box; font-family: RobotoCondensed, Arial;\"><span style=\"font-size:14px\">&nbsp; &nbsp; &nbsp; &nbsp; Cấn gấp 2, gấp 3 hoặc bế theo yêu cầu.</span></div>\r\n\r\n<div style=\"box-sizing: border-box; font-family: RobotoCondensed, Arial;\">&nbsp;</div>\r\n\r\n<p><img alt=\"\" src=\"http://in24.vn/img_data/images/62-1(1).jpg\" style=\"height:469px; width:813px\" /></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12px\">(In 2 mặt vui lòng cộng thêm 1/3 giá của sản phẩm)</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\">&nbsp; &nbsp; &nbsp; &nbsp; Ghi chú: In số lượng nhiều vui lòng liên hệ 0986.175.175 để có giá tốt nhất.</span></p>\r\n', '', '', '', '', '', 1557976336, 1, 0, 0, 'In tờ rơi, tờ gấp', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 8, 0),
(731, 251, '0', 'in-bieu-mau-phieu-thu-chi-phieu-xuat-kho-', '', '', 'TM 007', 'In biểu mẫu, phiếu thu chi, phiếu xuất kho...', '', '', 'BIỂU MẪU, PHIẾU THU CHI\r\n- Các sản phẩm thường in: Phiếu thu chi, phiếu xuất nhập kho, giấy giới thiệu, Bill, lệnh sản xuất, phiếu theo dõi hàng hóa .... Thành phẩm: đóng số nhảy, răng cưa, dán Block, đóng ghim theo yêu cầu...', '', '', '363566399787_24.jpg', 0, 0, '<p style=\"text-align:center\"><span style=\"color:#008080\"><span style=\"font-size:16px\"><strong>BẢNG GIÁ IN GIẤY FOR</strong></span></span></p>\r\n\r\n<p>&nbsp; &nbsp; Quy cách: Giấy For 60 - 70gms (không in màu nền) 100 tờ/cuốn</p>\r\n\r\n<p>&nbsp; &nbsp; Kích thước: 14 x 20cm, bế cấn răng cưa, đóng cuốn (đóng ghim hoặc dán keo gáy), bìa màu Thái Lan.</p>\r\n\r\n<p><img alt=\"\" src=\"http://in24.vn/img_data/images/58(2).jpg\" style=\"height:453px; width:812px\" /></p>\r\n\r\n<p>Ghi chú:</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Nếu đóng số nhảy vui lòng cộng thêm 1.500 đ/cuốn (in dưới 50 cuốn) 1.200đ/cuốn (in trên 50 cuốn).</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Chạy barcode cộng thêm 2.000 đ/cuốn (in dưới 100 cuốn), 1.500đ/cuốn (in trên 100 cuốn)</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Đơn giá in cho khổ : 10 x 14cm bằng đơn giá của khổ 14 x 20 chia 2</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Đơn giá in cho&nbsp;khổ : 20.5 x 29.5cm bằng đơn giá của khổ 14 x 20 nhân 2</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"color:#008080\"><strong>BẢNG GIÁ IN GIẤY CARBONLESS 2 LIÊN</strong></span></span></p>\r\n\r\n<p>&nbsp; &nbsp; Quy cách: Giấy Carbonless Indo 2 liên (không in màu nền) 50 bộ, 100 liên/cuốn</p>\r\n\r\n<p>&nbsp; &nbsp; Kích thước: 14 x 20cm, bế cấn răng cưa, đóng cuốn (đóng ghim hoặc dán keo đầu cuốn), bìa màu Thái Lan.</p>\r\n\r\n<p><img alt=\"\" src=\"http://in24.vn/img_data/images/59(2).jpg\" style=\"height:453px; width:812px\" /></p>\r\n\r\n<p>Ghi chú:</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Nếu đóng số nhảy vui lòng cộng thêm 1.700 đ/cuốn (in dưới 100 cuốn) 1.200đ/cuốn (in trên 100 cuốn).</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Chạy barcode cộng thêm 2.000 đ/cuốn (in dưới 100 cuốn), 1.500đ/cuốn (in trên 100 cuốn)</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Đơn giá in cho khổ : 10 x 14cm bằng đơn giá của khổ 14 x 20 chia 2</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Đơn giá in cho&nbsp;khổ : 20.5 x 29.5cm bằng đơn giá của khổ 14 x 20 nhân 2</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"color:rgb(0, 128, 128)\"><strong>BẢNG GIÁ IN GIẤY CARBONLESS 3 LIÊN</strong></span></span></p>\r\n\r\n<p>&nbsp; &nbsp; Quy cách: Giấy Carbonless Indo 3 liên (không in màu nền) 50 bộ, 150 liên/cuốn</p>\r\n\r\n<p>&nbsp; &nbsp; Kích thước: 14 x 20cm, bế cấn răng cưa, đóng cuốn (đóng ghim hoặc dán keo gáy), bìa màu Thái Lan.</p>\r\n\r\n<p><img alt=\"\" src=\"http://in24.vn/img_data/images/60(2).jpg\" style=\"height:453px; width:812px\" /></p>\r\n\r\n<p>Ghi chú:</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Nếu đóng số nhảy vui lòng cộng thêm 1.700 đ/cuốn (in dưới 100 cuốn) 1.400đ/cuốn (in trên 100 cuốn).</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Chạy barcode cộng thêm 2.100 đ/cuốn (in dưới 100 cuốn), 1.700đ/cuốn (in trên 100 cuốn)</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Đơn giá cho khổ : 10 x 14cm bằng đơn giá của khổ 14 x 20 chia 2</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Đơn giá cho&nbsp;khổ : 20.5 x 29.5cm bằng đơn giá của khổ 14 x 20 nhân 2</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 1557981711, 1, 0, 0, 'In biểu mẫu, phiếu thu chi, phiếu xuất kho...', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 4, 0),
(724, 251, '0', 'in-name-card-danh-thiep--5', '', '', 'TM001', 'In Name card (Danh thiếp)', '', '', '', '', '', '703993861423_9.jpg', 0, 0, '<ul style=\"list-style-type:disc\">\r\n	<li><span style=\"font-size:14px\"><strong>In </strong>trên giấy Couche, Bristol, Giấy Kraft, Giấy bóng nhựa, Giấy mỹ thuật cao cấp...</span></li>\r\n	<li><span style=\"font-size:14px\"><strong>Kích thước:</strong> 9 x 5.5cm, cán&nbsp;màng.</span></li>\r\n	<li><span style=\"font-size:14px\"><strong>Số mặt:</strong> 1 mặt, 2 mặt</span></li>\r\n	<li><span style=\"font-size:14px\"><strong>Thời gian in: </strong>1h -<strong> </strong>3 ngày tùy&nbsp;theo số lượng</span></li>\r\n	<li><span style=\"font-size:14px\">Gia công bo góc theo yêu cầu</span></li>\r\n</ul>\r\n\r\n<p><span style=\"color:#008080\"><strong>&nbsp; &nbsp; &nbsp; &nbsp; BẢNG GIÁ IN NAME CARD SỐ LƯỢNG ÍT</strong></span></p>\r\n\r\n<p><span style=\"color:#008080\"><strong>&nbsp; &nbsp; &nbsp; </strong></span><span style=\"font-size:14px\"><strong>&nbsp; Quy cách:</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>&nbsp; &nbsp; &nbsp; &nbsp; - In 4 màu 1-2 mặt, cán màng mờ đối với giấy Couche, Bristol, cắt thành phẩm 5 x 9cm, bỏ hộp mica 100cái/hộp</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>&nbsp; &nbsp; &nbsp; &nbsp; - Trường hợp có bo góc vui lòng cộng thêm 20.000đ/hộp</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><img alt=\"\" src=\"http://in24.vn/img_data/images/119.jpg\" style=\"height:210px; width:813px\" /></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\">&nbsp; &nbsp; &nbsp; &nbsp;Ghi chú: Với số lượng nhiều vui lòng liên hệ trực tiếp để có giá tốt nhât.</span></p>\r\n', '', '', '', '', '', 1557974201, 1, 0, 0, 'In Name card (Danh thiếp)', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 2, 0),
(723, 251, '0', 'thiet-ke-nhan-dien-thuong-hieu', '', '', '6868', 'Thiết kế, nhận diện thương hiệu', '', '', '', '', '', '767121392228_11.jpg', 0, 0, '<ul style=\"list-style-type:disc\">\r\n	<li><span style=\"font-size:14px\">Th<strong>i</strong>ết&nbsp;kế logo, bộ nhận diện thương hiệu&nbsp;độc quyền.</span></li>\r\n	<li><span style=\"font-size:14px\">Ý tưởng&nbsp;độc&nbsp;đáo, sáng tạo và chuyên nghiệp.</span></li>\r\n	<li><span style=\"font-size:14px\">Mang lại&nbsp;sự&nbsp;hài&nbsp;lòng&nbsp;và&nbsp;hiệu quả.</span></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\"><img alt=\"\" src=\"http://in24.vn/img_data/images/120.jpg\" style=\"height:532px; width:792px\" /></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://in24.vn/img_data/images/122(1).jpg\" style=\"height:571px; width:792px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\"><img alt=\"\" src=\"http://in24.vn/img_data/images/121.jpg\" style=\"height:753px; width:792px\" /></span></p>\r\n', '', '', '', '', '', 1557973757, 1, 0, 0, 'Thiết kế, nhận diện thương hiệu', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_sanpham_hinhanh`
--

CREATE TABLE `db_sanpham_hinhanh` (
  `id` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `hinh_anh` varchar(255) NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_sanpham_hinhanh`
--

INSERT INTO `db_sanpham_hinhanh` (`id`, `id_sp`, `hinh_anh`, `title`) VALUES
(577, 741, '098942753219_50.jpg', ''),
(576, 741, '185516936808_48.jpg', ''),
(575, 740, '595618281896_46.jpg', ''),
(574, 740, '507654223902_44.jpg', ''),
(580, 735, '972644405538_32.jpg', ''),
(571, 736, '705608343691_36.jpg', ''),
(572, 737, '614326428483_38.jpg', ''),
(573, 737, '248400240798_39.jpg', ''),
(578, 741, '424362570022_49.jpg', ''),
(587, 741, '468654409915_98.jpg', ''),
(585, 739, '292970296326_87.jpg', ''),
(586, 739, '743901973649_86.jpg', ''),
(583, 742, '076054503303_75.jpg', ''),
(582, 735, '053841502312_32.1.jpg', ''),
(581, 735, '514753237394_32.2.jpg', ''),
(579, 743, '473472921293_53.jpg', ''),
(569, 727, '150233545937_16.jpg', ''),
(568, 727, '227638038117_19.jpg', ''),
(567, 727, '643090316010_18.jpg', ''),
(566, 727, '900794186257_17.jpg', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_seo`
--

CREATE TABLE `db_seo` (
  `id` int(11) NOT NULL,
  `title_vn` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_us` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword_vn` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword_us` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description_vn` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description_us` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `db_seo`
--

INSERT INTO `db_seo` (`id`, `title_vn`, `title_us`, `keyword_vn`, `keyword_us`, `description_vn`, `description_us`) VALUES
(1, 'Công Ty TNHH In QC Thiên Minh', '', 'Công Ty TNHH In QC Thiên Minh', '', 'Công Ty TNHH In QC Thiên Minh', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_setting`
--

CREATE TABLE `db_setting` (
  `id` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `ten_us` varchar(255) NOT NULL,
  `ten_jp` varchar(255) NOT NULL,
  `ten_ch` text NOT NULL,
  `noi_dung_vn` longtext NOT NULL,
  `noi_dung_us` longtext NOT NULL,
  `noi_dung_jp` longtext NOT NULL,
  `noi_dung_ch` text NOT NULL,
  `hinh_anh_vn` varchar(255) NOT NULL,
  `title_vn` varchar(255) NOT NULL,
  `title_us` varchar(255) NOT NULL,
  `title_jp` varchar(255) NOT NULL,
  `title_ch` text NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `des` varchar(255) NOT NULL,
  `hien_thi` int(11) NOT NULL,
  `hinh_anh_us` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_setting`
--

INSERT INTO `db_setting` (`id`, `ten_vn`, `ten_us`, `ten_jp`, `ten_ch`, `noi_dung_vn`, `noi_dung_us`, `noi_dung_jp`, `noi_dung_ch`, `hinh_anh_vn`, `title_vn`, `title_us`, `title_jp`, `title_ch`, `keyword`, `des`, `hien_thi`, `hinh_anh_us`) VALUES
(10, 'Text trang liên hệ', '', '', '', '<h3><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"color:#FF0000\"><strong>&nbsp; &nbsp; &nbsp; </strong></span></span></h3>\r\n\r\n<h3><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"color:#FF0000\"><strong>&nbsp; &nbsp; &nbsp; <span style=\"font-size:18px\">&nbsp; &nbsp;CÔNG TY TNHH IN QUẢNG CÁO THIÊN MINH</span></strong></span></span></h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>&nbsp; &nbsp;<span style=\"font-size:18px\">&nbsp; &nbsp; &nbsp;Địa chỉ</span></strong><span style=\"font-size:18px\">: 55&nbsp;</span></span><span style=\"font-size:18px\">Đường 20, Phường Hiệp Bình Chánh, Q. Thủ&nbsp;Đức, TP. HCM</span></span></p>\r\n\r\n<p><span style=\"font-size:18px\"><strong><span style=\"color:rgb(51, 51, 51); font-family:arial,helvetica,sans-serif\">&nbsp; &nbsp; &nbsp; &nbsp;Đi</span>ện thoại</strong>: 028 22.536.260 - 0961.14.54.54</span></p>\r\n\r\n<p><span style=\"font-size:18px\"><span style=\"color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif\">&nbsp; &nbsp; &nbsp; &nbsp;<strong>Email:</strong>&nbsp;thietke@in24.vn</span></span></p>\r\n\r\n<p><span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>&nbsp; &nbsp; &nbsp; &nbsp;<span style=\"color:#FF0000\">Hotline</span></strong><span style=\"color:#FF0000\">: <strong>0986.175.175</strong></span></span></span></p>\r\n\r\n<p><span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>&nbsp; &nbsp; &nbsp; &nbsp;Website</strong>:&nbsp;</span><span style=\"color:#008080\">in24.vn</span></span></p>\r\n\r\n<p><span style=\"font-size:18px\"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Bản đồ chỉ đường:</strong></span></p>\r\n\r\n<p><img alt=\"\" src=\"http://in24.vn/img_data/images/Ban%20Do(1).jpg\" style=\"height:426px; width:804px\" /></p>\r\n\r\n<p><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;(Ngay bên hông Trung Tâm Thương mại GIGAMALL, COOPXTRA, Nằm trên trục đường Phạm Văn Đồng)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#FF0000\"><strong>YÊU CẦU BÁO GIÁ</strong></span></p>\r\n', '', '', '', '', '', '', '', '', '', '', 1, ''),
(28, 'Text Footer 1', '', '', '', '<p><span style=\"color:#FFFFFF\"><span style=\"font-size:18px\">Telephone</span></span></p>\r\n\r\n<p><span style=\"font-size:28px\"><span style=\"color:#FF9E20\">0909.0808.xxx</span></span></p>\r\n', '<p><strong><span style=\"font-size:16px\">DHT TRADING DEVELOPMENT COMPANY LIMITED</span></strong></p>\r\n\r\n<p>Address: Thu Thiem Star Tower, C8.7 A5 St, Binh Trung Dong Ward, Dicstrict 2, Ho Chi Minh City</p>\r\n\r\n<p>Phone: (08) 62 814 677 -&nbsp;Fax: (08) 62 814 657</p>\r\n\r\n<p>​Email: dht.co@outlook.com</p>\r\n', '', '', '', '', '', '', '', '', '', 1, ''),
(38, 'Text Footer 2', '', '', '', '<p><font color=\"#ffffff\"><span style=\"font-size:18px\">Email</span></font></p>\r\n\r\n<p><span style=\"color:#FFF0F5\"><span style=\"font-size:20px\">kythuat01.pnvn@gmail.com</span></span></p>\r\n', '', '', '', '', '', '', '', '', '', '', 1, ''),
(39, 'Text Footer 3', '', '', '', '<p><span style=\"color:#FFFFFF\"><span style=\"font-size:20px\">Andress</span></span></p>\r\n\r\n<p><span style=\"color:#FFFFFF\"><span style=\"font-size:20px\">3/31 Đường 49, Phường Hiệp Bình Chánh,&nbsp;<br />\r\nQuận Thủ Đức, TPHCM</span></span></p>\r\n', '', '', '', '', '', '', '', '', '', '', 1, ''),
(40, 'Đăng ký nhận báo giá', '', '', '', '<p>Gọi vào hotline 000.000.000 để được tư vấn miễn phí</p>\r\n', '', '', '', '', '', '', '', '', '', '', 1, ''),
(30, 'Hình Logo', '', '', '', '', '', '', '', '921256362652_logo.png', '', '', '', '', '', '', 1, '463551056257_banner_us.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_slide_sp`
--

CREATE TABLE `db_slide_sp` (
  `id` int(11) NOT NULL,
  `hinh_anh` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `href` varchar(255) DEFAULT NULL,
  `title_vn` varchar(255) DEFAULT NULL,
  `mo_ta_vn` varchar(255) NOT NULL,
  `mo_ta_us` varchar(255) NOT NULL,
  `title_us` varchar(255) NOT NULL,
  `so_thu_tu` int(11) NOT NULL DEFAULT '1',
  `hien_thi` tinyint(1) NOT NULL DEFAULT '1',
  `id_loai` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_slide_sp`
--

INSERT INTO `db_slide_sp` (`id`, `hinh_anh`, `video`, `href`, `title_vn`, `mo_ta_vn`, `mo_ta_us`, `title_us`, `so_thu_tu`, `hien_thi`, `id_loai`) VALUES
(108, '434756316053_banner.png', '', '', '', '', '', '', 1, 1, 0),
(109, '842788969963_banner.png', '', '', '', '', '', '', 2, 1, 0),
(110, '903745193122_banner.png', '', '', '', '', '', '', 3, 1, 0),
(111, '188679675272_banner.png', '', '', '', '', '', '', 4, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_tags`
--

CREATE TABLE `db_tags` (
  `id` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_tags`
--

INSERT INTO `db_tags` (`id`, `ten_vn`, `alias`) VALUES
(91, 'rau sach', 'rau-sach'),
(90, 'tag3', 'tag3'),
(89, 'tag2', 'tag2'),
(88, 'tag1', 'tag1'),
(92, 'may dong phuc', 'may-dong-phuc'),
(93, 'may ao thun', 'may-ao-thun'),
(94, 'dong phuc cong so', 'dong-phuc-cong-so'),
(95, 'vinaconnect1', 'vinaconnect1'),
(96, 'vinaconnect2', 'vinaconnect2'),
(97, 'vinaconnect3', 'vinaconnect3'),
(98, 'tags', 'tags'),
(99, 'tags1', 'tags1'),
(100, 'tags3', 'tags3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_thanhpho`
--

CREATE TABLE `db_thanhpho` (
  `id` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `so_thu_tu` int(11) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_thanhpho`
--

INSERT INTO `db_thanhpho` (`id`, `ten_vn`, `so_thu_tu`, `hien_thi`) VALUES
(1, 'Hồ Chí Minh', 1, 1),
(2, 'Bình Dương', 2, 1),
(3, 'Vũng Tàu', 3, 1),
(4, 'Hà Nội', 4, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_thanhvien`
--

CREATE TABLE `db_thanhvien` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `dienthoai` varchar(12) NOT NULL,
  `gioitinh` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `ngaytao` int(11) NOT NULL,
  `hienthi` tinyint(1) NOT NULL,
  `mathanhvien` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_thanhvien`
--

INSERT INTO `db_thanhvien` (`id`, `email`, `password`, `ten`, `dienthoai`, `gioitinh`, `diachi`, `ngaytao`, `hienthi`, `mathanhvien`) VALUES
(28, 'conghau0401@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Công Hậu', '0978192307', 'Nam', 'Quận Thủ đức, TPHCM', 1498634512, 1, '0uhmk5'),
(31, 'myhome2211@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', 'Hậu', '0978192307', 'Nam', 'Thủ đức', 1501060615, 1, 'hcawC9'),
(32, 'kythuat02.pnvn@gmail.com', '018108648935298bc4e6a312c4a443af', 'Công Hậu', '0978192307', '', '', 1519886539, 1, 'rlLNJ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_thongke`
--

CREATE TABLE `db_thongke` (
  `id` int(11) NOT NULL,
  `trong_ngay` int(11) NOT NULL,
  `trong_ngay_date` int(11) NOT NULL,
  `trong_tuan` int(11) NOT NULL,
  `trong_tuan_date` int(11) NOT NULL,
  `trong_thang` int(11) NOT NULL,
  `trong_thang_date` int(11) NOT NULL,
  `tong_truy_cap` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_thongke`
--

INSERT INTO `db_thongke` (`id`, `trong_ngay`, `trong_ngay_date`, `trong_tuan`, `trong_tuan_date`, `trong_thang`, `trong_thang_date`, `tong_truy_cap`) VALUES
(1, 73, 15, 899, 24, 1116, 6, 17832);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_thongke_detail`
--

CREATE TABLE `db_thongke_detail` (
  `session_id` varchar(255) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_thongke_detail`
--

INSERT INTO `db_thongke_detail` (`session_id`, `time`) VALUES
('b8trk5vo2koo8bmrut4sfkeog5', 1560564070);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_thongtin`
--

CREATE TABLE `db_thongtin` (
  `id` int(11) NOT NULL,
  `company_vn` text NOT NULL,
  `company_us` text NOT NULL,
  `address_us` text NOT NULL,
  `hotline` varchar(255) NOT NULL,
  `address_vn` text NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `google` varchar(255) NOT NULL,
  `dien_thoai` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `toado` text NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `skype` varchar(255) NOT NULL,
  `gg` text NOT NULL,
  `copyright` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_thongtin`
--

INSERT INTO `db_thongtin` (`id`, `company_vn`, `company_us`, `address_us`, `hotline`, `address_vn`, `twitter`, `facebook`, `google`, `dien_thoai`, `email`, `toado`, `youtube`, `skype`, `gg`, `copyright`) VALUES
(1, 'Công Ty TNHH In Quảng Cáo Thiên Minh', 'PHU MY SOP JOINT STOCK COMPANY', 'No. 12 Le Ngo Cat Street, Ward 7, District 3, Ho Chi Minh City. Ho Chi Minh', '0986.175.175', '55 Đường 20, Phường Hiệp Bình Chánh, Q. Thủ Đức, TP. HCM', 'https://www.facebook.com/in24thienminh/', 'https://www.facebook.com/in24thienminh/', 'https://plus.google.com/u/0/', '', 'thietke@in24.vn', '</iframe>\"  />\"  /></iframe>\"  /></iframe>\"  /><iframe src=\"https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fin24thienminh%2F&tabs=timeline&width=340&height=500&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId\" width=\"340\" height=\"500\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allow=\"encrypted-media\"></iframe>\"  />\"  ', '', '', '', 'Copyright © 2019 Quảng Cáo Thiên Minh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_thuvienanh`
--

CREATE TABLE `db_thuvienanh` (
  `id` int(11) NOT NULL,
  `id_loai` tinyint(1) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `hinh_anh` varchar(255) NOT NULL,
  `hinh_anh_thumb` varchar(255) NOT NULL,
  `id_video` varchar(255) NOT NULL,
  `so_thu_tu` int(11) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_tintuc`
--

CREATE TABLE `db_tintuc` (
  `id` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `ten_us` varchar(255) NOT NULL,
  `ten_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `alias_vn` varchar(255) NOT NULL,
  `alias_us` varchar(255) NOT NULL,
  `alias_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta_vn` text NOT NULL,
  `mo_ta_us` text NOT NULL,
  `mo_ta_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung_vn` text NOT NULL,
  `noi_dung_us` text NOT NULL,
  `noi_dung_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hinh_anh` varchar(255) NOT NULL,
  `ngay_dang` int(11) NOT NULL,
  `noi_bat` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1 la noi bat, mac định là 0',
  `tieu_bieu` tinyint(4) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL COMMENT '0 là ẩn, 1 là hiện',
  `title_vn` varchar(255) NOT NULL,
  `title_us` varchar(255) NOT NULL,
  `title_ch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `tags_hienthi` varchar(255) NOT NULL,
  `des` varchar(255) NOT NULL,
  `id_loai` int(11) NOT NULL,
  `so_thu_tu` int(11) NOT NULL,
  `hen_ngay` varchar(255) NOT NULL,
  `hen_gio` varchar(255) NOT NULL,
  `hen_ngay_dang` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_tintuc`
--

INSERT INTO `db_tintuc` (`id`, `ten_vn`, `ten_us`, `ten_ch`, `alias_vn`, `alias_us`, `alias_ch`, `mo_ta_vn`, `mo_ta_us`, `mo_ta_ch`, `noi_dung_vn`, `noi_dung_us`, `noi_dung_ch`, `hinh_anh`, `ngay_dang`, `noi_bat`, `tieu_bieu`, `hien_thi`, `title_vn`, `title_us`, `title_ch`, `keyword`, `tags`, `tags_hienthi`, `des`, `id_loai`, `so_thu_tu`, `hen_ngay`, `hen_gio`, `hen_ngay_dang`) VALUES
(610, 'Đội ngủ chuyên nghiệp', '', '', 'doi-ngu-chuyen-nghiep', '', '', 'Upscience cung cấp một phạm vi rộng các phân tích và dịch vụ nhằm giúp quý khách đảm bảo, tối ưu hóa và kiểm soát sản phẩm và quy trình sản xuất. Dịch vụ phân tích và dịch vụ cá nhân, chẳng hạn như hỗ trợ kỹ thuật, huấn luyện, phát triển và xác minh phương pháp, kiểm tra và giám định.', '', '', '<p><span style=\"color:rgb(113, 126, 134); font-family:montserrat,sans-serif; font-size:14px\">Upscience cung cấp một phạm vi rộng các phân tích và dịch vụ nhằm giúp quý khách đảm bảo, tối ưu hóa và kiểm soát sản phẩm và quy trình sản xuất. Dịch vụ phân tích và dịch vụ cá nhân, chẳng hạn như hỗ trợ kỹ thuật, huấn luyện, phát triển và xác minh phương pháp, kiểm tra và giám định.</span></p>\r\n', '', '', '824851814240_visao1.png', 1556291392, 0, 0, 0, 'Đội ngủ chuyên nghiệp', '', '', '', '', '', '', 490, 0, '', '', ''),
(611, 'Thiết kế sáng tạo', '', '', 'thiet-ke-sang-tao', '', '', 'Upscience cung cấp một phạm vi rộng các phân tích và dịch vụ nhằm giúp quý khách đảm bảo, tối ưu hóa và kiểm soát sản phẩm và quy trình sản xuất. Dịch vụ phân tích và dịch vụ cá nhân, chẳng hạn như hỗ trợ kỹ thuật, huấn luyện, phát triển và xác minh phương pháp, kiểm tra và giám định.', '', '', '<p><span style=\"color:rgb(113, 126, 134); font-family:montserrat,sans-serif; font-size:14px\">Upscience cung cấp một phạm vi rộng các phân tích và dịch vụ nhằm giúp quý khách đảm bảo, tối ưu hóa và kiểm soát sản phẩm và quy trình sản xuất. Dịch vụ phân tích và dịch vụ cá nhân, chẳng hạn như hỗ trợ kỹ thuật, huấn luyện, phát triển và xác minh phương pháp, kiểm tra và giám định.</span></p>\r\n', '', '', '705077760681_visao2.png', 1556291397, 0, 0, 0, 'Thiết kế sáng tạo', '', '', '', '', '', '', 490, 0, '', '', ''),
(612, 'Giá cả hợp lý', '', '', 'gia-ca-hop-ly', '', '', 'Upscience cung cấp một phạm vi rộng các phân tích và dịch vụ nhằm giúp quý khách đảm bảo, tối ưu hóa và kiểm soát sản phẩm và quy trình sản xuất. Dịch vụ phân tích và dịch vụ cá nhân, chẳng hạn như hỗ trợ kỹ thuật, huấn luyện, phát triển và xác minh phương pháp, kiểm tra và giám định.', '', '', '<p><span style=\"color:rgb(113, 126, 134); font-family:montserrat,sans-serif; font-size:14px\">Upscience cung cấp một phạm vi rộng các phân tích và dịch vụ nhằm giúp quý khách đảm bảo, tối ưu hóa và kiểm soát sản phẩm và quy trình sản xuất. Dịch vụ phân tích và dịch vụ cá nhân, chẳng hạn như hỗ trợ kỹ thuật, huấn luyện, phát triển và xác minh phương pháp, kiểm tra và giám định.</span></p>\r\n', '', '', '581186246317_visao3.png', 1556291399, 0, 0, 0, 'Giá cả hợp lý', '', '', '', '', '', '', 490, 0, '', '', ''),
(613, 'Tiến độ chính xác', '', '', 'tien-do-chinh-xac', '', '', 'Upscience cung cấp một phạm vi rộng các phân tích và dịch vụ nhằm giúp quý khách đảm bảo, tối ưu hóa và kiểm soát sản phẩm và quy trình sản xuất. Dịch vụ phân tích và dịch vụ cá nhân, chẳng hạn như hỗ trợ kỹ thuật, huấn luyện, phát triển và xác minh phương pháp, kiểm tra và giám định.', '', '', '<p><span style=\"color:rgb(113, 126, 134); font-family:montserrat,sans-serif; font-size:14px\">Upscience cung cấp một phạm vi rộng các phân tích và dịch vụ nhằm giúp quý khách đảm bảo, tối ưu hóa và kiểm soát sản phẩm và quy trình sản xuất. Dịch vụ phân tích và dịch vụ cá nhân, chẳng hạn như hỗ trợ kỹ thuật, huấn luyện, phát triển và xác minh phương pháp, kiểm tra và giám định.</span></p>\r\n', '', '', '848105957884_visao4.png', 1556291401, 1, 0, 1, 'Tiến độ chính xác', '', '', '', '', '', '', 490, 0, '', '', ''),
(617, 'Thiết kế ấn phẩm, quà tặng', '', '', 'thiet-ke-an-pham-qua-tang', '', '', 'Bao bì là một phần tạo nên dấu ấn thương hiệu cho các nhà sản xuất. Nhờ kỹ thuật in lụa mà quy trình in bao bì trở nên đơn giản hơn, bản in đẹp hơn, chất lượng hơn. Hãy cùng chúng tôi tìm hiểu về kỹ thuật này bạn nhé.', '', '', '<p>Nhìn chung, kỹ thuật này được sử dụng khá phổ biến hiện nay. Nó không chỉ áp dụng để in vải mà còn trên cả bao bì. Quá trình in sẽ bao gồm những bước cơ bản sau:</p>\r\n\r\n<ol>\r\n	<li>Thiết kế</li>\r\n	<li>Ra phim</li>\r\n	<li>Chụp bản</li>\r\n	<li>Pha mực</li>\r\n	<li>In thành phẩm</li>\r\n</ol>\r\n\r\n<p>Đầu tiên, người thợ sẽ sử dụng một lớp vải thật mỏng, đặt dưới tia cực tím. Sau đó, bao bì cần in sẽ được đặt lên phía trên, tiếp đó là các bản in có họa tiết. Người thợ sẽ sử dụng dao gạt để mực được phủ đều trên bản in.</p>\r\n\r\n<p>Trong trường hợp cần in chống màu, người ta sẽ thực hiện thao tác này vài lần. Bao bì mới&nbsp;<a href=\"https://intranvu.com/in-lua-tren-giay/\" style=\"text-decoration-line: none; margin: 0px; padding: 0px; vertical-align: baseline; background: transparent; color: rgb(36, 68, 123);\"><strong>in lụa</strong></a>&nbsp;xong sẽ được đem đi phơi hoặc được làm khô bằng máy sấy. sau khi bao bì khô, người ta sẽ chuyển chúng sang giai đoạn đóng gói và hoàn tất sản phẩm.</p>\r\n\r\n<p>So với nhiều kỹ thuật khác, in lụa cho ra những sản phẩm với chất lượng in tốt, bền màu và sắc nét. Đặc biệt, quy trình in trở nên đơn giản hơn nên đã giúp người thợ tiết kiệm không ít thời gian, từ đó giảm chi phí sản xuất.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" class=\"alignnone wp-image-826\" src=\"https://intranvu.com/wp-content/uploads/2018/08/27K%E1%BB%B9-thu%E1%BA%ADt-in-l%E1%BB%A5a-tr%C3%AAn-bao-b%C3%AC.1-300x248.jpg\" style=\"background:transparent; border:0px; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline; width:414px\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Bao bì in lụa có hình ảnh chất lượng, sắc nét</em></p>\r\n\r\n<h2>Kỹ thuật in lụa trên bao bì sử dụng loại mực gì?</h2>\r\n\r\n<p>Mực in sử dụng trong kỹ thuật này khá đa dạng. Nó phụ thuộc vào nhiều yếu tố, trong đó có loại bao bì. Chẳng hạn, nếu là bao bì PP thì sẽ có loại mực dành riêng cho nó. Giá cả và chất lượng các loại mực cũng khác nhau. Những người thợ có tay nghề sẽ dễ dàng nhận biết và chọn loại mực phù hợp cho từng loại bao bì.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" class=\"alignnone wp-image-827\" src=\"https://intranvu.com/wp-content/uploads/2018/08/27K%E1%BB%B9-thu%E1%BA%ADt-in-l%E1%BB%A5a-tr%C3%AAn-bao-b%C3%AC.2-300x169.jpg\" style=\"background:transparent; border:0px; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline; width:469px\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Mỗi bao bì sẽ sử dụng loại mực in phù hợp</em></p>\r\n\r\n<p>Quy trình pha chế mực in cũng được hết sức coi trọng. Bởi vì không tất cả các loại mực đều giống nhau. Nếu pha chế không tốt chúng ta sẽ không thể tạo ra màu sắc đẹp, chất lượng bản in cũng vì đó mà giảm sút. Vì thế, với từng loại bao bì&nbsp;<strong>in lụa</strong>, người ta sẽ phải xác định tỷ lệ và thành phần các loại hóa chất khác nhau để đảm bảo phù hợp.</p>\r\n\r\n<p>Hy vọng, sau bài viết này bạn đã hiểu hơn về kỹ thuật in trên bao bì. Để tạo ra một bản in đẹp, phụ thuộc vào rất nhiều yếu tố, nhất là mực in. Chúc bạn có những sản phẩm bao bì&nbsp;<strong>in lụa</strong>&nbsp;đẹp nhất, chất lượng nhất.</p>\r\n', '', '', '409941006484_baobi.jpg', 1556292259, 0, 0, 1, 'Thiết kế ấn phẩm, quà tặng', '', '', '', '', '', '', 491, 0, '', '', ''),
(618, 'In ấn phẩm văn phòng', '', '', 'in-an-pham-van-phong', '', '', 'Bao bì là một phần tạo nên dấu ấn thương hiệu cho các nhà sản xuất. Nhờ kỹ thuật in lụa mà quy trình in bao bì trở nên đơn giản hơn, bản in đẹp hơn, chất lượng hơn. Hãy cùng chúng tôi tìm hiểu về kỹ thuật này bạn nhé.', '', '', '<p>Nhìn chung, kỹ thuật này được sử dụng khá phổ biến hiện nay. Nó không chỉ áp dụng để in vải mà còn trên cả bao bì. Quá trình in sẽ bao gồm những bước cơ bản sau:</p>\r\n\r\n<ol>\r\n	<li>Thiết kế</li>\r\n	<li>Ra phim</li>\r\n	<li>Chụp bản</li>\r\n	<li>Pha mực</li>\r\n	<li>In thành phẩm</li>\r\n</ol>\r\n\r\n<p>Đầu tiên, người thợ sẽ sử dụng một lớp vải thật mỏng, đặt dưới tia cực tím. Sau đó, bao bì cần in sẽ được đặt lên phía trên, tiếp đó là các bản in có họa tiết. Người thợ sẽ sử dụng dao gạt để mực được phủ đều trên bản in.</p>\r\n\r\n<p>Trong trường hợp cần in chống màu, người ta sẽ thực hiện thao tác này vài lần. Bao bì mới&nbsp;<a href=\"https://intranvu.com/in-lua-tren-giay/\" style=\"text-decoration-line: none; margin: 0px; padding: 0px; vertical-align: baseline; background: transparent; color: rgb(36, 68, 123);\"><strong>in lụa</strong></a>&nbsp;xong sẽ được đem đi phơi hoặc được làm khô bằng máy sấy. sau khi bao bì khô, người ta sẽ chuyển chúng sang giai đoạn đóng gói và hoàn tất sản phẩm.</p>\r\n\r\n<p>So với nhiều kỹ thuật khác, in lụa cho ra những sản phẩm với chất lượng in tốt, bền màu và sắc nét. Đặc biệt, quy trình in trở nên đơn giản hơn nên đã giúp người thợ tiết kiệm không ít thời gian, từ đó giảm chi phí sản xuất.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" class=\"alignnone wp-image-826\" src=\"https://intranvu.com/wp-content/uploads/2018/08/27K%E1%BB%B9-thu%E1%BA%ADt-in-l%E1%BB%A5a-tr%C3%AAn-bao-b%C3%AC.1-300x248.jpg\" style=\"background:transparent; border:0px; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline; width:414px\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Bao bì in lụa có hình ảnh chất lượng, sắc nét</em></p>\r\n\r\n<h2>Kỹ thuật in lụa trên bao bì sử dụng loại mực gì?</h2>\r\n\r\n<p>Mực in sử dụng trong kỹ thuật này khá đa dạng. Nó phụ thuộc vào nhiều yếu tố, trong đó có loại bao bì. Chẳng hạn, nếu là bao bì PP thì sẽ có loại mực dành riêng cho nó. Giá cả và chất lượng các loại mực cũng khác nhau. Những người thợ có tay nghề sẽ dễ dàng nhận biết và chọn loại mực phù hợp cho từng loại bao bì.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" class=\"alignnone wp-image-827\" src=\"https://intranvu.com/wp-content/uploads/2018/08/27K%E1%BB%B9-thu%E1%BA%ADt-in-l%E1%BB%A5a-tr%C3%AAn-bao-b%C3%AC.2-300x169.jpg\" style=\"background:transparent; border:0px; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline; width:469px\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Mỗi bao bì sẽ sử dụng loại mực in phù hợp</em></p>\r\n\r\n<p>Quy trình pha chế mực in cũng được hết sức coi trọng. Bởi vì không tất cả các loại mực đều giống nhau. Nếu pha chế không tốt chúng ta sẽ không thể tạo ra màu sắc đẹp, chất lượng bản in cũng vì đó mà giảm sút. Vì thế, với từng loại bao bì&nbsp;<strong>in lụa</strong>, người ta sẽ phải xác định tỷ lệ và thành phần các loại hóa chất khác nhau để đảm bảo phù hợp.</p>\r\n\r\n<p>Hy vọng, sau bài viết này bạn đã hiểu hơn về kỹ thuật in trên bao bì. Để tạo ra một bản in đẹp, phụ thuộc vào rất nhiều yếu tố, nhất là mực in. Chúc bạn có những sản phẩm bao bì&nbsp;<strong>in lụa</strong>&nbsp;đẹp nhất, chất lượng nhất.</p>\r\n', '', '', '884074633760_baobi.jpg', 1556292260, 0, 0, 1, 'In ấn phẩm văn phòng', '', '', '', '', '', '', 491, 0, '', '', ''),
(619, 'In ấn phẩm quảng cáo', '', '', 'in-an-pham-quang-cao', '', '', 'Bao bì là một phần tạo nên dấu ấn thương hiệu cho các nhà sản xuất. Nhờ kỹ thuật in lụa mà quy trình in bao bì trở nên đơn giản hơn, bản in đẹp hơn, chất lượng hơn. Hãy cùng chúng tôi tìm hiểu về kỹ thuật này bạn nhé.', '', '', '<p>Nhìn chung, kỹ thuật này được sử dụng khá phổ biến hiện nay. Nó không chỉ áp dụng để in vải mà còn trên cả bao bì. Quá trình in sẽ bao gồm những bước cơ bản sau:</p>\r\n\r\n<ol>\r\n	<li>Thiết kế</li>\r\n	<li>Ra phim</li>\r\n	<li>Chụp bản</li>\r\n	<li>Pha mực</li>\r\n	<li>In thành phẩm</li>\r\n</ol>\r\n\r\n<p>Đầu tiên, người thợ sẽ sử dụng một lớp vải thật mỏng, đặt dưới tia cực tím. Sau đó, bao bì cần in sẽ được đặt lên phía trên, tiếp đó là các bản in có họa tiết. Người thợ sẽ sử dụng dao gạt để mực được phủ đều trên bản in.</p>\r\n\r\n<p>Trong trường hợp cần in chống màu, người ta sẽ thực hiện thao tác này vài lần. Bao bì mới&nbsp;<a href=\"https://intranvu.com/in-lua-tren-giay/\" style=\"text-decoration-line: none; margin: 0px; padding: 0px; vertical-align: baseline; background: transparent; color: rgb(36, 68, 123);\"><strong>in lụa</strong></a>&nbsp;xong sẽ được đem đi phơi hoặc được làm khô bằng máy sấy. sau khi bao bì khô, người ta sẽ chuyển chúng sang giai đoạn đóng gói và hoàn tất sản phẩm.</p>\r\n\r\n<p>So với nhiều kỹ thuật khác, in lụa cho ra những sản phẩm với chất lượng in tốt, bền màu và sắc nét. Đặc biệt, quy trình in trở nên đơn giản hơn nên đã giúp người thợ tiết kiệm không ít thời gian, từ đó giảm chi phí sản xuất.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" class=\"alignnone wp-image-826\" src=\"https://intranvu.com/wp-content/uploads/2018/08/27K%E1%BB%B9-thu%E1%BA%ADt-in-l%E1%BB%A5a-tr%C3%AAn-bao-b%C3%AC.1-300x248.jpg\" style=\"background:transparent; border:0px; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline; width:414px\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Bao bì in lụa có hình ảnh chất lượng, sắc nét</em></p>\r\n\r\n<h2>Kỹ thuật in lụa trên bao bì sử dụng loại mực gì?</h2>\r\n\r\n<p>Mực in sử dụng trong kỹ thuật này khá đa dạng. Nó phụ thuộc vào nhiều yếu tố, trong đó có loại bao bì. Chẳng hạn, nếu là bao bì PP thì sẽ có loại mực dành riêng cho nó. Giá cả và chất lượng các loại mực cũng khác nhau. Những người thợ có tay nghề sẽ dễ dàng nhận biết và chọn loại mực phù hợp cho từng loại bao bì.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" class=\"alignnone wp-image-827\" src=\"https://intranvu.com/wp-content/uploads/2018/08/27K%E1%BB%B9-thu%E1%BA%ADt-in-l%E1%BB%A5a-tr%C3%AAn-bao-b%C3%AC.2-300x169.jpg\" style=\"background:transparent; border:0px; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline; width:469px\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Mỗi bao bì sẽ sử dụng loại mực in phù hợp</em></p>\r\n\r\n<p>Quy trình pha chế mực in cũng được hết sức coi trọng. Bởi vì không tất cả các loại mực đều giống nhau. Nếu pha chế không tốt chúng ta sẽ không thể tạo ra màu sắc đẹp, chất lượng bản in cũng vì đó mà giảm sút. Vì thế, với từng loại bao bì&nbsp;<strong>in lụa</strong>, người ta sẽ phải xác định tỷ lệ và thành phần các loại hóa chất khác nhau để đảm bảo phù hợp.</p>\r\n\r\n<p>Hy vọng, sau bài viết này bạn đã hiểu hơn về kỹ thuật in trên bao bì. Để tạo ra một bản in đẹp, phụ thuộc vào rất nhiều yếu tố, nhất là mực in. Chúc bạn có những sản phẩm bao bì&nbsp;<strong>in lụa</strong>&nbsp;đẹp nhất, chất lượng nhất.</p>\r\n', '', '', '238191465170_baobi.jpg', 1556292261, 0, 0, 1, 'In ấn phẩm quảng cáo', '', '', '', '', '', '', 491, 0, '', '', ''),
(620, 'Thiết kế in bao bì giấy', '', '', 'thiet-ke-in-bao-bi-giay-223', '', '', 'Bao bì là một phần tạo nên dấu ấn thương hiệu cho các nhà sản xuất. Nhờ kỹ thuật in lụa mà quy trình in bao bì trở nên đơn giản hơn, bản in đẹp hơn, chất lượng hơn. Hãy cùng chúng tôi tìm hiểu về kỹ thuật này bạn nhé.', '', '', '<p>Nhìn chung, kỹ thuật này được sử dụng khá phổ biến hiện nay. Nó không chỉ áp dụng để in vải mà còn trên cả bao bì. Quá trình in sẽ bao gồm những bước cơ bản sau:</p>\r\n\r\n<ol>\r\n	<li>Thiết kế</li>\r\n	<li>Ra phim</li>\r\n	<li>Chụp bản</li>\r\n	<li>Pha mực</li>\r\n	<li>In thành phẩm</li>\r\n</ol>\r\n\r\n<p>Đầu tiên, người thợ sẽ sử dụng một lớp vải thật mỏng, đặt dưới tia cực tím. Sau đó, bao bì cần in sẽ được đặt lên phía trên, tiếp đó là các bản in có họa tiết. Người thợ sẽ sử dụng dao gạt để mực được phủ đều trên bản in.</p>\r\n\r\n<p>Trong trường hợp cần in chống màu, người ta sẽ thực hiện thao tác này vài lần. Bao bì mới&nbsp;<a href=\"https://intranvu.com/in-lua-tren-giay/\" style=\"text-decoration-line: none; margin: 0px; padding: 0px; vertical-align: baseline; background: transparent; color: rgb(36, 68, 123);\"><strong>in lụa</strong></a>&nbsp;xong sẽ được đem đi phơi hoặc được làm khô bằng máy sấy. sau khi bao bì khô, người ta sẽ chuyển chúng sang giai đoạn đóng gói và hoàn tất sản phẩm.</p>\r\n\r\n<p>So với nhiều kỹ thuật khác, in lụa cho ra những sản phẩm với chất lượng in tốt, bền màu và sắc nét. Đặc biệt, quy trình in trở nên đơn giản hơn nên đã giúp người thợ tiết kiệm không ít thời gian, từ đó giảm chi phí sản xuất.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" class=\"alignnone wp-image-826\" src=\"https://intranvu.com/wp-content/uploads/2018/08/27K%E1%BB%B9-thu%E1%BA%ADt-in-l%E1%BB%A5a-tr%C3%AAn-bao-b%C3%AC.1-300x248.jpg\" style=\"background:transparent; border:0px; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline; width:414px\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Bao bì in lụa có hình ảnh chất lượng, sắc nét</em></p>\r\n\r\n<h2>Kỹ thuật in lụa trên bao bì sử dụng loại mực gì?</h2>\r\n\r\n<p>Mực in sử dụng trong kỹ thuật này khá đa dạng. Nó phụ thuộc vào nhiều yếu tố, trong đó có loại bao bì. Chẳng hạn, nếu là bao bì PP thì sẽ có loại mực dành riêng cho nó. Giá cả và chất lượng các loại mực cũng khác nhau. Những người thợ có tay nghề sẽ dễ dàng nhận biết và chọn loại mực phù hợp cho từng loại bao bì.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" class=\"alignnone wp-image-827\" src=\"https://intranvu.com/wp-content/uploads/2018/08/27K%E1%BB%B9-thu%E1%BA%ADt-in-l%E1%BB%A5a-tr%C3%AAn-bao-b%C3%AC.2-300x169.jpg\" style=\"background:transparent; border:0px; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline; width:469px\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Mỗi bao bì sẽ sử dụng loại mực in phù hợp</em></p>\r\n\r\n<p>Quy trình pha chế mực in cũng được hết sức coi trọng. Bởi vì không tất cả các loại mực đều giống nhau. Nếu pha chế không tốt chúng ta sẽ không thể tạo ra màu sắc đẹp, chất lượng bản in cũng vì đó mà giảm sút. Vì thế, với từng loại bao bì&nbsp;<strong>in lụa</strong>, người ta sẽ phải xác định tỷ lệ và thành phần các loại hóa chất khác nhau để đảm bảo phù hợp.</p>\r\n\r\n<p>Hy vọng, sau bài viết này bạn đã hiểu hơn về kỹ thuật in trên bao bì. Để tạo ra một bản in đẹp, phụ thuộc vào rất nhiều yếu tố, nhất là mực in. Chúc bạn có những sản phẩm bao bì&nbsp;<strong>in lụa</strong>&nbsp;đẹp nhất, chất lượng nhất.</p>\r\n', '', '', '336729298609_baobi.jpg', 1556292263, 0, 0, 1, 'Thiết kế in bao bì giấy', '', '', '', '', '', '', 491, 0, '', '', ''),
(621, 'Monkey', '', '', 'monkey', '', '', 'Tôi rất tin tưởng vào những dịch vụ mà Công ty Thiên Minh cung cấp, với đội ngũ nhân viên chuyên nghiệp, chi phí hợp lý mà chất lượng rất tốt. Tối rất hài lòng chúc công ty ngày càng phát triển hơn nữa.', '', '', '', '', '', '640334425792_monkey.jpg', 1556347498, 0, 0, 0, 'Monkey', '', '', '', '', '', '', 497, 0, '', '', ''),
(622, 'Monkey', '', '', 'monkey-253', '', '', 'Tôi rất tin tưởng vào những dịch vụ mà Công ty Thiên Minh cung cấp, với đội ngũ nhân viên chuyên nghiệp, chi phí hợp lý mà chất lượng rất tốt. Tối rất hài lòng chúc công ty ngày càng phát triển hơn nữa.', '', '', '', '', '', '421017465768_monkey.jpg', 1556347502, 0, 0, 0, 'Monkey', '', '', '', '', '', '', 497, 0, '', '', ''),
(623, 'Hà Phương', '', '', 'ha-phuong', '', '', 'Tôi rất tin tưởng vào những dịch vụ mà Công ty Thiên Minh cung cấp, với đội ngũ nhân viên chuyên nghiệp, chi phí hợp lý mà chất lượng rất tốt. Tối rất hài lòng chúc công ty ngày càng phát triển hơn nữa.', '', '', '', '', '', '760847968538_30.jpg', 1556347504, 1, 0, 1, 'Hà Phương', '', '', '', '', '', '', 497, 0, '', '', ''),
(626, 'Làm túi giấy gồm nhưng loại nào', '', '', 'lam-tui-giay-gom-nhung-loai-nao-990', '', '', 'Nếu tổ chức một cuộc bình chọn, có lẽ những chiếc túi giấy sẽ được xếp hạng là dòng sản phẩm tiện dụng nhất trong ngành in ấn. Bởi lẽ, chúng không chỉ đơn thuần sản xuất ra để làm nhiệm vụ của một chiếc bao bì có thể chứa đựng được sản phẩm ở bên trong mà còn giúp cho các cửa hàng, doanh nghiệp, công ty', '', '', '<p>Nếu tổ chức một cuộc bình chọn, có lẽ những chiếc túi giấy sẽ được xếp hạng là dòng sản phẩm tiện dụng nhất trong ngành in ấn. Bởi lẽ, chúng không chỉ đơn thuần sản xuất ra để làm nhiệm vụ của một chiếc bao bì có thể chứa đựng được sản phẩm ở bên trong mà còn giúp cho các cửa hàng, doanh nghiệp, công ty,…giới thiệu, quảng bá những thương hiệu của mình một cách tinh tế, hiện đại và phong cách nhất với diện tích và mức độ ảnh hưởng ngày càng rộng rãi hơn, thuyết phục hơn.<img alt=\"\" class=\"aligncenter lazyloaded wp-image-2659\" src=\"https://insieutoc.vn/wp-content/uploads/2017/07/tui-giay-1.jpg\" style=\"border-style:none; box-sizing:border-box; clear:both; display:block; height:auto; margin:0px auto; max-width:100%; opacity:1; transition:opacity 1s ease 0s; vertical-align:middle; width:589px\" /></p>\r\n\r\n<p><img alt=\"\" class=\"aligncenter lazyloaded size-full wp-image-2658\" src=\"https://insieutoc.vn/wp-content/uploads/2017/07/tui-giay.jpg\" style=\"border-style:none; box-sizing:border-box; clear:both; display:block; height:auto; margin:0px auto; max-width:100%; opacity:1; transition:opacity 1s ease 0s; vertical-align:middle; width:482px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Để có được những chiếc túi giấy chất lượng cao, hình ảnh, thông tin thể hiện rõ ràng, sắc nét và có sức chịu lực tốt thì việc chọn lựa chất liệu giấy đóng một vai trò hết sức quan trọng. Các công ty sản xuất&nbsp;<a href=\"https://insieutoc.vn/in-tui-giay/\" rel=\"noopener noreferrer\" style=\"box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(30, 115, 190); text-decoration-line: none;\" target=\"_blank\">túi giấy giá rẻ TPHCM</a>&nbsp;đã không ngừng nghiên cứu các loại giấy in để phát triển ngày càng nhiều giải pháp in túi giấy hoàn hảo hơn từ giá thành đến chất lượng. Sau đây là những kinh nghiệm gồm đầy đủ thông tin được tích lũy trong quá trình sản xuất thực tế. Hãy cùng bài viết này dạo qua một vòng trong thế giới chất liệu giấy nhé</p>\r\n', '', '', '889572510695_baobi.jpg', 1556348753, 0, 0, 0, 'Làm túi giấy gồm nhưng loại nào', '', '', '', '', '', '', 175, 0, '', '', ''),
(627, 'PHÂN BIỆT: GIẤY COUCHE, GIẤY FORD , GIẤY KAFT ,GIẤY DUPLEX ,GIẤY GLOSSY , GIẤY MỸ THUẬT ,GIẤY TÁI SINH', '', '', 'phan-biet-giay-couche-giay-ford-giay-kaft-giay-duplex-giay-glossy-giay-my-thuat-giay-tai-sinh', '', '', 'Trên thị thường, hiện tại có rất nhiều loại giấy in khác nhau dùng trong in ấn. Mỗi loại có đặc trưng riêng về khác nhau độ dày, độ nhẵn, bề mặt, độ bóng,…Khách hàng lo lắng không biết nên lựa chọn các loại giấy in nào phù hợp để in các ấn phẩm đẹp, độ bền lâu, giá cả phù hợp nhất. Sau đây in24.vn sẽ giới thiệu sơ nét về một số loại giấy in phổ biến được dùng trong in ấn:', '', '', '<h3 style=\"color:rgb(28, 38, 74); font-style:normal; text-align:left\"><span style=\"color:rgb(0, 0, 0)\"><strong>1. Giấy Ford</strong>:</span></h3>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0); font-family:&amp; font-size:15.2px\">Ford là loại giấy trắng phổ biến và thông dụng. Thường sử dụng để in tài liệu, scan tài liệu hàng ngày. Thường thấy nhất là giấy A4 trong các tiệm photo. Định lượng thường từ 70-80-90 gsm. Giấy ford có bề mặt nhám, bám mực tốt (do đó mực in không đẹp lắm) cũng được dùng làm bao thư lớn, bao thư nhỏ, giấy note, letter head (giấy tiêu đề), hóa đơn, tập học sinh…</span><span style=\"background-color:rgb(255, 255, 255); color:rgb(28, 38, 74); font-family:roboto condensed,sans-serif; font-size:15.2px\">&nbsp;</span></p>\r\n\r\n<p><img alt=\"Giấy ford dùng trong in ấn \" class=\"lazy-load-active wp-image-1768\" src=\"https://123in.vn/wp-content/uploads/2018/07/giay-ford-kem-nhat-123in-768x768.jpg\" style=\"border-bottom-style:none; border-left-style:none; border-right-style:none; border-top-style:none; box-sizing:border-box; display:inline-block; height:auto; max-width:100%; opacity:1; transition-delay:0s; transition-duration:1s; transition-property:opacity; transition-timing-function:ease; vertical-align:middle; width:378px\" /></p>\r\n\r\n<p>Giấy ford chất lượng cao tại 123in</p>\r\n\r\n<h3 style=\"color:rgb(28, 38, 74); font-style:normal; text-align:left\"><span style=\"color:rgb(0, 0, 0)\"><strong>2. Giấy Couche:</strong></span></h3>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0); font-family:&amp; font-size:15.2px\">Là loại giấy có bề mặt bóng, mịn, láng, khi in rất bắt mắt và sáng. Thường dùng để <a href=\"http://new.123in.vn/in-an/in-card-visit/in-card-visit-re-dep-tp-hcm\" style=\"background-color: transparent; box-sizing: border-box; color: rgb(50, 124, 203); text-decoration: none; touch-action: manipulation;\">in name card</a><a href=\"http://new.123in.vn/in-an/in-brochure/in-catalogue?preview_id=1748&amp;preview_nonce=f8e5989f53&amp;post_format=standard&amp;_thumbnail_id=1751&amp;preview=true\" style=\"background-color: transparent; box-sizing: border-box; color: rgb(50, 124, 203); text-decoration: none; touch-action: manipulation;\">, in catalogue</a>, in tờ rơi quảng cáo, tạp chí, in poster, in brochure.&nbsp;Định lượng vào khoảng 90-300g/m2, phù hợp với nhiều công nghệ in, kể cả in offset. </span><span style=\"color:rgb(0, 0, 0); font-family:&amp; font-size:15.2px\">Ngoài ra còn có Couche matt bề mặt mờ, không bóng nhưng bề mặt nhẵn mịn thướng để in hình ảnh người, chân dung cho hiệu ứng cao. Giống như Couché nhưng nhìn có tính art/ mềm dịu hơn. Lưu ý: giấy Couché Matt có thể viết được.</span></p>\r\n\r\n<p><img alt=\"các loại giấy couche cao cấp, giá rẻ tại 123in\" class=\"lazy-load-active wp-image-1769\" src=\"https://123in.vn/wp-content/uploads/2018/07/cac-loai-giay-in-giay-couche-cao-cap.jpg\" style=\"border-bottom-style:none; border-left-style:none; border-right-style:none; border-top-style:none; box-sizing:border-box; display:inline-block; height:auto; max-width:100%; opacity:1; transition-delay:0s; transition-duration:1s; transition-property:opacity; transition-timing-function:ease; vertical-align:middle; width:450px\" /></p>\r\n\r\n<p>Các loại giấy couche cao cấp</p>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0); font-family:&amp; font-size:15.2px\">Sản phẩm đẳng cấp chuyên dành cho các CEO, giám đốc, chủ doanh nghiệp với chất liệu giấy couche 400gsm cao cấp nhất thị trường, in bằng công nghệ kỹ thuật số đảm bảo màu sắc hoàn hảo, độ chính xác cao và chất lượng sắc nét nhất.</span></p>\r\n\r\n<p><img alt=\"Name card cao cấp dành cho CEO\" class=\"lazy-load-active size-full wp-image-1921\" src=\"https://123in.vn/wp-content/uploads/2018/07/name-card-cao-cap-123in.png\" style=\"border-bottom-style:none; border-left-style:none; border-right-style:none; border-top-style:none; box-sizing:border-box; display:inline-block; height:auto; max-width:100%; opacity:1; transition-delay:0s; transition-duration:1s; transition-property:opacity; transition-timing-function:ease; vertical-align:middle; width:400px\" /></p>\r\n\r\n<p>Name card cao cấp dành cho CEO</p>\r\n\r\n<h3 style=\"color:rgb(28, 38, 74); font-style:normal; text-align:left\"><strong><span style=\"color:rgb(0, 0, 0)\">3.&nbsp;Giấy Bristol:&nbsp;</span></strong></h3>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0); font-family:&amp; font-size:15.2px\">Là loại giấy bìa (broad) không tráng phủ (uncoated) nhưng tráng láng 2 mặt cho in ấn đạt hiệu ứng cao. Giấy Bristol giống&nbsp;như Couché Matte nhưng có độ cứng hơn (khi so sánh cùng định lượng). Bề mặt giấy được cán láng hoàn thiện nên hơi bóng, mịn, bám mực tốt vừa phải. Khá thích hợp cho in offset. Giấy in bristol thường được ép vài lớp giấy lại với nhau nên khá dày, nặng.</span><span style=\"color:rgb(0, 0, 0); font-family:&amp; font-size:15.2px\">Thích hợp làm bìa bên ngoài hoặc ấn phẩm cần độ cứng cáp như thiệp, folder; in hộp xà bông, mỹ phẩm, dược phẩm, card, bìa hồ sơ, in brochure, in tờ rơi, in poster, thiệp cưới, thiệp mời… định lượng thường thấy ở mức 230 – 350g/m2.</span></p>\r\n\r\n<p><img alt=\"Thiệp cưới in giấy bristol đẹp rẻ tại 123in\" class=\"lazy-load-active wp-image-1773\" src=\"https://123in.vn/wp-content/uploads/2018/07/thiep-cuoi-giay-bristol-768x512.jpg\" style=\"border-bottom-style:none; border-left-style:none; border-right-style:none; border-top-style:none; box-sizing:border-box; display:inline-block; height:auto; max-width:100%; opacity:1; transition-delay:0s; transition-duration:1s; transition-property:opacity; transition-timing-function:ease; vertical-align:middle; width:512px\" /></p>\r\n\r\n<p>Thiệp cưới in giấy bristol</p>\r\n\r\n<h3 style=\"color:rgb(28, 38, 74); font-style:normal; text-align:left\"><span style=\"color:rgb(0, 0, 0)\"><strong>4. Giấy Ivory</strong></span></h3>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0); font-family:&amp; font-size:15.2px\">Giấy Ivory cũng tương tự như Bristol, nhưng chỉ có một mặt láng, mặt còn lại sần sùi, thường nằm ở mặt trong sản phẩm. Thích hợp dùng làm bao bì thực phẩm&nbsp;hay túi giấy.&nbsp;Giấy được dùng làm bao bì thực phẩm thường phải được kiểm định an toàn thực phẩm khi được sử dụng làm vỏ hộp, vỏ bao bì thực phẩm.</span></p>\r\n\r\n<h3 style=\"color:rgb(28, 38, 74); font-style:normal; text-align:left\"><strong><span style=\"color:rgb(0, 0, 0)\">5. Giấy Duplex</span></strong></h3>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0); font-family:&amp; font-size:15.2px\">Có bề mặt trắng và láng gần với Bristol, mặt kia thường sẫm như giấy bồi. Thường dùng in các hộp sản phẩm kích thước hơi lớn, cần có độ cứng, chắc chắn vì định lượng thường trên 300g/m2. Thường tráng 1 hoặc cả 2 mặt. Không “ăn mực” màu sắc thể hiện không đẹp, rõ nét, cứng. Duplex thích hợp cho việc làm bao bì.</span></p>\r\n\r\n<p><img alt=\"in hộp giấy chất liệu giấy duplex\" class=\"lazy-load-active wp-image-1775\" src=\"https://123in.vn/wp-content/uploads/2018/07/in-hop-nhan-giay-duplex-123in-768x577.jpg\" style=\"border-bottom-style:none; border-left-style:none; border-right-style:none; border-top-style:none; box-sizing:border-box; display:inline-block; height:auto; max-width:100%; opacity:1; transition-delay:0s; transition-duration:1s; transition-property:opacity; transition-timing-function:ease; vertical-align:middle; width:520px\" /></p>\r\n\r\n<p>Hộp giấy chất liệu giấy duplex</p>\r\n\r\n<h3 style=\"color:rgb(28, 38, 74); font-style:normal; text-align:left\"><strong><span style=\"color:rgb(0, 0, 0)\">6. Giấy Crystal</span></strong></h3>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0); font-family:&amp; font-size:15.2px\">Có một mặt rất láng, bóng gần như có phủ lớp keo bóng vậy, mặt kia nhám, thường xài trung gian giữa giấy Bristol và giấy Couche tùy theo mục đích yêu cầu sản phẩm…</span></p>\r\n\r\n<h3 style=\"color:rgb(28, 38, 74); font-style:normal; text-align:left\"><strong><span style=\"color:rgb(0, 0, 0)\">7.&nbsp;Giấy can&nbsp;: </span></strong></h3>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0); font-family:&amp; font-size:15.2px\">Là giấy có khả năng thấu quang cao, nghĩa là có thể cho ánh sáng đi qua. Giấy thu được sau một quá trình lọc đặc biệt kỹ càng bột giấy trong quá trình simili sunphua hóa. Bột giấy để sản xuất giấy can thường là bột ngâm bi-sun-phat; các sợi giấy được cán nát, thủy phân lâu trong nước. Quy trình sản xuất giấy này tương tự như giấy giả da gốc thực vật (giấy sunphua hóa, giấy giả da) là loại giấy được tạo ra bằng cách ngâm trong vài giây một tờ giấy chất lượng tốt, không hồ cũng không phủ, trong một bể axit sunphuaric để thủy phân xenlulo từng phần sang amyloit, gelatin và không thấm nước hoặc mỡ. Giấy can bao gồm cả giấy can trong tự nhiên và giấy can màu.</span></p>\r\n\r\n<h3 style=\"color:rgb(28, 38, 74); font-style:normal; text-align:left\"><strong><span style=\"color:rgb(0, 0, 0)\">8.&nbsp;Decal&nbsp;: </span></strong></h3>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0); font-family:&amp; font-size:15.2px\">Dùng để&nbsp;in Decal&nbsp;trong&nbsp;đó một mặt để in, mặt kia phủ keo. Không “ăn mực”. Nên cán màng bóng để tăng tone màu và bảo vệ lớp mực.</span></p>\r\n\r\n<p><img alt=\"In decal giá rẻ, đẹp, nhanh, lấy liền\" class=\"lazy-load-active wp-image-1778\" src=\"https://123in.vn/wp-content/uploads/2018/07/in-decal-ky-thuat-so-offset-hcm-123in-768x432.jpg\" style=\"border-bottom-style:none; border-left-style:none; border-right-style:none; border-top-style:none; box-sizing:border-box; display:inline-block; height:auto; max-width:100%; opacity:1; transition-delay:0s; transition-duration:1s; transition-property:opacity; transition-timing-function:ease; vertical-align:middle; width:689px\" /></p>\r\n\r\n<p>In decal kỹ thuật số in gấp, lấy ngay tại 123in</p>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0); font-family:&amp; font-size:15.2px\">Ngoài ra còn có các loại giấy mỹ thuật, cán gân, dát vàng, bạc … in&nbsp;giấy khen, in giấy chứng nhận,&nbsp;thiệp cưới … các loại giấy than, giấy carton và nhiều loại khác nữa</span></p>\r\n\r\n<h3 style=\"color:rgb(28, 38, 74); font-style:normal; text-align:left\"><strong><span style=\"color:rgb(0, 0, 0)\">9. Giấy màu mỹ thuật: </span></strong></h3>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0); font-family:&amp; font-size:15.2px\">Mẫu danh thiếp độc đáo, riêng biệt được sáng tạo bởi 123in có thiết kế đơn giản vẫn nổi bật bởi nền màu (đen/xanh/đỏ/gold) với chi tiết được in bằng mực màu trắng. Dễ dàng đồng bộ với màu sắc của bộ nhận diện thương hiệu.</span></p>\r\n\r\n<p><img alt=\"In name card giá rẻ, lấy ngay chỉ có tại 123in\" class=\"lazy-load-active wp-image-1615\" src=\"https://123in.vn/wp-content/uploads/2018/07/Name-card-in-dep-gia-re-lay-ngay.png\" style=\"border-bottom-style:none; border-left-style:none; border-right-style:none; border-top-style:none; box-sizing:border-box; display:inline-block; height:auto; max-width:100%; opacity:1; transition-delay:0s; transition-duration:1s; transition-property:opacity; transition-timing-function:ease; vertical-align:middle; width:527px\" /></p>\r\n\r\n<p>In name card giá rẻ, lấy ngay</p>\r\n\r\n<h3 style=\"color:rgb(28, 38, 74); font-style:normal; text-align:left\"><span style=\"color:rgb(0, 0, 0)\"><strong>10. Giấy kraft</strong></span></h3>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0); font-family:&amp; font-size:15.2px\">In ấn trên chất liệu giấy kraft hiện nay đang là xu hướng của giới trẻ, dành cho những khách hàng yêu thích đặc tính thân thiện với môi trường của giấy kraft. Ấn phẩm mang phong cách thiết kế cổ điển, hoài cổ, tạo sự khác biệt.</span></p>\r\n\r\n<p><img alt=\"In trên chất liệu giấy kraft rẻ đẹp\" class=\"lazy-load-active size-full wp-image-1922\" src=\"https://123in.vn/wp-content/uploads/2018/07/in-an-giay-kraft-sieu-dep.jpg\" style=\"border-bottom-style:none; border-left-style:none; border-right-style:none; border-top-style:none; box-sizing:border-box; display:inline-block; height:auto; max-width:100%; opacity:1; transition-delay:0s; transition-duration:1s; transition-property:opacity; transition-timing-function:ease; vertical-align:middle; width:1600px\" /></p>\r\n', '', '', '857281147447_8.jpg', 1556348754, 0, 0, 0, 'PHÂN BIỆT: GIẤY COUCHE, GIẤY FORD , GIẤY KAFT ,GIẤY DUPLEX ,GIẤY GLOSSY , GIẤY MỸ THUẬT ,GIẤY TÁI SINH', '', '', '', '', '', '', 175, 0, '', '', ''),
(628, 'Thanh Toán', '', '', 'thanh-toan', '', '', '', '', '', '<h2 style=\"font-style:normal; text-align:left\"><span style=\"font-size:20px\"><span style=\"color:#008080\">Tài khoản thanh toán:</span></span></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"color:#FF0000\"><strong>1. Tài khoản Công Ty:</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\">&nbsp; &nbsp; &nbsp;Tên: <strong>CÔNG TY TNHH IN QUẢNG CÁO THIÊN MINH</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">&nbsp; &nbsp; &nbsp;Số tài khoản: <strong>258910659</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">&nbsp; &nbsp; &nbsp;Tại <strong>Ngân hàng Á Châu, Phòng giao dịch Tam Hà</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"color:#FF0000\"><strong>2. Tài khoản cá nhân:</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\">&nbsp; &nbsp; &nbsp;- <span style=\"color:#008080\">Tài khoản VIETCOMBANK :&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span>&nbsp;- <span style=\"color:#008080\">Tài khoản BIDV:</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\">&nbsp; &nbsp; &nbsp;- Chủ tái khoản: Trương Công An&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- Chủ tài khoản: Trương Công An</span></p>\r\n\r\n<p><span style=\"font-size:14px\">&nbsp; &nbsp; &nbsp;- Số: 0071002211375 chi nhánh Lê Thánh Tôn&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Số : Chi nhánh Ba tháng Hai</span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '527416458285_43.jpg', 1556348755, 1, 0, 1, 'Thanh Toán', '', '', '', '', '', '', 175, 0, '', '', ''),
(629, 'Giao nhận hàng', '', '', 'giao-nhan-hang-600', '', '', '', '', '', '<p>&nbsp;</p>\r\n\r\n<p><strong>&nbsp; &nbsp; &nbsp; &nbsp; <span style=\"font-size:14px\">&nbsp; &nbsp; - Chúng tôi nhận vận chuyễn miễn phí với nhưng đơn hàng trong phạm vi 15km và có giá trị trên 500.000 đ</span></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Vận chuyển miễn phí gửi hàng ra các chành chuyển đi các tình (chi phí gửi hàng thỏa thuận).</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; -&nbsp; Hỗ trợ giao hàng với những đơn hàng cần gấp.</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '376698993242_42.jpg', 1556348756, 1, 0, 1, 'Giao nhận hàng', '', '', '', '', '', '', 175, 0, '', '', ''),
(630, 'Báo giá và đặt hàng', '', '', 'bao-gia-va-dat-hang', '', '', 'Báo giá và đặt hàng', '', '', '<p>Báo giá và đặt hàng</p>\r\n', '', '', '', 1556350391, 0, 0, 1, 'Báo giá và đặt hàng', '', '', '', '', '', '', 498, 0, '', '', ''),
(631, 'Phương thức thanh toán', '', '', 'phuong-thuc-thanh-toan', '', '', 'Phương thức thanh toán', '', '', '<p>Phương thức thanh toán</p>\r\n', '', '', '', 1556350404, 0, 0, 1, 'Phương thức thanh toán', '', '', '', '', '', '', 498, 0, '', '', ''),
(632, 'Phương thức giao nhận', '', '', 'phuong-thuc-giao-nhan', '', '', 'Phương thức giao nhận', '', '', '<p>Phương thức giao nhận</p>\r\n', '', '', '', 1556350416, 0, 0, 1, 'Phương thức giao nhận', '', '', '', '', '', '', 498, 0, '', '', ''),
(633, 'Chính sách đổi trả', '', '', 'chinh-sach-doi-tra', '', '', '', '', '', '', '', '', '', 1556350425, 0, 0, 1, 'Chính sách đổi trả', '', '', '', '', '', '', 498, 0, '', '', ''),
(634, 'Chính sách bảo mật', '', '', 'chinh-sach-bao-mat', '', '', 'Chính sách bảo mật', '', '', '<p>Chính sách bảo mật</p>\r\n', '', '', '', 1556350442, 0, 0, 1, 'Chính sách bảo mật', '', '', '', '', '', '', 498, 0, '', '', ''),
(635, 'Bài viết giới thiệu', '', '', 'bai-viet-gioi-thieu', '', '', '', '', '', '<p style=\"text-align: center;\"><span style=\"color:#FF0000\"><strong>CÔNG TY TNHH IN QUẢNG CÁO THIÊN MINH</strong></span></p>\r\n\r\n<p>Công ty in Thiên Minh, chuyên cung cấp các dịch vụ in bao bì sản phẩm, in ấn phẩm quà tặng cá nhân, doanh nghiệp.</p>\r\n', '', '', '', 1556353390, 0, 0, 1, 'Bài viết giới thiệu', '', '', '', '', '', '', 272, 0, '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_user`
--

CREATE TABLE `db_user` (
  `id` int(11) NOT NULL,
  `token` text NOT NULL,
  `user_hash` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pass_hash` text NOT NULL,
  `tai_khoan` text NOT NULL,
  `email` text NOT NULL,
  `ho_ten` text NOT NULL,
  `dien_thoai` text NOT NULL,
  `dia_chi` text NOT NULL,
  `hinh_anh` text NOT NULL,
  `ngay_sinh` text NOT NULL,
  `gioi_tinh` int(11) NOT NULL,
  `quyen_han` int(11) NOT NULL,
  `hien_thi` int(11) NOT NULL,
  `ngay_tao` int(11) NOT NULL,
  `is_admin` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_user`
--

INSERT INTO `db_user` (`id`, `token`, `user_hash`, `pass_hash`, `tai_khoan`, `email`, `ho_ten`, `dien_thoai`, `dia_chi`, `hinh_anh`, `ngay_sinh`, `gioi_tinh`, `quyen_han`, `hien_thi`, `ngay_tao`, `is_admin`) VALUES
(17, '2c723b91d9c723c3691700c260c2c05cbb1edf5b', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'a37e3228b2a608142610c7f41568d6389495f1b6', 'Admin', 'kythuat.pnvn@gmail.com', 'Thien Minh', '', '', '', '', 1, 1, 1, 1473306606, 1),
(18, '2c723b91d9c723c3691700c260c2c05cbb1edf5b', '99c9687f589a9914c6369ed432eb37790fde04ba', 'a37e3228b2a608142610c7f41568d6389495f1b6', 'Thien Minh', 'kythuat.pnvn@gmail.com', 'Thien Minh', '', '', '', '', 1, 1, 1, 1473306606, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_user_permission_group`
--

CREATE TABLE `db_user_permission_group` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_permission` int(11) NOT NULL,
  `stt` int(11) NOT NULL,
  `hide` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_user_permission_group`
--

INSERT INTO `db_user_permission_group` (`id`, `id_user`, `id_permission`, `stt`, `hide`) VALUES
(3, 10, 1, 0, 0),
(4, 10, 2, 0, 0),
(9, 11, 1, 0, 0),
(10, 11, 2, 0, 0),
(11, 11, 5, 0, 0),
(12, 11, 6, 0, 0),
(13, 11, 10, 0, 0),
(14, 17, 1, 0, 0),
(15, 17, 2, 0, 0),
(16, 17, 6, 0, 0),
(17, 16, 1, 0, 0),
(18, 16, 2, 0, 0),
(19, 16, 6, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_video`
--

CREATE TABLE `db_video` (
  `id` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `ten_us` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL,
  `id_loai` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_video`
--

INSERT INTO `db_video` (`id`, `ten_vn`, `ten_us`, `link`, `hien_thi`, `id_loai`) VALUES
(19, 'Máy in Konica C3080', 'Apple', 'SX6pOfuOXQ', 1, 0),
(20, 'Konica Minolta IQ 501', 'Sony', 'YesG8GTZuGI', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `names`
--

CREATE TABLE `names` (
  `id` int(11) NOT NULL,
  `first` text COLLATE utf8_unicode_ci,
  `middle` text COLLATE utf8_unicode_ci,
  `last` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `names`
--

INSERT INTO `names` (`id`, `first`, `middle`, `last`, `email`) VALUES
(99, 'sản phẩm 4', 'hehe', 'jjj', 'jjj@yahoo.com'),
(98, 'sản phẩm 3', 'hoho', 'yyuy', 'yyy@gmail.com'),
(97, 'sản phẩm 2', 'kk', 'xxx', 'xxx@yahoo.com'),
(96, 'sản phẩm 1', '', 'vv', 'vv@yahoo.com');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `db_baiviet_hinhanh`
--
ALTER TABLE `db_baiviet_hinhanh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_category`
--
ALTER TABLE `db_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_chitietdathang`
--
ALTER TABLE `db_chitietdathang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_danhmuc_hoidap`
--
ALTER TABLE `db_danhmuc_hoidap`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_dathang`
--
ALTER TABLE `db_dathang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_datlich`
--
ALTER TABLE `db_datlich`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_dknhamau`
--
ALTER TABLE `db_dknhamau`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_email`
--
ALTER TABLE `db_email`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_extra`
--
ALTER TABLE `db_extra`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_file`
--
ALTER TABLE `db_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_gallery`
--
ALTER TABLE `db_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_hinhanh`
--
ALTER TABLE `db_hinhanh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_hinhthucthanhtoan`
--
ALTER TABLE `db_hinhthucthanhtoan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_hotro`
--
ALTER TABLE `db_hotro`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_khachhang`
--
ALTER TABLE `db_khachhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_kichthuoc`
--
ALTER TABLE `db_kichthuoc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_lienhe`
--
ALTER TABLE `db_lienhe`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_lienketwebsite`
--
ALTER TABLE `db_lienketwebsite`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_loaisanpham`
--
ALTER TABLE `db_loaisanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_loaitintuc`
--
ALTER TABLE `db_loaitintuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_map`
--
ALTER TABLE `db_map`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_mausac`
--
ALTER TABLE `db_mausac`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_module`
--
ALTER TABLE `db_module`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_nhomhotro`
--
ALTER TABLE `db_nhomhotro`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_permission_group`
--
ALTER TABLE `db_permission_group`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_quan`
--
ALTER TABLE `db_quan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_question`
--
ALTER TABLE `db_question`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_sanpham`
--
ALTER TABLE `db_sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_sanpham_hinhanh`
--
ALTER TABLE `db_sanpham_hinhanh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_seo`
--
ALTER TABLE `db_seo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_setting`
--
ALTER TABLE `db_setting`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_slide_sp`
--
ALTER TABLE `db_slide_sp`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_tags`
--
ALTER TABLE `db_tags`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_thanhpho`
--
ALTER TABLE `db_thanhpho`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_thanhvien`
--
ALTER TABLE `db_thanhvien`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_thongke`
--
ALTER TABLE `db_thongke`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_thongke_detail`
--
ALTER TABLE `db_thongke_detail`
  ADD PRIMARY KEY (`session_id`);

--
-- Chỉ mục cho bảng `db_thongtin`
--
ALTER TABLE `db_thongtin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_thuvienanh`
--
ALTER TABLE `db_thuvienanh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_tintuc`
--
ALTER TABLE `db_tintuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_user_permission_group`
--
ALTER TABLE `db_user_permission_group`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_video`
--
ALTER TABLE `db_video`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `names`
--
ALTER TABLE `names`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `db_baiviet_hinhanh`
--
ALTER TABLE `db_baiviet_hinhanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `db_category`
--
ALTER TABLE `db_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=508;
--
-- AUTO_INCREMENT cho bảng `db_chitietdathang`
--
ALTER TABLE `db_chitietdathang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=495;
--
-- AUTO_INCREMENT cho bảng `db_danhmuc_hoidap`
--
ALTER TABLE `db_danhmuc_hoidap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `db_dathang`
--
ALTER TABLE `db_dathang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;
--
-- AUTO_INCREMENT cho bảng `db_datlich`
--
ALTER TABLE `db_datlich`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `db_dknhamau`
--
ALTER TABLE `db_dknhamau`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `db_email`
--
ALTER TABLE `db_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT cho bảng `db_extra`
--
ALTER TABLE `db_extra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT cho bảng `db_file`
--
ALTER TABLE `db_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT cho bảng `db_gallery`
--
ALTER TABLE `db_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT cho bảng `db_hinhanh`
--
ALTER TABLE `db_hinhanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT cho bảng `db_hinhthucthanhtoan`
--
ALTER TABLE `db_hinhthucthanhtoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT cho bảng `db_hotro`
--
ALTER TABLE `db_hotro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT cho bảng `db_khachhang`
--
ALTER TABLE `db_khachhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `db_kichthuoc`
--
ALTER TABLE `db_kichthuoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `db_lienhe`
--
ALTER TABLE `db_lienhe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT cho bảng `db_lienketwebsite`
--
ALTER TABLE `db_lienketwebsite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT cho bảng `db_loaisanpham`
--
ALTER TABLE `db_loaisanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT cho bảng `db_loaitintuc`
--
ALTER TABLE `db_loaitintuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT cho bảng `db_map`
--
ALTER TABLE `db_map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT cho bảng `db_mausac`
--
ALTER TABLE `db_mausac`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT cho bảng `db_module`
--
ALTER TABLE `db_module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT cho bảng `db_nhomhotro`
--
ALTER TABLE `db_nhomhotro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `db_permission_group`
--
ALTER TABLE `db_permission_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT cho bảng `db_quan`
--
ALTER TABLE `db_quan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `db_question`
--
ALTER TABLE `db_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `db_sanpham`
--
ALTER TABLE `db_sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=750;
--
-- AUTO_INCREMENT cho bảng `db_sanpham_hinhanh`
--
ALTER TABLE `db_sanpham_hinhanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=590;
--
-- AUTO_INCREMENT cho bảng `db_seo`
--
ALTER TABLE `db_seo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `db_setting`
--
ALTER TABLE `db_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT cho bảng `db_slide_sp`
--
ALTER TABLE `db_slide_sp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT cho bảng `db_tags`
--
ALTER TABLE `db_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT cho bảng `db_thanhpho`
--
ALTER TABLE `db_thanhpho`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `db_thanhvien`
--
ALTER TABLE `db_thanhvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT cho bảng `db_thongke`
--
ALTER TABLE `db_thongke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `db_thongtin`
--
ALTER TABLE `db_thongtin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `db_thuvienanh`
--
ALTER TABLE `db_thuvienanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT cho bảng `db_tintuc`
--
ALTER TABLE `db_tintuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=637;
--
-- AUTO_INCREMENT cho bảng `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT cho bảng `db_user_permission_group`
--
ALTER TABLE `db_user_permission_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT cho bảng `db_video`
--
ALTER TABLE `db_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT cho bảng `names`
--
ALTER TABLE `names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 15, 2019 at 01:58 PM
-- Server version: 5.5.31
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pnvina_demo13`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_baiviet_hinhanh`
--

CREATE TABLE `db_baiviet_hinhanh` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `id_baiviet` int(11) NOT NULL,
  `hinh_anh` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_category`
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
-- Dumping data for table `db_category`
--

INSERT INTO `db_category` (`id`, `id_loai`, `alias_vn`, `alias_us`, `alias_ch`, `ten_vn`, `ten_us`, `ten_ch`, `mo_ta_vn`, `mo_ta_us`, `mo_ta_ch`, `noi_dung_vn`, `noi_dung_us`, `noi_dung_ch`, `hinh_anh`, `so_thu_tu`, `title_vn`, `title_us`, `title_ch`, `keyword`, `des`, `hien_thi`, `tieu_bieu`, `menu`, `module`, `level`) VALUES
(175, 0, 'tin-tuc', 'news', '', 'Tin tức', 'News', '', '', '', '', '', '', '', '', 5, 'Tin tức', 'News', '', '', '', 1, 1, 0, 2, 0),
(466, 0, 'doi-tac', '', '', 'Đối tác', '', '', '', '', '', '', '', '', '', 8, 'Đối tác', '', '', '', '', 1, 0, 0, 1, 0),
(258, 0, 'lien-he', 'contacts', '', 'Liên hệ', 'Contacts', '', '', '', '', '', '', '', '', 7, 'Liên hệ', 'Contacts', '', '', '', 1, 1, 0, 5, 0),
(272, 0, 'gioi-thieu', 'about-us', '', 'Giới thiệu', 'About us', '', '', '', '', '', '', '', '', 1, 'Giới thiệu', 'About us', '', '', '', 1, 1, 0, 2, 0),
(476, 0, 'chinh-sach-chung', 'why-choose-us', '', 'Chính sách chung', 'Why choose us', '', '<p>Chưa bao giờ ngừng việc cải thiện của khách hàng</p>\r\n', '<p>Never stop improving the value of customers</p>\r\n', '', '', '', '', '', 3, 'Chính sách chung', '', '', '', '', 1, 1, 0, 2, 0),
(489, 0, 'tuyen-dung', '', '', 'Tuyển dụng', '', '', '', '', '', '', '', '', '', 4, 'Tuyển dụng', '', '', '', '', 1, 1, 0, 2, 0),
(251, 0, 'san-pham', '', '', 'Sản phẩm', '', '', '', '', '', '', '', '', '', 2, 'Sản phẩm', '', '', '', '', 1, 1, 0, 3, 0),
(490, 0, 'vi-sao-chon-chung-toi', '', '', 'Vì sao chọn chúng tôi', '', '', '', '', '', '', '', '', '', 8, 'Vì sao chọn chúng tôi', '', '', '', '', 1, 0, 0, 2, 0),
(491, 0, 'dich-vu', '', '', 'Dịch vụ', '', '', '', '', '', '', '', '', '', 9, 'Dịch vụ', '', '', '', '', 0, 0, 0, 2, 0),
(492, 251, 'thiet-ke-in-bao-bi-giay', '', '', 'Thiết kế & in bao bì giấy', '', '', '', '', '', '', '', '', '', 10, 'Thiết kế & in bao bì giấy', '', '', '', '', 1, 0, 0, 3, 1),
(493, 251, 'in-an-pham-quang-cao-50', '', '', 'In ấn phẩm quảng cáo', '', '', '', '', '', '', '', '', '', 11, 'In ấn phẩm quảng cáo', '', '', '', '', 1, 0, 0, 3, 1),
(494, 251, 'in-an-pham-van-phong-13', '', '', 'In ấn phẩm văn phòng', '', '', '', '', '', '', '', '', '', 12, 'In ấn phẩm văn phòng', '', '', '', '', 1, 0, 0, 3, 1),
(495, 251, 'in-an-pham-qua-tang', '', '', 'In ấn phẩm quà tặng', '', '', '', '', '', '', '', '', '', 13, 'In ấn phẩm quà tặng', '', '', '', '', 1, 0, 0, 3, 1),
(497, 0, 'y-kien-khach-hang', '', '', 'Ý kiến khách hàng', '', '', '', '', '', '', '', '', '', 15, 'Ý kiến khách hàng', '', '', '', '', 1, 0, 0, 2, 0),
(498, 0, 'thong-tin-huu-ich', '', '', 'Thông tin hữu ích', '', '', '', '', '', '', '', '', '', 16, 'Thông tin hữu ích', '', '', '', '', 1, 0, 0, 2, 0),
(499, 272, 'vi-sao-chon-chung-toi-67', '', '', 'Vì sao chọn chúng tôi', '', '', '', '', '', '', '', '', '', 17, 'Vì sao chọn chúng tôi', '', '', '', '', 1, 0, 0, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_chitietdathang`
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
-- Dumping data for table `db_chitietdathang`
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
(491, 251, 'DH25199Z7C', 679, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_danhmuc_hoidap`
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
-- Dumping data for table `db_danhmuc_hoidap`
--

INSERT INTO `db_danhmuc_hoidap` (`id`, `ten_vn`, `alias_vn`, `so_thu_tu`, `title_vn`, `keyword`, `des`, `hien_thi`) VALUES
(1, 'Nhóm câu 1', 'nhom-cau-1', 1, 'Nhóm câu 1', '', '', 1),
(3, 'Nhóm câu 2', 'nhom-cau-2', 2, 'Nhóm câu 2', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_dathang`
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
-- Dumping data for table `db_dathang`
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
(251, '', '', '', '', '', '', 0, '', '1496800110', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `db_datlich`
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
-- Dumping data for table `db_datlich`
--

INSERT INTO `db_datlich` (`id`, `name`, `donvi`, `chuyenmon`, `email`, `phone`, `mota`, `mucdo`, `vaitro`, `khac`, `tuvan`, `capthiet`, `day`, `view`) VALUES
(1, 'Hoàng Hiển', 'Trường Trung Cấp Công Nghiệp Bình Dương', 'Công nghệ thông tin và kỹ thuật máy tính', 'thantaihoi@zing.vn', '45345435', 'Công dụng, đặc tính, những điểm nổi bật so với những sản phẩm/dịch vụ hiện có trên thị trườngCông dụng, đặc tính, những điểm nổi bật so với những sản phẩm/dịch vụ hiện có trên thị trườngCông dụng, đặc tính, những điểm nổi bật so với những sản phẩm/dịch vụ hiện có trên thị trườngCông dụng, đặc tính, những điểm nổi bật so với những sản phẩm/dịch vụ hiện có trên thị trường', 1, '0', 'test khác lung tung xì ngầu', '(Ví dụ: tư vấn nghiên cứu hoàn thiện sản phẩm/dịch vụ; kiểm nghiệm tính khả thi của ý tưởng; tư vấn xây dựng/hoàn thiện KHKD; tư vấn bảo hộ SHTT; tư vấn pháp lý; tư vấn cách thức triển khai; ...)...)', 'rất cần thiết lun đó nha! dự án trăm triệu đô la đó', 1461295558, 1),
(2, 'Nguyễn Văn A', 'Trường Đại Học Hồng Bàng', 'Nghiên cứu vi sinh vật', 'hnhoanghien@gmail.com', '554534566', 'Công dụng, đặc tính, những điểm nổi bật so với những sản phẩm/dịch vụ hiện có trên thị trườngCông dụng, đặc tính, những điểm nổi bật so với những sản phẩm/dịch vụ hiện có trên thị trườngCông dụng, đặc tính, những điểm nổi bật so với những sản phẩm/dịch vụ hiện có trên thị trường', 2, '5,6,10', '', '(Ví dụ: tư vấn nghiên cứu hoàn thiện sản phẩm/dịch vụ; kiểm nghiệm tính khả thi của ý tưởng; tư vấn xây dựng/hoàn thiện KHKD; tư vấn bảo hộ SHTT; tư vấn pháp lý; tư vấn cách thức triển khai; ...)...)', 'Nếu dự án của bạn đang cần được hỗ trợ gấp hãy thông tin để chúng tôi biết và ưu tiên xếp lịch hẹn sớm', 1461296811, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_dknhamau`
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
-- Dumping data for table `db_dknhamau`
--

INSERT INTO `db_dknhamau` (`id`, `ten_vn`, `so_dien_thoai`, `email`, `dia_chi`, `ngay_dang`, `hien_thi`) VALUES
(1, 'Nguyễn Long', '0982 382 323', 'kythuat01.pnvn@gmail.com', '', 272637, 1),
(2, 'Nguyễn Long', '0928 329 212', 'kythuat01.pnvn@gmail.com', '', 1446870899, 1),
(3, '', '', '', '', 1447053480, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_email`
--

CREATE TABLE `db_email` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ngay_gui` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_extra`
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
-- Dumping data for table `db_extra`
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
-- Table structure for table `db_file`
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
-- Table structure for table `db_gallery`
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
-- Dumping data for table `db_gallery`
--

INSERT INTO `db_gallery` (`id`, `parent`, `picture`, `stt`, `hide`, `title_vn`, `title_us`, `title_ch`, `link`, `body_vn`, `body_us`, `body_ch`) VALUES
(94, 466, '886211100470_dt5.png', 5, 1, 'Shop Trang Phục Hàng Xanh', '', '', 'http://goo.gl/xoos1V', '', '', ''),
(93, 466, '007577067791_dt4.png', 4, 1, 'Điện lạnh Hoàng Long', '', '', 'http://goo.gl/E7QDvY', '', '', ''),
(92, 466, '422323957516_dt3.png', 3, 1, 'Công ty Điện lạnh Bảo An', '', '', 'http://goo.gl/mL45dw', '', '', ''),
(91, 466, '353483596774_dt2.jpg', 2, 1, 'Công ty Phương Nam Vina', '', '', 'http://goo.gl/Mu9jCw', '', '', ''),
(90, 466, '946370982028_dt1.png', 1, 1, 'Công ty mái che Đại Việt', '', '', 'http://goo.gl/g28LUS', '', '', ''),
(95, 466, '316385153865_logo.png', 6, 1, 'Đối tác', '', '', '', '', '', ''),
(96, 466, '375603708440_slider.png', 7, 1, 'Đối tác 1', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `db_hinhanh`
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
-- Table structure for table `db_hinhthucthanhtoan`
--

CREATE TABLE `db_hinhthucthanhtoan` (
  `id` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `noi_dung_vn` text NOT NULL,
  `so_thu_tu` int(11) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_hinhthucthanhtoan`
--

INSERT INTO `db_hinhthucthanhtoan` (`id`, `ten_vn`, `noi_dung_vn`, `so_thu_tu`, `hien_thi`) VALUES
(1, 'Thanh toán khi nhận hàng (COD)', '', 1, 1),
(2, 'Chuyển khoản', 'Transfer', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_hotro`
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
-- Dumping data for table `db_hotro`
--

INSERT INTO `db_hotro` (`id`, `id_loai`, `ten_vn`, `ten_us`, `ten_jp`, `ten_ch`, `hinh_anh`, `yahoo`, `skype`, `sdt`, `so_thu_tu`, `hien_thi`, `zalo`, `mo_ta_vn`, `mo_ta_us`) VALUES
(18, '', 'Chăm sóc khách hàng', '', '', '', '', '0986175175', 'live:hcmthienan', '0986175175', 2, 1, '0933 642 269', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `db_khachhang`
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
-- Dumping data for table `db_khachhang`
--

INSERT INTO `db_khachhang` (`id`, `ten_vn`, `mat_khau`, `ho_ten`, `so_dien_thoai`, `email`, `dia_chi`, `ngay_dang`, `hien_thi`) VALUES
(3, 'kythuat01', 'c9ece136c3e846349a5a1312442fb99a', 'ho ten', 'so dt', 'emai', 'dc', 1442303304, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_kichthuoc`
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
-- Dumping data for table `db_kichthuoc`
--

INSERT INTO `db_kichthuoc` (`id`, `ten_vn`, `ten_us`, `gia`, `so_thu_tu`, `hien_thi`) VALUES
(1, 'Lớn', '', 0, 1, 1),
(2, 'Trung bình', '', 0, 2, 1),
(3, 'Nhỏ', '', 0, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_lienhe`
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
-- Table structure for table `db_lienketwebsite`
--

CREATE TABLE `db_lienketwebsite` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `link` text NOT NULL,
  `so_thu_tu` int(11) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_lienketwebsite`
--

INSERT INTO `db_lienketwebsite` (`id`, `title`, `link`, `so_thu_tu`, `hien_thi`) VALUES
(77, 'vnexpress', 'http://vnexpress.net', 7, 1),
(76, 'dantri', 'htpp://dantri.com', 6, 1),
(75, 'facebook', 'http://facebook.com', 5, 1),
(74, 'Youtube', 'http://youtube.com', 4, 1),
(78, 'google.com', 'http://google.com.vn', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_loaisanpham`
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
-- Table structure for table `db_loaitintuc`
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
-- Dumping data for table `db_loaitintuc`
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
-- Table structure for table `db_map`
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
-- Dumping data for table `db_map`
--

INSERT INTO `db_map` (`id`, `map`, `ten_vn`, `ten_us`, `ten_ch`, `mo_ta_vn`, `mo_ta_us`, `mo_ta_ch`, `noi_dung_vn`, `noi_dung_us`, `noi_dung_ch`, `so_thu_tu`, `hien_thi`) VALUES
(17, '10.757722, 106.659059', 'Tên công ty chi nhánh 3', '', '', 'Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3', '', '', '0985 357 584Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3<br />\r\n<br />\r\nTên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3<br />\r\n<br />\r\nTên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3<br />\r\n<br />\r\nTên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3<br />\r\n<br />\r\nTên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3<br />\r\n<br />\r\nTên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3<br />\r\n<br />\r\nTên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3Tên công ty chi nhánh 3', '', '', 1, 1),
(18, '10.754707, 106.657053', 'Tên công ty chi nhánh 2', '', '', 'Tên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2', '', '', 'Tên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2<br />\r\n<br />\r\nTên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2<br />\r\n<br />\r\nTên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2<br />\r\n<br />\r\n<br />\r\nTên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2<br />\r\n<br />\r\nTên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2&nbsp;Tên công ty chi nhánh 2', '', '', 2, 1),
(19, '10.753210, 106.661151', 'Tên chi nhánh 1', '', '', 'Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1', '', '', 'Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1Mô tả ngắn chi nhánh 1 !<br />\r\ndia diem cong ty chinh nhanh 1<br />\r\nso phone cong ty chi nhánh 1', '', '', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_mausac`
--

CREATE TABLE `db_mausac` (
  `id` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `so_thu_tu` int(11) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_mausac`
--

INSERT INTO `db_mausac` (`id`, `ten_vn`, `so_thu_tu`, `hien_thi`) VALUES
(11, 'Xanh nhạt', 5, 1),
(10, 'Hồng', 4, 1),
(9, 'Đỏ', 3, 1),
(8, 'Trắng', 2, 1),
(7, 'Vàng', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_module`
--

CREATE TABLE `db_module` (
  `id` int(11) NOT NULL,
  `stt` int(11) NOT NULL,
  `hide` int(11) NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_module`
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
-- Table structure for table `db_nhomhotro`
--

CREATE TABLE `db_nhomhotro` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `stt` int(11) NOT NULL,
  `hide` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_nhomhotro`
--

INSERT INTO `db_nhomhotro` (`id`, `title`, `stt`, `hide`) VALUES
(1, 'Hỗ trợ kinh doanh', 1, 1),
(2, 'Tư vấn khách hàng', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_permission_group`
--

CREATE TABLE `db_permission_group` (
  `id` int(11) NOT NULL,
  `page` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `stt` int(11) NOT NULL,
  `hide` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_permission_group`
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
-- Table structure for table `db_quan`
--

CREATE TABLE `db_quan` (
  `id` int(11) NOT NULL,
  `id_loai` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `so_thu_tu` int(11) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_quan`
--

INSERT INTO `db_quan` (`id`, `id_loai`, `ten_vn`, `so_thu_tu`, `hien_thi`) VALUES
(1, 1, 'Quận 1', 1, 1),
(2, 1, 'Quận 2', 2, 1),
(3, 1, 'Quận 3', 3, 1),
(4, 4, 'Hoàng Kiếm', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_question`
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
-- Dumping data for table `db_question`
--

INSERT INTO `db_question` (`id`, `ten`, `cau_hoi`, `tra_loi`, `ngay`, `hien_thi`) VALUES
(1, 'Hoang hien', 'Làm sao để có thể làm giàu nhanh chóng không cần làm việc', 'Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!<br />\r\n<br />\r\n<br />\r\nBỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!<br />\r\n<br />\r\n<br />\r\nBỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!', 1459741196, 1),
(2, 'Tèo si rô', 'Kinh doanh cà phê làm giàu kiểu nào bà con, tiền sao nhiều nhiều vào', 'Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!<br />\r\n<br />\r\n<br />\r\nBỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!<br />\r\n<br />\r\n<br />\r\nBỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!Bỏ tiền nhiều vào, ăn may, tới lúc tự động giàu!', 1459741247, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_sanpham`
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
-- Dumping data for table `db_sanpham`
--

INSERT INTO `db_sanpham` (`id`, `id_loai`, `id_hang`, `alias_vn`, `alias_us`, `alias_ch`, `ma_sp`, `ten_vn`, `ten_us`, `ten_ch`, `mo_ta_vn`, `mo_ta_us`, `mo_ta_ch`, `hinh_anh`, `gia`, `khuyen_mai`, `thong_tin_vn`, `thong_tin_us`, `thong_tin_ch`, `thong_so_vn`, `thong_tai_vn`, `thong_chon_vn`, `ngay_dang`, `tieu_bieu`, `sp_moi`, `sp_hot`, `title_vn`, `title_us`, `title_ch`, `keyword`, `des`, `view`, `thanh_pho`, `quan`, `hien_thi`, `extra0`, `extra1`, `extra2`, `extra3`, `extra4`, `extra5`, `extra6`, `extra7`, `extra8`, `extra9`, `extra10`, `con_hang`, `so_thu_tu`, `style`) VALUES
(703, 492, '0', 'name-product', '', '', 'PK4A', 'Name product', '', '', 'Catalogue là ấn phẩm giới thiệu về sản phẩm và dịch vụ của các công ty. Catalogue được sử dụng với mục đích cung cấp thông tin một cách chi tiết, hình ảnh rõ ràng để cho khách hàng không cần đến trực tiếp công ty mà vẫn hiểu được về sản phẩm và dịch vụ họ có ý định mua hoặc sử dụng.', '', '', '687489587312_baobi.jpg', 500000, 0, '<p>Catalogue là ấn phẩm giới thiệu về sản phẩm và dịch vụ của các công ty. Catalogue được sử dụng với mục đích cung cấp thông tin một cách chi tiết, hình ảnh rõ ràng để cho khách hàng không cần đến trực tiếp công ty mà vẫn hiểu được về sản phẩm và dịch vụ họ có ý định mua hoặc sử dụng. Catalogue được thiết kế đẹp, in ấn cẩn thận sẽ tạo cho khách hàng niềm tin để đưa đến quyết định mua hàng</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://thegioiinan.com/images/sanpham/The_gioi_in_an_201810131128282288667.jpg\" style=\"-webkit-font-smoothing:initial; border:0px; box-sizing:border-box; max-width:100%; vertical-align:middle; width:792.5px\" /></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Quá trình in catalogue sẽ có những tiêu chuẩn và lưu ý nhất định, chúng tôi xin cung cấp những thông tin để giúp bạn có được những cuốn catalogues như mong muốn</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">►Kích thước và loại giấy phổ biến khi in catalogue</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Kích thước phổ biến từ trước đến nay khi in catalogue sẽ vừa bằng khổ giấy A4. Với kích thước này, những cuốn catalogue sẽ tiện lợi cho người đọc, vừa tay cầm, vận chuyển dễ dàng và phù hợp với đa dạng thiết kế trình bày bên trong.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Kích thước khi in catalogue phù thuộc vào yêu cầu danh nghiệp và khả năng ứng dụng</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Tuy nhiên, hiện nay vẫn có nhiều doanh nghiệp sự khác biệt bằng việc in catalogue có kính thước hình vuông hoặc nhỏ hơn so với khổ giấy A4.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">►Catalogue thường được thiết kế với số trang chẵn</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Mỗi ngành nghề đều có những quy chuẩn và nguyên tắc riêng, in ấn Catalogues cũng vậy. Số trang khi thiết kế catalogue thường sẽ là số chẵn và chia hết cho 4 (8;12;16;20;24…).</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Ngoài việc thực hiện theo quy tắc, số trang chẵn sẽ phù hợp cho việc chia đều hai mặt trang và đạt sự cân bằng và tiện lợi cho người đọc.</span></p>\r\n', '', '', '', '', '', 1556346875, 0, 0, 0, 'Name product', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
(704, 492, '0', 'name-product-76', '', '', 'PK4A', 'Name product', '', '', 'Catalogue là ấn phẩm giới thiệu về sản phẩm và dịch vụ của các công ty. Catalogue được sử dụng với mục đích cung cấp thông tin một cách chi tiết, hình ảnh rõ ràng để cho khách hàng không cần đến trực tiếp công ty mà vẫn hiểu được về sản phẩm và dịch vụ họ có ý định mua hoặc sử dụng.', '', '', '725691511770_baobi.jpg', 500000, 0, '<p>Catalogue là ấn phẩm giới thiệu về sản phẩm và dịch vụ của các công ty. Catalogue được sử dụng với mục đích cung cấp thông tin một cách chi tiết, hình ảnh rõ ràng để cho khách hàng không cần đến trực tiếp công ty mà vẫn hiểu được về sản phẩm và dịch vụ họ có ý định mua hoặc sử dụng. Catalogue được thiết kế đẹp, in ấn cẩn thận sẽ tạo cho khách hàng niềm tin để đưa đến quyết định mua hàng</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://thegioiinan.com/images/sanpham/The_gioi_in_an_201810131128282288667.jpg\" style=\"-webkit-font-smoothing:initial; border:0px; box-sizing:border-box; max-width:100%; vertical-align:middle; width:792.5px\" /></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Quá trình in catalogue sẽ có những tiêu chuẩn và lưu ý nhất định, chúng tôi xin cung cấp những thông tin để giúp bạn có được những cuốn catalogues như mong muốn</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">►Kích thước và loại giấy phổ biến khi in catalogue</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Kích thước phổ biến từ trước đến nay khi in catalogue sẽ vừa bằng khổ giấy A4. Với kích thước này, những cuốn catalogue sẽ tiện lợi cho người đọc, vừa tay cầm, vận chuyển dễ dàng và phù hợp với đa dạng thiết kế trình bày bên trong.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Kích thước khi in catalogue phù thuộc vào yêu cầu danh nghiệp và khả năng ứng dụng</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Tuy nhiên, hiện nay vẫn có nhiều doanh nghiệp sự khác biệt bằng việc in catalogue có kính thước hình vuông hoặc nhỏ hơn so với khổ giấy A4.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">►Catalogue thường được thiết kế với số trang chẵn</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Mỗi ngành nghề đều có những quy chuẩn và nguyên tắc riêng, in ấn Catalogues cũng vậy. Số trang khi thiết kế catalogue thường sẽ là số chẵn và chia hết cho 4 (8;12;16;20;24…).</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Ngoài việc thực hiện theo quy tắc, số trang chẵn sẽ phù hợp cho việc chia đều hai mặt trang và đạt sự cân bằng và tiện lợi cho người đọc.</span></p>\r\n', '', '', '', '', '', 1556346878, 0, 0, 0, 'Name product', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
(705, 492, '0', 'name-product-69', '', '', 'PK4A', 'Name product', '', '', 'Catalogue là ấn phẩm giới thiệu về sản phẩm và dịch vụ của các công ty. Catalogue được sử dụng với mục đích cung cấp thông tin một cách chi tiết, hình ảnh rõ ràng để cho khách hàng không cần đến trực tiếp công ty mà vẫn hiểu được về sản phẩm và dịch vụ họ có ý định mua hoặc sử dụng.', '', '', '184489817826_baobi.jpg', 500000, 0, '<p>Catalogue là ấn phẩm giới thiệu về sản phẩm và dịch vụ của các công ty. Catalogue được sử dụng với mục đích cung cấp thông tin một cách chi tiết, hình ảnh rõ ràng để cho khách hàng không cần đến trực tiếp công ty mà vẫn hiểu được về sản phẩm và dịch vụ họ có ý định mua hoặc sử dụng. Catalogue được thiết kế đẹp, in ấn cẩn thận sẽ tạo cho khách hàng niềm tin để đưa đến quyết định mua hàng</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://thegioiinan.com/images/sanpham/The_gioi_in_an_201810131128282288667.jpg\" style=\"-webkit-font-smoothing:initial; border:0px; box-sizing:border-box; max-width:100%; vertical-align:middle; width:792.5px\" /></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Quá trình in catalogue sẽ có những tiêu chuẩn và lưu ý nhất định, chúng tôi xin cung cấp những thông tin để giúp bạn có được những cuốn catalogues như mong muốn</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">►Kích thước và loại giấy phổ biến khi in catalogue</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Kích thước phổ biến từ trước đến nay khi in catalogue sẽ vừa bằng khổ giấy A4. Với kích thước này, những cuốn catalogue sẽ tiện lợi cho người đọc, vừa tay cầm, vận chuyển dễ dàng và phù hợp với đa dạng thiết kế trình bày bên trong.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Kích thước khi in catalogue phù thuộc vào yêu cầu danh nghiệp và khả năng ứng dụng</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Tuy nhiên, hiện nay vẫn có nhiều doanh nghiệp sự khác biệt bằng việc in catalogue có kính thước hình vuông hoặc nhỏ hơn so với khổ giấy A4.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">►Catalogue thường được thiết kế với số trang chẵn</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Mỗi ngành nghề đều có những quy chuẩn và nguyên tắc riêng, in ấn Catalogues cũng vậy. Số trang khi thiết kế catalogue thường sẽ là số chẵn và chia hết cho 4 (8;12;16;20;24…).</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Ngoài việc thực hiện theo quy tắc, số trang chẵn sẽ phù hợp cho việc chia đều hai mặt trang và đạt sự cân bằng và tiện lợi cho người đọc.</span></p>\r\n', '', '', '', '', '', 1556346879, 0, 0, 0, 'Name product', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
(706, 492, '0', 'name-product-25', '', '', 'PK4A', 'Name product', '', '', 'Catalogue là ấn phẩm giới thiệu về sản phẩm và dịch vụ của các công ty. Catalogue được sử dụng với mục đích cung cấp thông tin một cách chi tiết, hình ảnh rõ ràng để cho khách hàng không cần đến trực tiếp công ty mà vẫn hiểu được về sản phẩm và dịch vụ họ có ý định mua hoặc sử dụng.', '', '', '665091624009_baobi.jpg', 500000, 0, '<p>Catalogue là ấn phẩm giới thiệu về sản phẩm và dịch vụ của các công ty. Catalogue được sử dụng với mục đích cung cấp thông tin một cách chi tiết, hình ảnh rõ ràng để cho khách hàng không cần đến trực tiếp công ty mà vẫn hiểu được về sản phẩm và dịch vụ họ có ý định mua hoặc sử dụng. Catalogue được thiết kế đẹp, in ấn cẩn thận sẽ tạo cho khách hàng niềm tin để đưa đến quyết định mua hàng</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://thegioiinan.com/images/sanpham/The_gioi_in_an_201810131128282288667.jpg\" style=\"-webkit-font-smoothing:initial; border:0px; box-sizing:border-box; max-width:100%; vertical-align:middle; width:792.5px\" /></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Quá trình in catalogue sẽ có những tiêu chuẩn và lưu ý nhất định, chúng tôi xin cung cấp những thông tin để giúp bạn có được những cuốn catalogues như mong muốn</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">►Kích thước và loại giấy phổ biến khi in catalogue</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Kích thước phổ biến từ trước đến nay khi in catalogue sẽ vừa bằng khổ giấy A4. Với kích thước này, những cuốn catalogue sẽ tiện lợi cho người đọc, vừa tay cầm, vận chuyển dễ dàng và phù hợp với đa dạng thiết kế trình bày bên trong.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Kích thước khi in catalogue phù thuộc vào yêu cầu danh nghiệp và khả năng ứng dụng</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Tuy nhiên, hiện nay vẫn có nhiều doanh nghiệp sự khác biệt bằng việc in catalogue có kính thước hình vuông hoặc nhỏ hơn so với khổ giấy A4.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">►Catalogue thường được thiết kế với số trang chẵn</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Mỗi ngành nghề đều có những quy chuẩn và nguyên tắc riêng, in ấn Catalogues cũng vậy. Số trang khi thiết kế catalogue thường sẽ là số chẵn và chia hết cho 4 (8;12;16;20;24…).</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Ngoài việc thực hiện theo quy tắc, số trang chẵn sẽ phù hợp cho việc chia đều hai mặt trang và đạt sự cân bằng và tiện lợi cho người đọc.</span></p>\r\n', '', '', '', '', '', 1556346881, 0, 0, 0, 'Name product', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
(707, 492, '0', 'name-product-70', '', '', 'PK4A', 'Name product', '', '', 'Catalogue là ấn phẩm giới thiệu về sản phẩm và dịch vụ của các công ty. Catalogue được sử dụng với mục đích cung cấp thông tin một cách chi tiết, hình ảnh rõ ràng để cho khách hàng không cần đến trực tiếp công ty mà vẫn hiểu được về sản phẩm và dịch vụ họ có ý định mua hoặc sử dụng.', '', '', '251788999950_baobi.jpg', 500000, 0, '<p>Catalogue là ấn phẩm giới thiệu về sản phẩm và dịch vụ của các công ty. Catalogue được sử dụng với mục đích cung cấp thông tin một cách chi tiết, hình ảnh rõ ràng để cho khách hàng không cần đến trực tiếp công ty mà vẫn hiểu được về sản phẩm và dịch vụ họ có ý định mua hoặc sử dụng. Catalogue được thiết kế đẹp, in ấn cẩn thận sẽ tạo cho khách hàng niềm tin để đưa đến quyết định mua hàng</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://thegioiinan.com/images/sanpham/The_gioi_in_an_201810131128282288667.jpg\" style=\"-webkit-font-smoothing:initial; border:0px; box-sizing:border-box; max-width:100%; vertical-align:middle; width:792.5px\" /></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Quá trình in catalogue sẽ có những tiêu chuẩn và lưu ý nhất định, chúng tôi xin cung cấp những thông tin để giúp bạn có được những cuốn catalogues như mong muốn</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">►Kích thước và loại giấy phổ biến khi in catalogue</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Kích thước phổ biến từ trước đến nay khi in catalogue sẽ vừa bằng khổ giấy A4. Với kích thước này, những cuốn catalogue sẽ tiện lợi cho người đọc, vừa tay cầm, vận chuyển dễ dàng và phù hợp với đa dạng thiết kế trình bày bên trong.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Kích thước khi in catalogue phù thuộc vào yêu cầu danh nghiệp và khả năng ứng dụng</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Tuy nhiên, hiện nay vẫn có nhiều doanh nghiệp sự khác biệt bằng việc in catalogue có kính thước hình vuông hoặc nhỏ hơn so với khổ giấy A4.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">►Catalogue thường được thiết kế với số trang chẵn</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Mỗi ngành nghề đều có những quy chuẩn và nguyên tắc riêng, in ấn Catalogues cũng vậy. Số trang khi thiết kế catalogue thường sẽ là số chẵn và chia hết cho 4 (8;12;16;20;24…).</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Ngoài việc thực hiện theo quy tắc, số trang chẵn sẽ phù hợp cho việc chia đều hai mặt trang và đạt sự cân bằng và tiện lợi cho người đọc.</span></p>\r\n', '', '', '', '', '', 1556346883, 0, 0, 0, 'Name product', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
(708, 492, '0', 'name-product-67', '', '', 'PK4A', 'Name product', '', '', 'Catalogue là ấn phẩm giới thiệu về sản phẩm và dịch vụ của các công ty. Catalogue được sử dụng với mục đích cung cấp thông tin một cách chi tiết, hình ảnh rõ ràng để cho khách hàng không cần đến trực tiếp công ty mà vẫn hiểu được về sản phẩm và dịch vụ họ có ý định mua hoặc sử dụng.', '', '', '149939217893_baobi.jpg', 500000, 0, '<p>Catalogue là ấn phẩm giới thiệu về sản phẩm và dịch vụ của các công ty. Catalogue được sử dụng với mục đích cung cấp thông tin một cách chi tiết, hình ảnh rõ ràng để cho khách hàng không cần đến trực tiếp công ty mà vẫn hiểu được về sản phẩm và dịch vụ họ có ý định mua hoặc sử dụng. Catalogue được thiết kế đẹp, in ấn cẩn thận sẽ tạo cho khách hàng niềm tin để đưa đến quyết định mua hàng</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://thegioiinan.com/images/sanpham/The_gioi_in_an_201810131128282288667.jpg\" style=\"-webkit-font-smoothing:initial; border:0px; box-sizing:border-box; max-width:100%; vertical-align:middle; width:792.5px\" /></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Quá trình in catalogue sẽ có những tiêu chuẩn và lưu ý nhất định, chúng tôi xin cung cấp những thông tin để giúp bạn có được những cuốn catalogues như mong muốn</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">►Kích thước và loại giấy phổ biến khi in catalogue</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Kích thước phổ biến từ trước đến nay khi in catalogue sẽ vừa bằng khổ giấy A4. Với kích thước này, những cuốn catalogue sẽ tiện lợi cho người đọc, vừa tay cầm, vận chuyển dễ dàng và phù hợp với đa dạng thiết kế trình bày bên trong.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Kích thước khi in catalogue phù thuộc vào yêu cầu danh nghiệp và khả năng ứng dụng</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Tuy nhiên, hiện nay vẫn có nhiều doanh nghiệp sự khác biệt bằng việc in catalogue có kính thước hình vuông hoặc nhỏ hơn so với khổ giấy A4.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">►Catalogue thường được thiết kế với số trang chẵn</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Mỗi ngành nghề đều có những quy chuẩn và nguyên tắc riêng, in ấn Catalogues cũng vậy. Số trang khi thiết kế catalogue thường sẽ là số chẵn và chia hết cho 4 (8;12;16;20;24…).</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Ngoài việc thực hiện theo quy tắc, số trang chẵn sẽ phù hợp cho việc chia đều hai mặt trang và đạt sự cân bằng và tiện lợi cho người đọc.</span></p>\r\n', '', '', '', '', '', 1556346884, 0, 0, 0, 'Name product', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
(709, 492, '0', 'name-product-58', '', '', 'PK4A', 'Name product', '', '', 'Catalogue là ấn phẩm giới thiệu về sản phẩm và dịch vụ của các công ty. Catalogue được sử dụng với mục đích cung cấp thông tin một cách chi tiết, hình ảnh rõ ràng để cho khách hàng không cần đến trực tiếp công ty mà vẫn hiểu được về sản phẩm và dịch vụ họ có ý định mua hoặc sử dụng.', '', '', '155250717459_baobi.jpg', 500000, 0, '<p>Catalogue là ấn phẩm giới thiệu về sản phẩm và dịch vụ của các công ty. Catalogue được sử dụng với mục đích cung cấp thông tin một cách chi tiết, hình ảnh rõ ràng để cho khách hàng không cần đến trực tiếp công ty mà vẫn hiểu được về sản phẩm và dịch vụ họ có ý định mua hoặc sử dụng. Catalogue được thiết kế đẹp, in ấn cẩn thận sẽ tạo cho khách hàng niềm tin để đưa đến quyết định mua hàng</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://thegioiinan.com/images/sanpham/The_gioi_in_an_201810131128282288667.jpg\" style=\"-webkit-font-smoothing:initial; border:0px; box-sizing:border-box; max-width:100%; vertical-align:middle; width:792.5px\" /></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Quá trình in catalogue sẽ có những tiêu chuẩn và lưu ý nhất định, chúng tôi xin cung cấp những thông tin để giúp bạn có được những cuốn catalogues như mong muốn</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">►Kích thước và loại giấy phổ biến khi in catalogue</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Kích thước phổ biến từ trước đến nay khi in catalogue sẽ vừa bằng khổ giấy A4. Với kích thước này, những cuốn catalogue sẽ tiện lợi cho người đọc, vừa tay cầm, vận chuyển dễ dàng và phù hợp với đa dạng thiết kế trình bày bên trong.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Kích thước khi in catalogue phù thuộc vào yêu cầu danh nghiệp và khả năng ứng dụng</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Tuy nhiên, hiện nay vẫn có nhiều doanh nghiệp sự khác biệt bằng việc in catalogue có kính thước hình vuông hoặc nhỏ hơn so với khổ giấy A4.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">►Catalogue thường được thiết kế với số trang chẵn</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Mỗi ngành nghề đều có những quy chuẩn và nguyên tắc riêng, in ấn Catalogues cũng vậy. Số trang khi thiết kế catalogue thường sẽ là số chẵn và chia hết cho 4 (8;12;16;20;24…).</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Ngoài việc thực hiện theo quy tắc, số trang chẵn sẽ phù hợp cho việc chia đều hai mặt trang và đạt sự cân bằng và tiện lợi cho người đọc.</span></p>\r\n', '', '', '', '', '', 1556346885, 0, 0, 0, 'Name product', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
(710, 492, '0', 'name-product-87', '', '', 'PK4A', 'Name product', '', '', 'Catalogue là ấn phẩm giới thiệu về sản phẩm và dịch vụ của các công ty. Catalogue được sử dụng với mục đích cung cấp thông tin một cách chi tiết, hình ảnh rõ ràng để cho khách hàng không cần đến trực tiếp công ty mà vẫn hiểu được về sản phẩm và dịch vụ họ có ý định mua hoặc sử dụng.', '', '', '766538904166_baobi.jpg', 500000, 0, '<p>Catalogue là ấn phẩm giới thiệu về sản phẩm và dịch vụ của các công ty. Catalogue được sử dụng với mục đích cung cấp thông tin một cách chi tiết, hình ảnh rõ ràng để cho khách hàng không cần đến trực tiếp công ty mà vẫn hiểu được về sản phẩm và dịch vụ họ có ý định mua hoặc sử dụng. Catalogue được thiết kế đẹp, in ấn cẩn thận sẽ tạo cho khách hàng niềm tin để đưa đến quyết định mua hàng</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://thegioiinan.com/images/sanpham/The_gioi_in_an_201810131128282288667.jpg\" style=\"-webkit-font-smoothing:initial; border:0px; box-sizing:border-box; max-width:100%; vertical-align:middle; width:792.5px\" /></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Quá trình in catalogue sẽ có những tiêu chuẩn và lưu ý nhất định, chúng tôi xin cung cấp những thông tin để giúp bạn có được những cuốn catalogues như mong muốn</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">►Kích thước và loại giấy phổ biến khi in catalogue</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Kích thước phổ biến từ trước đến nay khi in catalogue sẽ vừa bằng khổ giấy A4. Với kích thước này, những cuốn catalogue sẽ tiện lợi cho người đọc, vừa tay cầm, vận chuyển dễ dàng và phù hợp với đa dạng thiết kế trình bày bên trong.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Kích thước khi in catalogue phù thuộc vào yêu cầu danh nghiệp và khả năng ứng dụng</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Tuy nhiên, hiện nay vẫn có nhiều doanh nghiệp sự khác biệt bằng việc in catalogue có kính thước hình vuông hoặc nhỏ hơn so với khổ giấy A4.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">►Catalogue thường được thiết kế với số trang chẵn</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Mỗi ngành nghề đều có những quy chuẩn và nguyên tắc riêng, in ấn Catalogues cũng vậy. Số trang khi thiết kế catalogue thường sẽ là số chẵn và chia hết cho 4 (8;12;16;20;24…).</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Ngoài việc thực hiện theo quy tắc, số trang chẵn sẽ phù hợp cho việc chia đều hai mặt trang và đạt sự cân bằng và tiện lợi cho người đọc.</span></p>\r\n', '', '', '', '', '', 1556346886, 0, 0, 0, 'Name product', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
(711, 492, '0', 'name-product-32', '', '', 'PK4A', 'Name product', '', '', 'Catalogue là ấn phẩm giới thiệu về sản phẩm và dịch vụ của các công ty. Catalogue được sử dụng với mục đích cung cấp thông tin một cách chi tiết, hình ảnh rõ ràng để cho khách hàng không cần đến trực tiếp công ty mà vẫn hiểu được về sản phẩm và dịch vụ họ có ý định mua hoặc sử dụng.', '', '', '261252893935_baobi.jpg', 500000, 0, '<p>Catalogue là ấn phẩm giới thiệu về sản phẩm và dịch vụ của các công ty. Catalogue được sử dụng với mục đích cung cấp thông tin một cách chi tiết, hình ảnh rõ ràng để cho khách hàng không cần đến trực tiếp công ty mà vẫn hiểu được về sản phẩm và dịch vụ họ có ý định mua hoặc sử dụng. Catalogue được thiết kế đẹp, in ấn cẩn thận sẽ tạo cho khách hàng niềm tin để đưa đến quyết định mua hàng</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://thegioiinan.com/images/sanpham/The_gioi_in_an_201810131128282288667.jpg\" style=\"-webkit-font-smoothing:initial; border:0px; box-sizing:border-box; max-width:100%; vertical-align:middle; width:792.5px\" /></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Quá trình in catalogue sẽ có những tiêu chuẩn và lưu ý nhất định, chúng tôi xin cung cấp những thông tin để giúp bạn có được những cuốn catalogues như mong muốn</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">►Kích thước và loại giấy phổ biến khi in catalogue</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Kích thước phổ biến từ trước đến nay khi in catalogue sẽ vừa bằng khổ giấy A4. Với kích thước này, những cuốn catalogue sẽ tiện lợi cho người đọc, vừa tay cầm, vận chuyển dễ dàng và phù hợp với đa dạng thiết kế trình bày bên trong.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Kích thước khi in catalogue phù thuộc vào yêu cầu danh nghiệp và khả năng ứng dụng</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Tuy nhiên, hiện nay vẫn có nhiều doanh nghiệp sự khác biệt bằng việc in catalogue có kính thước hình vuông hoặc nhỏ hơn so với khổ giấy A4.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">►Catalogue thường được thiết kế với số trang chẵn</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Mỗi ngành nghề đều có những quy chuẩn và nguyên tắc riêng, in ấn Catalogues cũng vậy. Số trang khi thiết kế catalogue thường sẽ là số chẵn và chia hết cho 4 (8;12;16;20;24…).</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Ngoài việc thực hiện theo quy tắc, số trang chẵn sẽ phù hợp cho việc chia đều hai mặt trang và đạt sự cân bằng và tiện lợi cho người đọc.</span></p>\r\n', '', '', '', '', '', 1556346887, 0, 0, 0, 'Name product', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
(712, 492, '0', 'name-product-34', '', '', 'PK4A', 'Name product', '', '', 'Catalogue là ấn phẩm giới thiệu về sản phẩm và dịch vụ của các công ty. Catalogue được sử dụng với mục đích cung cấp thông tin một cách chi tiết, hình ảnh rõ ràng để cho khách hàng không cần đến trực tiếp công ty mà vẫn hiểu được về sản phẩm và dịch vụ họ có ý định mua hoặc sử dụng.', '', '', '015612996460_baobi.jpg', 500000, 0, '<p>Catalogue là ấn phẩm giới thiệu về sản phẩm và dịch vụ của các công ty. Catalogue được sử dụng với mục đích cung cấp thông tin một cách chi tiết, hình ảnh rõ ràng để cho khách hàng không cần đến trực tiếp công ty mà vẫn hiểu được về sản phẩm và dịch vụ họ có ý định mua hoặc sử dụng. Catalogue được thiết kế đẹp, in ấn cẩn thận sẽ tạo cho khách hàng niềm tin để đưa đến quyết định mua hàng</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://thegioiinan.com/images/sanpham/The_gioi_in_an_201810131128282288667.jpg\" style=\"-webkit-font-smoothing:initial; border:0px; box-sizing:border-box; max-width:100%; vertical-align:middle; width:792.5px\" /></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Quá trình in catalogue sẽ có những tiêu chuẩn và lưu ý nhất định, chúng tôi xin cung cấp những thông tin để giúp bạn có được những cuốn catalogues như mong muốn</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">►Kích thước và loại giấy phổ biến khi in catalogue</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Kích thước phổ biến từ trước đến nay khi in catalogue sẽ vừa bằng khổ giấy A4. Với kích thước này, những cuốn catalogue sẽ tiện lợi cho người đọc, vừa tay cầm, vận chuyển dễ dàng và phù hợp với đa dạng thiết kế trình bày bên trong.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Kích thước khi in catalogue phù thuộc vào yêu cầu danh nghiệp và khả năng ứng dụng</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Tuy nhiên, hiện nay vẫn có nhiều doanh nghiệp sự khác biệt bằng việc in catalogue có kính thước hình vuông hoặc nhỏ hơn so với khổ giấy A4.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">►Catalogue thường được thiết kế với số trang chẵn</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Mỗi ngành nghề đều có những quy chuẩn và nguyên tắc riêng, in ấn Catalogues cũng vậy. Số trang khi thiết kế catalogue thường sẽ là số chẵn và chia hết cho 4 (8;12;16;20;24…).</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Ngoài việc thực hiện theo quy tắc, số trang chẵn sẽ phù hợp cho việc chia đều hai mặt trang và đạt sự cân bằng và tiện lợi cho người đọc.</span></p>\r\n', '', '', '', '', '', 1556346888, 1, 0, 0, 'Name product', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
(713, 492, '0', 'name-product-4', '', '', 'PK4A', 'Name product', '', '', 'Catalogue là ấn phẩm giới thiệu về sản phẩm và dịch vụ của các công ty. Catalogue được sử dụng với mục đích cung cấp thông tin một cách chi tiết, hình ảnh rõ ràng để cho khách hàng không cần đến trực tiếp công ty mà vẫn hiểu được về sản phẩm và dịch vụ họ có ý định mua hoặc sử dụng.', '', '', '732403180229_baobi.jpg', 500000, 0, '<p>Catalogue là ấn phẩm giới thiệu về sản phẩm và dịch vụ của các công ty. Catalogue được sử dụng với mục đích cung cấp thông tin một cách chi tiết, hình ảnh rõ ràng để cho khách hàng không cần đến trực tiếp công ty mà vẫn hiểu được về sản phẩm và dịch vụ họ có ý định mua hoặc sử dụng. Catalogue được thiết kế đẹp, in ấn cẩn thận sẽ tạo cho khách hàng niềm tin để đưa đến quyết định mua hàng</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://thegioiinan.com/images/sanpham/The_gioi_in_an_201810131128282288667.jpg\" style=\"-webkit-font-smoothing:initial; border:0px; box-sizing:border-box; max-width:100%; vertical-align:middle; width:792.5px\" /></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Quá trình in catalogue sẽ có những tiêu chuẩn và lưu ý nhất định, chúng tôi xin cung cấp những thông tin để giúp bạn có được những cuốn catalogues như mong muốn</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">►Kích thước và loại giấy phổ biến khi in catalogue</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Kích thước phổ biến từ trước đến nay khi in catalogue sẽ vừa bằng khổ giấy A4. Với kích thước này, những cuốn catalogue sẽ tiện lợi cho người đọc, vừa tay cầm, vận chuyển dễ dàng và phù hợp với đa dạng thiết kế trình bày bên trong.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Kích thước khi in catalogue phù thuộc vào yêu cầu danh nghiệp và khả năng ứng dụng</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Tuy nhiên, hiện nay vẫn có nhiều doanh nghiệp sự khác biệt bằng việc in catalogue có kính thước hình vuông hoặc nhỏ hơn so với khổ giấy A4.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">►Catalogue thường được thiết kế với số trang chẵn</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Mỗi ngành nghề đều có những quy chuẩn và nguyên tắc riêng, in ấn Catalogues cũng vậy. Số trang khi thiết kế catalogue thường sẽ là số chẵn và chia hết cho 4 (8;12;16;20;24…).</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Ngoài việc thực hiện theo quy tắc, số trang chẵn sẽ phù hợp cho việc chia đều hai mặt trang và đạt sự cân bằng và tiện lợi cho người đọc.</span></p>\r\n', '', '', '', '', '', 1556346889, 1, 0, 0, 'Name product', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
(714, 492, '0', 'name-product-30', '', '', 'PK4A', 'Name product', '', '', 'Catalogue là ấn phẩm giới thiệu về sản phẩm và dịch vụ của các công ty. Catalogue được sử dụng với mục đích cung cấp thông tin một cách chi tiết, hình ảnh rõ ràng để cho khách hàng không cần đến trực tiếp công ty mà vẫn hiểu được về sản phẩm và dịch vụ họ có ý định mua hoặc sử dụng.', '', '', '633338614814_baobi.jpg', 500000, 0, '<p>Catalogue là ấn phẩm giới thiệu về sản phẩm và dịch vụ của các công ty. Catalogue được sử dụng với mục đích cung cấp thông tin một cách chi tiết, hình ảnh rõ ràng để cho khách hàng không cần đến trực tiếp công ty mà vẫn hiểu được về sản phẩm và dịch vụ họ có ý định mua hoặc sử dụng. Catalogue được thiết kế đẹp, in ấn cẩn thận sẽ tạo cho khách hàng niềm tin để đưa đến quyết định mua hàng</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://thegioiinan.com/images/sanpham/The_gioi_in_an_201810131128282288667.jpg\" style=\"-webkit-font-smoothing:initial; border:0px; box-sizing:border-box; max-width:100%; vertical-align:middle; width:792.5px\" /></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Quá trình in catalogue sẽ có những tiêu chuẩn và lưu ý nhất định, chúng tôi xin cung cấp những thông tin để giúp bạn có được những cuốn catalogues như mong muốn</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">►Kích thước và loại giấy phổ biến khi in catalogue</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Kích thước phổ biến từ trước đến nay khi in catalogue sẽ vừa bằng khổ giấy A4. Với kích thước này, những cuốn catalogue sẽ tiện lợi cho người đọc, vừa tay cầm, vận chuyển dễ dàng và phù hợp với đa dạng thiết kế trình bày bên trong.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Kích thước khi in catalogue phù thuộc vào yêu cầu danh nghiệp và khả năng ứng dụng</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Tuy nhiên, hiện nay vẫn có nhiều doanh nghiệp sự khác biệt bằng việc in catalogue có kính thước hình vuông hoặc nhỏ hơn so với khổ giấy A4.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">►Catalogue thường được thiết kế với số trang chẵn</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Mỗi ngành nghề đều có những quy chuẩn và nguyên tắc riêng, in ấn Catalogues cũng vậy. Số trang khi thiết kế catalogue thường sẽ là số chẵn và chia hết cho 4 (8;12;16;20;24…).</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Ngoài việc thực hiện theo quy tắc, số trang chẵn sẽ phù hợp cho việc chia đều hai mặt trang và đạt sự cân bằng và tiện lợi cho người đọc.</span></p>\r\n', '', '', '', '', '', 1556346891, 1, 0, 0, 'Name product', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
(715, 492, '0', 'name-product-45', '', '', 'PK4A', 'Name product', '', '', 'Catalogue là ấn phẩm giới thiệu về sản phẩm và dịch vụ của các công ty. Catalogue được sử dụng với mục đích cung cấp thông tin một cách chi tiết, hình ảnh rõ ràng để cho khách hàng không cần đến trực tiếp công ty mà vẫn hiểu được về sản phẩm và dịch vụ họ có ý định mua hoặc sử dụng.', '', '', '061898700735_baobi.jpg', 500000, 0, '<p>Catalogue là ấn phẩm giới thiệu về sản phẩm và dịch vụ của các công ty. Catalogue được sử dụng với mục đích cung cấp thông tin một cách chi tiết, hình ảnh rõ ràng để cho khách hàng không cần đến trực tiếp công ty mà vẫn hiểu được về sản phẩm và dịch vụ họ có ý định mua hoặc sử dụng. Catalogue được thiết kế đẹp, in ấn cẩn thận sẽ tạo cho khách hàng niềm tin để đưa đến quyết định mua hàng</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://thegioiinan.com/images/sanpham/The_gioi_in_an_201810131128282288667.jpg\" style=\"-webkit-font-smoothing:initial; border:0px; box-sizing:border-box; max-width:100%; vertical-align:middle; width:792.5px\" /></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Quá trình in catalogue sẽ có những tiêu chuẩn và lưu ý nhất định, chúng tôi xin cung cấp những thông tin để giúp bạn có được những cuốn catalogues như mong muốn</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">►Kích thước và loại giấy phổ biến khi in catalogue</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Kích thước phổ biến từ trước đến nay khi in catalogue sẽ vừa bằng khổ giấy A4. Với kích thước này, những cuốn catalogue sẽ tiện lợi cho người đọc, vừa tay cầm, vận chuyển dễ dàng và phù hợp với đa dạng thiết kế trình bày bên trong.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Kích thước khi in catalogue phù thuộc vào yêu cầu danh nghiệp và khả năng ứng dụng</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Tuy nhiên, hiện nay vẫn có nhiều doanh nghiệp sự khác biệt bằng việc in catalogue có kính thước hình vuông hoặc nhỏ hơn so với khổ giấy A4.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">►Catalogue thường được thiết kế với số trang chẵn</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Mỗi ngành nghề đều có những quy chuẩn và nguyên tắc riêng, in ấn Catalogues cũng vậy. Số trang khi thiết kế catalogue thường sẽ là số chẵn và chia hết cho 4 (8;12;16;20;24…).</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Ngoài việc thực hiện theo quy tắc, số trang chẵn sẽ phù hợp cho việc chia đều hai mặt trang và đạt sự cân bằng và tiện lợi cho người đọc.</span></p>\r\n', '', '', '', '', '', 1556346892, 1, 0, 0, 'Name product', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
(716, 492, '0', 'name-product-65', '', '', 'PK4A', 'Name product', '', '', 'Catalogue là ấn phẩm giới thiệu về sản phẩm và dịch vụ của các công ty. Catalogue được sử dụng với mục đích cung cấp thông tin một cách chi tiết, hình ảnh rõ ràng để cho khách hàng không cần đến trực tiếp công ty mà vẫn hiểu được về sản phẩm và dịch vụ họ có ý định mua hoặc sử dụng.', '', '', '458668179736_baobi.jpg', 500000, 0, '<p>Catalogue là ấn phẩm giới thiệu về sản phẩm và dịch vụ của các công ty. Catalogue được sử dụng với mục đích cung cấp thông tin một cách chi tiết, hình ảnh rõ ràng để cho khách hàng không cần đến trực tiếp công ty mà vẫn hiểu được về sản phẩm và dịch vụ họ có ý định mua hoặc sử dụng. Catalogue được thiết kế đẹp, in ấn cẩn thận sẽ tạo cho khách hàng niềm tin để đưa đến quyết định mua hàng</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://thegioiinan.com/images/sanpham/The_gioi_in_an_201810131128282288667.jpg\" style=\"-webkit-font-smoothing:initial; border:0px; box-sizing:border-box; max-width:100%; vertical-align:middle; width:792.5px\" /></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Quá trình in catalogue sẽ có những tiêu chuẩn và lưu ý nhất định, chúng tôi xin cung cấp những thông tin để giúp bạn có được những cuốn catalogues như mong muốn</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">►Kích thước và loại giấy phổ biến khi in catalogue</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Kích thước phổ biến từ trước đến nay khi in catalogue sẽ vừa bằng khổ giấy A4. Với kích thước này, những cuốn catalogue sẽ tiện lợi cho người đọc, vừa tay cầm, vận chuyển dễ dàng và phù hợp với đa dạng thiết kế trình bày bên trong.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Kích thước khi in catalogue phù thuộc vào yêu cầu danh nghiệp và khả năng ứng dụng</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Tuy nhiên, hiện nay vẫn có nhiều doanh nghiệp sự khác biệt bằng việc in catalogue có kính thước hình vuông hoặc nhỏ hơn so với khổ giấy A4.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">►Catalogue thường được thiết kế với số trang chẵn</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Mỗi ngành nghề đều có những quy chuẩn và nguyên tắc riêng, in ấn Catalogues cũng vậy. Số trang khi thiết kế catalogue thường sẽ là số chẵn và chia hết cho 4 (8;12;16;20;24…).</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Ngoài việc thực hiện theo quy tắc, số trang chẵn sẽ phù hợp cho việc chia đều hai mặt trang và đạt sự cân bằng và tiện lợi cho người đọc.</span></p>\r\n', '', '', '', '', '', 1556346893, 1, 0, 0, 'Name product', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
(717, 492, '0', 'name-product-61', '', '', 'PK4A', 'Name product', '', '', 'Catalogue là ấn phẩm giới thiệu về sản phẩm và dịch vụ của các công ty. Catalogue được sử dụng với mục đích cung cấp thông tin một cách chi tiết, hình ảnh rõ ràng để cho khách hàng không cần đến trực tiếp công ty mà vẫn hiểu được về sản phẩm và dịch vụ họ có ý định mua hoặc sử dụng.', '', '', '327848956632_baobi.jpg', 500000, 0, '<p>Catalogue là ấn phẩm giới thiệu về sản phẩm và dịch vụ của các công ty. Catalogue được sử dụng với mục đích cung cấp thông tin một cách chi tiết, hình ảnh rõ ràng để cho khách hàng không cần đến trực tiếp công ty mà vẫn hiểu được về sản phẩm và dịch vụ họ có ý định mua hoặc sử dụng. Catalogue được thiết kế đẹp, in ấn cẩn thận sẽ tạo cho khách hàng niềm tin để đưa đến quyết định mua hàng</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://thegioiinan.com/images/sanpham/The_gioi_in_an_201810131128282288667.jpg\" style=\"-webkit-font-smoothing:initial; border:0px; box-sizing:border-box; max-width:100%; vertical-align:middle; width:792.5px\" /></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Quá trình in catalogue sẽ có những tiêu chuẩn và lưu ý nhất định, chúng tôi xin cung cấp những thông tin để giúp bạn có được những cuốn catalogues như mong muốn</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">►Kích thước và loại giấy phổ biến khi in catalogue</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Kích thước phổ biến từ trước đến nay khi in catalogue sẽ vừa bằng khổ giấy A4. Với kích thước này, những cuốn catalogue sẽ tiện lợi cho người đọc, vừa tay cầm, vận chuyển dễ dàng và phù hợp với đa dạng thiết kế trình bày bên trong.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Kích thước khi in catalogue phù thuộc vào yêu cầu danh nghiệp và khả năng ứng dụng</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Tuy nhiên, hiện nay vẫn có nhiều doanh nghiệp sự khác biệt bằng việc in catalogue có kính thước hình vuông hoặc nhỏ hơn so với khổ giấy A4.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">►Catalogue thường được thiết kế với số trang chẵn</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Mỗi ngành nghề đều có những quy chuẩn và nguyên tắc riêng, in ấn Catalogues cũng vậy. Số trang khi thiết kế catalogue thường sẽ là số chẵn và chia hết cho 4 (8;12;16;20;24…).</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Ngoài việc thực hiện theo quy tắc, số trang chẵn sẽ phù hợp cho việc chia đều hai mặt trang và đạt sự cân bằng và tiện lợi cho người đọc.</span></p>\r\n', '', '', '', '', '', 1556346893, 1, 0, 0, 'Name product', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
(718, 492, '0', 'name-product-79', '', '', 'PK4A', 'Name product', '', '', 'Catalogue là ấn phẩm giới thiệu về sản phẩm và dịch vụ của các công ty. Catalogue được sử dụng với mục đích cung cấp thông tin một cách chi tiết, hình ảnh rõ ràng để cho khách hàng không cần đến trực tiếp công ty mà vẫn hiểu được về sản phẩm và dịch vụ họ có ý định mua hoặc sử dụng.', '', '', '246596704627_baobi.jpg', 500000, 0, '<p>Catalogue là ấn phẩm giới thiệu về sản phẩm và dịch vụ của các công ty. Catalogue được sử dụng với mục đích cung cấp thông tin một cách chi tiết, hình ảnh rõ ràng để cho khách hàng không cần đến trực tiếp công ty mà vẫn hiểu được về sản phẩm và dịch vụ họ có ý định mua hoặc sử dụng. Catalogue được thiết kế đẹp, in ấn cẩn thận sẽ tạo cho khách hàng niềm tin để đưa đến quyết định mua hàng</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://thegioiinan.com/images/sanpham/The_gioi_in_an_201810131128282288667.jpg\" style=\"-webkit-font-smoothing:initial; border:0px; box-sizing:border-box; max-width:100%; vertical-align:middle; width:792.5px\" /></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Quá trình in catalogue sẽ có những tiêu chuẩn và lưu ý nhất định, chúng tôi xin cung cấp những thông tin để giúp bạn có được những cuốn catalogues như mong muốn</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">►Kích thước và loại giấy phổ biến khi in catalogue</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Kích thước phổ biến từ trước đến nay khi in catalogue sẽ vừa bằng khổ giấy A4. Với kích thước này, những cuốn catalogue sẽ tiện lợi cho người đọc, vừa tay cầm, vận chuyển dễ dàng và phù hợp với đa dạng thiết kế trình bày bên trong.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Kích thước khi in catalogue phù thuộc vào yêu cầu danh nghiệp và khả năng ứng dụng</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Tuy nhiên, hiện nay vẫn có nhiều doanh nghiệp sự khác biệt bằng việc in catalogue có kính thước hình vuông hoặc nhỏ hơn so với khổ giấy A4.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">►Catalogue thường được thiết kế với số trang chẵn</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Mỗi ngành nghề đều có những quy chuẩn và nguyên tắc riêng, in ấn Catalogues cũng vậy. Số trang khi thiết kế catalogue thường sẽ là số chẵn và chia hết cho 4 (8;12;16;20;24…).</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Ngoài việc thực hiện theo quy tắc, số trang chẵn sẽ phù hợp cho việc chia đều hai mặt trang và đạt sự cân bằng và tiện lợi cho người đọc.</span></p>\r\n', '', '', '', '', '', 1556346895, 1, 0, 0, 'Name product', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
(719, 492, '0', 'name-product-68', '', '', 'PK4A', 'Name product', '', '', 'Catalogue là ấn phẩm giới thiệu về sản phẩm và dịch vụ của các công ty. Catalogue được sử dụng với mục đích cung cấp thông tin một cách chi tiết, hình ảnh rõ ràng để cho khách hàng không cần đến trực tiếp công ty mà vẫn hiểu được về sản phẩm và dịch vụ họ có ý định mua hoặc sử dụng.', '', '', '581583873842_baobi.jpg', 500000, 0, '<p>Catalogue là ấn phẩm giới thiệu về sản phẩm và dịch vụ của các công ty. Catalogue được sử dụng với mục đích cung cấp thông tin một cách chi tiết, hình ảnh rõ ràng để cho khách hàng không cần đến trực tiếp công ty mà vẫn hiểu được về sản phẩm và dịch vụ họ có ý định mua hoặc sử dụng. Catalogue được thiết kế đẹp, in ấn cẩn thận sẽ tạo cho khách hàng niềm tin để đưa đến quyết định mua hàng</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://thegioiinan.com/images/sanpham/The_gioi_in_an_201810131128282288667.jpg\" style=\"-webkit-font-smoothing:initial; border:0px; box-sizing:border-box; max-width:100%; vertical-align:middle; width:792.5px\" /></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Quá trình in catalogue sẽ có những tiêu chuẩn và lưu ý nhất định, chúng tôi xin cung cấp những thông tin để giúp bạn có được những cuốn catalogues như mong muốn</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">►Kích thước và loại giấy phổ biến khi in catalogue</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Kích thước phổ biến từ trước đến nay khi in catalogue sẽ vừa bằng khổ giấy A4. Với kích thước này, những cuốn catalogue sẽ tiện lợi cho người đọc, vừa tay cầm, vận chuyển dễ dàng và phù hợp với đa dạng thiết kế trình bày bên trong.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Kích thước khi in catalogue phù thuộc vào yêu cầu danh nghiệp và khả năng ứng dụng</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Tuy nhiên, hiện nay vẫn có nhiều doanh nghiệp sự khác biệt bằng việc in catalogue có kính thước hình vuông hoặc nhỏ hơn so với khổ giấy A4.</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">►Catalogue thường được thiết kế với số trang chẵn</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Mỗi ngành nghề đều có những quy chuẩn và nguyên tắc riêng, in ấn Catalogues cũng vậy. Số trang khi thiết kế catalogue thường sẽ là số chẵn và chia hết cho 4 (8;12;16;20;24…).</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Ngoài việc thực hiện theo quy tắc, số trang chẵn sẽ phù hợp cho việc chia đều hai mặt trang và đạt sự cân bằng và tiện lợi cho người đọc.</span></p>\r\n', '', '', '', '', '', 1556346896, 1, 0, 0, 'Name product', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
(720, 492, '0', 'test', '', '', '5B0G', 'test', '', '', '', '', '', '', 23, 0, '', '', '', '', '', '', 1557113582, 1, 0, 0, 'test', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
(721, 492, '0', 'test2', '', '', 'F7PB', 'test2', '', '', '', '', '', '', 0, 0, '<p><img alt=\"\" src=\"http://demo13.phuongnamvina.vn/img_data/images/1.jpg\" style=\"height:960px; width:643px\" /></p>\r\n', '', '', '', '', '', 1557882856, 1, 0, 0, 'test2', '', '', '', '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `db_sanpham_hinhanh`
--

CREATE TABLE `db_sanpham_hinhanh` (
  `id` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `hinh_anh` varchar(255) NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_sanpham_hinhanh`
--

INSERT INTO `db_sanpham_hinhanh` (`id`, `id_sp`, `hinh_anh`, `title`) VALUES
(458, 703, '011421148923_baobi.jpg', ''),
(459, 703, '043968027928_baobi.jpg', ''),
(460, 703, '233716463396_baobi.jpg', ''),
(461, 703, '018385570204_baobi.jpg', ''),
(462, 703, '368606887562_baobi.jpg', ''),
(463, 703, '610358627445_baobi.jpg', ''),
(464, 704, '733255326283_baobi.jpg', ''),
(465, 704, '854359234282_baobi.jpg', ''),
(466, 704, '003123271482_baobi.jpg', ''),
(467, 704, '744538468523_baobi.jpg', ''),
(468, 704, '699831295508_baobi.jpg', ''),
(469, 704, '912194623306_baobi.jpg', ''),
(470, 705, '077437178817_baobi.jpg', ''),
(471, 705, '245728547473_baobi.jpg', ''),
(472, 705, '245264544408_baobi.jpg', ''),
(473, 705, '616766604480_baobi.jpg', ''),
(474, 705, '572690709452_baobi.jpg', ''),
(475, 705, '752565266901_baobi.jpg', ''),
(476, 706, '677775483414_baobi.jpg', ''),
(477, 706, '924181975718_baobi.jpg', ''),
(478, 706, '047408396242_baobi.jpg', ''),
(479, 706, '336932782706_baobi.jpg', ''),
(480, 706, '013130092708_baobi.jpg', ''),
(481, 706, '485397553938_baobi.jpg', ''),
(482, 707, '372522308071_baobi.jpg', ''),
(483, 707, '112488403935_baobi.jpg', ''),
(484, 707, '282183126761_baobi.jpg', ''),
(485, 707, '196293672752_baobi.jpg', ''),
(486, 707, '758763598809_baobi.jpg', ''),
(487, 707, '363290909187_baobi.jpg', ''),
(488, 708, '283641855147_baobi.jpg', ''),
(489, 708, '487947933656_baobi.jpg', ''),
(490, 708, '425173744517_baobi.jpg', ''),
(491, 708, '462913313380_baobi.jpg', ''),
(492, 708, '339901147368_baobi.jpg', ''),
(493, 708, '289900278011_baobi.jpg', ''),
(494, 709, '965241860292_baobi.jpg', ''),
(495, 709, '965543815956_baobi.jpg', ''),
(496, 709, '759607668694_baobi.jpg', ''),
(497, 709, '184444536986_baobi.jpg', ''),
(498, 709, '256128611894_baobi.jpg', ''),
(499, 709, '723560118996_baobi.jpg', ''),
(500, 710, '484196156655_baobi.jpg', ''),
(501, 710, '060628598928_baobi.jpg', ''),
(502, 710, '020223377592_baobi.jpg', ''),
(503, 710, '951105945247_baobi.jpg', ''),
(504, 710, '797902945511_baobi.jpg', ''),
(505, 710, '934730802266_baobi.jpg', ''),
(506, 711, '714291448359_baobi.jpg', ''),
(507, 711, '213633838330_baobi.jpg', ''),
(508, 711, '099255026974_baobi.jpg', ''),
(509, 711, '042199870873_baobi.jpg', ''),
(510, 711, '680743185212_baobi.jpg', ''),
(511, 711, '893130800101_baobi.jpg', ''),
(512, 712, '410668856123_baobi.jpg', ''),
(513, 712, '765372220443_baobi.jpg', ''),
(514, 712, '417229224750_baobi.jpg', ''),
(515, 712, '297856346259_baobi.jpg', ''),
(516, 712, '469024519507_baobi.jpg', ''),
(517, 712, '844281321990_baobi.jpg', ''),
(518, 713, '449676742198_baobi.jpg', ''),
(519, 713, '398617119413_baobi.jpg', ''),
(520, 713, '874427342155_baobi.jpg', ''),
(521, 713, '182594292265_baobi.jpg', ''),
(522, 713, '862627115223_baobi.jpg', ''),
(523, 713, '026081063270_baobi.jpg', ''),
(524, 714, '272103775045_baobi.jpg', ''),
(525, 714, '889465899470_baobi.jpg', ''),
(526, 714, '211189921627_baobi.jpg', ''),
(527, 714, '321705863814_baobi.jpg', ''),
(528, 714, '785547890121_baobi.jpg', ''),
(529, 714, '447143731986_baobi.jpg', ''),
(530, 715, '020855845433_baobi.jpg', ''),
(531, 715, '383049582672_baobi.jpg', ''),
(532, 715, '335318771594_baobi.jpg', ''),
(533, 715, '611241606254_baobi.jpg', ''),
(534, 715, '093679926772_baobi.jpg', ''),
(535, 715, '808312746123_baobi.jpg', ''),
(536, 716, '742284860523_baobi.jpg', ''),
(537, 716, '170855351971_baobi.jpg', ''),
(538, 716, '033737813605_baobi.jpg', ''),
(539, 716, '798791189266_baobi.jpg', ''),
(540, 716, '864363066857_baobi.jpg', ''),
(541, 716, '716326389227_baobi.jpg', ''),
(542, 717, '404656212680_baobi.jpg', ''),
(543, 717, '647713306733_baobi.jpg', ''),
(544, 717, '798323657107_baobi.jpg', ''),
(545, 717, '295318603382_baobi.jpg', ''),
(546, 717, '463832014310_baobi.jpg', ''),
(547, 717, '941706428678_baobi.jpg', ''),
(548, 718, '419003745840_baobi.jpg', ''),
(549, 718, '413176482005_baobi.jpg', ''),
(550, 718, '948247347930_baobi.jpg', ''),
(551, 718, '691598695417_baobi.jpg', ''),
(552, 718, '395700166971_baobi.jpg', ''),
(553, 718, '747956095395_baobi.jpg', ''),
(554, 719, '271998292298_baobi.jpg', ''),
(555, 719, '057743522294_baobi.jpg', ''),
(556, 719, '587926683347_baobi.jpg', ''),
(557, 719, '745667126555_baobi.jpg', ''),
(558, 719, '067255243995_baobi.jpg', ''),
(559, 719, '223833584487_baobi.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `db_seo`
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
-- Dumping data for table `db_seo`
--

INSERT INTO `db_seo` (`id`, `title_vn`, `title_us`, `keyword_vn`, `keyword_us`, `description_vn`, `description_us`) VALUES
(1, 'Công ty in quản cáo thiên minh', '', 'Công ty in quản cáo thiên minh', '', 'Công ty in quản cáo thiên minh', '');

-- --------------------------------------------------------

--
-- Table structure for table `db_setting`
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
-- Dumping data for table `db_setting`
--

INSERT INTO `db_setting` (`id`, `ten_vn`, `ten_us`, `ten_jp`, `ten_ch`, `noi_dung_vn`, `noi_dung_us`, `noi_dung_jp`, `noi_dung_ch`, `hinh_anh_vn`, `title_vn`, `title_us`, `title_jp`, `title_ch`, `keyword`, `des`, `hien_thi`, `hinh_anh_us`) VALUES
(10, 'Text trang liên hệ', '', '', '', '<h3><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"color:#FF0000\"><strong>CÔNG TY IN QUẢNG CÁO THIÊN MINH</strong></span></span></h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Địa chỉ: 256/19/29 Dương Quảng Hàm, P.5, Gò Vấp, TPHCM</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Hotline: 0<span style=\"color:rgb(0, 0, 0)\">986175175&nbsp; - Email:&nbsp;inthienminhhcm@gmail.com</span></span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Website:&nbsp;</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#FF0000\"><strong>YÊU CẦU BÁO GIÁ</strong></span></p>\r\n', '', '', '', '', '', '', '', '', '', '', 1, ''),
(28, 'Text Footer', '', '', '', '<p><span style=\"font-family:arial,helvetica,sans-serif\">Địa chỉ: 256/19/29 Dương Quảng Hàm, P.5, Gò Vấp, TPHCM</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Hotline: 0</span><span style=\"color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif\">986175175&nbsp; - Email:&nbsp;inthienminhhcm@gmail.com</span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\">Website:&nbsp;</span></p>\r\n', '<p><strong><span style=\"font-size:16px\">DHT TRADING DEVELOPMENT COMPANY LIMITED</span></strong></p>\r\n\r\n<p>Address: Thu Thiem Star Tower, C8.7 A5 St, Binh Trung Dong Ward, Dicstrict 2, Ho Chi Minh City</p>\r\n\r\n<p>Phone: (08) 62 814 677 -&nbsp;Fax: (08) 62 814 657</p>\r\n\r\n<p>​Email: dht.co@outlook.com</p>\r\n', '', '', '', '', '', '', '', '', '', 1, ''),
(30, 'Hình Banner', '', '', '', '', '', '', '', '815024324663_banner.png', '', '', '', '', '', '', 1, '463551056257_banner_us.png');

-- --------------------------------------------------------

--
-- Table structure for table `db_slide_sp`
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
-- Dumping data for table `db_slide_sp`
--

INSERT INTO `db_slide_sp` (`id`, `hinh_anh`, `video`, `href`, `title_vn`, `mo_ta_vn`, `mo_ta_us`, `title_us`, `so_thu_tu`, `hien_thi`, `id_loai`) VALUES
(112, '099105380919_4.jpg', '', '', '', '', '', '', 5, 1, 0),
(108, '424896210782_1.jpg', '', '', '', '', '', '', 2, 1, 0),
(109, '704738982607_2.jpg', '', '', '', '', '', '', 3, 1, 0),
(110, '211562784991_3.jpg', '', '', '', '', '', '', 4, 1, 0),
(111, '222629069820_4.jpg', '', '', '', '', '', '', 5, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `db_tags`
--

CREATE TABLE `db_tags` (
  `id` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_tags`
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
-- Table structure for table `db_thanhpho`
--

CREATE TABLE `db_thanhpho` (
  `id` int(11) NOT NULL,
  `ten_vn` varchar(255) NOT NULL,
  `so_thu_tu` int(11) NOT NULL,
  `hien_thi` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_thanhpho`
--

INSERT INTO `db_thanhpho` (`id`, `ten_vn`, `so_thu_tu`, `hien_thi`) VALUES
(1, 'Hồ Chí Minh', 1, 1),
(2, 'Bình Dương', 2, 1),
(3, 'Vũng Tàu', 3, 1),
(4, 'Hà Nội', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_thanhvien`
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
-- Dumping data for table `db_thanhvien`
--

INSERT INTO `db_thanhvien` (`id`, `email`, `password`, `ten`, `dienthoai`, `gioitinh`, `diachi`, `ngaytao`, `hienthi`, `mathanhvien`) VALUES
(28, 'conghau0401@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Công Hậu', '0978192307', 'Nam', 'Quận Thủ đức, TPHCM', 1498634512, 1, '0uhmk5'),
(31, 'myhome2211@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', 'Hậu', '0978192307', 'Nam', 'Thủ đức', 1501060615, 1, 'hcawC9'),
(32, 'kythuat02.pnvn@gmail.com', '018108648935298bc4e6a312c4a443af', 'Công Hậu', '0978192307', '', '', 1519886539, 1, 'rlLNJ');

-- --------------------------------------------------------

--
-- Table structure for table `db_thongke`
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
-- Dumping data for table `db_thongke`
--

INSERT INTO `db_thongke` (`id`, `trong_ngay`, `trong_ngay_date`, `trong_tuan`, `trong_tuan_date`, `trong_thang`, `trong_thang_date`, `tong_truy_cap`) VALUES
(1, 4, 15, 13, 20, 55, 5, 15939);

-- --------------------------------------------------------

--
-- Table structure for table `db_thongke_detail`
--

CREATE TABLE `db_thongke_detail` (
  `session_id` varchar(255) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_thongke_detail`
--

INSERT INTO `db_thongke_detail` (`session_id`, `time`) VALUES
('3e6snrug2eb8ccb1i86uvcs3q6', 1557903446);

-- --------------------------------------------------------

--
-- Table structure for table `db_thongtin`
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
-- Dumping data for table `db_thongtin`
--

INSERT INTO `db_thongtin` (`id`, `company_vn`, `company_us`, `address_us`, `hotline`, `address_vn`, `twitter`, `facebook`, `google`, `dien_thoai`, `email`, `toado`, `youtube`, `skype`, `gg`, `copyright`) VALUES
(1, 'Công Ty In Quảng Cáo Thiên Minh', 'PHU MY SOP JOINT STOCK COMPANY', 'No. 12 Le Ngo Cat Street, Ward 7, District 3, Ho Chi Minh City. Ho Chi Minh', '0986175175', '256/19/29 Dương Quảng Hàm, P.5, Gò Vấp, TPHCM', 'https://www.facebook.com/PhuongNamVina/', 'https://www.facebook.com/PhuongNamVina/', 'https://plus.google.com/u/0/', '', 'inthienminhhcm@gmail.com', '</iframe>\r\n\"  /><iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.711549908523!2d106.68562631411689!3d10.833372261103998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528f8009789f3%3A0xa9e6f162ec7fb211!2zMjU2LCAxOSBExrDGoW5nIFF14bqjbmcgSMOgbSwgcGjGsOG7nW5nIDUsIEfDsiBW4bqlcCwgSOG7kyBDaMOtIE1pbmgsIFZp4buHdCBOYW0!5e0!3m2!1svi!2sus!4v1557112894760!5m2!1svi!2sus\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\r\n\"  /><iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.711549908523!2d106.68562631411689!3d10.833372261103998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528f8009789f3%3A0xa9e6f162ec7fb211!2zMjU2LCAxOSBExrDGoW5nIFF14bqjbmcgSMOgbSwgcGjGsOG7nW5nIDUsIEfDsiBW4bqlcCwgSOG7kyBDaMOtIE1pbmgsIFZp4buHdCBOYW0!5e0!3m2!1svi!2sus!4v1557112894760!5m2!1svi!2sus\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\r\n\"  /></iframe>\r\n\"  /><iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.711549908523!2d106.68562631411689!3d10.833372261103998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528f8009789f3%3A0xa9e6f162ec7fb211!2zMjU2LCAxOSBExrDGoW5nIFF14bqjbmcgSMOgbSwgcGjGsOG7nW5nIDUsIEfDsiBW4bqlcCwgSOG7kyBDaMOtIE1pbmgsIFZp4buHdCBOYW0!5e0!3m2!1svi!2sus!4v1557112894760!5m2!1svi!2sus\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\r\n\"  /></iframe>\r\n\"  /></iframe>\r\n\"  /><iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.711549908523!2d106.68562631411689!3d10.833372261103998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528f8009789f3%3A0xa9e6f162ec7fb211!2zMjU2LCAxOSBExrDGoW5nIFF14bqjbmcgSMOgbSwgcGjGsOG7nW5nIDUsIEfDsiBW4bqlcCwgSOG7kyBDaMOtIE1pbmgsIFZp4buHdCBOYW0!5e0!3m2!1svi!2sus!4v1557112894760!5m2!1svi!2sus\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\r\n\"  /><iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.711549908523!2d106.68562631411689!3d10.833372261103998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528f8009789f3%3A0xa9e6f162ec7fb211!2zMjU2LCAxOSBExrDGoW5nIFF14bqjbmcgSMOgbSwgcGjGsOG7nW5nIDUsIEfDsiBW4bqlcCwgSOG7kyBDaMOtIE1pbmgsIFZp4buHdCBOYW0!5e0!3m2!1svi!2sus!4v1557112894760!5m2!1svi!2sus\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\r\n\"  /></iframe>\r\n\"  /><iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.711549908523!2d106.68562631411689!3d10.833372261103998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528f8009789f3%3A0xa9e6f162ec7fb211!2zMjU2LCAxOSBExrDGoW5nIFF14bqjbmcgSMOgbSwgcGjGsOG7nW5nIDUsIEfDsiBW4bqlcCwgSOG7kyBDaMOtIE1pbmgsIFZp4buHdCBOYW0!5e0!3m2!1svi!2sus!4v1557112894760!5m2!1svi!2sus\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\r\n', '', '', '', 'Copyright © 2019 Quảng Cáo Thiên Minh');

-- --------------------------------------------------------

--
-- Table structure for table `db_thuvienanh`
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
-- Table structure for table `db_tintuc`
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
-- Dumping data for table `db_tintuc`
--

INSERT INTO `db_tintuc` (`id`, `ten_vn`, `ten_us`, `ten_ch`, `alias_vn`, `alias_us`, `alias_ch`, `mo_ta_vn`, `mo_ta_us`, `mo_ta_ch`, `noi_dung_vn`, `noi_dung_us`, `noi_dung_ch`, `hinh_anh`, `ngay_dang`, `noi_bat`, `tieu_bieu`, `hien_thi`, `title_vn`, `title_us`, `title_ch`, `keyword`, `tags`, `tags_hienthi`, `des`, `id_loai`, `so_thu_tu`, `hen_ngay`, `hen_gio`, `hen_ngay_dang`) VALUES
(610, 'Đội ngủ chuyên nghiệp', '', '', 'doi-ngu-chuyen-nghiep', '', '', 'Upscience cung cấp một phạm vi rộng các phân tích và dịch vụ nhằm giúp quý khách đảm bảo, tối ưu hóa và kiểm soát sản phẩm và quy trình sản xuất. Dịch vụ phân tích và dịch vụ cá nhân, chẳng hạn như hỗ trợ kỹ thuật, huấn luyện, phát triển và xác minh phương pháp, kiểm tra và giám định.', '', '', '<p><span style=\"color:rgb(113, 126, 134); font-family:montserrat,sans-serif; font-size:14px\">Upscience cung cấp một phạm vi rộng các phân tích và dịch vụ nhằm giúp quý khách đảm bảo, tối ưu hóa và kiểm soát sản phẩm và quy trình sản xuất. Dịch vụ phân tích và dịch vụ cá nhân, chẳng hạn như hỗ trợ kỹ thuật, huấn luyện, phát triển và xác minh phương pháp, kiểm tra và giám định.</span></p>\r\n', '', '', '824851814240_visao1.png', 1556291392, 0, 0, 0, 'Đội ngủ chuyên nghiệp', '', '', '', '', '', '', 490, 0, '', '', ''),
(611, 'Thiết kế sáng tạo', '', '', 'thiet-ke-sang-tao', '', '', 'Upscience cung cấp một phạm vi rộng các phân tích và dịch vụ nhằm giúp quý khách đảm bảo, tối ưu hóa và kiểm soát sản phẩm và quy trình sản xuất. Dịch vụ phân tích và dịch vụ cá nhân, chẳng hạn như hỗ trợ kỹ thuật, huấn luyện, phát triển và xác minh phương pháp, kiểm tra và giám định.', '', '', '<p><span style=\"color:rgb(113, 126, 134); font-family:montserrat,sans-serif; font-size:14px\">Upscience cung cấp một phạm vi rộng các phân tích và dịch vụ nhằm giúp quý khách đảm bảo, tối ưu hóa và kiểm soát sản phẩm và quy trình sản xuất. Dịch vụ phân tích và dịch vụ cá nhân, chẳng hạn như hỗ trợ kỹ thuật, huấn luyện, phát triển và xác minh phương pháp, kiểm tra và giám định.</span></p>\r\n', '', '', '705077760681_visao2.png', 1556291397, 0, 0, 0, 'Thiết kế sáng tạo', '', '', '', '', '', '', 490, 0, '', '', ''),
(612, 'Giá cả hợp lý', '', '', 'gia-ca-hop-ly', '', '', 'Upscience cung cấp một phạm vi rộng các phân tích và dịch vụ nhằm giúp quý khách đảm bảo, tối ưu hóa và kiểm soát sản phẩm và quy trình sản xuất. Dịch vụ phân tích và dịch vụ cá nhân, chẳng hạn như hỗ trợ kỹ thuật, huấn luyện, phát triển và xác minh phương pháp, kiểm tra và giám định.', '', '', '<p><span style=\"color:rgb(113, 126, 134); font-family:montserrat,sans-serif; font-size:14px\">Upscience cung cấp một phạm vi rộng các phân tích và dịch vụ nhằm giúp quý khách đảm bảo, tối ưu hóa và kiểm soát sản phẩm và quy trình sản xuất. Dịch vụ phân tích và dịch vụ cá nhân, chẳng hạn như hỗ trợ kỹ thuật, huấn luyện, phát triển và xác minh phương pháp, kiểm tra và giám định.</span></p>\r\n', '', '', '581186246317_visao3.png', 1556291399, 0, 0, 0, 'Giá cả hợp lý', '', '', '', '', '', '', 490, 0, '', '', ''),
(613, 'Tiến độ chính xác', '', '', 'tien-do-chinh-xac', '', '', 'Upscience cung cấp một phạm vi rộng các phân tích và dịch vụ nhằm giúp quý khách đảm bảo, tối ưu hóa và kiểm soát sản phẩm và quy trình sản xuất. Dịch vụ phân tích và dịch vụ cá nhân, chẳng hạn như hỗ trợ kỹ thuật, huấn luyện, phát triển và xác minh phương pháp, kiểm tra và giám định.', '', '', '<p><span style=\"color:rgb(113, 126, 134); font-family:montserrat,sans-serif; font-size:14px\">Upscience cung cấp một phạm vi rộng các phân tích và dịch vụ nhằm giúp quý khách đảm bảo, tối ưu hóa và kiểm soát sản phẩm và quy trình sản xuất. Dịch vụ phân tích và dịch vụ cá nhân, chẳng hạn như hỗ trợ kỹ thuật, huấn luyện, phát triển và xác minh phương pháp, kiểm tra và giám định.</span></p>\r\n', '', '', '848105957884_visao4.png', 1556291401, 0, 0, 0, 'Tiến độ chính xác', '', '', '', '', '', '', 490, 0, '', '', ''),
(617, 'Thiết kế ấn phẩm, quà tặng', '', '', 'thiet-ke-an-pham-qua-tang', '', '', 'Bao bì là một phần tạo nên dấu ấn thương hiệu cho các nhà sản xuất. Nhờ kỹ thuật in lụa mà quy trình in bao bì trở nên đơn giản hơn, bản in đẹp hơn, chất lượng hơn. Hãy cùng chúng tôi tìm hiểu về kỹ thuật này bạn nhé.', '', '', '<p>Nhìn chung, kỹ thuật này được sử dụng khá phổ biến hiện nay. Nó không chỉ áp dụng để in vải mà còn trên cả bao bì. Quá trình in sẽ bao gồm những bước cơ bản sau:</p>\r\n\r\n<ol>\r\n	<li>Thiết kế</li>\r\n	<li>Ra phim</li>\r\n	<li>Chụp bản</li>\r\n	<li>Pha mực</li>\r\n	<li>In thành phẩm</li>\r\n</ol>\r\n\r\n<p>Đầu tiên, người thợ sẽ sử dụng một lớp vải thật mỏng, đặt dưới tia cực tím. Sau đó, bao bì cần in sẽ được đặt lên phía trên, tiếp đó là các bản in có họa tiết. Người thợ sẽ sử dụng dao gạt để mực được phủ đều trên bản in.</p>\r\n\r\n<p>Trong trường hợp cần in chống màu, người ta sẽ thực hiện thao tác này vài lần. Bao bì mới&nbsp;<a href=\"https://intranvu.com/in-lua-tren-giay/\" style=\"text-decoration-line: none; margin: 0px; padding: 0px; vertical-align: baseline; background: transparent; color: rgb(36, 68, 123);\"><strong>in lụa</strong></a>&nbsp;xong sẽ được đem đi phơi hoặc được làm khô bằng máy sấy. sau khi bao bì khô, người ta sẽ chuyển chúng sang giai đoạn đóng gói và hoàn tất sản phẩm.</p>\r\n\r\n<p>So với nhiều kỹ thuật khác, in lụa cho ra những sản phẩm với chất lượng in tốt, bền màu và sắc nét. Đặc biệt, quy trình in trở nên đơn giản hơn nên đã giúp người thợ tiết kiệm không ít thời gian, từ đó giảm chi phí sản xuất.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" class=\"alignnone wp-image-826\" src=\"https://intranvu.com/wp-content/uploads/2018/08/27K%E1%BB%B9-thu%E1%BA%ADt-in-l%E1%BB%A5a-tr%C3%AAn-bao-b%C3%AC.1-300x248.jpg\" style=\"background:transparent; border:0px; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline; width:414px\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Bao bì in lụa có hình ảnh chất lượng, sắc nét</em></p>\r\n\r\n<h2>Kỹ thuật in lụa trên bao bì sử dụng loại mực gì?</h2>\r\n\r\n<p>Mực in sử dụng trong kỹ thuật này khá đa dạng. Nó phụ thuộc vào nhiều yếu tố, trong đó có loại bao bì. Chẳng hạn, nếu là bao bì PP thì sẽ có loại mực dành riêng cho nó. Giá cả và chất lượng các loại mực cũng khác nhau. Những người thợ có tay nghề sẽ dễ dàng nhận biết và chọn loại mực phù hợp cho từng loại bao bì.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" class=\"alignnone wp-image-827\" src=\"https://intranvu.com/wp-content/uploads/2018/08/27K%E1%BB%B9-thu%E1%BA%ADt-in-l%E1%BB%A5a-tr%C3%AAn-bao-b%C3%AC.2-300x169.jpg\" style=\"background:transparent; border:0px; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline; width:469px\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Mỗi bao bì sẽ sử dụng loại mực in phù hợp</em></p>\r\n\r\n<p>Quy trình pha chế mực in cũng được hết sức coi trọng. Bởi vì không tất cả các loại mực đều giống nhau. Nếu pha chế không tốt chúng ta sẽ không thể tạo ra màu sắc đẹp, chất lượng bản in cũng vì đó mà giảm sút. Vì thế, với từng loại bao bì&nbsp;<strong>in lụa</strong>, người ta sẽ phải xác định tỷ lệ và thành phần các loại hóa chất khác nhau để đảm bảo phù hợp.</p>\r\n\r\n<p>Hy vọng, sau bài viết này bạn đã hiểu hơn về kỹ thuật in trên bao bì. Để tạo ra một bản in đẹp, phụ thuộc vào rất nhiều yếu tố, nhất là mực in. Chúc bạn có những sản phẩm bao bì&nbsp;<strong>in lụa</strong>&nbsp;đẹp nhất, chất lượng nhất.</p>\r\n', '', '', '409941006484_baobi.jpg', 1556292259, 0, 0, 0, 'Thiết kế ấn phẩm, quà tặng', '', '', '', '', '', '', 491, 0, '', '', ''),
(618, 'In ấn phẩm văn phòng', '', '', 'in-an-pham-van-phong', '', '', 'Bao bì là một phần tạo nên dấu ấn thương hiệu cho các nhà sản xuất. Nhờ kỹ thuật in lụa mà quy trình in bao bì trở nên đơn giản hơn, bản in đẹp hơn, chất lượng hơn. Hãy cùng chúng tôi tìm hiểu về kỹ thuật này bạn nhé.', '', '', '<p>Nhìn chung, kỹ thuật này được sử dụng khá phổ biến hiện nay. Nó không chỉ áp dụng để in vải mà còn trên cả bao bì. Quá trình in sẽ bao gồm những bước cơ bản sau:</p>\r\n\r\n<ol>\r\n	<li>Thiết kế</li>\r\n	<li>Ra phim</li>\r\n	<li>Chụp bản</li>\r\n	<li>Pha mực</li>\r\n	<li>In thành phẩm</li>\r\n</ol>\r\n\r\n<p>Đầu tiên, người thợ sẽ sử dụng một lớp vải thật mỏng, đặt dưới tia cực tím. Sau đó, bao bì cần in sẽ được đặt lên phía trên, tiếp đó là các bản in có họa tiết. Người thợ sẽ sử dụng dao gạt để mực được phủ đều trên bản in.</p>\r\n\r\n<p>Trong trường hợp cần in chống màu, người ta sẽ thực hiện thao tác này vài lần. Bao bì mới&nbsp;<a href=\"https://intranvu.com/in-lua-tren-giay/\" style=\"text-decoration-line: none; margin: 0px; padding: 0px; vertical-align: baseline; background: transparent; color: rgb(36, 68, 123);\"><strong>in lụa</strong></a>&nbsp;xong sẽ được đem đi phơi hoặc được làm khô bằng máy sấy. sau khi bao bì khô, người ta sẽ chuyển chúng sang giai đoạn đóng gói và hoàn tất sản phẩm.</p>\r\n\r\n<p>So với nhiều kỹ thuật khác, in lụa cho ra những sản phẩm với chất lượng in tốt, bền màu và sắc nét. Đặc biệt, quy trình in trở nên đơn giản hơn nên đã giúp người thợ tiết kiệm không ít thời gian, từ đó giảm chi phí sản xuất.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" class=\"alignnone wp-image-826\" src=\"https://intranvu.com/wp-content/uploads/2018/08/27K%E1%BB%B9-thu%E1%BA%ADt-in-l%E1%BB%A5a-tr%C3%AAn-bao-b%C3%AC.1-300x248.jpg\" style=\"background:transparent; border:0px; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline; width:414px\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Bao bì in lụa có hình ảnh chất lượng, sắc nét</em></p>\r\n\r\n<h2>Kỹ thuật in lụa trên bao bì sử dụng loại mực gì?</h2>\r\n\r\n<p>Mực in sử dụng trong kỹ thuật này khá đa dạng. Nó phụ thuộc vào nhiều yếu tố, trong đó có loại bao bì. Chẳng hạn, nếu là bao bì PP thì sẽ có loại mực dành riêng cho nó. Giá cả và chất lượng các loại mực cũng khác nhau. Những người thợ có tay nghề sẽ dễ dàng nhận biết và chọn loại mực phù hợp cho từng loại bao bì.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" class=\"alignnone wp-image-827\" src=\"https://intranvu.com/wp-content/uploads/2018/08/27K%E1%BB%B9-thu%E1%BA%ADt-in-l%E1%BB%A5a-tr%C3%AAn-bao-b%C3%AC.2-300x169.jpg\" style=\"background:transparent; border:0px; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline; width:469px\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Mỗi bao bì sẽ sử dụng loại mực in phù hợp</em></p>\r\n\r\n<p>Quy trình pha chế mực in cũng được hết sức coi trọng. Bởi vì không tất cả các loại mực đều giống nhau. Nếu pha chế không tốt chúng ta sẽ không thể tạo ra màu sắc đẹp, chất lượng bản in cũng vì đó mà giảm sút. Vì thế, với từng loại bao bì&nbsp;<strong>in lụa</strong>, người ta sẽ phải xác định tỷ lệ và thành phần các loại hóa chất khác nhau để đảm bảo phù hợp.</p>\r\n\r\n<p>Hy vọng, sau bài viết này bạn đã hiểu hơn về kỹ thuật in trên bao bì. Để tạo ra một bản in đẹp, phụ thuộc vào rất nhiều yếu tố, nhất là mực in. Chúc bạn có những sản phẩm bao bì&nbsp;<strong>in lụa</strong>&nbsp;đẹp nhất, chất lượng nhất.</p>\r\n', '', '', '884074633760_baobi.jpg', 1556292260, 0, 0, 0, 'In ấn phẩm văn phòng', '', '', '', '', '', '', 491, 0, '', '', ''),
(619, 'In ấn phẩm quảng cáo', '', '', 'in-an-pham-quang-cao', '', '', 'Bao bì là một phần tạo nên dấu ấn thương hiệu cho các nhà sản xuất. Nhờ kỹ thuật in lụa mà quy trình in bao bì trở nên đơn giản hơn, bản in đẹp hơn, chất lượng hơn. Hãy cùng chúng tôi tìm hiểu về kỹ thuật này bạn nhé.', '', '', '<p>Nhìn chung, kỹ thuật này được sử dụng khá phổ biến hiện nay. Nó không chỉ áp dụng để in vải mà còn trên cả bao bì. Quá trình in sẽ bao gồm những bước cơ bản sau:</p>\r\n\r\n<ol>\r\n	<li>Thiết kế</li>\r\n	<li>Ra phim</li>\r\n	<li>Chụp bản</li>\r\n	<li>Pha mực</li>\r\n	<li>In thành phẩm</li>\r\n</ol>\r\n\r\n<p>Đầu tiên, người thợ sẽ sử dụng một lớp vải thật mỏng, đặt dưới tia cực tím. Sau đó, bao bì cần in sẽ được đặt lên phía trên, tiếp đó là các bản in có họa tiết. Người thợ sẽ sử dụng dao gạt để mực được phủ đều trên bản in.</p>\r\n\r\n<p>Trong trường hợp cần in chống màu, người ta sẽ thực hiện thao tác này vài lần. Bao bì mới&nbsp;<a href=\"https://intranvu.com/in-lua-tren-giay/\" style=\"text-decoration-line: none; margin: 0px; padding: 0px; vertical-align: baseline; background: transparent; color: rgb(36, 68, 123);\"><strong>in lụa</strong></a>&nbsp;xong sẽ được đem đi phơi hoặc được làm khô bằng máy sấy. sau khi bao bì khô, người ta sẽ chuyển chúng sang giai đoạn đóng gói và hoàn tất sản phẩm.</p>\r\n\r\n<p>So với nhiều kỹ thuật khác, in lụa cho ra những sản phẩm với chất lượng in tốt, bền màu và sắc nét. Đặc biệt, quy trình in trở nên đơn giản hơn nên đã giúp người thợ tiết kiệm không ít thời gian, từ đó giảm chi phí sản xuất.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" class=\"alignnone wp-image-826\" src=\"https://intranvu.com/wp-content/uploads/2018/08/27K%E1%BB%B9-thu%E1%BA%ADt-in-l%E1%BB%A5a-tr%C3%AAn-bao-b%C3%AC.1-300x248.jpg\" style=\"background:transparent; border:0px; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline; width:414px\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Bao bì in lụa có hình ảnh chất lượng, sắc nét</em></p>\r\n\r\n<h2>Kỹ thuật in lụa trên bao bì sử dụng loại mực gì?</h2>\r\n\r\n<p>Mực in sử dụng trong kỹ thuật này khá đa dạng. Nó phụ thuộc vào nhiều yếu tố, trong đó có loại bao bì. Chẳng hạn, nếu là bao bì PP thì sẽ có loại mực dành riêng cho nó. Giá cả và chất lượng các loại mực cũng khác nhau. Những người thợ có tay nghề sẽ dễ dàng nhận biết và chọn loại mực phù hợp cho từng loại bao bì.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" class=\"alignnone wp-image-827\" src=\"https://intranvu.com/wp-content/uploads/2018/08/27K%E1%BB%B9-thu%E1%BA%ADt-in-l%E1%BB%A5a-tr%C3%AAn-bao-b%C3%AC.2-300x169.jpg\" style=\"background:transparent; border:0px; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline; width:469px\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Mỗi bao bì sẽ sử dụng loại mực in phù hợp</em></p>\r\n\r\n<p>Quy trình pha chế mực in cũng được hết sức coi trọng. Bởi vì không tất cả các loại mực đều giống nhau. Nếu pha chế không tốt chúng ta sẽ không thể tạo ra màu sắc đẹp, chất lượng bản in cũng vì đó mà giảm sút. Vì thế, với từng loại bao bì&nbsp;<strong>in lụa</strong>, người ta sẽ phải xác định tỷ lệ và thành phần các loại hóa chất khác nhau để đảm bảo phù hợp.</p>\r\n\r\n<p>Hy vọng, sau bài viết này bạn đã hiểu hơn về kỹ thuật in trên bao bì. Để tạo ra một bản in đẹp, phụ thuộc vào rất nhiều yếu tố, nhất là mực in. Chúc bạn có những sản phẩm bao bì&nbsp;<strong>in lụa</strong>&nbsp;đẹp nhất, chất lượng nhất.</p>\r\n', '', '', '238191465170_baobi.jpg', 1556292261, 0, 0, 0, 'In ấn phẩm quảng cáo', '', '', '', '', '', '', 491, 0, '', '', ''),
(620, 'Thiết kế in bao bì giấy', '', '', 'thiet-ke-in-bao-bi-giay-223', '', '', 'Bao bì là một phần tạo nên dấu ấn thương hiệu cho các nhà sản xuất. Nhờ kỹ thuật in lụa mà quy trình in bao bì trở nên đơn giản hơn, bản in đẹp hơn, chất lượng hơn. Hãy cùng chúng tôi tìm hiểu về kỹ thuật này bạn nhé.', '', '', '<p>Nhìn chung, kỹ thuật này được sử dụng khá phổ biến hiện nay. Nó không chỉ áp dụng để in vải mà còn trên cả bao bì. Quá trình in sẽ bao gồm những bước cơ bản sau:</p>\r\n\r\n<ol>\r\n	<li>Thiết kế</li>\r\n	<li>Ra phim</li>\r\n	<li>Chụp bản</li>\r\n	<li>Pha mực</li>\r\n	<li>In thành phẩm</li>\r\n</ol>\r\n\r\n<p>Đầu tiên, người thợ sẽ sử dụng một lớp vải thật mỏng, đặt dưới tia cực tím. Sau đó, bao bì cần in sẽ được đặt lên phía trên, tiếp đó là các bản in có họa tiết. Người thợ sẽ sử dụng dao gạt để mực được phủ đều trên bản in.</p>\r\n\r\n<p>Trong trường hợp cần in chống màu, người ta sẽ thực hiện thao tác này vài lần. Bao bì mới&nbsp;<a href=\"https://intranvu.com/in-lua-tren-giay/\" style=\"text-decoration-line: none; margin: 0px; padding: 0px; vertical-align: baseline; background: transparent; color: rgb(36, 68, 123);\"><strong>in lụa</strong></a>&nbsp;xong sẽ được đem đi phơi hoặc được làm khô bằng máy sấy. sau khi bao bì khô, người ta sẽ chuyển chúng sang giai đoạn đóng gói và hoàn tất sản phẩm.</p>\r\n\r\n<p>So với nhiều kỹ thuật khác, in lụa cho ra những sản phẩm với chất lượng in tốt, bền màu và sắc nét. Đặc biệt, quy trình in trở nên đơn giản hơn nên đã giúp người thợ tiết kiệm không ít thời gian, từ đó giảm chi phí sản xuất.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" class=\"alignnone wp-image-826\" src=\"https://intranvu.com/wp-content/uploads/2018/08/27K%E1%BB%B9-thu%E1%BA%ADt-in-l%E1%BB%A5a-tr%C3%AAn-bao-b%C3%AC.1-300x248.jpg\" style=\"background:transparent; border:0px; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline; width:414px\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Bao bì in lụa có hình ảnh chất lượng, sắc nét</em></p>\r\n\r\n<h2>Kỹ thuật in lụa trên bao bì sử dụng loại mực gì?</h2>\r\n\r\n<p>Mực in sử dụng trong kỹ thuật này khá đa dạng. Nó phụ thuộc vào nhiều yếu tố, trong đó có loại bao bì. Chẳng hạn, nếu là bao bì PP thì sẽ có loại mực dành riêng cho nó. Giá cả và chất lượng các loại mực cũng khác nhau. Những người thợ có tay nghề sẽ dễ dàng nhận biết và chọn loại mực phù hợp cho từng loại bao bì.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" class=\"alignnone wp-image-827\" src=\"https://intranvu.com/wp-content/uploads/2018/08/27K%E1%BB%B9-thu%E1%BA%ADt-in-l%E1%BB%A5a-tr%C3%AAn-bao-b%C3%AC.2-300x169.jpg\" style=\"background:transparent; border:0px; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline; width:469px\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Mỗi bao bì sẽ sử dụng loại mực in phù hợp</em></p>\r\n\r\n<p>Quy trình pha chế mực in cũng được hết sức coi trọng. Bởi vì không tất cả các loại mực đều giống nhau. Nếu pha chế không tốt chúng ta sẽ không thể tạo ra màu sắc đẹp, chất lượng bản in cũng vì đó mà giảm sút. Vì thế, với từng loại bao bì&nbsp;<strong>in lụa</strong>, người ta sẽ phải xác định tỷ lệ và thành phần các loại hóa chất khác nhau để đảm bảo phù hợp.</p>\r\n\r\n<p>Hy vọng, sau bài viết này bạn đã hiểu hơn về kỹ thuật in trên bao bì. Để tạo ra một bản in đẹp, phụ thuộc vào rất nhiều yếu tố, nhất là mực in. Chúc bạn có những sản phẩm bao bì&nbsp;<strong>in lụa</strong>&nbsp;đẹp nhất, chất lượng nhất.</p>\r\n', '', '', '336729298609_baobi.jpg', 1556292263, 0, 0, 0, 'Thiết kế in bao bì giấy', '', '', '', '', '', '', 491, 0, '', '', ''),
(621, 'Monkey', '', '', 'monkey', '', '', 'Tôi rất tin tưởng vào những dịch vụ mà Công ty Thiên Minh cung cấp, với đội ngũ nhân viên chuyên nghiệp, chi phí hợp lý mà chất lượng rất tốt. Tối rất hài lòng chúc công ty ngày càng phát triển hơn nữa.', '', '', '', '', '', '640334425792_monkey.jpg', 1556347498, 1, 0, 1, 'Monkey', '', '', '', '', '', '', 497, 0, '', '', ''),
(622, 'Monkey', '', '', 'monkey-253', '', '', 'Tôi rất tin tưởng vào những dịch vụ mà Công ty Thiên Minh cung cấp, với đội ngũ nhân viên chuyên nghiệp, chi phí hợp lý mà chất lượng rất tốt. Tối rất hài lòng chúc công ty ngày càng phát triển hơn nữa.', '', '', '', '', '', '421017465768_monkey.jpg', 1556347502, 1, 0, 1, 'Monkey', '', '', '', '', '', '', 497, 0, '', '', ''),
(623, 'Monkey', '', '', 'monkey-130', '', '', 'Tôi rất tin tưởng vào những dịch vụ mà Công ty Thiên Minh cung cấp, với đội ngũ nhân viên chuyên nghiệp, chi phí hợp lý mà chất lượng rất tốt. Tối rất hài lòng chúc công ty ngày càng phát triển hơn nữa.', '', '', '', '', '', '017863858518_monkey.jpg', 1556347504, 1, 0, 1, 'Monkey', '', '', '', '', '', '', 497, 0, '', '', ''),
(624, 'Làm túi giấy gồm nhưng loại nào', '', '', 'lam-tui-giay-gom-nhung-loai-nao', '', '', 'Nếu tổ chức một cuộc bình chọn, có lẽ những chiếc túi giấy sẽ được xếp hạng là dòng sản phẩm tiện dụng nhất trong ngành in ấn. Bởi lẽ, chúng không chỉ đơn thuần sản xuất ra để làm nhiệm vụ của một chiếc bao bì có thể chứa đựng được sản phẩm ở bên trong mà còn giúp cho các cửa hàng, doanh nghiệp, công ty', '', '', '<p>Nếu tổ chức một cuộc bình chọn, có lẽ những chiếc túi giấy sẽ được xếp hạng là dòng sản phẩm tiện dụng nhất trong ngành in ấn. Bởi lẽ, chúng không chỉ đơn thuần sản xuất ra để làm nhiệm vụ của một chiếc bao bì có thể chứa đựng được sản phẩm ở bên trong mà còn giúp cho các cửa hàng, doanh nghiệp, công ty,…giới thiệu, quảng bá những thương hiệu của mình một cách tinh tế, hiện đại và phong cách nhất với diện tích và mức độ ảnh hưởng ngày càng rộng rãi hơn, thuyết phục hơn.<img alt=\"\" class=\"aligncenter lazyloaded wp-image-2659\" src=\"https://insieutoc.vn/wp-content/uploads/2017/07/tui-giay-1.jpg\" style=\"border-style:none; box-sizing:border-box; clear:both; display:block; height:auto; margin:0px auto; max-width:100%; opacity:1; transition:opacity 1s ease 0s; vertical-align:middle; width:589px\" /></p>\r\n\r\n<p><img alt=\"\" class=\"aligncenter lazyloaded size-full wp-image-2658\" src=\"https://insieutoc.vn/wp-content/uploads/2017/07/tui-giay.jpg\" style=\"border-style:none; box-sizing:border-box; clear:both; display:block; height:auto; margin:0px auto; max-width:100%; opacity:1; transition:opacity 1s ease 0s; vertical-align:middle; width:482px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Để có được những chiếc túi giấy chất lượng cao, hình ảnh, thông tin thể hiện rõ ràng, sắc nét và có sức chịu lực tốt thì việc chọn lựa chất liệu giấy đóng một vai trò hết sức quan trọng. Các công ty sản xuất&nbsp;<a href=\"https://insieutoc.vn/in-tui-giay/\" rel=\"noopener noreferrer\" style=\"box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(30, 115, 190); text-decoration-line: none;\" target=\"_blank\">túi giấy giá rẻ TPHCM</a>&nbsp;đã không ngừng nghiên cứu các loại giấy in để phát triển ngày càng nhiều giải pháp in túi giấy hoàn hảo hơn từ giá thành đến chất lượng. Sau đây là những kinh nghiệm gồm đầy đủ thông tin được tích lũy trong quá trình sản xuất thực tế. Hãy cùng bài viết này dạo qua một vòng trong thế giới chất liệu giấy nhé</p>\r\n', '', '', '821328465702_baobi.jpg', 1556348750, 0, 0, 1, 'Làm túi giấy gồm nhưng loại nào', '', '', '', '', '', '', 175, 0, '', '', ''),
(625, 'Làm túi giấy gồm nhưng loại nào', '', '', 'lam-tui-giay-gom-nhung-loai-nao-254', '', '', 'Nếu tổ chức một cuộc bình chọn, có lẽ những chiếc túi giấy sẽ được xếp hạng là dòng sản phẩm tiện dụng nhất trong ngành in ấn. Bởi lẽ, chúng không chỉ đơn thuần sản xuất ra để làm nhiệm vụ của một chiếc bao bì có thể chứa đựng được sản phẩm ở bên trong mà còn giúp cho các cửa hàng, doanh nghiệp, công ty', '', '', '<p>Nếu tổ chức một cuộc bình chọn, có lẽ những chiếc túi giấy sẽ được xếp hạng là dòng sản phẩm tiện dụng nhất trong ngành in ấn. Bởi lẽ, chúng không chỉ đơn thuần sản xuất ra để làm nhiệm vụ của một chiếc bao bì có thể chứa đựng được sản phẩm ở bên trong mà còn giúp cho các cửa hàng, doanh nghiệp, công ty,…giới thiệu, quảng bá những thương hiệu của mình một cách tinh tế, hiện đại và phong cách nhất với diện tích và mức độ ảnh hưởng ngày càng rộng rãi hơn, thuyết phục hơn.<img alt=\"\" class=\"aligncenter lazyloaded wp-image-2659\" src=\"https://insieutoc.vn/wp-content/uploads/2017/07/tui-giay-1.jpg\" style=\"border-style:none; box-sizing:border-box; clear:both; display:block; height:auto; margin:0px auto; max-width:100%; opacity:1; transition:opacity 1s ease 0s; vertical-align:middle; width:589px\" /></p>\r\n\r\n<p><img alt=\"\" class=\"aligncenter lazyloaded size-full wp-image-2658\" src=\"https://insieutoc.vn/wp-content/uploads/2017/07/tui-giay.jpg\" style=\"border-style:none; box-sizing:border-box; clear:both; display:block; height:auto; margin:0px auto; max-width:100%; opacity:1; transition:opacity 1s ease 0s; vertical-align:middle; width:482px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Để có được những chiếc túi giấy chất lượng cao, hình ảnh, thông tin thể hiện rõ ràng, sắc nét và có sức chịu lực tốt thì việc chọn lựa chất liệu giấy đóng một vai trò hết sức quan trọng. Các công ty sản xuất&nbsp;<a href=\"https://insieutoc.vn/in-tui-giay/\" rel=\"noopener noreferrer\" style=\"box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(30, 115, 190); text-decoration-line: none;\" target=\"_blank\">túi giấy giá rẻ TPHCM</a>&nbsp;đã không ngừng nghiên cứu các loại giấy in để phát triển ngày càng nhiều giải pháp in túi giấy hoàn hảo hơn từ giá thành đến chất lượng. Sau đây là những kinh nghiệm gồm đầy đủ thông tin được tích lũy trong quá trình sản xuất thực tế. Hãy cùng bài viết này dạo qua một vòng trong thế giới chất liệu giấy nhé</p>\r\n', '', '', '100684749000_baobi.jpg', 1556348752, 0, 0, 1, 'Làm túi giấy gồm nhưng loại nào', '', '', '', '', '', '', 175, 0, '', '', ''),
(626, 'Làm túi giấy gồm nhưng loại nào', '', '', 'lam-tui-giay-gom-nhung-loai-nao-990', '', '', 'Nếu tổ chức một cuộc bình chọn, có lẽ những chiếc túi giấy sẽ được xếp hạng là dòng sản phẩm tiện dụng nhất trong ngành in ấn. Bởi lẽ, chúng không chỉ đơn thuần sản xuất ra để làm nhiệm vụ của một chiếc bao bì có thể chứa đựng được sản phẩm ở bên trong mà còn giúp cho các cửa hàng, doanh nghiệp, công ty', '', '', '<p>Nếu tổ chức một cuộc bình chọn, có lẽ những chiếc túi giấy sẽ được xếp hạng là dòng sản phẩm tiện dụng nhất trong ngành in ấn. Bởi lẽ, chúng không chỉ đơn thuần sản xuất ra để làm nhiệm vụ của một chiếc bao bì có thể chứa đựng được sản phẩm ở bên trong mà còn giúp cho các cửa hàng, doanh nghiệp, công ty,…giới thiệu, quảng bá những thương hiệu của mình một cách tinh tế, hiện đại và phong cách nhất với diện tích và mức độ ảnh hưởng ngày càng rộng rãi hơn, thuyết phục hơn.<img alt=\"\" class=\"aligncenter lazyloaded wp-image-2659\" src=\"https://insieutoc.vn/wp-content/uploads/2017/07/tui-giay-1.jpg\" style=\"border-style:none; box-sizing:border-box; clear:both; display:block; height:auto; margin:0px auto; max-width:100%; opacity:1; transition:opacity 1s ease 0s; vertical-align:middle; width:589px\" /></p>\r\n\r\n<p><img alt=\"\" class=\"aligncenter lazyloaded size-full wp-image-2658\" src=\"https://insieutoc.vn/wp-content/uploads/2017/07/tui-giay.jpg\" style=\"border-style:none; box-sizing:border-box; clear:both; display:block; height:auto; margin:0px auto; max-width:100%; opacity:1; transition:opacity 1s ease 0s; vertical-align:middle; width:482px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Để có được những chiếc túi giấy chất lượng cao, hình ảnh, thông tin thể hiện rõ ràng, sắc nét và có sức chịu lực tốt thì việc chọn lựa chất liệu giấy đóng một vai trò hết sức quan trọng. Các công ty sản xuất&nbsp;<a href=\"https://insieutoc.vn/in-tui-giay/\" rel=\"noopener noreferrer\" style=\"box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(30, 115, 190); text-decoration-line: none;\" target=\"_blank\">túi giấy giá rẻ TPHCM</a>&nbsp;đã không ngừng nghiên cứu các loại giấy in để phát triển ngày càng nhiều giải pháp in túi giấy hoàn hảo hơn từ giá thành đến chất lượng. Sau đây là những kinh nghiệm gồm đầy đủ thông tin được tích lũy trong quá trình sản xuất thực tế. Hãy cùng bài viết này dạo qua một vòng trong thế giới chất liệu giấy nhé</p>\r\n', '', '', '889572510695_baobi.jpg', 1556348753, 1, 0, 1, 'Làm túi giấy gồm nhưng loại nào', '', '', '', '', '', '', 175, 0, '', '', ''),
(627, 'Làm túi giấy gồm nhưng loại nào', '', '', 'lam-tui-giay-gom-nhung-loai-nao-855', '', '', 'Nếu tổ chức một cuộc bình chọn, có lẽ những chiếc túi giấy sẽ được xếp hạng là dòng sản phẩm tiện dụng nhất trong ngành in ấn. Bởi lẽ, chúng không chỉ đơn thuần sản xuất ra để làm nhiệm vụ của một chiếc bao bì có thể chứa đựng được sản phẩm ở bên trong mà còn giúp cho các cửa hàng, doanh nghiệp, công ty', '', '', '<p>Nếu tổ chức một cuộc bình chọn, có lẽ những chiếc túi giấy sẽ được xếp hạng là dòng sản phẩm tiện dụng nhất trong ngành in ấn. Bởi lẽ, chúng không chỉ đơn thuần sản xuất ra để làm nhiệm vụ của một chiếc bao bì có thể chứa đựng được sản phẩm ở bên trong mà còn giúp cho các cửa hàng, doanh nghiệp, công ty,…giới thiệu, quảng bá những thương hiệu của mình một cách tinh tế, hiện đại và phong cách nhất với diện tích và mức độ ảnh hưởng ngày càng rộng rãi hơn, thuyết phục hơn.<img alt=\"\" class=\"aligncenter lazyloaded wp-image-2659\" src=\"https://insieutoc.vn/wp-content/uploads/2017/07/tui-giay-1.jpg\" style=\"border-style:none; box-sizing:border-box; clear:both; display:block; height:auto; margin:0px auto; max-width:100%; opacity:1; transition:opacity 1s ease 0s; vertical-align:middle; width:589px\" /></p>\r\n\r\n<p><img alt=\"\" class=\"aligncenter lazyloaded size-full wp-image-2658\" src=\"https://insieutoc.vn/wp-content/uploads/2017/07/tui-giay.jpg\" style=\"border-style:none; box-sizing:border-box; clear:both; display:block; height:auto; margin:0px auto; max-width:100%; opacity:1; transition:opacity 1s ease 0s; vertical-align:middle; width:482px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Để có được những chiếc túi giấy chất lượng cao, hình ảnh, thông tin thể hiện rõ ràng, sắc nét và có sức chịu lực tốt thì việc chọn lựa chất liệu giấy đóng một vai trò hết sức quan trọng. Các công ty sản xuất&nbsp;<a href=\"https://insieutoc.vn/in-tui-giay/\" rel=\"noopener noreferrer\" style=\"box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(30, 115, 190); text-decoration-line: none;\" target=\"_blank\">túi giấy giá rẻ TPHCM</a>&nbsp;đã không ngừng nghiên cứu các loại giấy in để phát triển ngày càng nhiều giải pháp in túi giấy hoàn hảo hơn từ giá thành đến chất lượng. Sau đây là những kinh nghiệm gồm đầy đủ thông tin được tích lũy trong quá trình sản xuất thực tế. Hãy cùng bài viết này dạo qua một vòng trong thế giới chất liệu giấy nhé</p>\r\n', '', '', '388524584556_baobi.jpg', 1556348754, 1, 0, 1, 'Làm túi giấy gồm nhưng loại nào', '', '', '', '', '', '', 175, 0, '', '', ''),
(628, 'Làm túi giấy gồm nhưng loại nào', '', '', 'lam-tui-giay-gom-nhung-loai-nao-787', '', '', 'Nếu tổ chức một cuộc bình chọn, có lẽ những chiếc túi giấy sẽ được xếp hạng là dòng sản phẩm tiện dụng nhất trong ngành in ấn. Bởi lẽ, chúng không chỉ đơn thuần sản xuất ra để làm nhiệm vụ của một chiếc bao bì có thể chứa đựng được sản phẩm ở bên trong mà còn giúp cho các cửa hàng, doanh nghiệp, công ty', '', '', '<p>Nếu tổ chức một cuộc bình chọn, có lẽ những chiếc túi giấy sẽ được xếp hạng là dòng sản phẩm tiện dụng nhất trong ngành in ấn. Bởi lẽ, chúng không chỉ đơn thuần sản xuất ra để làm nhiệm vụ của một chiếc bao bì có thể chứa đựng được sản phẩm ở bên trong mà còn giúp cho các cửa hàng, doanh nghiệp, công ty,…giới thiệu, quảng bá những thương hiệu của mình một cách tinh tế, hiện đại và phong cách nhất với diện tích và mức độ ảnh hưởng ngày càng rộng rãi hơn, thuyết phục hơn.<img alt=\"\" class=\"aligncenter lazyloaded wp-image-2659\" src=\"https://insieutoc.vn/wp-content/uploads/2017/07/tui-giay-1.jpg\" style=\"border-style:none; box-sizing:border-box; clear:both; display:block; height:auto; margin:0px auto; max-width:100%; opacity:1; transition:opacity 1s ease 0s; vertical-align:middle; width:589px\" /></p>\r\n\r\n<p><img alt=\"\" class=\"aligncenter lazyloaded size-full wp-image-2658\" src=\"https://insieutoc.vn/wp-content/uploads/2017/07/tui-giay.jpg\" style=\"border-style:none; box-sizing:border-box; clear:both; display:block; height:auto; margin:0px auto; max-width:100%; opacity:1; transition:opacity 1s ease 0s; vertical-align:middle; width:482px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Để có được những chiếc túi giấy chất lượng cao, hình ảnh, thông tin thể hiện rõ ràng, sắc nét và có sức chịu lực tốt thì việc chọn lựa chất liệu giấy đóng một vai trò hết sức quan trọng. Các công ty sản xuất&nbsp;<a href=\"https://insieutoc.vn/in-tui-giay/\" rel=\"noopener noreferrer\" style=\"box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(30, 115, 190); text-decoration-line: none;\" target=\"_blank\">túi giấy giá rẻ TPHCM</a>&nbsp;đã không ngừng nghiên cứu các loại giấy in để phát triển ngày càng nhiều giải pháp in túi giấy hoàn hảo hơn từ giá thành đến chất lượng. Sau đây là những kinh nghiệm gồm đầy đủ thông tin được tích lũy trong quá trình sản xuất thực tế. Hãy cùng bài viết này dạo qua một vòng trong thế giới chất liệu giấy nhé</p>\r\n', '', '', '091456533248_baobi.jpg', 1556348755, 1, 0, 1, 'Làm túi giấy gồm nhưng loại nào', '', '', '', '', '', '', 175, 0, '', '', ''),
(629, 'Làm túi giấy gồm nhưng loại nào Làm túi giấy gồm nhưng loại nào Làm túi giấy gồm nhưng loại nào', '', '', 'lam-tui-giay-gom-nhung-loai-nao-lam-tui-giay-gom-nhung-loai-nao-lam-tui-giay-gom-nhung-loai-nao', '', '', 'Nếu tổ chức một cuộc bình chọn, có lẽ những chiếc túi giấy sẽ được xếp hạng là dòng sản phẩm tiện dụng nhất trong ngành in ấn. Bởi lẽ, chúng không chỉ đơn thuần sản xuất ra để làm nhiệm vụ của một chiếc bao bì có thể chứa đựng được sản phẩm ở bên trong mà còn giúp cho các cửa hàng, doanh nghiệp, công ty', '', '', '<p>Nếu tổ chức một cuộc bình chọn, có lẽ những chiếc túi giấy sẽ được xếp hạng là dòng sản phẩm tiện dụng nhất trong ngành in ấn. Bởi lẽ, chúng không chỉ đơn thuần sản xuất ra để làm nhiệm vụ của một chiếc bao bì có thể chứa đựng được sản phẩm ở bên trong mà còn giúp cho các cửa hàng, doanh nghiệp, công ty,…giới thiệu, quảng bá những thương hiệu của mình một cách tinh tế, hiện đại và phong cách nhất với diện tích và mức độ ảnh hưởng ngày càng rộng rãi hơn, thuyết phục hơn.<img alt=\"\" class=\"aligncenter lazyloaded wp-image-2659\" src=\"https://insieutoc.vn/wp-content/uploads/2017/07/tui-giay-1.jpg\" style=\"border-style:none; box-sizing:border-box; clear:both; display:block; height:auto; margin:0px auto; max-width:100%; opacity:1; transition:opacity 1s ease 0s; vertical-align:middle; width:589px\" /></p>\r\n\r\n<p><img alt=\"\" class=\"aligncenter lazyloaded size-full wp-image-2658\" src=\"https://insieutoc.vn/wp-content/uploads/2017/07/tui-giay.jpg\" style=\"border-style:none; box-sizing:border-box; clear:both; display:block; height:auto; margin:0px auto; max-width:100%; opacity:1; transition:opacity 1s ease 0s; vertical-align:middle; width:482px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Để có được những chiếc túi giấy chất lượng cao, hình ảnh, thông tin thể hiện rõ ràng, sắc nét và có sức chịu lực tốt thì việc chọn lựa chất liệu giấy đóng một vai trò hết sức quan trọng. Các công ty sản xuất&nbsp;<a href=\"https://insieutoc.vn/in-tui-giay/\" rel=\"noopener noreferrer\" style=\"box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(30, 115, 190); text-decoration-line: none;\" target=\"_blank\">túi giấy giá rẻ TPHCM</a>&nbsp;đã không ngừng nghiên cứu các loại giấy in để phát triển ngày càng nhiều giải pháp in túi giấy hoàn hảo hơn từ giá thành đến chất lượng. Sau đây là những kinh nghiệm gồm đầy đủ thông tin được tích lũy trong quá trình sản xuất thực tế. Hãy cùng bài viết này dạo qua một vòng trong thế giới chất liệu giấy nhé</p>\r\n', '', '', '373751165103_baobi.jpg', 1556348756, 1, 0, 1, 'Làm túi giấy gồm nhưng loại nào Làm túi giấy gồm nhưng loại nào Làm túi giấy gồm nhưng loại nào', '', '', '', '', '', '', 175, 0, '', '', ''),
(630, 'Báo giá và đặt hàng', '', '', 'bao-gia-va-dat-hang', '', '', 'Báo giá và đặt hàng', '', '', '<p>Báo giá và đặt hàng</p>\r\n', '', '', '', 1556350391, 0, 0, 1, 'Báo giá và đặt hàng', '', '', '', '', '', '', 498, 0, '', '', ''),
(631, 'Phương thức thanh toán', '', '', 'phuong-thuc-thanh-toan', '', '', 'Phương thức thanh toán', '', '', '<p>Phương thức thanh toán</p>\r\n', '', '', '', 1556350404, 0, 0, 1, 'Phương thức thanh toán', '', '', '', '', '', '', 498, 0, '', '', ''),
(632, 'Phương thức giao nhận', '', '', 'phuong-thuc-giao-nhan', '', '', 'Phương thức giao nhận', '', '', '<p>Phương thức giao nhận</p>\r\n', '', '', '', 1556350416, 0, 0, 1, 'Phương thức giao nhận', '', '', '', '', '', '', 498, 0, '', '', ''),
(633, 'Chính sách đổi trả', '', '', 'chinh-sach-doi-tra', '', '', '', '', '', '', '', '', '', 1556350425, 0, 0, 1, 'Chính sách đổi trả', '', '', '', '', '', '', 498, 0, '', '', ''),
(634, 'Chính sách bảo mật', '', '', 'chinh-sach-bao-mat', '', '', 'Chính sách bảo mật', '', '', '<p>Chính sách bảo mật</p>\r\n', '', '', '', 1556350442, 0, 0, 1, 'Chính sách bảo mật', '', '', '', '', '', '', 498, 0, '', '', ''),
(635, 'Bài viết giới thiệu', '', '', 'bai-viet-gioi-thieu', '', '', '', '', '', '<p style=\"text-align: center;\"><span style=\"color:#FF0000\"><strong>CÔNG TY TNHH IN QUẢNG CÁO THIÊN MINH</strong></span></p>\r\n\r\n<p>Công ty in Thiên Minh, chuyên cung cấp các dịch vụ in bao bì sản phẩm, in ấn phẩm quà tặng cá nhân, doanh nghiệp.</p>\r\n', '', '', '', 1556353390, 0, 0, 1, 'Bài viết giới thiệu', '', '', '', '', '', '', 272, 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `db_user`
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
-- Dumping data for table `db_user`
--

INSERT INTO `db_user` (`id`, `token`, `user_hash`, `pass_hash`, `tai_khoan`, `email`, `ho_ten`, `dien_thoai`, `dia_chi`, `hinh_anh`, `ngay_sinh`, `gioi_tinh`, `quyen_han`, `hien_thi`, `ngay_tao`, `is_admin`) VALUES
(17, '2c723b91d9c723c3691700c260c2c05cbb1edf5b', 'd033e22ae348aeb5660fc2140aec35850c4da997', '273440020f368a6f40840f800427a572ef42e56e', 'Admin', 'kythuat.pnvn@gmail.com', 'Admin', '', '', '', '', 1, 1, 1, 1473306606, 1),
(18, '2c723b91d9c723c3691700c260c2c05cbb1edf5b', '6c7ca345f63f835cb353ff15bd6c5e052ec08e7a', '6c7ca345f63f835cb353ff15bd6c5e052ec08e7a', 'Admin', 'kythuat.pnvn@gmail.com', 'Admin', '', '', '', '', 1, 1, 1, 1473306606, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_user_permission_group`
--

CREATE TABLE `db_user_permission_group` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_permission` int(11) NOT NULL,
  `stt` int(11) NOT NULL,
  `hide` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_user_permission_group`
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
-- Table structure for table `db_video`
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
-- Dumping data for table `db_video`
--

INSERT INTO `db_video` (`id`, `ten_vn`, `ten_us`, `link`, `hien_thi`, `id_loai`) VALUES
(19, 'Apple', 'Apple', 'WVPRkcczXCY', 1, 0),
(20, 'Sony', 'Sony', 'tkqw1HMAHyU', 1, 0),
(21, 'SamSung', '', 'gKGYdd33upI', 1, 0),
(22, '', '', 'Ba6MeSQIBkw', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `names`
--

CREATE TABLE `names` (
  `id` int(11) NOT NULL,
  `first` text COLLATE utf8_unicode_ci,
  `middle` text COLLATE utf8_unicode_ci,
  `last` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `names`
--

INSERT INTO `names` (`id`, `first`, `middle`, `last`, `email`) VALUES
(99, 'sản phẩm 4', 'hehe', 'jjj', 'jjj@yahoo.com'),
(98, 'sản phẩm 3', 'hoho', 'yyuy', 'yyy@gmail.com'),
(97, 'sản phẩm 2', 'kk', 'xxx', 'xxx@yahoo.com'),
(96, 'sản phẩm 1', '', 'vv', 'vv@yahoo.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_baiviet_hinhanh`
--
ALTER TABLE `db_baiviet_hinhanh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_category`
--
ALTER TABLE `db_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_chitietdathang`
--
ALTER TABLE `db_chitietdathang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_danhmuc_hoidap`
--
ALTER TABLE `db_danhmuc_hoidap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_dathang`
--
ALTER TABLE `db_dathang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_datlich`
--
ALTER TABLE `db_datlich`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_dknhamau`
--
ALTER TABLE `db_dknhamau`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_email`
--
ALTER TABLE `db_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_extra`
--
ALTER TABLE `db_extra`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_file`
--
ALTER TABLE `db_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_gallery`
--
ALTER TABLE `db_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_hinhanh`
--
ALTER TABLE `db_hinhanh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_hinhthucthanhtoan`
--
ALTER TABLE `db_hinhthucthanhtoan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_hotro`
--
ALTER TABLE `db_hotro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_khachhang`
--
ALTER TABLE `db_khachhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_kichthuoc`
--
ALTER TABLE `db_kichthuoc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_lienhe`
--
ALTER TABLE `db_lienhe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_lienketwebsite`
--
ALTER TABLE `db_lienketwebsite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_loaisanpham`
--
ALTER TABLE `db_loaisanpham`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_loaitintuc`
--
ALTER TABLE `db_loaitintuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_map`
--
ALTER TABLE `db_map`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_mausac`
--
ALTER TABLE `db_mausac`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_module`
--
ALTER TABLE `db_module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_nhomhotro`
--
ALTER TABLE `db_nhomhotro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_permission_group`
--
ALTER TABLE `db_permission_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_quan`
--
ALTER TABLE `db_quan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_question`
--
ALTER TABLE `db_question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_sanpham`
--
ALTER TABLE `db_sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_sanpham_hinhanh`
--
ALTER TABLE `db_sanpham_hinhanh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_seo`
--
ALTER TABLE `db_seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_setting`
--
ALTER TABLE `db_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_slide_sp`
--
ALTER TABLE `db_slide_sp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_tags`
--
ALTER TABLE `db_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_thanhpho`
--
ALTER TABLE `db_thanhpho`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_thanhvien`
--
ALTER TABLE `db_thanhvien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_thongke`
--
ALTER TABLE `db_thongke`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_thongke_detail`
--
ALTER TABLE `db_thongke_detail`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `db_thongtin`
--
ALTER TABLE `db_thongtin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_thuvienanh`
--
ALTER TABLE `db_thuvienanh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_tintuc`
--
ALTER TABLE `db_tintuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_user_permission_group`
--
ALTER TABLE `db_user_permission_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_video`
--
ALTER TABLE `db_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `names`
--
ALTER TABLE `names`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_baiviet_hinhanh`
--
ALTER TABLE `db_baiviet_hinhanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `db_category`
--
ALTER TABLE `db_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT for table `db_chitietdathang`
--
ALTER TABLE `db_chitietdathang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=492;

--
-- AUTO_INCREMENT for table `db_danhmuc_hoidap`
--
ALTER TABLE `db_danhmuc_hoidap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `db_dathang`
--
ALTER TABLE `db_dathang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT for table `db_datlich`
--
ALTER TABLE `db_datlich`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `db_dknhamau`
--
ALTER TABLE `db_dknhamau`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `db_email`
--
ALTER TABLE `db_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `db_extra`
--
ALTER TABLE `db_extra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `db_file`
--
ALTER TABLE `db_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `db_gallery`
--
ALTER TABLE `db_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `db_hinhanh`
--
ALTER TABLE `db_hinhanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `db_hinhthucthanhtoan`
--
ALTER TABLE `db_hinhthucthanhtoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `db_hotro`
--
ALTER TABLE `db_hotro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `db_khachhang`
--
ALTER TABLE `db_khachhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `db_kichthuoc`
--
ALTER TABLE `db_kichthuoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `db_lienhe`
--
ALTER TABLE `db_lienhe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `db_lienketwebsite`
--
ALTER TABLE `db_lienketwebsite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `db_loaisanpham`
--
ALTER TABLE `db_loaisanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `db_loaitintuc`
--
ALTER TABLE `db_loaitintuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `db_map`
--
ALTER TABLE `db_map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `db_mausac`
--
ALTER TABLE `db_mausac`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `db_module`
--
ALTER TABLE `db_module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `db_nhomhotro`
--
ALTER TABLE `db_nhomhotro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `db_permission_group`
--
ALTER TABLE `db_permission_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `db_quan`
--
ALTER TABLE `db_quan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `db_question`
--
ALTER TABLE `db_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `db_sanpham`
--
ALTER TABLE `db_sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=722;

--
-- AUTO_INCREMENT for table `db_sanpham_hinhanh`
--
ALTER TABLE `db_sanpham_hinhanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=560;

--
-- AUTO_INCREMENT for table `db_seo`
--
ALTER TABLE `db_seo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `db_setting`
--
ALTER TABLE `db_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `db_slide_sp`
--
ALTER TABLE `db_slide_sp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `db_tags`
--
ALTER TABLE `db_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `db_thanhpho`
--
ALTER TABLE `db_thanhpho`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `db_thanhvien`
--
ALTER TABLE `db_thanhvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `db_thongke`
--
ALTER TABLE `db_thongke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `db_thongtin`
--
ALTER TABLE `db_thongtin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `db_thuvienanh`
--
ALTER TABLE `db_thuvienanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `db_tintuc`
--
ALTER TABLE `db_tintuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=637;

--
-- AUTO_INCREMENT for table `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `db_user_permission_group`
--
ALTER TABLE `db_user_permission_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `db_video`
--
ALTER TABLE `db_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `names`
--
ALTER TABLE `names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

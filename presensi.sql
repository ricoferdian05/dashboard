-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2022 at 12:07 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `presensi`
--

-- --------------------------------------------------------

--
-- Table structure for table `agama`
--

CREATE TABLE `agama` (
  `id` int(11) NOT NULL,
  `agama` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agama`
--

INSERT INTO `agama` (`id`, `agama`) VALUES
(1, 'Islam'),
(2, 'Kristen Protestan'),
(3, 'Kristen Katolik'),
(4, 'Budha'),
(5, 'Hindu'),
(6, 'Konghucu');

-- --------------------------------------------------------

--
-- Table structure for table `beasiswa`
--

CREATE TABLE `beasiswa` (
  `id_beasiswa` int(11) NOT NULL,
  `tipe_beasiswa` varchar(255) NOT NULL,
  `jenis_beasiswa` varchar(255) NOT NULL,
  `nama_beasiswa` varchar(255) NOT NULL,
  `tahun` varchar(255) NOT NULL,
  `id_mahasiswa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `beasiswa`
--

INSERT INTO `beasiswa` (`id_beasiswa`, `tipe_beasiswa`, `jenis_beasiswa`, `nama_beasiswa`, `tahun`, `id_mahasiswa`) VALUES
(1, 'Internal', 'Beasiswa Unggulan', 'Beasiswa JPU', '2019/2020', 1),
(2, 'Eksternal', 'Beasiswa Bantuan', 'Anak Bangsa - Zakatel', '2020/2021', 6),
(3, 'Internal', 'Beasiswa Anak Pegawai YPT Group', 'Beasiswa Anak Pegawai YPT', '2020/2021', 4),
(4, 'Internal', 'Beasiswa Prestasi', 'Beasiswa Prestasi', '2020/2021', 18),
(5, 'Eksternal', 'Beasiswa Bantuan', 'Beasiswa Pemprov JFL 2021', '2020/2021', 19),
(6, 'Internal', 'Beasiswa OPES', 'Beasiswa SMK Telkom', '2020/2021', 20),
(7, 'Internal', 'Beasiswa Unggulan', 'Beasiswa Aperti BUMN', '2020/2021', 22),
(8, 'Internal', 'Beasiswa Unggulan', 'Beasiswa OSC', '2020/2021', 28),
(9, 'Internal', 'Beasiswa Kompas', 'Beasiswa Kompas', '2020/2021', 26),
(10, 'Internal', 'Beasiswa Prestasi', 'Beasiswa Atlet YPT', '2020/2021', 13),
(11, 'Internal', 'Beasiswa Unggulan', 'Beasiswa JPU Pintar', '2020/2021', 3),
(12, 'Internal', 'Beasiswa Unggulan', 'Beasiswa Tahfidz', '2020/2021', 2),
(13, 'Internal', 'Beasiswa Kompas', 'Beasiswa Kompas', '2020/2021', 12),
(14, 'Internal', 'Beasiswa OPES', 'Beasiswa OPES 10 Besar', '2020/2021', 16),
(15, 'Eksternal', 'Beasiswa Bantuan', 'Beasiswa Bidik Misi', '2020/2021', 17),
(16, 'Eksternal', 'Beasiswa Bantuan', 'Anak Bangsa - Zakatel', '2020/2021', 21),
(17, 'Internal', 'Beasiswa Prestasi', 'Beasiswa Prestasi', '2020/2021', 25),
(18, 'Internal', 'Beasiswa Prestasi', 'Beasiswa Prestasi', '2019/2020', 5),
(19, 'Eksternal', 'Beasiswa Dicoding', 'Beasiswa Dicoding', '2018/2019', 4),
(20, 'Internal', 'Beasiswa Unggulan', 'Beasiswa JPU', '2021/2022', 20),
(21, 'Internal', 'Beasiswa Unggulan', 'Beasiswa JPU', '2021/2022', 1),
(22, 'Internal', 'Beasiswa Unggulan', 'Beasiswa JPU', '2021/2022', 23);

-- --------------------------------------------------------

--
-- Table structure for table `catatan`
--

CREATE TABLE `catatan` (
  `id` int(11) NOT NULL,
  `id_mahasiswa` int(11) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `subjek` varchar(128) NOT NULL,
  `catatan` text NOT NULL,
  `waktu_post` datetime NOT NULL,
  `is_read` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catatan`
--

INSERT INTO `catatan` (`id`, `id_mahasiswa`, `id_dosen`, `subjek`, `catatan`, `waktu_post`, `is_read`) VALUES
(5, 13, 24, 'si', 'sip', '2021-07-13 14:09:37', 1),
(6, 13, 6, 'Arsitektu', 'Kenapa nilai anda rendah', '2021-07-22 15:10:54', 1);

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `header` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `footer` varchar(255) NOT NULL,
  `last_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `header`, `content`, `footer`, `last_updated`) VALUES
(1, 'Illustration', '<p>Add some quality, svg illustrations to your project courtesy of <a\r\n                                            target=\"_blank\" rel=\"nofollow\" href=\"https://undraw.co/\">unDraw</a>, a\r\n                                        constantly updated collection of beautiful svg images that you can use\r\n                                        completely free and without attribution!</p>\r\n                                    <a target=\"_blank\" rel=\"nofollow\" href=\"https://undraw.co/\">Browse Illustrations on\r\n                                        unDraw &rarr;</a>', '', '2021-03-05 03:51:54'),
(2, 'Development Approach', '<p>SB Admin 2 makes extensive use of Bootstrap 4 utility classes in order to reduce\r\n                                        CSS bloat and poor page performance. Custom CSS classes are used to create\r\n                                        custom components and custom utility classes.</p>\r\n                                    <p class=\"mb-0\">Before working with this theme, you should become familiar with the\r\n                                        Bootstrap framework, especially the utility classes.</p>', '', '2021-03-05 03:49:49'),
(3, 'Illustration', '<p>Add some quality, svg illustrations to your project courtesy of <a\r\n                                            target=\"_blank\" rel=\"nofollow\" href=\"https://undraw.co/\">unDraw</a>, a\r\n                                        constantly updated collection of beautiful svg images that you can use\r\n                                        completely free and without attribution!</p>\r\n                                    <a target=\"_blank\" rel=\"nofollow\" href=\"https://undraw.co/\">Browse Illustrations on\r\n                                        unDraw &rarr;</a>', '', '2021-03-05 03:51:44'),
(4, 'Development Approach', '<p>SB Admin 2 makes extensive use of Bootstrap 4 utility classes in order to reduce\r\n                                        CSS bloat and poor page performance. Custom CSS classes are used to create\r\n                                        custom components and custom utility classes.</p>\r\n                                    <p class=\"mb-0\">Before working with this theme, you should become familiar with the\r\n                                        Bootstrap framework, especially the utility classes.</p>', '', '2021-03-05 03:52:18');

-- --------------------------------------------------------

--
-- Table structure for table `daerah`
--

CREATE TABLE `daerah` (
  `kode` int(11) NOT NULL,
  `provinsi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `daerah`
--

INSERT INTO `daerah` (`kode`, `provinsi`) VALUES
(11, 'Aceh'),
(12, 'Sumatera Utara'),
(13, 'Sumatera Barat'),
(14, 'Riau'),
(15, 'Jambi'),
(16, 'Sumatera Selatan'),
(17, 'Bengkulu'),
(18, 'Lampung'),
(19, 'Bangka Belitung'),
(21, 'Kepulauan Riau'),
(31, 'Jakarta Raya'),
(32, 'Jawa Barat'),
(33, 'Jawa Tengah'),
(34, 'Yogyakarta'),
(35, 'Jawa Timur'),
(36, 'Banten'),
(51, 'Bali'),
(52, 'Nusa Tenggara Barat'),
(53, 'Nusa Tenggara Timur'),
(61, 'Kalimantan Barat'),
(62, 'Kalimantan Tengah'),
(63, 'Kalimantan Selatan'),
(64, 'Kalimantan Timur'),
(65, 'Kalimantan Utara'),
(71, 'Sulawesi Utara'),
(72, 'Sulawesi Tengah'),
(73, 'Sulawesi Selatan'),
(74, 'Sulawesi Tenggara'),
(75, 'Gorontalo'),
(76, 'Sulawesi Barat'),
(81, 'Maluku'),
(82, 'Maluku Utara'),
(91, 'Papua'),
(94, 'Papua Barat');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard`
--

CREATE TABLE `dashboard` (
  `id` int(11) NOT NULL,
  `header` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `footer` varchar(256) NOT NULL,
  `icon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dashboard`
--

INSERT INTO `dashboard` (`id`, `header`, `title`, `content`, `footer`, `icon`) VALUES
(1, 'About Application', 'Monitoring Performa Mahasiswa', '<b>Tubes Firman</b> merupakan aplikasi yang dapat memonitoring performa mahasiswa, memiliki fitur-fitur yang sangat banyak, dan lain-lain.', 'Firman Aldo Saputra', 'fas fa-code'),
(2, 'About Application', 'Monitoring Performa Mahasiswa', '<b>Tubes Rico Ferdian & Novitriana Gadis</b> merupakan aplikasi yang dapat memonitoring performa mahasiswa, memiliki fitur-fitur yang sangat banyak, dan lain-lain.', 'Rico Ferdian & Novitriana Gadis', 'fas fa-code');

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `kode_dosen` varchar(128) NOT NULL,
  `nidn` varchar(256) NOT NULL,
  `nip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id`, `id_user`, `kode_dosen`, `nidn`, `nip`) VALUES
(1, 8, 'WHY', '1231423423', '134232421'),
(2, 9, 'PRA', '344234', '235434'),
(3, 10, 'ELR', '091029301923', '123214324'),
(4, 11, 'INE', '23123', '243543'),
(5, 12, 'WWU', '123456', '14740031'),
(6, 15, 'MBS', '123456', '14850096'),
(7, 17, 'SYN', '0009123', '213920390123'),
(8, 1, 'MHS', '6701180123', '6701180123'),
(9, 13, 'FAS', '6701184012', '6701184012'),
(10, 23, 'FTI', '123456', '14780021'),
(11, 24, 'EDY', '1234567', '14660022'),
(12, 25, 'RSK', '1234567', '13880026'),
(13, 26, 'MQA', '1234567', '13870082'),
(14, 27, 'DNS', '1234567', '13980012'),
(15, 28, 'RHN', '1234567', '13850086'),
(16, 29, 'HNP', '1234567', '14790020'),
(17, 30, 'ELS', '1234567', '14750035'),
(18, 31, 'PWW', '1234567', '10800029'),
(19, 32, 'TGN', '1234567', '1477023'),
(20, 33, 'DKN', '1234567', '14880004'),
(21, 34, 'PTI', '1234567', '15890013'),
(22, 35, 'NHN', '1234567', '15670089'),
(23, 36, 'GSW', '1234567', '14980076'),
(24, 112, 'FIT', '123456', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

CREATE TABLE `fakultas` (
  `id` int(11) NOT NULL,
  `kode_fakultas` varchar(255) NOT NULL,
  `nama_fakultas` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fakultas`
--

INSERT INTO `fakultas` (`id`, `kode_fakultas`, `nama_fakultas`) VALUES
(1, 'FTE', 'Fakultas Teknik Elektro'),
(2, 'FIF', 'Fakultas Informatika'),
(3, 'FRI', 'Fakultas Rekayasa Industri'),
(4, 'FEB', 'Fakultas Ekonomi dan Bisnis'),
(5, 'FKB', 'Fakultas Komunikasi dan Bisnis'),
(6, 'FIK', 'Fakultas Industri Kreatif'),
(7, 'FIT', 'Fakultas Ilmu Terapan');

-- --------------------------------------------------------

--
-- Table structure for table `ip_semester`
--

CREATE TABLE `ip_semester` (
  `id` int(11) NOT NULL,
  `id_nilai_mahasiswa` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `ip` decimal(3,2) NOT NULL,
  `ipk` decimal(3,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ip_semester`
--

INSERT INTO `ip_semester` (`id`, `id_nilai_mahasiswa`, `semester`, `ip`, `ipk`) VALUES
(1, 1, 1, '3.76', '3.76'),
(2, 1, 2, '3.50', '3.61'),
(3, 1, 3, '3.50', '3.57'),
(4, 1, 4, '3.34', '3.51'),
(5, 1, 5, '2.79', '3.42'),
(6, 1, 6, '3.38', '3.41'),
(7, 2, 1, '3.91', '3.91'),
(8, 2, 2, '3.48', '3.86'),
(9, 2, 3, '3.48', '3.86'),
(10, 2, 4, '3.48', '3.86'),
(11, 2, 5, '3.48', '3.86'),
(12, 2, 6, '3.48', '3.86'),
(13, 3, 1, '3.25', '3.25'),
(14, 3, 2, '3.05', '3.15'),
(15, 3, 3, '3.55', '3.29'),
(16, 3, 4, '3.07', '3.23'),
(17, 3, 5, '3.21', '3.23'),
(18, 3, 6, '3.38', '3.25'),
(19, 4, 1, '3.50', '3.50'),
(20, 4, 2, '3.48', '3.50'),
(21, 4, 3, '3.48', '3.50'),
(22, 4, 4, '3.28', '3.30'),
(23, 4, 5, '3.79', '3.45'),
(24, 4, 6, '4.00', '3.61'),
(25, 5, 1, '3.48', '0.00'),
(26, 5, 2, '3.48', '0.00'),
(27, 5, 3, '3.48', '0.00'),
(28, 5, 4, '3.48', '0.00'),
(29, 5, 5, '3.48', '0.00'),
(30, 5, 6, '3.48', '0.00'),
(31, 6, 1, '3.00', '3.00'),
(32, 6, 2, '3.03', '3.01'),
(33, 6, 3, '3.74', '3.26'),
(34, 6, 4, '3.75', '3.39'),
(35, 6, 5, '2.54', '3.28'),
(36, 6, 6, '3.88', '3.37'),
(37, 7, 1, '3.48', '0.00'),
(38, 7, 2, '3.48', '0.00'),
(39, 7, 3, '3.48', '0.00'),
(40, 7, 4, '3.48', '0.00'),
(41, 7, 5, '3.48', '0.00'),
(42, 7, 6, '3.48', '0.00'),
(43, 8, 1, '2.83', '2.83'),
(44, 8, 2, '2.95', '2.89'),
(45, 8, 3, '2.90', '2.89'),
(46, 8, 4, '2.80', '2.87'),
(47, 8, 5, '2.83', '2.86'),
(48, 8, 6, '3.00', '2.88'),
(49, 9, 1, '3.38', '3.38'),
(50, 9, 2, '3.53', '3.45'),
(51, 9, 3, '3.43', '3.44'),
(52, 9, 4, '3.34', '3.42'),
(53, 9, 5, '3.71', '3.45'),
(54, 9, 6, '3.88', '3.51'),
(55, 10, 1, '3.48', '0.00'),
(56, 10, 2, '3.48', '0.00'),
(57, 10, 3, '3.48', '0.00'),
(58, 10, 4, '3.48', '0.00'),
(59, 10, 5, '3.48', '0.00'),
(60, 10, 6, '3.48', '0.00'),
(61, 11, 1, '3.48', '0.00'),
(62, 11, 2, '3.48', '0.00'),
(63, 11, 3, '3.48', '0.00'),
(64, 11, 4, '3.48', '0.00'),
(65, 11, 5, '3.48', '0.00'),
(66, 11, 6, '3.48', '0.00'),
(67, 12, 1, '3.00', '3.00'),
(68, 12, 2, '3.82', '3.72'),
(69, 12, 3, '3.61', '3.67'),
(70, 12, 4, '3.48', '3.67'),
(71, 12, 5, '3.48', '3.67'),
(72, 12, 6, '3.48', '3.67'),
(73, 13, 1, '3.50', '3.50'),
(74, 13, 2, '3.45', '3.48'),
(75, 13, 3, '3.55', '3.50'),
(76, 13, 4, '3.05', '3.38'),
(77, 13, 5, '3.50', '3.39'),
(78, 13, 6, '3.88', '3.46'),
(79, 14, 1, '3.23', '3.23'),
(80, 14, 2, '3.70', '3.49'),
(81, 14, 3, '3.64', '3.54'),
(82, 14, 4, '3.45', '3.52'),
(83, 14, 5, '3.92', '3.57'),
(84, 14, 6, '4.00', '3.63'),
(85, 15, 1, '3.48', '0.00'),
(86, 15, 2, '3.48', '0.00'),
(87, 15, 3, '3.48', '0.00'),
(88, 15, 4, '3.48', '0.00'),
(89, 15, 5, '3.48', '0.00'),
(90, 15, 6, '3.48', '0.00'),
(91, 16, 1, '3.48', '0.00'),
(92, 16, 2, '3.48', '0.00'),
(93, 16, 3, '3.48', '0.00'),
(94, 16, 4, '3.48', '0.00'),
(95, 16, 5, '3.48', '0.00'),
(96, 16, 6, '3.48', '0.00'),
(97, 17, 1, '3.23', '3.23'),
(98, 17, 2, '3.38', '3.30'),
(99, 17, 3, '3.24', '3.28'),
(100, 17, 4, '3.11', '3.23'),
(101, 17, 5, '3.25', '3.24'),
(102, 17, 6, '3.50', '3.27'),
(103, 18, 1, '3.03', '3.03'),
(104, 18, 2, '3.45', '3.24'),
(105, 18, 3, '3.24', '3.24'),
(106, 18, 4, '3.18', '3.22'),
(107, 18, 5, '3.79', '3.29'),
(108, 18, 6, '4.00', '3.40'),
(109, 19, 1, '3.10', '3.10'),
(110, 19, 2, '2.90', '3.00'),
(111, 19, 3, '2.71', '2.90'),
(112, 19, 4, '2.82', '2.88'),
(113, 19, 5, '3.42', '2.95'),
(114, 19, 6, '3.75', '3.06'),
(115, 20, 1, '2.80', '2.80'),
(116, 20, 2, '2.98', '2.89'),
(117, 20, 3, '2.95', '2.91'),
(118, 20, 4, '2.77', '2.87'),
(119, 20, 5, '3.21', '2.92'),
(120, 20, 6, '3.38', '2.98'),
(121, 21, 1, '3.05', '3.05'),
(122, 21, 2, '3.38', '3.21'),
(123, 21, 3, '3.19', '3.20'),
(124, 21, 4, '3.05', '3.16'),
(125, 21, 5, '3.13', '3.16'),
(126, 21, 6, '3.25', '3.17'),
(127, 22, 1, '3.35', '3.35'),
(128, 22, 2, '3.65', '3.50'),
(129, 22, 3, '3.24', '3.41'),
(130, 22, 4, '3.23', '3.36'),
(131, 22, 5, '3.33', '3.36'),
(132, 22, 6, '3.50', '3.38'),
(133, 23, 1, '3.15', '3.15'),
(134, 23, 2, '3.38', '3.26'),
(135, 23, 3, '3.43', '3.32'),
(136, 23, 4, '3.05', '3.25'),
(137, 23, 5, '3.33', '3.26'),
(138, 23, 6, '3.50', '3.29'),
(139, 24, 1, '3.90', '3.90'),
(140, 24, 2, '4.00', '3.95'),
(141, 24, 3, '3.88', '3.93'),
(142, 24, 4, '3.55', '3.83'),
(143, 24, 5, '3.79', '3.82'),
(144, 24, 6, '3.63', '3.79'),
(145, 25, 1, '3.08', '3.08'),
(146, 25, 2, '3.58', '3.33'),
(147, 25, 3, '3.50', '3.39'),
(148, 25, 4, '3.20', '3.34'),
(149, 25, 5, '3.50', '3.36'),
(150, 25, 6, '3.50', '3.38'),
(151, 26, 1, '3.28', '3.28'),
(152, 26, 2, '3.30', '3.29'),
(153, 26, 3, '3.38', '3.32'),
(154, 26, 4, '3.05', '3.25'),
(155, 26, 5, '3.33', '3.26'),
(156, 26, 6, '3.50', '3.29'),
(157, 27, 1, '3.65', '3.65'),
(158, 27, 2, '3.83', '3.74'),
(159, 27, 3, '3.69', '3.72'),
(160, 27, 4, '3.36', '3.63'),
(161, 27, 5, '3.92', '3.66'),
(162, 27, 6, '4.00', '3.71'),
(163, 28, 1, '3.80', '3.80'),
(164, 28, 2, '3.00', '3.43'),
(165, 28, 3, '4.00', '3.56'),
(166, 28, 4, '3.50', '3.55'),
(167, 28, 5, '4.00', '3.67'),
(168, 28, 6, '3.48', '0.00'),
(169, 29, 1, '3.48', '0.00'),
(170, 29, 2, '3.48', '0.00'),
(171, 29, 3, '3.48', '0.00'),
(172, 29, 4, '3.48', '0.00'),
(173, 29, 5, '3.48', '0.00'),
(174, 29, 6, '3.48', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(11) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `semester_kelas` int(11) NOT NULL,
  `nama_ketua_kelas` varchar(255) NOT NULL,
  `nomor_ketua_kelas` varchar(255) NOT NULL,
  `id_dosen_wali` int(11) NOT NULL,
  `id_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `kelas`, `semester_kelas`, `nama_ketua_kelas`, `nomor_ketua_kelas`, `id_dosen_wali`, `id_prodi`) VALUES
(1, 'D3MI-37-01', 16, 'Firza Nasution', '082121312313', 1, 39),
(2, 'D3MI-37-02', 16, 'Firza Nasution', '082121312313', 2, 39),
(3, 'D3MI-37-03', 16, 'Firza Nasution', '082121312313', 3, 39),
(4, 'D3MI-38-01', 14, 'Firman Aldo Saputra', '082121312313', 4, 39),
(5, 'D3MI-38-02', 14, 'Firza Nasution', '082121312313', 5, 39),
(6, 'D3MI-38-03', 14, 'Firza Nasution', '082121312313', 6, 39),
(7, 'D3MI-39-01', 12, 'Firza Nasution', '082121312313', 3, 39),
(8, 'D3MI-39-02', 12, 'Firza Nasution', '082121312313', 2, 39),
(9, 'D3MI-39-03', 12, 'Firza Nasution', '082121312313', 1, 39),
(10, 'D3MI-39-04', 12, 'Firza Nasution', '082121312313', 2, 39),
(11, 'D3MI-40-01', 10, 'Firza Nasution', '082121312313', 3, 39),
(12, 'D3MI-40-02', 10, 'Firza Nasution', '082121312313', 4, 39),
(13, 'D3MI-40-03', 10, 'Firza Nasution', '082121312313', 8, 39),
(14, 'D3SI-41-01', 8, 'Firza Nasution', '081374768890', 2, 39),
(15, 'D3SI-41-02', 8, 'Septi Mualdi', '082118983467', 13, 39),
(16, 'D3SI-41-03', 8, 'Tama Saputra', '085272200999', 19, 39),
(17, 'D3SI-41-04', 8, 'Geby Pramana', '082278165644', 21, 39),
(18, 'D3SI-42-01', 6, 'Irvan Hakim', '081278673455', 17, 39),
(19, 'D3SI-42-02', 6, 'Muhammad Haitsam', '082117503125', 6, 39),
(20, 'D3SI-42-03', 6, 'Ferdy Erlangga', '081276743062', 3, 39),
(21, 'D3SI-42-04', 6, 'Dana Saifuloh', '081256737277', 7, 39),
(24, 'D3SI-43-01', 4, 'Nazwa Shihab', '081375743367', 6, 39),
(25, 'D3SI-43-02', 4, 'Hafis Firmansyah', '082119789099', 5, 39),
(26, 'D3SI-43-03', 4, 'Firman saputra', '0812748485', 6, 39),
(27, 'D3SI-43-04', 4, 'Halil Adhi Pradistya', '085272208988', 18, 39);

-- --------------------------------------------------------

--
-- Table structure for table `kelompok_pekerjaan`
--

CREATE TABLE `kelompok_pekerjaan` (
  `id_kerja` int(11) NOT NULL,
  `jenis_pekerjaan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelompok_pekerjaan`
--

INSERT INTO `kelompok_pekerjaan` (`id_kerja`, `jenis_pekerjaan`) VALUES
(1, 'Pekerjaan Lembaga Legislatif, Pejabat Tinggi, dan Manager'),
(2, 'Tenaga Profesional'),
(3, 'Teknisi dan Asisten Tenaga Profesional'),
(4, 'Tenaga Tata Usaha'),
(5, 'Tenaga Usaha Jasa dan Usaha Penjualan di Toko dan Pasar'),
(6, 'Tenaga Usaha Pertanian dan Peternakan'),
(7, 'Tenaga Pengolahan dan Kerajinan Ybdi'),
(8, 'Operator dan Perakit Mesin'),
(9, 'Pekerjaan Kasar, Tenaga Kebersihan, dan Tenaga Ybdi'),
(10, 'Anggota TNI dan Kepolisian Negara RI');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nim` varchar(255) DEFAULT NULL,
  `id_kelas` int(11) NOT NULL,
  `angkatan` int(11) DEFAULT NULL,
  `nama_wali` varchar(255) NOT NULL,
  `pekerjaan_wali` varchar(255) NOT NULL,
  `kelompok_pekerjaan` int(11) NOT NULL,
  `pendidikan_wali` int(11) NOT NULL,
  `kode_prov` int(11) NOT NULL,
  `asal_daerah` varchar(255) NOT NULL,
  `id_status` int(11) NOT NULL,
  `status_pa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `id_user`, `nim`, `id_kelas`, `angkatan`, `nama_wali`, `pekerjaan_wali`, `kelompok_pekerjaan`, `pendidikan_wali`, `kode_prov`, `asal_daerah`, `id_status`, `status_pa`) VALUES
(1, 2, '6701144091', 6, 38, 'Paurenta', 'Wiraswasta', 5, 7, 12, 'Sumatera Utara', 2, 'Done'),
(2, 3, '6701144000', 6, 38, 'Hartono', 'Nelayan', 6, 9, 11, 'Aceh', 2, 'Done'),
(3, 6, '6701130123', 1, 37, 'Mulyanto', 'Karyawan', 8, 4, 31, 'DKI Jakarta', 2, 'Done'),
(4, 14, '6701140055', 6, 38, 'Rizqi', 'Wiraswasta', 5, 9, 14, 'Riau', 2, 'Done'),
(5, 1, '6701140077', 6, 38, 'Fahruroji', 'Wiraswasta', 5, 5, 32, 'Jawa Barat', 2, 'Done'),
(6, 16, '6701133048', 2, 37, 'Dodi', 'Wiraswasta', 5, 6, 33, 'Jawa Tengah', 2, 'Done'),
(9, 13, '6701140186', 6, 38, 'Martinus', 'Nelayan', 6, 2, 15, 'Jambi', 2, 'Done'),
(12, 39, '6701184002', 19, 42, 'Hartono', 'PNS', 1, 7, 16, 'Sumatera Selatan', 1, 'On Going'),
(13, 38, '6701184012', 19, 42, 'Syafri Aziz', 'Wiraswasta', 5, 3, 13, 'Sumatera Barat', 1, 'On Going'),
(16, 46, '6701184044', 19, 42, 'Bima Arya Sihotang', 'PNS', 1, 8, 21, 'Kepulauan Riau', 1, 'On Going'),
(17, 47, '6701183048', 19, 42, 'Muhammad Alif', 'PNS', 1, 8, 35, 'Jawa Timur', 1, 'On Going'),
(18, 48, '6701184006', 19, 42, 'Aldi Saputra', 'Wiraswasta', 5, 4, 13, 'Sumatera Barat', 1, 'On Going'),
(19, 49, '6701180155', 19, 42, 'Halil Adhi', 'Polisi', 10, 4, 35, 'Jawa Timur', 1, 'On Going'),
(20, 50, '6701180113', 19, 42, 'Abdul Ghofur', 'Arsitek', 2, 8, 35, 'Jawa Timur', 1, 'On Going'),
(21, 51, '6701180019', 19, 42, 'Rafi ahmad', 'Tentara', 10, 8, 36, 'Banten', 1, 'On Going'),
(22, 113, '6701184062', 19, 42, 'Asraf hidayanto', 'Arsitek', 2, 8, 73, 'Sulawesi Selatan', 1, 'On Going'),
(23, 114, '6701180123', 19, 42, 'Fakhrul Rozi', 'Wiraswasta', 5, 9, 32, 'Jawa Barat', 1, 'On Going'),
(24, 115, '6701180058', 19, 42, 'Abdul alfi', 'Pemadam Kebakaran', 5, 4, 36, 'Banten', 1, 'On Going'),
(25, 116, '6701184118', 19, 42, 'Vinno adhi', 'Peternak', 6, 4, 14, 'Riau', 1, 'On Going'),
(26, 117, '6701184083', 19, 42, 'Muhammad syaifullah', 'Pilot', 3, 7, 32, 'Jawa Barat', 1, 'On Going'),
(27, 118, '6701194013', 25, 43, 'Muhammad Doni', 'PNS', 1, 7, 13, 'Sumatera Barat', 1, 'On Going'),
(28, 119, '6701184071', 19, 42, 'Boby simanjuntak', 'Tentara', 10, 7, 12, 'Sumatera Utara', 1, 'On Going');

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `id` int(11) NOT NULL,
  `kode_mata_kuliah` varchar(255) NOT NULL,
  `nama_mata_kuliah` varchar(255) DEFAULT NULL,
  `sks` int(11) DEFAULT NULL,
  `semester` int(11) NOT NULL,
  `id_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`id`, `kode_mata_kuliah`, `nama_mata_kuliah`, `sks`, `semester`, `id_prodi`) VALUES
(1, 'DCH1A3', 'Arsitektur dan Sistem Komputer', 3, 1, 39),
(2, 'DHH1A2', 'Pengantar Manajemen', 2, 1, 39),
(3, 'DMH1A3', 'Aplikasi Manajemen Perkantoran', 3, 1, 39),
(4, 'DMH1G2', 'Pengembangan Personal', 2, 1, 39),
(5, 'DPH1A3', 'Logika Matematika', 3, 1, 39),
(6, 'DPH1B4', 'Algoritma dan Pemrograman Komputer', 4, 1, 39),
(7, 'HUH1G3', 'Pancasila dan Kewarganegaraan', 3, 1, 39),
(8, 'DMH1D3', 'Implementasi Desain Antarmuka Pengguna', 4, 2, 39),
(9, 'DMH1D3', 'Proses Bisnis', 3, 2, 39),
(10, 'DMH1E2', 'Proyek I', 2, 2, 39),
(11, 'DMH1K3', 'Perancangan Basis Data', 3, 2, 39),
(12, 'DPH1C4', 'Pemrograman Berorientasi Obyek', 4, 2, 39),
(13, 'DUH1A2', 'Literasi TIK', 2, 2, 39),
(14, 'LUH1B2', 'Bahasa Inggris I', 2, 2, 39),
(15, 'DAH1G2', 'Bahasa Inggris II', 2, 3, 39),
(16, 'DCH2A3', 'Jaringan Komputer', 3, 3, 39),
(17, 'DMH1A2', 'Olahraga', 2, 3, 39),
(18, 'DMH2A3', 'Pengolahan Basis Data', 4, 3, 39),
(19, 'DPH2A2', 'Rekayasa Kebutuhan Perangkat Lunak', 2, 3, 39),
(20, 'DPH2I4', 'Pemrograman Web Dasar', 4, 3, 39),
(21, 'HUH1A2', 'Pendidikan Agama Islam dan Etika', 2, 3, 39),
(22, 'LUH1A2', 'Bahasa Indonesia', 2, 3, 39),
(23, 'DAH2A2', 'Bahasa Inggris III', 2, 4, 39),
(24, 'DMH2A2', 'Kerja Praktik', 2, 4, 39),
(25, 'DMH2B2', 'Perilaku Organisasi', 2, 4, 39),
(26, 'DMH2C3', 'Pemrograman Basis Data', 3, 4, 39),
(27, 'DMH2E2', 'Proyek II', 2, 4, 39),
(28, 'DMH2F3', 'Analisis dan Perancangan Sistem Informasi', 3, 4, 39),
(29, 'DPH2B4', 'Pemrograman Web Lanjut', 4, 4, 39),
(30, 'DPH2C2', 'Pengujian Perangkat Lunak', 2, 4, 39),
(31, 'DUH2A2', 'Kewirausahaan', 2, 4, 39),
(32, 'UWI1D2', 'Literasi Manusia', 2, 5, 39),
(33, 'VPI2G2', 'Pengembangan Profesional', 2, 5, 39),
(34, 'VSI1K3', 'Implementasi User Experience Design', 3, 5, 39),
(35, 'VSI2G2', 'Probabilitas dan Statistik', 2, 5, 39),
(36, 'VSI3D3', 'Metodologi Penelitian', 3, 5, 39),
(37, 'VSI3F4', 'Pemrograman Perangkat Bergerak Lanjut', 4, 5, 39),
(38, 'VPI3GC', 'Magang', 12, 6, 39),
(39, 'VSI3H4', 'Proyek Akhir', 4, 6, 39);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_mahasiswa`
--

CREATE TABLE `nilai_mahasiswa` (
  `id` int(11) NOT NULL,
  `id_mahasiswa` int(11) NOT NULL,
  `ipk` decimal(4,2) NOT NULL,
  `tak` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai_mahasiswa`
--

INSERT INTO `nilai_mahasiswa` (`id`, `id_mahasiswa`, `ipk`, `tak`) VALUES
(1, 1, '3.67', 307),
(2, 3, '3.91', 367),
(3, 4, '3.25', 56),
(4, 6, '3.61', 20),
(5, 7, '4.00', 12),
(6, 5, '3.37', 50),
(7, 8, '3.67', 24),
(8, 9, '2.88', 100),
(9, 2, '3.51', 150),
(11, 10, '3.40', 47),
(12, 11, '3.67', 10),
(13, 12, '3.46', 10),
(14, 13, '3.62', 35),
(15, 14, '3.40', 13),
(16, 15, '4.00', 30),
(17, 16, '3.27', 56),
(18, 17, '3.40', 12),
(19, 18, '3.06', 38),
(20, 19, '2.98', 36),
(21, 20, '3.17', 56),
(22, 21, '3.38', 40),
(23, 22, '3.29', 34),
(24, 23, '3.79', 64),
(25, 24, '3.38', 32),
(26, 25, '3.29', 74),
(27, 26, '3.71', 90),
(28, 27, '3.65', 20),
(29, 28, '0.00', 15);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_mata_kuliah`
--

CREATE TABLE `nilai_mata_kuliah` (
  `id` int(11) NOT NULL,
  `indeks` varchar(128) NOT NULL,
  `presensi` decimal(5,2) NOT NULL,
  `tahun_ajaran` varchar(255) NOT NULL,
  `semester` int(11) NOT NULL,
  `id_nilai_mahasiswa` int(11) NOT NULL,
  `id_pengampu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai_mata_kuliah`
--

INSERT INTO `nilai_mata_kuliah` (`id`, `indeks`, `presensi`, `tahun_ajaran`, `semester`, `id_nilai_mahasiswa`, `id_pengampu`) VALUES
(1, 'A', '1.00', '2014/2015', 1, 1, 1),
(2, 'A', '0.81', '2014/2015', 1, 1, 2),
(3, 'A', '1.00', '2013/2014', 1, 2, 1),
(4, 'A', '1.00', '2013/2014', 1, 2, 2),
(5, 'A', '0.50', '2018/2019', 1, 5, 3),
(6, 'A', '1.00', '2014/2015', 1, 6, 3),
(7, 'B', '0.80', '2018/2019', 1, 7, 1),
(8, 'BC', '1.00', '2014/2015', 1, 8, 3),
(9, 'B', '0.88', '2014/2015', 1, 8, 1),
(10, 'A', '1.00', '2019/2020', 3, 7, 2),
(11, 'A', '1.00', '2020/2021', 3, 7, 3),
(12, 'A', '0.90', '2014/2015', 1, 9, 2),
(13, 'B', '0.69', '2020/2021', 4, 11, 2),
(14, 'B', '1.00', '2014/2015', 1, 3, 3),
(15, 'A', '1.00', '2014/2015', 1, 3, 2),
(16, 'A', '1.00', '2013/2014', 4, 4, 1),
(17, 'C', '3.00', '2020/2021', 1, 12, 1),
(18, 'AB', '1.00', '2014/2015', 1, 1, 7),
(19, 'AB', '1.00', '2013/2014', 1, 2, 6),
(20, 'A', '1.00', '2014/2015', 1, 3, 7),
(21, 'AB', '1.00', '2013/2014', 1, 4, 8),
(22, 'C', '1.00', '2018/2019', 1, 5, 9),
(23, 'B', '1.00', '2014/2015', 1, 6, 1),
(24, 'B', '1.00', '2018/2019', 1, 12, 11),
(25, 'A', '1.00', '2019/2020', 2, 12, 12),
(26, 'A', '1.00', '2019/2020', 2, 12, 13),
(27, 'A', '1.00', '2019/2020', 2, 12, 14),
(40, 'A', '0.94', '2018/2019', 1, 13, 5),
(41, 'AB', '1.00', '2018/2019', 1, 13, 6),
(42, 'A', '0.88', '2018/2019', 1, 13, 7),
(43, 'A', '1.00', '2017/2018', 1, 16, 5),
(44, 'A', '1.00', '2018/2019', 3, 16, 21),
(45, 'A', '0.85', '2018/2019', 1, 13, 8),
(46, 'AB', '1.00', '2018/2019', 1, 13, 9),
(47, 'BC', '0.78', '2018/2019', 1, 13, 10),
(48, 'AB', '0.90', '2018/2019', 1, 13, 11),
(55, 'A', '1.00', '2019/2020', 2, 12, 15),
(56, 'AB', '1.00', '2019/2020', 2, 12, 16),
(57, 'A', '1.00', '2019/2020', 2, 12, 17),
(58, 'B', '1.00', '2019/2020', 2, 12, 18),
(59, 'AB', '1.00', '2019/2020', 3, 12, 19),
(60, 'AB', '1.00', '2019/2020', 3, 12, 20),
(61, 'A', '1.00', '2019/2020', 2, 12, 21),
(62, 'AB', '0.94', '2019/2020', 3, 12, 22),
(63, 'A', '1.00', '2019/2020', 3, 12, 23),
(64, 'AB', '1.00', '2019/2020', 3, 12, 24),
(65, 'A', '1.00', '2019/2020', 3, 12, 25),
(66, 'AB', '1.00', '2019/2020', 3, 12, 26),
(67, 'AB', '0.81', '2019/2020', 2, 13, 12),
(68, 'A', '0.88', '2019/2020', 2, 13, 13),
(69, 'AB', '0.94', '2019/2020', 2, 13, 14),
(70, 'B', '0.81', '2019/2020', 2, 13, 15),
(71, 'AB', '1.00', '2019/2020', 2, 13, 16),
(72, 'B', '0.95', '2019/2020', 2, 13, 17),
(73, 'AB', '1.00', '2019/2020', 2, 13, 18),
(74, 'AB', '0.88', '2019/2020', 3, 13, 19),
(75, 'AB', '0.95', '2019/2020', 3, 13, 20),
(76, 'A', '1.00', '2019/2020', 3, 13, 21),
(77, 'AB', '1.00', '2019/2020', 3, 13, 22),
(78, 'A', '1.00', '2019/2020', 3, 13, 23),
(79, 'B', '1.00', '2019/2020', 3, 13, 24),
(80, 'A', '1.00', '2019/2020', 3, 13, 25),
(81, 'AB', '1.00', '2019/2020', 3, 13, 26),
(82, 'A', '0.90', '2018/2019', 1, 17, 5),
(83, 'BC', '1.00', '2018/2019', 1, 17, 6),
(84, 'AB', '1.00', '2018/2019', 1, 17, 7),
(85, 'AB', '0.90', '2018/2019', 1, 17, 8),
(86, 'C', '1.00', '2018/2019', 1, 17, 9),
(87, 'B', '1.00', '2018/2019', 1, 17, 10),
(88, 'A', '1.00', '2018/2019', 1, 17, 11),
(89, 'AB', '1.00', '2019/2020', 2, 17, 12),
(90, 'AB', '0.95', '2019/2020', 2, 17, 13),
(91, 'B', '1.00', '2019/2020', 2, 17, 14),
(92, 'B', '1.00', '2019/2020', 2, 17, 15),
(93, 'B', '0.88', '2019/2020', 2, 17, 16),
(94, 'A', '1.00', '2019/2020', 2, 17, 17),
(95, 'A', '1.00', '2019/2020', 2, 17, 18),
(96, 'AB', '0.95', '2019/2020', 3, 17, 19),
(97, 'B', '1.00', '2019/2020', 3, 17, 20),
(98, 'A', '1.00', '2019/2020', 3, 17, 21),
(99, 'BC', '0.88', '2019/2020', 3, 17, 22),
(100, 'A', '1.00', '2019/2020', 3, 17, 23),
(101, 'B', '0.90', '2019/2020', 3, 17, 24),
(102, 'A', '1.00', '2019/2020', 3, 17, 25),
(103, 'B', '0.95', '2019/2020', 3, 17, 26),
(104, 'AB', '1.00', '2018/2019', 1, 18, 5),
(105, 'BC', '1.00', '2018/2019', 1, 18, 6),
(106, 'A', '1.00', '2018/2019', 1, 18, 7),
(107, 'B', '0.88', '2018/2019', 1, 18, 8),
(108, 'C', '1.00', '2018/2019', 1, 18, 9),
(109, 'B', '1.00', '2018/2019', 1, 18, 10),
(110, 'B', '1.00', '2018/2019', 1, 18, 11),
(111, 'AB', '1.00', '2019/2020', 2, 18, 12),
(112, 'A', '0.95', '2019/2020', 2, 18, 13),
(113, 'B', '1.00', '2019/2020', 2, 18, 14),
(114, 'B', '0.94', '2019/2020', 2, 18, 15),
(115, 'AB', '0.88', '2019/2020', 2, 18, 16),
(116, 'A', '1.00', '2019/2020', 2, 18, 17),
(117, 'B', '0.88', '2019/2020', 2, 18, 18),
(118, 'AB', '0.95', '2019/2020', 3, 18, 19),
(119, 'B', '1.00', '2019/2020', 3, 18, 20),
(120, 'A', '1.00', '2019/2020', 3, 18, 21),
(121, 'BC', '0.88', '2019/2020', 3, 18, 22),
(122, 'A', '1.00', '2019/2020', 3, 18, 23),
(123, 'B', '0.90', '2019/2020', 3, 18, 24),
(124, 'A', '1.00', '2019/2020', 3, 18, 25),
(125, 'B', '0.95', '2019/2020', 3, 18, 26),
(126, 'B', '1.00', '2018/2019', 1, 19, 5),
(127, 'BC', '0.88', '2018/2019', 1, 19, 6),
(128, 'A', '1.00', '2018/2019', 1, 19, 7),
(129, 'B', '0.88', '2018/2019', 1, 19, 8),
(130, 'C', '0.78', '2018/2019', 1, 19, 9),
(131, 'B', '0.85', '2018/2019', 1, 19, 10),
(132, 'A', '1.00', '2018/2019', 1, 19, 11),
(133, 'B', '1.00', '2019/2020', 2, 19, 12),
(134, 'B', '0.95', '2019/2020', 2, 19, 13),
(135, 'A', '1.00', '2019/2020', 2, 19, 14),
(136, 'C', '0.94', '2019/2020', 2, 19, 15),
(137, 'BC', '0.88', '2019/2020', 2, 19, 16),
(138, 'AB', '1.00', '2019/2020', 2, 19, 17),
(139, 'B', '0.88', '2019/2020', 2, 19, 18),
(140, 'AB', '0.95', '2019/2020', 3, 19, 19),
(141, 'B', '1.00', '2019/2020', 3, 19, 20),
(142, 'B', '1.00', '2019/2020', 3, 19, 21),
(143, 'C', '0.88', '2019/2020', 3, 19, 22),
(144, 'AB', '0.95', '2019/2020', 3, 19, 23),
(145, 'C', '0.90', '2019/2020', 3, 19, 24),
(146, 'AB', '1.00', '2019/2020', 3, 19, 25),
(147, 'BC', '0.75', '2019/2020', 3, 19, 26),
(148, 'B', '1.00', '2018/2019', 1, 20, 5),
(149, 'B', '1.00', '2018/2019', 1, 20, 6),
(150, 'AB', '1.00', '2018/2019', 1, 20, 7),
(151, 'B', '0.88', '2018/2019', 1, 20, 8),
(152, 'C', '0.78', '2018/2019', 1, 20, 9),
(153, 'C', '0.85', '2018/2019', 1, 20, 10),
(154, 'AB', '1.00', '2018/2019', 1, 20, 11),
(155, 'B', '1.00', '2019/2020', 2, 20, 12),
(156, 'B', '0.95', '2019/2020', 2, 20, 13),
(157, 'A', '1.00', '2019/2020', 2, 20, 14),
(158, 'BC', '1.00', '2019/2020', 2, 20, 15),
(159, 'BC', '0.88', '2019/2020', 2, 20, 16),
(160, 'AB', '1.00', '2019/2020', 2, 20, 17),
(161, 'B', '1.00', '2019/2020', 2, 20, 18),
(162, 'AB', '0.95', '2019/2020', 3, 20, 19),
(163, 'B', '1.00', '2019/2020', 3, 20, 20),
(164, 'A', '1.00', '2019/2020', 3, 20, 21),
(165, 'C', '0.88', '2019/2020', 3, 20, 22),
(166, 'A', '1.00', '2019/2020', 3, 20, 23),
(167, 'C', '0.90', '2019/2020', 3, 20, 24),
(168, 'AB', '1.00', '2019/2020', 3, 20, 25),
(169, 'AB', '1.00', '2019/2020', 3, 20, 26),
(170, 'AB', '1.00', '2018/2019', 1, 21, 5),
(171, 'B', '1.00', '2018/2019', 1, 21, 6),
(172, 'AB', '1.00', '2018/2019', 1, 21, 7),
(173, 'B', '0.94', '2018/2019', 1, 21, 8),
(174, 'C', '0.78', '2018/2019', 1, 21, 9),
(175, 'BC', '0.85', '2018/2019', 1, 21, 10),
(176, 'A', '1.00', '2018/2019', 1, 21, 11),
(177, 'AB', '1.00', '2019/2020', 2, 21, 12),
(178, 'AB', '0.95', '2019/2020', 2, 21, 13),
(179, 'A', '1.00', '2019/2020', 2, 21, 14),
(180, 'B', '1.00', '2019/2020', 2, 21, 15),
(181, 'B', '0.94', '2019/2020', 2, 21, 16),
(182, 'A', '1.00', '2019/2020', 2, 21, 17),
(183, 'B', '1.00', '2019/2020', 2, 21, 18),
(184, 'AB', '0.95', '2019/2020', 3, 21, 19),
(185, 'B', '1.00', '2019/2020', 3, 21, 20),
(186, 'A', '0.94', '2019/2020', 3, 21, 21),
(187, 'B', '0.94', '2019/2020', 3, 21, 22),
(188, 'A', '1.00', '2019/2020', 3, 21, 23),
(189, 'C', '1.00', '2019/2020', 3, 21, 24),
(190, 'A', '1.00', '2019/2020', 3, 21, 25),
(191, 'AB', '1.00', '2019/2020', 3, 21, 26),
(192, 'AB', '1.00', '2018/2019', 1, 22, 5),
(193, 'B', '0.94', '2018/2019', 1, 22, 6),
(194, 'A', '1.00', '2018/2019', 1, 22, 7),
(195, 'AB', '1.00', '2018/2019', 1, 22, 8),
(196, 'BC', '0.88', '2018/2019', 1, 22, 9),
(197, 'B', '1.00', '2018/2019', 1, 22, 10),
(198, 'A', '1.00', '2018/2019', 1, 22, 11),
(199, 'AB', '1.00', '2019/2020', 2, 22, 12),
(200, 'AB', '0.95', '2019/2020', 2, 22, 13),
(201, 'A', '0.78', '2019/2020', 2, 22, 14),
(202, 'AB', '1.00', '2019/2020', 2, 22, 15),
(203, 'AB', '0.94', '2019/2020', 2, 22, 16),
(204, 'A', '1.00', '2019/2020', 2, 22, 17),
(205, 'A', '1.00', '2019/2020', 2, 22, 18),
(206, 'A', '0.95', '2019/2020', 3, 22, 19),
(207, 'B', '0.95', '2019/2020', 3, 22, 20),
(208, 'A', '0.94', '2019/2020', 3, 22, 21),
(209, 'B', '0.94', '2019/2020', 3, 22, 22),
(210, 'A', '1.00', '2019/2020', 3, 22, 23),
(211, 'C', '0.88', '2019/2020', 3, 22, 24),
(212, 'A', '1.00', '2019/2020', 3, 22, 25),
(213, 'AB', '1.00', '2019/2020', 3, 22, 26),
(214, 'B', '1.00', '2014/2015', 1, 1, 8),
(215, 'A', '1.00', '2014/2015', 1, 1, 9),
(216, 'AB', '1.00', '2014/2015', 1, 1, 10),
(217, 'A', '1.00', '2014/2015', 1, 1, 11),
(218, 'A', '1.00', '2015/2016', 2, 1, 12),
(219, 'A', '1.00', '2015/2016', 2, 1, 13),
(220, 'AB', '0.94', '2015/2016', 2, 1, 14),
(221, 'B', '1.00', '2015/2016', 2, 1, 15),
(222, 'B', '0.94', '2015/2016', 2, 1, 16),
(223, 'A', '1.00', '2015/2016', 2, 1, 17),
(224, 'B', '1.00', '2015/2016', 2, 1, 18),
(225, 'AB', '1.00', '2015/2016', 3, 1, 19),
(226, 'AB', '0.95', '2015/2016', 3, 1, 20),
(227, 'A', '0.94', '2015/2016', 3, 1, 21),
(228, 'AB', '0.94', '2015/2016', 3, 1, 22),
(229, 'A', '1.00', '2015/2016', 3, 1, 23),
(230, 'B', '0.78', '2015/2016', 3, 1, 24),
(231, 'A', '1.00', '2015/2016', 3, 1, 25),
(232, 'B', '1.00', '2015/2016', 3, 1, 26),
(233, 'B', '1.00', '2016/2017', 4, 1, 27),
(234, 'AB', '1.00', '2016/2017', 4, 1, 28),
(235, 'B', '1.00', '2016/2017', 4, 1, 29),
(236, 'B', '1.00', '2016/2017', 4, 1, 30),
(237, 'A', '0.94', '2016/2017', 4, 1, 31),
(238, 'AB', '1.00', '2016/2017', 4, 1, 32),
(239, 'AB', '1.00', '2016/2017', 4, 1, 33),
(240, 'B', '0.78', '2016/2017', 4, 1, 34),
(241, 'AB', '1.00', '2016/2017', 4, 1, 35),
(242, 'B', '1.00', '2016/2017', 5, 1, 36),
(243, 'B', '0.94', '2016/2017', 5, 1, 37),
(244, 'AB', '1.00', '2016/2017', 5, 1, 38),
(245, 'C', '0.78', '2016/2017', 5, 1, 39),
(246, 'AB', '1.00', '2017/2018', 6, 1, 40),
(247, 'B', '1.00', '2017/2018', 6, 1, 41),
(248, 'B', '0.88', '2014/2015', 1, 9, 1),
(249, 'BC', '0.88', '2014/2015', 1, 9, 10),
(250, 'A', '0.94', '2014/2015', 1, 9, 7),
(251, 'B', '1.00', '2014/2015', 1, 9, 8),
(252, 'AB', '0.94', '2014/2015', 1, 9, 9),
(253, 'A', '1.00', '2014/2015', 1, 9, 11),
(254, 'AB', '1.00', '2015/2016', 2, 9, 12),
(255, 'A', '1.00', '2015/2016', 2, 9, 13),
(256, 'AB', '0.78', '2015/2016', 2, 9, 14),
(257, 'BC', '0.94', '2015/2016', 2, 9, 15),
(258, 'AB', '1.00', '2015/2016', 2, 9, 16),
(259, 'A', '1.00', '2015/2016', 2, 9, 17),
(260, 'A', '1.00', '2015/2016', 2, 9, 18),
(261, 'A', '1.00', '2015/2016', 3, 9, 19),
(262, 'B', '0.88', '2015/2016', 3, 9, 20),
(263, 'A', '1.00', '2015/2016', 3, 9, 21),
(264, 'AB', '0.94', '2015/2016', 3, 9, 22),
(265, 'A', '1.00', '2015/2016', 3, 9, 23),
(266, 'B', '0.88', '2015/2016', 3, 9, 24),
(267, 'AB', '1.00', '2015/2016', 3, 9, 25),
(268, 'B', '0.88', '2015/2016', 3, 9, 26),
(269, 'A', '1.00', '2016/2017', 4, 9, 27),
(270, 'AB', '1.00', '2016/2017', 4, 9, 28),
(271, 'B', '0.88', '2016/2017', 4, 9, 29),
(272, 'B', '0.78', '2016/2017', 4, 9, 30),
(273, 'A', '1.00', '2016/2017', 4, 9, 31),
(274, 'AB', '1.00', '2016/2017', 4, 9, 32),
(275, 'B', '0.94', '2016/2017', 4, 9, 33),
(276, 'AB', '1.00', '2016/2017', 4, 9, 34),
(277, 'B', '1.00', '2016/2017', 4, 9, 35),
(278, 'A', '1.00', '2016/2017', 5, 9, 36),
(279, 'AB', '0.94', '2016/2017', 5, 9, 37),
(280, 'A', '1.00', '2016/2017', 5, 9, 38),
(281, 'AB', '0.94', '2016/2017', 5, 9, 39),
(282, 'A', '1.00', '2017/2018', 6, 9, 40),
(283, 'AB', '1.00', '2017/2018', 6, 9, 41),
(284, 'B', '0.94', '2014/2015', 1, 3, 1),
(285, 'B', '1.00', '2014/2015', 1, 3, 8),
(286, 'C', '0.78', '2014/2015', 1, 3, 9),
(287, 'A', '1.00', '2014/2015', 1, 3, 11),
(288, 'B', '1.00', '2015/2016', 2, 3, 12),
(289, 'AB', '0.88', '2015/2016', 2, 3, 13),
(290, 'B', '0.78', '2015/2016', 2, 3, 14),
(291, 'BC', '0.94', '2015/2016', 2, 3, 15),
(292, 'B', '1.00', '2015/2016', 2, 3, 16),
(293, 'AB', '1.00', '2015/2016', 2, 3, 17),
(294, 'B', '1.00', '2015/2016', 2, 3, 18),
(295, 'A', '1.00', '2015/2016', 3, 3, 19),
(296, 'AB', '0.88', '2015/2016', 3, 3, 20),
(297, 'A', '1.00', '2015/2016', 3, 3, 21),
(298, 'B', '0.94', '2015/2016', 3, 3, 22),
(299, 'AB', '1.00', '2015/2016', 3, 3, 23),
(300, 'AB', '0.88', '2015/2016', 3, 3, 24),
(301, 'A', '1.00', '2015/2016', 3, 3, 25),
(302, 'AB', '1.00', '2015/2016', 3, 3, 26),
(303, 'B', '1.00', '2016/2017', 4, 3, 27),
(304, 'B', '1.00', '2016/2017', 4, 3, 28),
(305, 'B', '0.88', '2016/2017', 4, 3, 29),
(306, 'AB', '0.88', '2016/2017', 4, 3, 30),
(307, 'AB', '1.00', '2016/2017', 4, 3, 31),
(308, 'B', '1.00', '2016/2017', 4, 3, 32),
(309, 'BC', '0.78', '2016/2017', 4, 3, 33),
(310, 'B', '1.00', '2016/2017', 4, 3, 34),
(311, 'AB', '1.00', '2016/2017', 4, 3, 35),
(312, 'B', '1.00', '2016/2017', 5, 3, 36),
(313, 'AB', '1.00', '2016/2017', 5, 3, 37),
(314, 'A', '1.00', '2016/2017', 5, 3, 38),
(315, 'BC', '0.78', '2016/2017', 5, 3, 39),
(316, 'AB', '0.94', '2017/2018', 6, 3, 40),
(317, 'B', '1.00', '2017/2018', 6, 3, 41),
(318, 'BC', '0.94', '2014/2015', 1, 6, 2),
(319, 'B', '1.00', '2014/2015', 1, 6, 7),
(320, 'B', '0.78', '2014/2015', 1, 6, 8),
(321, 'C', '0.88', '2014/2015', 1, 6, 9),
(322, 'B', '0.88', '2014/2015', 1, 6, 11),
(323, 'B', '1.00', '2015/2016', 2, 6, 12),
(324, 'AB', '1.00', '2015/2016', 2, 6, 13),
(325, 'A', '0.94', '2015/2016', 2, 6, 14),
(326, 'C', '0.78', '2015/2016', 2, 6, 15),
(327, 'B', '1.00', '2015/2016', 2, 6, 16),
(328, 'B', '1.00', '2015/2016', 2, 6, 17),
(329, 'B', '0.88', '2015/2016', 2, 6, 18),
(330, 'A', '1.00', '2015/2016', 3, 6, 19),
(331, 'AB', '0.94', '2015/2016', 3, 6, 20),
(332, 'A', '1.00', '2015/2016', 3, 6, 21),
(333, 'AB', '0.94', '2015/2016', 3, 6, 22),
(334, 'A', '1.00', '2015/2016', 3, 6, 23),
(335, 'AB', '0.94', '2015/2016', 3, 6, 24),
(336, 'A', '1.00', '2015/2016', 3, 6, 25),
(337, 'A', '0.88', '2015/2016', 3, 6, 26),
(338, 'A', '1.00', '2016/2017', 4, 6, 27),
(339, 'A', '1.00', '2016/2017', 4, 6, 28),
(340, 'AB', '0.94', '2016/2017', 4, 6, 29),
(341, 'AB', '0.88', '2016/2017', 4, 6, 30),
(342, 'A', '1.00', '2016/2017', 4, 6, 31),
(343, 'A', '1.00', '2016/2017', 4, 6, 32),
(344, 'AB', '0.94', '2016/2017', 4, 6, 33),
(345, 'AB', '0.88', '2016/2017', 4, 6, 34),
(346, 'A', '1.00', '2016/2017', 4, 6, 35),
(347, 'B', '1.00', '2016/2017', 5, 6, 36),
(348, 'B', '0.88', '2016/2017', 5, 6, 37),
(349, 'BC', '0.78', '2016/2017', 5, 6, 38),
(350, 'C', '0.78', '2016/2017', 5, 6, 39),
(351, 'A', '0.88', '2017/2018', 6, 6, 40),
(352, 'AB', '1.00', '2017/2018', 6, 6, 41),
(353, 'B', '1.00', '2014/2015', 1, 8, 2),
(354, 'B', '1.00', '2014/2015', 1, 8, 7),
(355, 'B', '0.88', '2014/2015', 1, 8, 8),
(356, 'C', '0.88', '2014/2015', 1, 8, 9),
(357, 'AB', '1.00', '2014/2015', 1, 8, 11),
(358, 'B', '0.78', '2015/2016', 2, 8, 12),
(359, 'B', '0.94', '2015/2016', 2, 8, 13),
(360, 'AB', '0.88', '2015/2016', 2, 8, 14),
(361, 'C', '0.78', '2015/2016', 2, 8, 15),
(362, 'B', '0.94', '2015/2016', 2, 8, 16),
(363, 'AB', '1.00', '2015/2016', 2, 8, 17),
(364, 'B', '0.88', '2015/2016', 2, 8, 18),
(365, 'B', '1.00', '2015/2016', 3, 8, 19),
(366, 'B', '0.94', '2015/2016', 3, 8, 20),
(367, 'A', '0.88', '2015/2016', 3, 8, 21),
(368, 'B', '0.94', '2015/2016', 3, 8, 22),
(369, 'B', '1.00', '2015/2016', 3, 8, 23),
(370, 'C', '0.78', '2015/2016', 3, 8, 24),
(371, 'B', '0.88', '2015/2016', 3, 8, 25),
(372, 'B', '0.88', '2015/2016', 3, 8, 26),
(373, 'B', '1.00', '2016/2017', 4, 8, 27),
(374, 'AB', '0.94', '2016/2017', 4, 8, 28),
(375, 'B', '0.94', '2016/2017', 4, 8, 29),
(376, 'BC', '0.88', '2016/2017', 4, 8, 30),
(377, 'B', '0.94', '2016/2017', 4, 8, 31),
(378, 'B', '0.94', '2016/2017', 4, 8, 32),
(379, 'C', '0.78', '2016/2017', 4, 8, 33),
(380, 'BC', '0.78', '2016/2017', 4, 8, 34),
(381, 'AB', '1.00', '2016/2017', 4, 8, 35),
(382, 'B', '1.00', '2016/2017', 5, 8, 36),
(383, 'B', '0.88', '2016/2017', 5, 8, 37),
(384, 'B', '0.88', '2016/2017', 5, 8, 38),
(385, 'BC', '0.78', '2016/2017', 5, 8, 39),
(386, 'B', '0.88', '2017/2018', 6, 8, 40),
(387, 'B', '1.00', '2017/2018', 6, 8, 41),
(388, 'AB', '0.88', '2020/2021', 4, 13, 27),
(389, 'AB', '1.00', '2020/2021', 4, 13, 28),
(390, 'AB', '1.00', '2020/2021', 4, 13, 29),
(391, 'B', '0.88', '2020/2021', 4, 13, 30),
(392, 'AB', '1.00', '2020/2021', 4, 13, 31),
(393, 'B', '0.94', '2020/2021', 4, 13, 32),
(394, 'C', '0.78', '2020/2021', 4, 13, 33),
(395, 'B', '1.00', '2020/2021', 4, 13, 34),
(396, 'AB', '1.00', '2020/2021', 4, 13, 35),
(397, 'AB', '1.00', '2020/2021', 5, 13, 36),
(398, 'AB', '0.94', '2020/2021', 5, 13, 37),
(399, 'AB', '0.88', '2020/2021', 5, 13, 38),
(400, 'AB', '0.94', '2020/2021', 5, 13, 39),
(401, 'A', '1.00', '2021/2022', 6, 13, 40),
(402, 'AB', '1.00', '2021/2022', 6, 13, 41),
(403, 'AB', '1.00', '2018/2019', 1, 14, 5),
(404, 'BC', '1.00', '2018/2019', 1, 14, 6),
(405, 'A', '1.00', '2018/2019', 1, 14, 7),
(406, 'AB', '1.00', '2018/2019', 1, 14, 8),
(407, 'C', '1.00', '2018/2019', 1, 14, 9),
(408, 'B', '1.00', '2018/2019', 1, 14, 10),
(409, 'A', '1.00', '2018/2019', 1, 14, 11),
(410, 'AB', '1.00', '2019/2020', 2, 14, 12),
(411, 'A', '1.00', '2019/2020', 2, 14, 13),
(412, 'A', '1.00', '2019/2020', 2, 14, 14),
(413, 'A', '1.00', '2019/2020', 2, 14, 15),
(414, 'AB', '1.00', '2019/2020', 2, 14, 16),
(415, 'A', '1.00', '2019/2020', 2, 14, 17),
(416, 'B', '1.00', '2019/2020', 2, 14, 18),
(417, 'AB', '1.00', '2019/2020', 3, 14, 19),
(418, 'AB', '1.00', '2019/2020', 3, 14, 20),
(419, 'A', '1.00', '2019/2020', 3, 14, 21),
(420, 'AB', '0.94', '2019/2020', 3, 14, 22),
(421, 'A', '1.00', '2019/2020', 3, 14, 23),
(422, 'AB', '1.00', '2019/2020', 3, 14, 24),
(423, 'A', '1.00', '2019/2020', 3, 14, 25),
(424, 'AB', '1.00', '2019/2020', 3, 14, 26),
(425, 'AB', '1.00', '2020/2021', 4, 14, 27),
(426, 'A', '1.00', '2020/2021', 4, 14, 28),
(427, 'A', '1.00', '2020/2021', 4, 14, 29),
(428, 'AB', '1.00', '2020/2021', 4, 14, 30),
(429, 'AB', '1.00', '2020/2021', 4, 14, 31),
(430, 'AB', '1.00', '2020/2021', 4, 14, 32),
(431, 'BC', '1.00', '2020/2021', 4, 14, 33),
(432, 'A', '1.00', '2020/2021', 4, 14, 34),
(433, 'AB', '1.00', '2020/2021', 4, 14, 35),
(434, 'AB', '1.00', '2020/2021', 5, 14, 36),
(435, 'A', '1.00', '2020/2021', 5, 14, 37),
(436, 'A', '1.00', '2020/2021', 5, 14, 38),
(437, 'A', '1.00', '2020/2021', 5, 14, 39),
(438, 'A', '1.00', '2021/2022', 6, 14, 40),
(439, 'A', '1.00', '2021/2022', 6, 14, 41),
(440, 'A', '0.94', '2020/2021', 4, 17, 27),
(441, 'AB', '1.00', '2020/2021', 4, 17, 28),
(442, 'B', '0.88', '2020/2021', 4, 17, 29),
(443, 'AB', '1.00', '2020/2021', 4, 17, 30),
(444, 'AB', '0.94', '2020/2021', 4, 17, 31),
(445, 'B', '1.00', '2020/2021', 4, 17, 32),
(446, 'C', '0.88', '2020/2021', 4, 17, 33),
(447, 'B', '0.94', '2020/2021', 4, 17, 34),
(448, 'AB', '1.00', '2020/2021', 4, 17, 35),
(449, 'B', '1.00', '2020/2021', 5, 17, 36),
(450, 'AB', '0.94', '2020/2021', 5, 17, 37),
(451, 'AB', '1.00', '2020/2021', 5, 17, 38),
(452, 'B', '1.00', '2020/2021', 5, 17, 39),
(453, 'AB', '1.00', '2021/2022', 6, 17, 40),
(454, 'AB', '1.00', '2021/2022', 6, 17, 41),
(455, 'AB', '0.94', '2020/2021', 4, 4, 27),
(456, 'AB', '1.00', '2020/2021', 4, 4, 28),
(457, 'AB', '0.94', '2020/2021', 4, 4, 29),
(458, 'AB', '1.00', '2020/2021', 4, 4, 30),
(459, 'AB', '1.00', '2020/2021', 4, 4, 31),
(460, 'AB', '1.00', '2020/2021', 4, 4, 32),
(461, 'C', '0.94', '2020/2021', 4, 4, 33),
(462, 'B', '1.00', '2020/2021', 4, 4, 34),
(463, 'AB', '1.00', '2020/2021', 4, 4, 35),
(464, 'AB', '1.00', '2020/2021', 5, 4, 36),
(465, 'AB', '1.00', '2020/2021', 5, 4, 37),
(466, 'A', '1.00', '2020/2021', 5, 4, 38),
(467, 'A', '1.00', '2020/2021', 5, 4, 39),
(468, 'A', '1.00', '2021/2022', 6, 4, 40),
(469, 'A', '1.00', '2021/2022', 6, 4, 41),
(470, 'AB', '1.00', '2020/2021', 4, 18, 27),
(471, 'AB', '1.00', '2020/2021', 4, 18, 28),
(472, 'AB', '0.94', '2020/2021', 4, 18, 29),
(473, 'AB', '0.88', '2020/2021', 4, 18, 30),
(474, 'AB', '1.00', '2020/2021', 4, 18, 31),
(475, 'AB', '0.88', '2020/2021', 4, 18, 32),
(476, 'C', '0.88', '2020/2021', 4, 18, 33),
(477, 'B', '0.88', '2020/2021', 4, 18, 34),
(478, 'AB', '1.00', '2020/2021', 4, 18, 35),
(479, 'AB', '1.00', '2020/2021', 5, 18, 36),
(480, 'AB', '0.94', '2020/2021', 5, 18, 37),
(481, 'A', '1.00', '2020/2021', 5, 18, 38),
(482, 'A', '1.00', '2020/2021', 5, 18, 39),
(483, 'A', '1.00', '2021/2022', 6, 18, 40),
(484, 'A', '1.00', '2021/2022', 6, 18, 41),
(485, 'B', '0.94', '2020/2021', 4, 19, 27),
(486, 'AB', '1.00', '2020/2021', 4, 19, 28),
(487, 'B', '1.00', '2020/2021', 4, 19, 29),
(488, 'C', '0.88', '2020/2021', 4, 19, 30),
(489, 'B', '1.00', '2020/2021', 4, 19, 31),
(490, 'B', '1.00', '2020/2021', 4, 19, 32),
(491, 'C', '0.88', '2020/2021', 4, 19, 33),
(492, 'B', '1.00', '2020/2021', 4, 19, 34),
(493, 'A', '1.00', '2020/2021', 4, 19, 35),
(494, 'B', '1.00', '2020/2021', 5, 19, 36),
(495, 'AB', '1.00', '2020/2021', 5, 19, 37),
(496, 'AB', '0.94', '2020/2021', 5, 19, 38),
(497, 'AB', '1.00', '2020/2021', 5, 19, 39),
(498, 'A', '1.00', '2021/2022', 6, 19, 40),
(499, 'B', '1.00', '2021/2022', 6, 19, 41),
(500, 'B', '1.00', '2020/2021', 4, 20, 27),
(501, 'AB', '0.94', '2020/2021', 4, 20, 28),
(502, 'B', '1.00', '2020/2021', 4, 20, 29),
(503, 'C', '0.94', '2020/2021', 4, 20, 30),
(504, 'B', '1.00', '2020/2021', 4, 20, 31),
(505, 'B', '1.00', '2020/2021', 4, 20, 32),
(506, 'C', '0.88', '2020/2021', 4, 20, 33),
(507, 'B', '0.78', '2020/2021', 4, 20, 34),
(508, 'AB', '1.00', '2020/2021', 4, 20, 35),
(509, 'AB', '1.00', '2020/2021', 5, 20, 36),
(510, 'B', '1.00', '2020/2021', 5, 20, 37),
(511, 'AB', '1.00', '2020/2021', 5, 20, 38),
(512, 'B', '0.88', '2020/2021', 5, 20, 39),
(513, 'AB', '1.00', '2021/2022', 6, 20, 40),
(514, 'B', '1.00', '2021/2022', 6, 20, 41),
(515, 'AB', '1.00', '2020/2021', 4, 21, 27),
(516, 'AB', '1.00', '2020/2021', 4, 21, 28),
(517, 'B', '1.00', '2020/2021', 4, 21, 29),
(518, 'B', '0.94', '2020/2021', 4, 21, 30),
(519, 'AB', '1.00', '2020/2021', 4, 21, 31),
(520, 'B', '1.00', '2020/2021', 4, 21, 32),
(521, 'C', '0.88', '2020/2021', 4, 21, 33),
(522, 'B', '0.94', '2020/2021', 4, 21, 34),
(523, 'A', '1.00', '2020/2021', 4, 21, 35),
(524, 'B', '0.88', '2020/2021', 5, 21, 36),
(525, 'B', '0.94', '2020/2021', 5, 21, 37),
(526, 'AB', '1.00', '2020/2021', 5, 21, 38),
(527, 'B', '1.00', '2020/2021', 5, 21, 39),
(528, 'AB', '1.00', '2021/2022', 6, 21, 40),
(529, 'BC', '1.00', '2021/2022', 6, 21, 41),
(530, 'A', '0.94', '2020/2021', 4, 22, 27),
(531, 'AB', '1.00', '2020/2021', 4, 22, 28),
(532, 'AB', '0.88', '2020/2021', 4, 22, 29),
(533, 'AB', '0.94', '2020/2021', 4, 22, 30),
(534, 'AB', '1.00', '2020/2021', 4, 22, 31),
(535, 'AB', '1.00', '2020/2021', 4, 22, 32),
(536, 'C', '0.88', '2020/2021', 4, 22, 33),
(537, 'B', '0.88', '2020/2021', 4, 22, 34),
(538, 'AB', '1.00', '2020/2021', 4, 22, 35),
(539, 'AB', '0.88', '2020/2021', 5, 22, 36),
(540, 'AB', '1.00', '2020/2021', 5, 22, 37),
(541, 'AB', '0.94', '2020/2021', 5, 22, 38),
(542, 'B', '1.00', '2020/2021', 5, 22, 39),
(543, 'AB', '1.00', '2021/2022', 6, 22, 40),
(544, 'AB', '1.00', '2021/2022', 6, 22, 41),
(545, 'B', '0.94', '2018/2019', 1, 23, 5),
(546, 'BC', '0.88', '2018/2019', 1, 23, 6),
(547, 'A', '1.00', '2018/2019', 1, 23, 7),
(548, 'AB', '1.00', '2018/2019', 1, 23, 8),
(549, 'C', '0.94', '2018/2019', 1, 23, 9),
(550, 'B', '0.94', '2018/2019', 1, 23, 10),
(551, 'A', '1.00', '2018/2019', 1, 23, 11),
(552, 'AB', '1.00', '2019/2020', 2, 23, 12),
(553, 'AB', '0.88', '2019/2020', 2, 23, 13),
(554, 'AB', '1.00', '2019/2020', 2, 23, 14),
(555, 'B', '0.94', '2019/2020', 2, 23, 15),
(556, 'B', '1.00', '2019/2020', 2, 23, 16),
(557, 'A', '1.00', '2019/2020', 2, 23, 17),
(558, 'AB', '1.00', '2019/2020', 2, 23, 18),
(559, 'AB', '1.00', '2019/2020', 3, 23, 19),
(560, 'B', '0.78', '2019/2020', 3, 23, 20),
(561, 'A', '1.00', '2019/2020', 3, 23, 21),
(562, 'AB', '1.00', '2019/2020', 3, 23, 22),
(563, 'A', '1.00', '2019/2020', 3, 23, 23),
(564, 'B', '0.88', '2019/2020', 3, 23, 24),
(565, 'A', '1.00', '2019/2020', 3, 23, 25),
(566, 'B', '0.94', '2019/2020', 3, 23, 26),
(567, 'AB', '0.94', '2020/2021', 4, 23, 27),
(568, 'AB', '1.00', '2020/2021', 4, 23, 28),
(569, 'AB', '0.88', '2020/2021', 4, 23, 29),
(570, 'B', '1.00', '2020/2021', 4, 23, 30),
(571, 'AB', '1.00', '2020/2021', 4, 23, 31),
(572, 'B', '0.88', '2020/2021', 4, 23, 32),
(573, 'C', '0.78', '2020/2021', 4, 23, 33),
(574, 'B', '0.88', '2020/2021', 4, 23, 34),
(575, 'AB', '1.00', '2020/2021', 4, 23, 35),
(576, 'AB', '0.88', '2020/2021', 5, 23, 36),
(577, 'AB', '0.94', '2020/2021', 5, 23, 37),
(578, 'AB', '1.00', '2020/2021', 5, 23, 38),
(579, 'B', '0.94', '2020/2021', 5, 23, 39),
(580, 'AB', '1.00', '2021/2022', 6, 23, 40),
(581, 'AB', '1.00', '2021/2022', 6, 23, 41),
(582, 'A', '1.00', '2018/2019', 1, 24, 5),
(583, 'B', '0.94', '2018/2019', 1, 24, 6),
(584, 'A', '1.00', '2018/2019', 1, 24, 7),
(585, 'A', '1.00', '2018/2019', 1, 24, 8),
(586, 'A', '0.94', '2018/2019', 1, 24, 9),
(587, 'A', '0.94', '2018/2019', 1, 24, 10),
(588, 'A', '1.00', '2018/2019', 1, 24, 11),
(589, 'A', '1.00', '2019/2020', 2, 24, 12),
(590, 'A', '0.88', '2019/2020', 2, 24, 13),
(591, 'A', '0.94', '2019/2020', 2, 24, 14),
(592, 'A', '0.94', '2019/2020', 2, 24, 15),
(593, 'A', '1.00', '2019/2020', 2, 24, 16),
(594, 'A', '1.00', '2019/2020', 2, 24, 17),
(595, 'A', '0.88', '2019/2020', 2, 24, 18),
(596, 'A', '1.00', '2019/2020', 3, 24, 19),
(597, 'AB', '0.88', '2019/2020', 3, 24, 20),
(598, 'A', '1.00', '2019/2020', 3, 24, 21),
(599, 'A', '1.00', '2019/2020', 3, 24, 22),
(600, 'A', '0.88', '2019/2020', 3, 24, 23),
(601, 'A', '0.88', '2019/2020', 3, 24, 24),
(602, 'A', '0.88', '2019/2020', 3, 24, 25),
(603, 'AB', '0.94', '2019/2020', 3, 24, 26),
(604, 'A', '0.94', '2020/2021', 4, 24, 27),
(605, 'AB', '1.00', '2020/2021', 4, 24, 28),
(606, 'AB', '0.88', '2020/2021', 4, 24, 29),
(607, 'A', '1.00', '2020/2021', 4, 24, 30),
(608, 'AB', '1.00', '2020/2021', 4, 24, 31),
(609, 'A', '0.88', '2020/2021', 4, 24, 32),
(610, 'BC', '0.94', '2020/2021', 4, 24, 33),
(611, 'AB', '0.88', '2020/2021', 4, 24, 34),
(612, 'A', '1.00', '2020/2021', 4, 24, 35),
(613, 'AB', '0.88', '2020/2021', 5, 24, 36),
(614, 'AB', '0.94', '2020/2021', 5, 24, 37),
(615, 'A', '1.00', '2020/2021', 5, 24, 38),
(616, 'A', '0.94', '2020/2021', 5, 24, 39),
(617, 'AB', '1.00', '2021/2022', 6, 24, 40),
(618, 'A', '1.00', '2021/2022', 6, 24, 41),
(619, 'B', '1.00', '2018/2019', 1, 25, 5),
(620, 'B', '0.94', '2018/2019', 1, 25, 6),
(621, 'A', '1.00', '2018/2019', 1, 25, 7),
(622, 'AB', '1.00', '2018/2019', 1, 25, 8),
(623, 'BC', '1.00', '2018/2019', 1, 25, 9),
(624, 'C', '0.94', '2018/2019', 1, 25, 10),
(625, 'A', '1.00', '2018/2019', 1, 25, 11),
(626, 'AB', '1.00', '2019/2020', 2, 25, 12),
(627, 'AB', '0.88', '2019/2020', 2, 25, 13),
(628, 'A', '1.00', '2019/2020', 2, 25, 14),
(629, 'B', '0.94', '2019/2020', 2, 25, 15),
(630, 'AB', '1.00', '2019/2020', 2, 25, 16),
(631, 'A', '1.00', '2019/2020', 2, 25, 17),
(632, 'A', '0.88', '2019/2020', 2, 25, 18),
(633, 'A', '1.00', '2019/2020', 3, 25, 19),
(634, 'AB', '0.94', '2019/2020', 3, 25, 20),
(635, 'A', '1.00', '2019/2020', 3, 25, 21),
(636, 'B', '0.88', '2019/2020', 3, 25, 22),
(637, 'A', '0.88', '2019/2020', 3, 25, 23),
(638, 'B', '0.88', '2019/2020', 3, 25, 24),
(639, 'A', '1.00', '2019/2020', 3, 25, 25),
(640, 'AB', '0.94', '2019/2020', 3, 25, 26),
(641, 'A', '0.94', '2020/2021', 4, 25, 27),
(642, 'AB', '1.00', '2020/2021', 4, 25, 28),
(643, 'AB', '0.88', '2020/2021', 4, 25, 29),
(644, 'B', '1.00', '2020/2021', 4, 25, 30),
(645, 'AB', '1.00', '2020/2021', 4, 25, 31),
(646, 'AB', '0.94', '2020/2021', 4, 25, 32),
(647, 'C', '0.94', '2020/2021', 4, 25, 33),
(648, 'B', '0.88', '2020/2021', 4, 25, 34),
(649, 'A', '1.00', '2020/2021', 4, 25, 35),
(650, 'AB', '0.88', '2020/2021', 5, 25, 36),
(651, 'AB', '0.94', '2020/2021', 5, 25, 37),
(652, 'AB', '1.00', '2020/2021', 5, 25, 38),
(653, 'AB', '0.94', '2020/2021', 5, 25, 39),
(654, 'AB', '1.00', '2021/2022', 6, 25, 40),
(655, 'AB', '1.00', '2021/2022', 6, 25, 41),
(656, 'AB', '1.00', '2018/2019', 1, 26, 5),
(657, 'B', '0.94', '2018/2019', 1, 26, 6),
(658, 'A', '1.00', '2018/2019', 1, 26, 7),
(659, 'AB', '1.00', '2018/2019', 1, 26, 8),
(660, 'C', '1.00', '2018/2019', 1, 26, 9),
(661, 'B', '0.94', '2018/2019', 1, 26, 10),
(662, 'A', '1.00', '2018/2019', 1, 26, 11),
(663, 'AB', '1.00', '2019/2020', 2, 26, 12),
(664, 'AB', '0.94', '2019/2020', 2, 26, 13),
(665, 'A', '1.00', '2019/2020', 2, 26, 14),
(666, 'BC', '0.94', '2019/2020', 2, 26, 15),
(667, 'B', '1.00', '2019/2020', 2, 26, 16),
(668, 'A', '1.00', '2019/2020', 2, 26, 17),
(669, 'B', '0.94', '2019/2020', 2, 26, 18),
(670, 'B', '1.00', '2019/2020', 3, 26, 19),
(671, 'B', '0.88', '2019/2020', 3, 26, 20),
(672, 'A', '0.78', '2019/2020', 3, 26, 21),
(673, 'AB', '0.88', '2019/2020', 3, 26, 22),
(674, 'A', '0.88', '2019/2020', 3, 26, 23),
(675, 'B', '0.88', '2019/2020', 3, 26, 24),
(676, 'A', '1.00', '2019/2020', 3, 26, 25),
(677, 'B', '0.94', '2019/2020', 3, 26, 26),
(678, 'AB', '1.00', '2020/2021', 4, 26, 27),
(679, 'AB', '1.00', '2020/2021', 4, 26, 28),
(680, 'AB', '0.88', '2020/2021', 4, 26, 29),
(681, 'B', '0.88', '2020/2021', 4, 26, 30),
(682, 'AB', '1.00', '2020/2021', 4, 26, 31),
(683, 'B', '0.94', '2020/2021', 4, 26, 32),
(684, 'C', '0.78', '2020/2021', 4, 26, 33),
(685, 'B', '0.88', '2020/2021', 4, 26, 34),
(686, 'AB', '1.00', '2020/2021', 4, 26, 35),
(687, 'AB', '0.88', '2020/2021', 5, 26, 36),
(688, 'AB', '0.94', '2020/2021', 5, 26, 37),
(689, 'AB', '0.88', '2020/2021', 5, 26, 38),
(690, 'B', '0.94', '2020/2021', 5, 26, 39),
(691, 'AB', '1.00', '2021/2022', 6, 26, 40),
(692, 'AB', '1.00', '2021/2022', 6, 26, 41),
(693, 'AB', '1.00', '2018/2019', 1, 27, 5),
(694, 'AB', '0.88', '2018/2019', 1, 27, 2),
(695, 'A', '0.78', '2018/2019', 1, 27, 7),
(696, 'A', '1.00', '2019/2020', 1, 28, 1),
(697, 'B', '0.88', '2020/2021', 2, 28, 12),
(698, 'A', '0.94', '2020/2021', 3, 28, 21),
(699, 'AB', '1.00', '2021/2022', 4, 28, 31),
(700, 'A', '0.88', '2021/2022', 5, 28, 39),
(701, 'AB', '1.00', '2019/2020', 1, 28, 2),
(702, 'AB', '1.00', '2018/2019', 1, 27, 8),
(703, 'AB', '1.00', '2018/2019', 1, 27, 9),
(704, 'AB', '0.94', '2018/2019', 1, 27, 10),
(705, 'A', '1.00', '2018/2019', 1, 27, 11),
(706, 'A', '1.00', '2019/2020', 2, 27, 12),
(707, 'A', '0.94', '2019/2020', 2, 27, 13),
(708, 'A', '1.00', '2019/2020', 2, 27, 14),
(709, 'AB', '0.94', '2019/2020', 2, 27, 15),
(710, 'AB', '1.00', '2019/2020', 2, 27, 16),
(711, 'A', '1.00', '2019/2020', 2, 27, 17),
(712, 'A', '0.94', '2019/2020', 2, 27, 18),
(713, 'A', '1.00', '2019/2020', 3, 27, 19),
(714, 'AB', '0.88', '2019/2020', 3, 27, 20),
(715, 'A', '0.78', '2019/2020', 3, 27, 21),
(716, 'AB', '0.88', '2019/2020', 3, 27, 22),
(717, 'A', '0.88', '2019/2020', 3, 27, 23),
(718, 'AB', '0.88', '2019/2020', 3, 27, 24),
(719, 'A', '1.00', '2019/2020', 3, 27, 25),
(720, 'AB', '0.94', '2019/2020', 3, 27, 26),
(721, 'A', '1.00', '2020/2021', 4, 27, 27),
(722, 'A', '1.00', '2020/2021', 4, 27, 28),
(723, 'AB', '0.88', '2020/2021', 4, 27, 29),
(724, 'AB', '0.88', '2020/2021', 4, 27, 30),
(725, 'AB', '1.00', '2020/2021', 4, 27, 31),
(726, 'AB', '0.94', '2020/2021', 4, 27, 32),
(727, 'C', '0.78', '2020/2021', 4, 27, 33),
(728, 'AB', '0.88', '2020/2021', 4, 27, 34),
(729, 'A', '1.00', '2020/2021', 4, 27, 35),
(730, 'AB', '0.88', '2020/2021', 5, 27, 36),
(731, 'A', '0.94', '2020/2021', 5, 27, 37),
(732, 'A', '0.88', '2020/2021', 5, 27, 38),
(733, 'A', '0.94', '2020/2021', 5, 27, 39),
(734, 'A', '1.00', '2021/2022', 6, 27, 40),
(735, 'A', '1.00', '2021/2022', 6, 27, 41),
(737, 'A', '0.33', '2013/2014', 1, 2, 3),
(738, 'A', '0.50', '2013/2014', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan`
--

CREATE TABLE `pendidikan` (
  `id` int(11) NOT NULL,
  `pendidikan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendidikan`
--

INSERT INTO `pendidikan` (`id`, `pendidikan`) VALUES
(1, 'Belum Tamat SD'),
(2, 'SD / Sederajat'),
(3, 'SLTP / Sederajat'),
(4, 'SLTA / Sederajat'),
(5, 'D1 / D2'),
(6, 'Akademi / D3'),
(7, 'D4 / S1'),
(8, 'S2'),
(9, 'S3');

-- --------------------------------------------------------

--
-- Table structure for table `pengampu`
--

CREATE TABLE `pengampu` (
  `id` int(11) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `id_mata_kuliah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengampu`
--

INSERT INTO `pengampu` (`id`, `id_dosen`, `id_mata_kuliah`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 6, 6),
(4, 2, 12),
(5, 10, 1),
(6, 11, 2),
(7, 12, 3),
(8, 13, 4),
(9, 3, 5),
(10, 10, 6),
(11, 14, 7),
(12, 15, 8),
(13, 16, 9),
(14, 17, 10),
(15, 3, 11),
(16, 1, 12),
(17, 1, 13),
(18, 18, 14),
(19, 18, 15),
(20, 19, 16),
(21, 20, 17),
(22, 3, 18),
(23, 1, 19),
(24, 21, 20),
(25, 22, 21),
(26, 23, 22),
(27, 18, 23),
(28, 2, 24),
(29, 13, 25),
(30, 3, 26),
(31, 16, 27),
(32, 17, 28),
(33, 21, 29),
(34, 19, 30),
(35, 13, 31),
(36, 13, 32),
(37, 15, 34),
(38, 4, 36),
(39, 2, 37),
(40, 4, 38),
(41, 4, 39),
(42, 7, 3),
(43, 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `pertanyaan_1`
--

CREATE TABLE `pertanyaan_1` (
  `id` int(11) NOT NULL,
  `pertanyaan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pertanyaan_1`
--

INSERT INTO `pertanyaan_1` (`id`, `pertanyaan`) VALUES
(1, 'Tanggal Lahir Anda?');

-- --------------------------------------------------------

--
-- Table structure for table `pertanyaan_2`
--

CREATE TABLE `pertanyaan_2` (
  `id` int(11) NOT NULL,
  `pertanyaan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pertanyaan_2`
--

INSERT INTO `pertanyaan_2` (`id`, `pertanyaan`) VALUES
(1, 'No Handphone?');

-- --------------------------------------------------------

--
-- Table structure for table `pertanyaan_keamanan`
--

CREATE TABLE `pertanyaan_keamanan` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_pertanyaan_1` int(11) NOT NULL,
  `jawaban_1` varchar(255) NOT NULL,
  `id_pertanyaan_2` int(11) NOT NULL,
  `jawaban_2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pertanyaan_keamanan`
--

INSERT INTO `pertanyaan_keamanan` (`id`, `id_user`, `id_pertanyaan_1`, `jawaban_1`, `id_pertanyaan_2`, `jawaban_2`) VALUES
(1, 112, 1, '01-09-1998', 1, '085272200780'),
(2, 15, 1, '01-01-1990', 1, '081375767799');

-- --------------------------------------------------------

--
-- Table structure for table `prestasi`
--

CREATE TABLE `prestasi` (
  `id_prestasi` int(11) NOT NULL,
  `peringkat` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `penyelenggara` varchar(255) NOT NULL,
  `nama_kompetisi` varchar(255) NOT NULL,
  `tahun` varchar(255) NOT NULL,
  `id_mahasiswa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prestasi`
--

INSERT INTO `prestasi` (`id_prestasi`, `peringkat`, `kategori`, `penyelenggara`, `nama_kompetisi`, `tahun`, `id_mahasiswa`) VALUES
(1, 'Juara 3', 'Kelompok', 'PUSPRESNAS', 'Belmawa Gemastik 2021', '2021', '26'),
(2, 'Juara 3', 'Kelompok', 'PUSPRESNAS', 'Belmawa Gemastik 2021', '2021', '23'),
(3, 'Juara 2', 'Kelompok', 'Universitas Negeri Yogyakarta', 'Business Plan', '2021', '20'),
(4, 'Juara 2', 'Kelompok', 'Universitas Negeri Yogyakarta', 'Business Plan', '2021', '26'),
(5, 'Juara Harapan', 'Kelompok', 'Huawei', 'Huawei ICT Competition 2021', '2021', '13'),
(6, 'Juara Harapan', 'Kelompok', 'Huawei', 'Huawei ICT COmpetition 2021', '2021', '3'),
(7, 'Juara 1', 'Individu', 'Student English Society', 'NUDC Telkom Selection 2020', '2021', '18'),
(8, 'Juara Harapan', 'Kelompok', 'Telkom Indonesia', 'INNOVILLAGE 2021', '2021', '17'),
(9, 'Juara Harapan', 'Kelompok', 'Telkom Indonesia', 'INNOVILLAGE 2021', '2021', '19'),
(10, 'Juara Harapan', 'Kelompok', 'Telkom Indonesia', 'INNOVILLAGE 2021', '2021', '4'),
(11, 'Juara 3', 'Kelompok', 'IDStar & ONE Indonesia', 'ICStar Hackaton', '2021', '2'),
(12, 'Juara 3', 'Kelompok', 'IDStar & ONE Indonesia', 'ICStar Hackaton', '2021', '25'),
(13, 'Juara 3', 'Kelompok', 'IDStar & ONE Indonesia', 'ICStar Hackaton', '2021', '26'),
(14, 'Partisipan', 'Kelompok', 'Telkom University', 'Datathon AI', '2021', '27'),
(15, 'Partisipan', 'Kelompok', 'Telkom University', 'Datathon AI', '2021', '22'),
(16, 'Juara 3', 'Individu', 'Telkom University', 'Entrepeneur of Infomation System', '2021', '16'),
(17, 'Juara 1', 'Individu', 'PUSPRESNAS', 'Belmawa Gemastik 2022', '2021', '26'),
(18, 'Juara 1', 'Individu', 'PUSPRESNAS', 'Belmawa Gemastik 2022', '2022', '25');

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id` int(11) NOT NULL,
  `kode_prodi` varchar(255) NOT NULL,
  `nama_prodi` varchar(255) NOT NULL,
  `id_fakultas` int(11) NOT NULL,
  `id_kaprodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id`, `kode_prodi`, `nama_prodi`, `id_fakultas`, `id_kaprodi`) VALUES
(1, 'S1TT', 'S1 Teknik Telekomunikasi', 1, 1),
(2, 'S1TTIC', 'S1 Teknik Telekomunikasi (International Class)', 1, 1),
(3, 'S1TE', 'S1 Teknik Elektro', 1, 1),
(4, 'S1TEIC', 'S1 Teknik Elektro (International Class)', 1, 1),
(5, 'S1TF', 'S1 Teknik Fisika', 1, 1),
(6, 'S1TK', 'S1 Teknik Komputer', 1, 1),
(7, 'S1TB', 'S1 Teknik Biomedis', 1, 1),
(8, 'S2TET', 'S2 Teknik Elektro-Telekomunikasi', 1, 1),
(9, 'S1I', 'S1 Informatika', 2, 2),
(10, 'S1IIC', 'S1 Informatika (International Class)', 2, 2),
(11, 'S1TI', 'S1 Teknologoi Informasi', 2, 2),
(12, 'S1RPL', 'S1 Rekayasa Perangkat Lunak', 2, 2),
(13, 'S2I', 'S2 Informatika', 2, 2),
(14, 'S1TIn', 'S1 Teknik Industri', 3, 3),
(15, 'S1TInIC', 'S1 Teknik Industri (International Class)', 3, 3),
(16, 'S1SI', 'S1 Sistem Informasi', 3, 3),
(17, 'S1SIIC', 'S1 Sistem Informasi (International Class)', 3, 3),
(18, 'S1TL', 'S1 Teknik Logistik', 3, 3),
(19, 'S2TIn', 'S2 Teknik Industri', 3, 3),
(20, 'S1IICTB', 'S1 International ICT Business', 4, 4),
(21, 'S1MBTI', 'S1 Manajemen Bisnis Telekomunikasi dan Informatika', 4, 4),
(22, 'S1A', 'S1 Akuntansi', 4, 4),
(23, 'S1AIC', 'S1 Akuntansi (International Class)', 4, 4),
(24, 'S2M', 'S2 Manajemen', 4, 4),
(25, 'S1AB', 'S1 Administrasi Bisnis', 5, 5),
(26, 'S1ABIC', 'S1 Administrasi Bisnis (International Class)', 5, 5),
(27, 'S1IK', 'S1 Ilmu Komunikasi', 5, 5),
(28, 'S1IKIC', 'S1 Ilmu Komunikasi (International Class)', 5, 5),
(29, 'S1DPR', 'S1 Digital Public Relation', 5, 5),
(30, 'S1DKV', 'S1 Desain Komunikasi Visual', 6, 6),
(31, 'S1DKVIC', 'S1 Desain Komunikasi VIsual (International Class)', 6, 6),
(32, 'S1PIM', 'S1 Product Innovation & Management', 6, 6),
(33, 'S1DI', 'S1 Desain Interior', 6, 6),
(34, 'S1K', 'S1 Kriya (Fashion and Textile Design)', 6, 6),
(35, 'S1VA', 'S1 Visual Arts (Seni Rupa)', 6, 6),
(36, 'S2D', 'S2 Design', 6, 6),
(37, 'D3TT', 'D3 Teknologi Telekomunikasi', 7, 7),
(38, 'D3TI', 'D3 Teknik Informatika', 7, 7),
(39, 'D3SI', 'D3 Sistem Informasi', 7, 9),
(40, 'D3SIA', 'D3 Sistem Informasi Akuntansi', 7, 7),
(41, 'D3TK', 'D3 Teknologi Komputer', 7, 7),
(42, 'D3DM', 'D3 Digital Marketing', 7, 7),
(43, 'D3P', 'D3 Perhotelan', 7, 7),
(44, 'S1TTRM', 'S1 Terapan Teknologi Rekayasa Multimedia', 7, 7);

-- --------------------------------------------------------

--
-- Table structure for table `status_mahasiswa`
--

CREATE TABLE `status_mahasiswa` (
  `id` int(11) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_mahasiswa`
--

INSERT INTO `status_mahasiswa` (`id`, `status`) VALUES
(1, 'Mahasiswa'),
(2, 'Alumni');

-- --------------------------------------------------------

--
-- Table structure for table `sub_nilai_mata_kuliah`
--

CREATE TABLE `sub_nilai_mata_kuliah` (
  `id` int(11) NOT NULL,
  `nama_penilaian` varchar(255) NOT NULL,
  `bobot` decimal(5,2) NOT NULL,
  `nilai` decimal(5,2) NOT NULL,
  `id_nilai_mata_kuliah` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_nilai_mata_kuliah`
--

INSERT INTO `sub_nilai_mata_kuliah` (`id`, `nama_penilaian`, `bobot`, `nilai`, `id_nilai_mata_kuliah`) VALUES
(1, 'Assessment 1', '0.15', '71.99', '1'),
(3, 'Praktikum', '0.40', '83.50', '1'),
(17, 'Assessment 2', '0.15', '90.00', '1'),
(18, 'UAS', '0.40', '78.00', '2'),
(19, 'UTS', '0.60', '100.00', '2'),
(20, 'Assessment 1', '0.20', '78.00', '5'),
(21, 'Assessment 2', '0.15', '90.00', '5'),
(22, 'Assessment 3 (Tubes)', '0.40', '80.10', '5'),
(23, 'Praktikum', '0.25', '77.00', '5'),
(34, 'Tugas', '0.30', '81.00', '1'),
(35, 'Assessment 1', '0.15', '62.55', '18'),
(36, 'Assessment 2', '0.15', '86.55', '18'),
(37, 'Praktikum', '0.40', '83.58', '18'),
(38, 'Tugas', '0.30', '72.88', '18'),
(39, 'UAS', '1.00', '100.00', '45'),
(40, 'Assesment I', '0.15', '62.55', '403'),
(41, 'Assesment II', '0.15', '86.55', '403'),
(42, 'Praktikum', '0.40', '83.58', '403'),
(43, 'Tugas', '0.30', '72.88', '403'),
(44, 'Kajian I', '0.25', '60.00', '404'),
(45, 'Kajian II', '0.30', '76.00', '404'),
(46, 'Kajian III', '0.25', '60.00', '404'),
(47, 'Tugas', '0.20', '65.00', '404'),
(48, 'Assesment I', '0.30', '75.00', '405'),
(49, 'Assesment II', '0.25', '90.00', '405'),
(50, 'Assesment III', '0.25', '90.00', '405'),
(51, 'Tugas dan Praktikum', '0.20', '89.58', '405'),
(52, 'Pemrograman Dasar', '1.00', '100.00', '736'),
(53, 'Pemrograman Dasar', '1.00', '100.00', '737');

-- --------------------------------------------------------

--
-- Table structure for table `tahun_ajaran`
--

CREATE TABLE `tahun_ajaran` (
  `id` int(11) NOT NULL,
  `tahun_ajaran` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tahun_ajaran`
--

INSERT INTO `tahun_ajaran` (`id`, `tahun_ajaran`) VALUES
(1, '1999/2000'),
(2, '2000/2001'),
(3, '2001/2002'),
(4, '2002/2003'),
(5, '2003/2004'),
(6, '2004/2005'),
(7, '2005/2006'),
(8, '2006/2007'),
(9, '2007/2008'),
(10, '2008/2009'),
(11, '2009/2010'),
(12, '2010/2011'),
(13, '2011/2012'),
(14, '2012/2013'),
(15, '2013/2014'),
(16, '2014/2015'),
(17, '2015/2016'),
(18, '2016/2017'),
(19, '2017/2018'),
(20, '2018/2019'),
(21, '2019/2020'),
(22, '2020/2021'),
(23, '2021/2022'),
(24, '2022/2023'),
(25, '2023/2024'),
(26, '2024/2025');

-- --------------------------------------------------------

--
-- Table structure for table `tak`
--

CREATE TABLE `tak` (
  `id` int(11) NOT NULL,
  `id_nilai_mahasiswa` int(11) NOT NULL,
  `aktivitas` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `semester` int(11) NOT NULL,
  `tahun_ajaran` varchar(128) NOT NULL,
  `poin` int(11) NOT NULL,
  `date_create` int(11) NOT NULL,
  `date_update` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tak`
--

INSERT INTO `tak` (`id`, `id_nilai_mahasiswa`, `aktivitas`, `deskripsi`, `semester`, `tahun_ajaran`, `poin`, `date_create`, `date_update`) VALUES
(1, 6, 'Lomba MHQ', 'mendapatkan Juara I Lomba MHQ seprovinsi Jawa Barat', 1, '2018/2019', 10, 1610533749, 1610536197),
(2, 6, 'Asprak Alpro', 'Asprak Alpro 1 semester', 2, '2019/2020', 15, 1610534820, 1610536193),
(3, 6, 'Asprak AMP', 'Koordinator Asprak AMP', 3, '2019/2020', 25, 1610535241, 1610536134),
(4, 12, 'Innovilage', 'pengembangan aplikasi', 5, '2019/2020', 10, 1616769346, 1616769346),
(5, 13, 'Paskibraka', 'Pelaksana 17 Agustus', 1, '2018/2019', 10, 1617781954, 1617781954),
(6, 14, 'Innovilage', 'Top 100', 5, '2020/2021', 20, 1625664587, 1625664587),
(7, 14, 'Panitia PKKMB', 'Divisi Dicipline and Motivation Team', 3, '2019/2020', 15, 1625664723, 1625664723),
(8, 28, 'Lomba Starup', 'Data Maining', 3, '2020/2021', 20, 1625667018, 1625667018),
(9, 29, 'Himpunan D3 Sistem Informasi', 'Devisi departemen dalam negeri', 4, '2020/2021', 15, 1626630050, 1626630050);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `gender` varchar(128) NOT NULL,
  `place_of_birth` varchar(128) NOT NULL,
  `birthday` date DEFAULT NULL,
  `phone_number` varchar(128) NOT NULL,
  `address` varchar(255) NOT NULL,
  `religion_id` int(11) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `gender`, `place_of_birth`, `birthday`, `phone_number`, `address`, `religion_id`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(1, 'Muhammad Iskandar', 'iskandar03@gmail.com', 'Laki-laki', 'Madinah', '1999-02-18', '082117503125', 'Jl. Raya Cilamaya, Dusun Kedung Asem, Desa Mekarmaya, Kec. Cilamaya Wetan, Kab. Karawang - Prov. Jawa barat', 1, 'WhatsApp_Image_2021-05-03_at_15_54_15.png', '$2y$10$5HmjAb/tpIjcvuK8Joxubewp.TPceUrMsaYwdG.ekB3VDwj89ghpG', 3, 1, 1609656473),
(2, 'Rendi Kurniawan', 'rendi11@gmail.com', 'Laki-laki', 'Medan', '2000-11-26', '082169006807', 'Jl Jahe 13 No 3 Simalingkar, Kelurahan Mangga, Kecamatan Medan Tuntungan, Kota Medan  Kode Pos 20141', 2, 'WhatsApp_Image_2021-04-30_at_00_14_08.png', '$2y$10$DCdpAINyOx1J.gReZF1AwOvyvGSSClU9MBoRRB/WAwOtYav0bmKRS', 3, 1, 1609656737),
(3, 'Sandhika Galih', 'sandika@gmail.com', 'Laki-laki', 'Bandung', '1990-01-01', '082169006807', 'Bandung', 1, 'WhatsApp_Image_2021-04-30_at_01_20_53.png', '$2y$10$DLCp6ce7jyHem7q/eNcPbOeYeuU8dp3kwtgZ5lz3aVsDaIJsgjPHu', 3, 1, 1609657135),
(6, 'Aldi Kurnia', 'aldi@gmail.com', 'Laki-laki', 'Madinah', '1999-02-18', '082117503125', 'Karawang', 1, 'default.svg', '$2y$10$.ixo7mdt30yfQNM2rpo3pOMyYgYV4MzqdX0m.4LqjXaAEFv.mgqk6', 3, 1, 1609925711),
(8, 'Wahyu Hidayat', 'wahyuhidayat@gmail.com', 'Laki-laki', 'Bandung', '1990-01-01', '082112212390', 'Bandung', 1, 'default.svg', '$2y$10$GynSl8Y92FlCUIayOIZDPe8LBpTyFVQN48mCZjL1E9MSK1Vs4tqhC', 4, 1, 1610019862),
(9, 'Pramuko Aji', 'pramuko@gmail.com', 'Laki-laki', 'Bandung', '1980-01-01', '081318189000', 'Bandung', 1, 'default.svg', '$2y$10$Out/o3bhw0QpWxPt46QmSu8DDBq9cm4zOPw8SlAAmTxjgq7oBn36y', 4, 1, 1610019892),
(10, 'Ely Rosely', 'elyrosely@gmail.com', 'Perempuan', 'Bandung', '1982-01-11', '081220747000', 'Bandung', 1, 'default.svg', '$2y$10$qvL8MR6SNSUCjsTGWBsCH.Xul7pP9m1fex4HR8.9kvb1OKN232hge', 4, 1, 1610019940),
(11, 'Inne Gartina Husein', 'inne@gmail.com', 'Perempuan', 'Bandung', '1990-01-02', '081282802091', 'Bandung', 1, 'default.svg', '$2y$10$Fv/rA660Ewip7f7Dh6jaZeDqHcCdxjCYVhbp35XcCa0Q0a3yt3gfO', 4, 1, 1610019985),
(12, 'Wawa Wikusna', 'wawa@gmail.com', 'Laki-laki', 'Bandung', '1999-01-01', '082123913012', 'Bandung', 1, 'WhatsApp_Image_2021-07-07_at_20_57_33.png', '$2y$10$.LRiiBJEbO6sV0DZ6Jn0vucY7T4Dy9VeZyKGMbw..GqYvLDJkvIh.', 5, 1, 1610020015),
(13, 'Septa Riyaldi', 'septa@gmail.com', 'Laki-laki', 'Padang', '1999-09-02', '085672102013', 'Padang', 1, 'WhatsApp_Image_2021-05-03_at_23_33_20.png', '$2y$10$KvD7H4qak5C6GDVR8LRh/eFgYa50eGV7rqiWFYjPJL5Qc6MZNFyVu', 1, 1, 1610023446),
(14, 'Aldo Gardova', 'gardova@gmail.com', 'Laki-laki', 'Brebes', '2000-06-06', '081728283901', 'Brebes', 1, 'WhatsApp_Image_2021-05-03_at_15_18_17.png', '$2y$10$z5pUzTo0ionCJiFtvHsuy.phxiCrmWOLjHDn956knC52H54XfGEzu', 3, 1, 1610034285),
(15, 'Muhammad Barja Sanjaya', 'muhammadbarja@gmail.com', 'Laki-laki', 'Bandung', '1990-01-01', '082139831203', 'Bandung', 1, 'IMG_20210405_231205.jpg', '$2y$10$n6i52pCIsEqEE2e3chmCBu4ZeIS4cCCv6Kfq/9KFrcZFPJ2Bh0ZEe', 4, 1, 1610280453),
(16, 'Muhammad Ikhsan', 'ikhsan@gmail.com', 'Laki-laki', 'Kediri', '2000-01-17', '082120391023', 'Kediri', 1, 'default.svg', '$2y$10$MiqD99oEXqNIfspNu83nv.iH/Us9b2HIR3xmFM6dxg/s7lotueMja', 3, 1, 1610507816),
(17, 'Suryatiningsih', 'suryatiningsih@gmail.com', 'Perempuan', 'Bandung', '1989-01-01', '0812391283012', 'PBB', 1, 'default.svg', '$2y$10$hv4vvwLyMrP58tSQlYT9PuB6tF8BHD73MxkiApHOdTj7rGu/d1Uka', 4, 1, 1610509684),
(23, 'Fitri Susanti', 'Fitri@gmail.com', 'Perempuan', 'Riau', '1980-06-12', '082119695555', 'Perumahan buah batu', 1, 'default.svg', '$2y$10$B9a2fmJ3dzA5KCRy1O0RT.WfcrLcObBfxymZ5s/5BHYM31F70IEtS', 4, 1, 1616764004),
(24, 'Edy Sujardi', 'edi@gmail.com', 'Laki-laki', 'Surabaya', '2021-03-26', '081374735566', 'Surabaya', 1, 'default.svg', '$2y$10$e01EIoyv8vpwbSYMZ3MihugAFurnxjCM6Jbg2hd3MzKA9T/.sfJUm', 4, 1, 1616765073),
(25, 'Riski Saputra', 'riski@gmail.com', 'Laki-laki', 'Jakarta', '2021-03-27', '081375743312', 'Bandung', 1, 'default.svg', '$2y$10$KCbRDrGvDHnZFj29Kd5O2.h4G3.fNVEchhN6cZwDSmOACyZfAi.hu', 4, 1, 1616765294),
(26, 'Mutia Qana\'a', 'mutia@gmail.com', 'Perempuan', 'Malang', '2021-03-27', '0822195690', 'Bandung', 1, 'default.svg', '$2y$10$sTGV.JMKWxp4/.BuqtZq5uV.SsklRIDm/6H.OIePJIi6aRAIoJjdW', 4, 1, 1616765460),
(27, 'Doni Saputra', 'doni@gmail.com', 'Laki-laki', 'Payakumbuh', '2021-03-27', '082278236610', 'Payakumbuh', 1, 'default.svg', '$2y$10$tjRLoKDMvZw.YdxXFk858u1pfzBVRmMrExDKgf0rU8CVXOxJ4ZCr.', 4, 1, 1616765791),
(28, 'Robbi Hendriyanto', 'robbi@gmail.com', 'Laki-laki', 'Bogor', '2021-03-27', '081277889900', 'Bandung', 1, 'default.svg', '$2y$10$yr3aVn0fqSYkf2otlwEmOuFuHFER2cxt2YNAXqDRB9.25MwsP49Fy', 4, 1, 1616765967),
(29, 'Hanung Nindito Prasetyo', 'hanung@gmail.com', 'Laki-laki', 'Makasar', '2021-03-27', '082119889988', 'Bandung', 1, 'default.svg', '$2y$10$MYlkqdZeQ6Uak5Gz.s2geuMMiF2tE7.AysNNKa66atgsN4c6/vLbG', 4, 1, 1616766193),
(30, 'Elis Hernawati', 'elis@gmail.com', 'Perempuan', 'Bandung', '2021-03-28', '081245678899', 'Bandung', 1, 'default.svg', '$2y$10$MINqNz6hjlipB9O0tdiFuO38Bayl.J2gcvs5hA8K5UtbCw700mU7C', 4, 1, 1616766408),
(31, 'Pikir Wisnu Wijayanto', 'pikir@gmail.com', 'Laki-laki', 'Solo', '2021-03-27', '082119567890', 'Bandung', 1, 'default.svg', '$2y$10$4w6gtxlEjjVaUUFWc5EcgOJHIWy6368AQXDlYUqsks1F64vfqHFoS', 4, 1, 1616766619),
(32, 'Tedi Gunawan', 'tedi@gmail.com', 'Laki-laki', 'Bandung', '2021-03-26', '082199223377', 'Bandung', 1, 'default.svg', '$2y$10$2AQ6UjA/dMOnMM1OuOm2me.euSQqozQOOJy3pRWSGMzWYuQsYtARa', 4, 1, 1616766778),
(33, 'Dery Kurniawan', 'deri@gmail.com', 'Laki-laki', 'Bandung', '2021-03-26', '082199883377', 'Bandung', 1, 'default.svg', '$2y$10$rEyCDkJV/QxgjVAm9hi.NONQfQ91OqGaSTSjjSSQU9D0FvIrZfgy.', 4, 1, 1616766883),
(34, 'Patrick Adolf Telnoni', 'patrick@gmail.com', 'Laki-laki', 'Maluku', '2021-03-18', '081388993377', 'Dago', 2, 'default.svg', '$2y$10$DaUJFBKR.YdCTqnEMfiUmOgp9dmGCe0RWT7sJoRDFRxzdvhiJ/9gS', 4, 1, 1616767110),
(35, 'Netti Herawati', 'netti@gmail.com', 'Laki-laki', 'Payakumbuh', '2021-03-12', '082188774488', 'Bandung', 1, 'default.svg', '$2y$10$3SBhxqS4H5GWwrKBSkzDOuIUnZPVgA5slxITRXHkeZk4NGOStR6dC', 4, 1, 1616767243),
(36, 'Gusmawenti', 'gus@gmail.com', 'Perempuan', 'Payakumbuh', '2021-03-03', '081367890000', 'Bandung', 1, 'default.svg', '$2y$10$/JvHnGpcbyKL2MX4GEIJD.snTZjaWdAmcyGYa6iz6o0vuHwhgCNHq', 4, 1, 1616767342),
(38, 'Firman Aldo Saputra', 'fasaldo1998@gmail.com', 'Laki-laki', 'Payakumbuh', '1999-09-01', '082119695948', 'Kost Obama', 1, 'WhatsApp_Image_2021-05-05_at_22_47_05.png', '$2y$10$eh8cn9x97S2Wbp.CzIUdSuSc7T1c8WhHAIceege4BJBEsdRWwzf/.', 3, 1, 1616769157),
(39, 'Akib Dahlan', 'akibdahlan@gmail.com', 'Laki-laki', 'palembang', '2021-03-12', '081277893488', 'PGA', 1, 'WhatsApp_Image_2021-05-05_at_22_34_50.png', '$2y$10$QLKfkDci4lMLJPsrqrfGYOyqYDJahc2pkggP0SAnwQCa7O.N254W6', 3, 1, 1616770826),
(42, 'Hafis', 'hafa@gmail.com', 'Laki-laki', 'Payakumbuh', '2021-03-11', '87787', 'pyk', 1, 'default.svg', '$2y$10$/b32OghmmClhepBh66/4VuomgAiDHcni4X/HJTKuZut88gTthNfWS', 3, 1, 1616777598),
(46, 'Albert Frans Kevin Sihotang', 'albert@gmail.com', 'Laki-laki', 'Batam', '2021-04-01', '081375746699', 'Bandung', 2, 'WhatsApp_Image_2021-05-05_at_23_13_36.png', '$2y$10$EyBTEeECmtdu5P4N3cb82OrcpOZOrlqOuB0gytmfpitzbTLiHBmIS', 3, 1, 1617677786),
(47, 'Januarizqi Dwi Meliniantoro', 'januar@gmail.com', 'Laki-laki', 'Kediri', '2021-04-03', '081377986654', 'jln. PGA kost Pondok 4', 1, 'WhatsApp_Image_2021-05-05_at_23_23_26.png', '$2y$10$OaF7mKZoy3RSusd4T07dtOyy8R/fXI0QIs5/nXwViR9C0Ipy3fI3u', 3, 1, 1617781493),
(48, 'Nurul Fadila', 'nurul@gmail.com', 'Perempuan', 'Bukittinggi', '2021-04-01', '082119698800', 'Mangga 2', 1, 'WhatsApp_Image_2021-05-06_at_00_01_54.png', '$2y$10$/IVfEiYjnDBgU5.3BfY/m.bdQlv0g0ZlwlFW2QmFiiIhMf3ifUEem', 3, 1, 1618287890),
(49, 'Agnes Oktavio', 'agnes@gmail.com', 'Perempuan', 'Surabaya', '2021-04-01', '081374757688', 'Mangga 2', 1, 'WhatsApp_Image_2021-04-13_at_12_15_18.png', '$2y$10$x7HXjLqD4Zm2FSTdkzibNOKtWdQd7tiAENAoWg6rBWcRnBhMY/tfu', 3, 1, 1618289473),
(50, 'Alma Septiara', 'alma@gmail.com', 'Perempuan', 'Surabaya', '2021-04-03', '081376754490', 'Perumahan Buah Batu', 1, 'WhatsApp_Image_2021-04-13_at_12_26_19.png', '$2y$10$UveE2ORu6qsdChD8bvNWAOiIybwbBPZEmtCNFA.Y5suTn.Wo78pOy', 3, 1, 1618291675),
(51, 'Ghena Patriani Salnia', 'ghena@gmail.com', 'Perempuan', 'Tanggerang', '2021-04-02', '082233876700', 'Mangga 2', 1, 'WhatsApp_Image_2021-04-13_at_12_43_34.png', '$2y$10$i1tEUroXT3qUMO9MxiLTNO4whFBQwyvwZUqtw6kuUy.zlTFQakRq6', 3, 1, 1618292810),
(112, 'Fakultas Ilmu Terapan', 'fit@gmail.com', 'Laki-laki', 'Bandung', '2021-04-09', '085766904522', 'Cibaduyut', 1, '7.png', '$2y$10$ZSmHG4arAP/LtVE31yDSM.Q8s4ltaVA7skJMTKNWSCsUJQFJHR5oq', 1, 1, 1620033400),
(113, 'Hariadi Arfah', 'hadi@gmail.com', 'Laki-laki', 'Makasar', '2021-05-01', '081374756790', 'Kost residenci', 1, 'WhatsApp_Image_2021-05-06_at_23_39_10.png', '$2y$10$7z7W/OyM75vHDYahpSgWjehGL9xwce1L2UsGVvyMC/AFvVVxkS7Yi', 3, 1, 1620319270),
(114, 'Muhammad Haitsam', 'mhaitsam18@gmail.com', 'Laki-laki', 'Karawang', '2021-03-11', '082119698977', 'Kost Umayah', 1, 'WhatsApp_Image_2021-04-24_at_22_02_37.png', '$2y$10$xxiZKe5ho3zrem1yzGWWJuU7bg3uxPcmLwWd9Y23kBa0azso7UQkm', 3, 1, 1620320798),
(115, 'Muhammad Shibghotul A\'dalah', 'igo@gmail.com', 'Laki-laki', 'Tanggerang', '2021-03-10', '085275740056', 'Kost Pondok 4', 1, 'WhatsApp_Image_2021-05-07_at_00_32_44.png', '$2y$10$tI5oAp5FOWFr2BGA/.lyHO359MXJvM70Oth5EZL8ULlGQN5bfClPy', 3, 1, 1620322596),
(116, 'Juda Pratama', 'juda@gmail.com', 'Laki-laki', 'Riau', '2021-03-11', '082213747699', 'Cibaduyut', 1, 'WhatsApp_Image_2021-05-18_at_18_37_12.png', '$2y$10$HClZyo1ecnbPclEpNpCWkuQ40Tx39kKOLDFpWpsx4LVJAgt0It2Pa', 3, 1, 1620346801),
(117, 'Ersa Nur Maulana', 'ersa@gmail.com', 'Perempuan', 'Bogor', '2021-05-01', '082119695934', 'Kost adipura', 1, 'WhatsApp_Image_2021-05-18_at_19_20_14.png', '$2y$10$Kx3IeMnHOiIWVFtjdUOuS.jSC0yxerNaX.jisBJbMGHECP4PrfUK2', 3, 1, 1621340096),
(118, 'isra finoriya', 'nori@gmail.com', 'Perempuan', 'Payakumbuh', '2021-06-02', '081273744062', 'PGA no 40 Kost Obama', 1, 'WhatsApp_Image_2021-07-07_at_21_03_20.png', '$2y$10$SWS3fFZWqCuQnQjCNBdWn.MZiRsqljNgeRL51O3At2muMSjXcKT.i', 3, 1, 1625666829),
(119, 'Olga Paurenta', 'olga11@gmail.com', 'Perempuan', 'Medan', '2021-07-02', '081374736677', 'Mangga II', 2, 'WhatsApp_Image_2021-07-07_at_20_27_15.png', '$2y$10$D/iVFs3bJxeO7ioNgFPy7ON8bF6Nm1fxwZlGQ/K7UhbClP4qh8MOG', 3, 1, 1626629821);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(4, 1, 3),
(5, 1, 4),
(6, 1, 5),
(7, 1, 6),
(8, 3, 6),
(9, 4, 4),
(10, 3, 2),
(11, 4, 2),
(12, 1, 7),
(13, 5, 8),
(14, 5, 2),
(15, 5, 4),
(16, 1, 8),
(17, 4, 5),
(18, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`, `active`) VALUES
(1, 'Admin', 1),
(2, 'User', 1),
(3, 'Menu', 1),
(4, 'Dosen Wali', 1),
(5, 'Dosen Pengampu', 0),
(6, 'Mahasiswa', 1),
(7, 'DataMaster', 1),
(8, 'Kaprodi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'administrator'),
(2, 'member'),
(3, 'mahasiswa'),
(4, 'dosen'),
(5, 'kaprodi');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin/', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'My Profile', 'user/', 'fas fa-fw fa-user', 1),
(3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1),
(4, 3, 'Menu Management', 'menu/', 'fas fa-fw fa-folder', 1),
(5, 3, 'Submenu Management', 'menu/subMenu', 'fas fa-fw fa-folder-open', 1),
(6, 1, 'Role Management', 'admin/role', 'fas fa-fw fa-user-tie', 1),
(7, 2, 'Change Password', 'user/changePassword', 'fas fa-fw fa-key', 1),
(8, 1, 'Data User', 'admin/dataUser/', 'fas fa-fw fa-user-tie', 1),
(9, 4, 'Dashboard Dosen Wali', 'dosen/', 'fas fa-fw fa-tachometer-alt', 1),
(10, 7, 'Data Master', 'DataMaster/', 'fas fa-fw fa-database', 1),
(11, 7, 'Data Fakultas', 'DataMaster/fakultas/', 'fas fa-fw fa-building', 1),
(12, 7, 'Data Prodi', 'DataMaster/prodi/', 'fas fa-fw fa-laptop-house', 1),
(13, 7, 'Data Kelas', 'DataMaster/kelas/', 'fas fa-fw fa-glasses', 1),
(14, 7, 'Data Mata Kuliah', 'DataMaster/mataKuliah/', 'fas fa-fw fa-book-open', 1),
(15, 8, 'Dashboard Kaprodi', 'kaprodi/', 'fas fa-fw fa-tachometer-alt', 1),
(16, 4, 'Performa Mahasiswa', 'Dosen/performa', 'fas fa-fw fa-graduation-cap', 1),
(17, 4, 'Data Nilai Mahasiswa', 'Dosen/nilaiMahasiswa', 'fas fa-fw fa-pen', 1),
(18, 6, 'Performaku', 'mahasiswa/', 'fas fa-fw fa-user-graduate', 1),
(19, 5, 'Pengampu Mata Kuliah', 'dosen/pengampu', 'fas fa-fw fa-university', 0),
(20, 5, 'Data Sub Nilai Mata Kuliah', 'dosen/subNilaiMataKuliah', 'fas fa-fw fa-pencil-ruler', 0),
(21, 6, 'Data TAK', 'mahasiswa/tak', 'fas fa-fw fa-pen-alt', 1),
(22, 7, 'Data Agama', 'DataMaster/agama/', 'fas fa-fw fa-pray', 1),
(23, 2, 'Profil Perkuliahan', 'user/profilPerkuliahan', 'fas fa-fw fa-user-secret', 0),
(24, 7, 'Data Dashboard', 'DataMaster/dashboard/', 'fas fa-fw fa-edit', 1),
(25, 4, 'Data Nilai Mata Kuliah', 'dosen/nilaiMataKuliah', 'fas fa-fw fa-pencil-alt', 1),
(26, 7, 'Data Pendidikan', 'DataMaster/pendidikan/', 'fas fa-fw fa-graduation-cap', 1),
(27, 7, 'Data Status Mahasiswa', 'DataMaster/statusMahasiswa', 'fas fa-fw fa-user-graduate', 1),
(28, 8, 'Data Pengampu Mata Kuliah', 'kaprodi/pengampu', 'fas fa-fw fa-briefcase', 1),
(29, 7, 'Data Tahun Ajaran', 'DataMaster/tahunAjaran/', 'fas fa-fw fa-chalkboard', 1),
(30, 7, 'Data Konten', 'DataMaster/konten', 'far fa-fw fa-newspaper', 1),
(31, 8, 'Data Performa Kelas', 'kaprodi/performaKelas', 'fas fa-fw fa-chalkboard', 1),
(32, 2, 'Keamanan', 'User/keamanan', 'fas fa-fw fa-shield-alt', 1),
(33, 7, 'Data Pertanyaan', 'DataMaster/pertanyaan', 'fas fa-fw fa-question', 1),
(34, 8, 'Top Gainer & Top Looser', 'Kaprodi/top', 'fas fa-fw fa-star', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(4, 'haitsam03@gmail.com', 'iscmRCWne+lTCfqz/25n5R8VUX5MUkaN02Bhum3gVsU=', 1609930420),
(5, 'haitsam03@gmail.com', 'n5QKD1D9vUL9QiROw9MO4pgD/fbbdFGYrGd8znIJWe4=', 1609932048),
(6, 'haitsam03@gmail.com', 'wPG+3htmGqTKAArzVlpS/b0eoqor9TKqG16H5cDvMqA=', 1609932054),
(8, 'wahyuhidayat@gmail.com', 'h5OYZb29deEXYS/1Bc69GOaWseVwGEhhSXVKert9Oog=', 1610019862),
(9, 'pramuko@gmail.com', 'ijlFNaUwBrUcqEbANwlEml1FluVkgWAOvEPf3VtE9H4=', 1610019892),
(10, 'elyrosely@gmail.com', 'zLt8OC5aT9LrQaCipRl09/n95aUTUUjwCiVtKM150uA=', 1610019940),
(11, 'inne@gmail.com', '6kl2FFh6027PAQ51K03uIlFz8f3+e59snpxLo3jAOBE=', 1610019985),
(12, 'wawa@gmail.com', '/g7m4I60ysY6Ljs6xsHhye5zWPyA0eR/4qwv7r7czlo=', 1610020015),
(13, 'fasaldo1999@gmail.com', 'fOSWX9UdFnoi7ejSOIkhye7te1tVdT+cXmd1hh0YZCQ=', 1610023446),
(15, 'muhammadbarja@gmail.com', 'VpatS/tgTK/bfTZLlDDoVX9aaD6Kb3YoeS2/ozJOhXI=', 1610280453),
(16, 'januarizqi5@gmail.com', '8QKHOpK1ROQrW679QbREt1fb2wdgcsffl5PLahNGPws=', 1610507816),
(17, 'suryatiningsih@gmail.com', 'IvVR3KjJpnh+lnQgeWOmpht3w235j9Vax2GkkDCzUBE=', 1610509684),
(18, 'ersanum@gmail.com', 'Tst2ygGt8n2wUa+RsqvtHguZMn1KPTaiNE63D4wwehQ=', 1610529882),
(19, 'haitsamhaitsam18@yahoo.com', '06vONmPAIi0hj/xgLH72Ck6FSDDyqs96P9pxA5bOU54=', 1610556667),
(20, 'shibghotul7@gmail.com', 'zLT3U4RCMM6pc1pVBCI3SodKzlAVJmG13PbfY8ijFnU=', 1610556792),
(21, 'haitsam03@gmail.com', 'oVyGSYjGv4lTvFvUKawPJ96cj42FYlkQW8QcyPDghSQ=', 1611588824),
(22, 'akibdahlan20@gmail.com', 'Q5sF4roomYzNnHkIS0zKCHKteza6KwrK5GYaHqlJr8w=', 1614472096),
(23, 'akibdahlan21@gmail.com', 'M23yBdkPPwctLera1YG1Eccpx5PFhn1vNyKEeEqVpT0=', 1614472317),
(24, 'haitsam03@gmail.com', '5qEQkfSN18gV6URb/vT4fGhn2LBf45NCnhP0AvFlF+I=', 1614914638),
(25, 'Fitri@gmail.com', 'L9WJhNSE4NiVfZj/gkV2vW7Jap7uLOO/gRR6INrI6ZI=', 1616764004),
(26, 'edi@gmail.com', 'vc6DZe8QKBwYYDJOH68UnKvYCa4MCQP9wcaTC3vzsrc=', 1616765073),
(27, 'riski@gmail.com', 'g6mCbB5oFMpCn/P4P18aHNmyEalYRhTTvlahozeLs9k=', 1616765294),
(28, 'mutia@gmail.com', 'R0jLQemf0a7TKvro7hyUBDYrFFXuZ72n9dSkV7agshI=', 1616765460),
(29, 'doni@gmail.com', 'OLTPcPnvtFXVtp9W1WlaKRqRNpwh9P5r+Xo6xRmW+9A=', 1616765791),
(30, 'robbi@gmail.com', 'IeMUxYQaLA9VFJQP4XzBUYmYdxchppEFXdwFfWCnp3g=', 1616765967),
(31, 'hanung@gmail.com', 'mktXkBadN5GJXoy8yinUUU9vh7o3ThRYxZvfJfe0HQ0=', 1616766193),
(32, 'elis@gmail.com', 'Lw8lk3ysgPaVzIYUbJf4c58d/wMPjmOkEeB/lBWnZlA=', 1616766408),
(33, 'pikir@gmail.com', 'rG/Zy+9mhxQpMGmHfeyhEkf+ju2RFznZIVMM1nh1gKg=', 1616766619),
(34, 'tedi@gmail.com', 'pZKtVmR8mCyZS3bMGOvP1GXFzuX0Kr1/RI/sDpF6D3s=', 1616766778),
(35, 'deri@gmail.com', '/kwGeaqcahBK0MXKF/dG56HZ0tTFJZsPUr9xRCW+7Qs=', 1616766883),
(36, 'patrick@gmail.com', '+239KhUWq7b4OjSTpkme3wnmVbnmf3x2TUIBGzLYqX4=', 1616767110),
(37, 'netti@gmail.com', 'koTkhcoEU4r7sI6B+BUF3wTSUSgIesA/IXnzimUkspk=', 1616767243),
(38, 'gus@gmail.com', 'aK311SJDHUei+iqA0DUVDCaSn9mA5GgeM3lVeREo6b0=', 1616767342),
(39, 'barja@gmail.com', '2bHQV7Y4TLoiKOfMzhLa9lFOfURyGLpN/C/tqTq19pg=', 1616767973),
(40, 'fasaldo1998@gmail.com', 'D89wGCjNMzaxHMZzzwCj0YH6swQcvWIEjOY1UTpRNSs=', 1616769157),
(41, 'akibdahlan@gmail.com', 'K2BWoRzV+F21vt2EEjfjWFSHJRCikeJUOBz5Ogu6M64=', 1616770826),
(42, 'putri@gmail.com', 'L9/7G7TezV30HC6Mj0r6k69VOxiW+USgVscTiGViszk=', 1616775031),
(43, 'hafa@gmail.com', 'dvXWGygQx3vthT8dJyMl5elryIn7pjmWPLD0ZRzjrv8=', 1616777429),
(44, 'hafa@gmail.com', '8KfjfAGXO0q/bJH7gNwoXIbg6ndSxiqwkGyCWMrrxS0=', 1616777598),
(47, 'albert@gmail.com', 'z2kSbLPUVObn7Fp8Bz21XO+JJAgyXbB3fiqrd3rKmn8=', 1617644881),
(48, 'albert@gmail.com', 'E9F0nuFms9MbmVDSjQE+9fyXN+VcrqTK57rwGogGH0Q=', 1617677786),
(49, 'januar@gmail.com', '9dZnzrGEyCSfMw2a9EJ3E8GhBRYKKzg9RlJd922kMso=', 1617781493),
(50, 'nurul@gmail.com', 'SxiaR1twIGmsLq9DxyaDE8IeGGLIRsmC21FjGhop3H0=', 1618287890),
(51, 'agnes@gmail.com', 'RMoriV3I6uDEeBdTdmIPiJQrAd1hXpqMuBt6jdCrKaI=', 1618289473),
(52, 'alma@gmail.com', 'dg7l9SX8P451zySDqZDznJ2o6V8rPDYpWqxY+7EyOds=', 1618291675),
(53, 'ghena@gmail.com', 'ZUYCgrPNqv5XbYHhHQkKmfb/u3JIABFQopc9+cAAF6k=', 1618292810),
(54, 'fit@gmail.com', 'dtHNibSZrgat3MY2RpOmSA2IrkpT5+F/crTfEKOdWbM=', 1620033400),
(55, 'hadi@gmail.com', 'yZYmXfnJGdquQK5aAr9NQUuAJfaBQu+ExQ8w7WUCh8g=', 1620319270),
(56, 'mhaitsam18@gmail.com', 'hXlHnnyEWEH233QPSLwbYBSyFuJO/Avqr7u2rths09o=', 1620320798),
(57, 'fasaldo1998@gmail.com', 'ibU8KRfw+C7mBhviXKjcXJN55z+yqdwwuRovxegfMN8=', 1620322446),
(58, 'igo@gmail.com', 'HVPGc9ROwNGz56DaIv6MoKuFHvMqNaCxpuN6vjUgubU=', 1620322596),
(59, 'fasaldo1998@gmail.com', 'yNWEcPJloRE03JZCa17NSToPoif8N4VPC/tffmzUrZw=', 1620323444),
(60, 'fasaldo1998@gmail.com', 'THNi4TnUDLTTDqakMC/Q3b5f1r9iz9oTGoh4MnFfwx4=', 1620323758),
(61, 'fasaldo1998@gmail.com', 'l+KsdLS/VpP5wI7pcgmofqu7+cI9z0Uo0c2gAJeMqoQ=', 1620323775),
(62, 'fasaldo1998@gmail.com', '5YERp/UUfbrNaiC93OpAoUgCu/DULVLSyKjnlBSjFv0=', 1620323782),
(63, 'fasaldo1998@gmail.com', 'TUy1b955Xz9eoVvPWR2dl1FOROhTERhOJvBNmLNhF54=', 1620323808),
(64, 'fasaldo1998@gmail.com', 'dmBp/HNCn7YtJrFVgiJ0fhBV30gE9IDzxvoUIRR16go=', 1620323847),
(65, 'fasaldo1998@gmail.com', 'QENpBvn6Uu54X1XYOV2hpmD4wfv4A3EXG47KmZG7N5U=', 1620324354),
(66, 'fasaldo1998@gmail.com', 'D32PxP1Q60o6d/3ZJKpvMZFmoAgrufnnwYJXiBLWK2A=', 1620324378),
(67, 'fasaldo1998@gmail.com', 'crISArMjyGzK040LP5llJheuenWcv7XlllFJG2HmbpY=', 1620324416),
(68, 'fasaldo1998@gmail.com', 'xEeWMf7Si6LPHHCoNti2dwm4PH5FFnQZAcPy1TMD9Ro=', 1620324499),
(69, 'fasaldo1998@gmail.com', 'xY8Cp2JgPKT0cT3oG8dqDU9TWeEe1ogmuSncnNUOUlU=', 1620324523),
(70, 'fasaldo1998@gmail.com', 'yKMlDY+2hbxrGbqvqZq7ifEeAfsQoMhABJ/mr0Gx6jo=', 1620324533),
(71, 'fasaldo1998@gmail.com', 'FxccI7cLmAuD2TWSa96rUbj0DPnXGRP4sqGQ6hWRCmU=', 1620324596),
(72, 'fasaldo1998@gmail.com', 'NrfQ2h/xHL+bx5XrAtzTL5Ml1FXM7l9iVVJKrpT0eNg=', 1620324639),
(73, 'rendi11@gmail.com', 'y0nQP6EudaBmMcRB78ScmjrdC4PMFUCafETzVhIXmY8=', 1620346524),
(74, 'juda@gmail.com', 'ZcJk6G13Zm57W4kR9R4Ubco1qz3z2CDs2IcXQmXVNw4=', 1620346801),
(75, 'ersa@gmail.com', '+Gb2cmEIGVyZiBp/IY8o36xoesvoVEpeTpJb/dnNKdo=', 1621340096),
(76, 'nori@gmail.com', 'XyD3w6M1n3RWSkXSx+3QyGT/psWiBdkopP1Fs2IWVqs=', 1625666829),
(77, 'olga11@gmail.com', 'xauG3AzPbXP/3hatO9L4macam5sNt+BXilcniLR7ixQ=', 1626629821);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agama`
--
ALTER TABLE `agama`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beasiswa`
--
ALTER TABLE `beasiswa`
  ADD PRIMARY KEY (`id_beasiswa`);

--
-- Indexes for table `catatan`
--
ALTER TABLE `catatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daerah`
--
ALTER TABLE `daerah`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `dashboard`
--
ALTER TABLE `dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ip_semester`
--
ALTER TABLE `ip_semester`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelompok_pekerjaan`
--
ALTER TABLE `kelompok_pekerjaan`
  ADD PRIMARY KEY (`id_kerja`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai_mahasiswa`
--
ALTER TABLE `nilai_mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai_mata_kuliah`
--
ALTER TABLE `nilai_mata_kuliah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengampu`
--
ALTER TABLE `pengampu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pertanyaan_1`
--
ALTER TABLE `pertanyaan_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pertanyaan_2`
--
ALTER TABLE `pertanyaan_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pertanyaan_keamanan`
--
ALTER TABLE `pertanyaan_keamanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prestasi`
--
ALTER TABLE `prestasi`
  ADD PRIMARY KEY (`id_prestasi`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_mahasiswa`
--
ALTER TABLE `status_mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_nilai_mata_kuliah`
--
ALTER TABLE `sub_nilai_mata_kuliah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tak`
--
ALTER TABLE `tak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agama`
--
ALTER TABLE `agama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `beasiswa`
--
ALTER TABLE `beasiswa`
  MODIFY `id_beasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `catatan`
--
ALTER TABLE `catatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dashboard`
--
ALTER TABLE `dashboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `fakultas`
--
ALTER TABLE `fakultas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ip_semester`
--
ALTER TABLE `ip_semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `kelompok_pekerjaan`
--
ALTER TABLE `kelompok_pekerjaan`
  MODIFY `id_kerja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `nilai_mahasiswa`
--
ALTER TABLE `nilai_mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `nilai_mata_kuliah`
--
ALTER TABLE `nilai_mata_kuliah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=739;

--
-- AUTO_INCREMENT for table `pendidikan`
--
ALTER TABLE `pendidikan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pengampu`
--
ALTER TABLE `pengampu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `pertanyaan_1`
--
ALTER TABLE `pertanyaan_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pertanyaan_2`
--
ALTER TABLE `pertanyaan_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pertanyaan_keamanan`
--
ALTER TABLE `pertanyaan_keamanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `prestasi`
--
ALTER TABLE `prestasi`
  MODIFY `id_prestasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `status_mahasiswa`
--
ALTER TABLE `status_mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sub_nilai_mata_kuliah`
--
ALTER TABLE `sub_nilai_mata_kuliah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tak`
--
ALTER TABLE `tak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

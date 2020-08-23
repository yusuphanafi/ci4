-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Agu 2020 pada 16.39
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'Naruto', 'naruto', 'Masashi ajinomoto', 'Shonen Jump', 'naruto.jpg', NULL, '2020-07-18 05:33:51'),
(2, 'One Piece', 'one_piece', 'Eichiro Oda', 'Gramedia', 'onepiece.jpg', NULL, NULL),
(3, 'JoJo: Diamond is Unbreakable', 'jojo-diamond-is-unbreakable', 'sad', 'sad', 'josuke.png', '2020-07-18 08:28:34', '2020-07-22 08:32:27'),
(6, 'JoJo Bizarre Adventure', 'jojo-bizarre-adventure', 'asd', 'asd', '1595079262_dffa53c21c0f4811a434.png', '2020-07-18 08:34:22', '2020-07-22 08:32:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` text NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2020-07-19-133000', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1595166206, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Harsanto Wasita S.E.', 'Jr. Ronggowarsito No. 311, Banjarbaru 76743, NTB', '1982-05-01 22:29:15', '2020-07-19 09:36:49'),
(2, 'Titin Rahayu', 'Ki. Bakaru No. 67, Blitar 94763, SumBar', '2014-10-20 22:39:06', '2020-07-19 09:36:49'),
(3, 'Jaiman Nainggolan', 'Kpg. Suryo No. 859, Bontang 49416, MalUt', '2017-12-23 21:22:45', '2020-07-19 09:36:49'),
(4, 'Kuncara Jailani S.E.', 'Dk. Abdul Muis No. 351, Probolinggo 34476, KepR', '2011-08-05 07:38:49', '2020-07-19 09:36:49'),
(5, 'Rini Pratiwi', 'Jln. Bakau Griya Utama No. 485, Sibolga 77440, PapBar', '2019-05-29 04:27:49', '2020-07-19 09:36:49'),
(6, 'Vera Mayasari', 'Ki. Aceh No. 653, Bengkulu 93717, Jambi', '2002-02-09 10:04:29', '2020-07-19 09:36:49'),
(7, 'Luluh Jailani', 'Psr. Baha No. 30, Cirebon 24204, SumUt', '2019-02-07 03:46:02', '2020-07-19 09:36:49'),
(8, 'Kamaria Padma Nurdiyanti', 'Jln. Flores No. 839, Jayapura 67986, Bali', '1979-05-22 17:32:10', '2020-07-19 09:36:49'),
(9, 'Samiah Puspasari', 'Jln. Ikan No. 481, Pekalongan 73542, DIY', '2002-08-23 09:10:46', '2020-07-19 09:36:49'),
(10, 'Nova Pertiwi', 'Psr. Dr. Junjunan No. 265, Langsa 91881, DIY', '2007-05-01 20:52:13', '2020-07-19 09:36:49'),
(11, 'Dacin Balangga Utama M.Pd', 'Jr. Antapani Lama No. 687, Bandung 19175, Papua', '2018-03-20 21:07:57', '2020-07-19 09:36:49'),
(12, 'Gawati Hastuti S.Psi', 'Ki. Baan No. 373, Magelang 43672, SumUt', '2012-05-24 16:54:31', '2020-07-19 09:36:49'),
(13, 'Diana Kamila Farida', 'Psr. Bambon No. 714, Pagar Alam 42712, KalTim', '2002-10-03 00:14:11', '2020-07-19 09:36:49'),
(14, 'Bahuraksa Prabowo M.Ak', 'Gg. Warga No. 712, Pagar Alam 38515, KalUt', '2019-06-07 17:00:16', '2020-07-19 09:36:49'),
(15, 'Nasim Damanik', 'Gg. Uluwatu No. 625, Singkawang 15863, NTB', '1988-10-15 00:05:32', '2020-07-19 09:36:49'),
(16, 'Kamaria Hana Padmasari S.Pt', 'Ds. Bacang No. 16, Administrasi Jakarta Barat 95764, SumSel', '1993-03-11 09:55:46', '2020-07-19 09:36:49'),
(17, 'Fitriani Hassanah', 'Ki. Imam No. 215, Bima 97529, Bengkulu', '2017-06-20 13:26:34', '2020-07-19 09:36:49'),
(18, 'Mutia Purwanti S.Psi', 'Psr. Ekonomi No. 635, Bengkulu 17547, Banten', '2003-04-24 08:29:59', '2020-07-19 09:36:49'),
(19, 'Prasetya Hasim Prakasa S.I.Kom', 'Kpg. Sutarto No. 584, Gorontalo 59926, KepR', '1978-04-30 16:13:03', '2020-07-19 09:36:50'),
(20, 'Nadine Purnawati S.Kom', 'Dk. B.Agam Dlm No. 721, Kendari 34610, SumUt', '1973-09-16 01:38:35', '2020-07-19 09:36:50'),
(21, 'Devi Febi Usamah S.H.', 'Dk. Monginsidi No. 468, Medan 85646, KalSel', '1995-08-26 18:26:42', '2020-07-19 09:36:50'),
(22, 'Uchita Padmasari', 'Jln. Qrisdoren No. 341, Cilegon 99133, SulTra', '1970-05-26 13:37:42', '2020-07-19 09:36:50'),
(23, 'Gawati Nilam Hasanah', 'Jln. Pattimura No. 448, Malang 20841, JaTim', '1986-01-12 07:01:12', '2020-07-19 09:36:50'),
(24, 'Galiono Marpaung', 'Ki. Kalimalang No. 190, Pangkal Pinang 33818, DKI', '2016-02-15 03:38:33', '2020-07-19 09:36:50'),
(25, 'Ulya Riyanti', 'Jr. Katamso No. 182, Sabang 50789, KalTeng', '1985-12-26 03:38:11', '2020-07-19 09:36:50'),
(26, 'Wirda Aryani', 'Gg. Banal No. 83, Depok 27935, BaBel', '2015-08-31 06:23:59', '2020-07-19 09:36:50'),
(27, 'Harsana Dabukke', 'Ds. Tentara Pelajar No. 59, Palembang 81290, SulSel', '1994-12-12 21:59:20', '2020-07-19 09:36:50'),
(28, 'Tari Farida', 'Ds. Baranang No. 857, Mojokerto 14291, Bali', '2017-02-18 00:53:57', '2020-07-19 09:36:50'),
(29, 'Jail Maheswara M.Farm', 'Jr. Sutan Syahrir No. 373, Tebing Tinggi 84239, MalUt', '1989-07-28 20:34:58', '2020-07-19 09:36:50'),
(30, 'Wani Sudiati S.E.', 'Ds. Nanas No. 28, Prabumulih 16928, BaBel', '1985-11-12 16:11:26', '2020-07-19 09:36:50'),
(31, 'Vinsen Wasita', 'Kpg. Bah Jaya No. 243, Pematangsiantar 37800, Riau', '2016-02-19 21:49:06', '2020-07-19 09:36:50'),
(32, 'Pangeran Baktiadi Pratama S.Pd', 'Gg. Salak No. 427, Surakarta 85878, Papua', '2002-01-28 03:36:45', '2020-07-19 09:36:50'),
(33, 'Mulya Labuh Marbun', 'Gg. Sugiyopranoto No. 725, Pontianak 63859, Bali', '2016-11-03 01:07:49', '2020-07-19 09:36:50'),
(34, 'Hasim Napitupulu', 'Gg. Tambak No. 602, Bau-Bau 59277, SumUt', '1998-03-11 22:56:15', '2020-07-19 09:36:50'),
(35, 'Yani Andriani', 'Ds. M.T. Haryono No. 550, Tidore Kepulauan 80122, MalUt', '1980-07-11 08:17:48', '2020-07-19 09:36:50'),
(36, 'Eka Hidayanto', 'Jln. Laswi No. 231, Palopo 36254, SumSel', '1971-06-26 12:57:08', '2020-07-19 09:36:50'),
(37, 'Prayoga Simbolon', 'Jr. Sugiono No. 608, Kendari 24612, JaTeng', '1985-05-06 12:18:57', '2020-07-19 09:36:50'),
(38, 'Lukman Siregar', 'Jr. Bara Tambar No. 676, Tual 21770, SumSel', '1972-02-24 13:42:20', '2020-07-19 09:36:50'),
(39, 'Chelsea Jelita Padmasari S.I.Kom', 'Jln. Sukabumi No. 363, Prabumulih 79282, NTB', '2013-11-18 10:58:46', '2020-07-19 09:36:50'),
(40, 'Sabrina Astuti', 'Psr. Kiaracondong No. 329, Prabumulih 69394, Bengkulu', '1995-02-09 16:58:16', '2020-07-19 09:36:50'),
(41, 'Ina Sabrina Namaga M.M.', 'Ds. Badak No. 580, Malang 68558, Bengkulu', '1994-03-04 20:26:02', '2020-07-19 09:36:50'),
(42, 'Jati Saputra', 'Dk. Basudewo No. 699, Mojokerto 12310, Maluku', '1988-04-17 15:50:48', '2020-07-19 09:36:50'),
(43, 'Padmi Hariyah', 'Kpg. Supono No. 81, Sungai Penuh 65674, DIY', '1977-09-15 17:27:21', '2020-07-19 09:36:50'),
(44, 'Lalita Sadina Novitasari M.M.', 'Jr. Villa No. 389, Bandung 46714, NTT', '2003-05-17 06:09:09', '2020-07-19 09:36:50'),
(45, 'Estiono Prasetyo S.Gz', 'Jr. Mulyadi No. 491, Sibolga 55693, SulTra', '1995-03-22 19:16:39', '2020-07-19 09:36:50'),
(46, 'Ella Kuswandari', 'Jr. Rumah Sakit No. 300, Malang 63994, SulSel', '2020-02-16 14:04:49', '2020-07-19 09:36:50'),
(47, 'Titin Hartati', 'Gg. Supono No. 212, Tangerang 63522, PapBar', '1980-07-08 22:00:20', '2020-07-19 09:36:50'),
(48, 'Nyana Nainggolan', 'Jr. Panjaitan No. 848, Tarakan 63018, KalUt', '1997-03-24 18:11:54', '2020-07-19 09:36:50'),
(49, 'Atmaja Prabowo S.H.', 'Dk. Kalimantan No. 547, Gunungsitoli 93202, JaTim', '1987-04-14 18:41:32', '2020-07-19 09:36:50'),
(50, 'Saka Lukita Uwais', 'Gg. Gambang No. 540, Sukabumi 65740, SulTeng', '1996-01-20 01:36:47', '2020-07-19 09:36:50'),
(51, 'Maria Zalindra Wahyuni', 'Jr. Basudewo No. 796, Banda Aceh 27067, JaTeng', '1974-04-18 16:28:32', '2020-07-19 09:36:50'),
(52, 'Latif Hutapea', 'Jr. Radio No. 559, Balikpapan 19817, Papua', '1974-12-04 18:40:45', '2020-07-19 09:36:50'),
(53, 'Soleh Santoso', 'Psr. Kalimalang No. 327, Pariaman 45426, KalUt', '1981-08-27 20:58:36', '2020-07-19 09:36:50'),
(54, 'Mujur Firmansyah S.Psi', 'Jln. Suprapto No. 922, Surakarta 61826, NTB', '1989-09-08 02:09:51', '2020-07-19 09:36:50'),
(55, 'Daruna Latupono S.Psi', 'Ds. Jend. A. Yani No. 459, Padangpanjang 22900, KepR', '2002-12-17 21:35:50', '2020-07-19 09:36:50'),
(56, 'Oni Lestari S.Psi', 'Ki. Dr. Junjunan No. 792, Kendari 71099, Lampung', '2010-07-08 12:38:52', '2020-07-19 09:36:50'),
(57, 'Teddy Situmorang M.Pd', 'Jln. Babadan No. 571, Lhokseumawe 38118, DKI', '1972-04-22 11:40:12', '2020-07-19 09:36:50'),
(58, 'Elma Farida S.Ked', 'Jr. Sukajadi No. 231, Kotamobagu 28858, SulUt', '1975-01-12 12:59:36', '2020-07-19 09:36:50'),
(59, 'Karma Marwata Prakasa', 'Ds. Bakit  No. 999, Dumai 61300, Maluku', '1992-01-14 16:58:48', '2020-07-19 09:36:50'),
(60, 'Genta Wahyuni', 'Ki. Jagakarsa No. 613, Gunungsitoli 94487, BaBel', '1991-05-07 18:49:06', '2020-07-19 09:36:51'),
(61, 'Salimah Padma Hartati S.Pd', 'Ds. Jayawijaya No. 671, Sukabumi 10167, KalBar', '1987-08-31 19:49:44', '2020-07-19 09:36:51'),
(62, 'Ajeng Puspita', 'Gg. Orang No. 776, Pekalongan 42087, NTT', '2008-06-28 02:54:39', '2020-07-19 09:36:51'),
(63, 'Intan Kuswandari', 'Jln. Ters. Pasir Koja No. 708, Padangsidempuan 67727, SumBar', '2010-04-25 08:52:36', '2020-07-19 09:36:51'),
(64, 'Lukman Adinata Putra S.Farm', 'Ki. Asia Afrika No. 514, Pontianak 65329, SulSel', '1981-08-12 00:55:36', '2020-07-19 09:36:51'),
(65, 'Patricia Latika Laksmiwati M.M.', 'Ki. Bacang No. 920, Balikpapan 97464, PapBar', '2019-07-03 16:49:30', '2020-07-19 09:36:51'),
(66, 'Sabri Mansur', 'Jr. Baan No. 960, Tebing Tinggi 25300, BaBel', '1987-06-04 11:30:33', '2020-07-19 09:36:51'),
(67, 'Lulut Gunawan', 'Kpg. Ahmad Dahlan No. 187, Bitung 15942, KalUt', '1981-01-20 00:54:21', '2020-07-19 09:36:51'),
(68, 'Rahmi Almira Susanti S.Ked', 'Gg. Wahid Hasyim No. 593, Administrasi Jakarta Selatan 91601, Papua', '1971-06-29 19:20:02', '2020-07-19 09:36:51'),
(69, 'Rika Lintang Winarsih', 'Kpg. Abang No. 319, Cimahi 26741, Bali', '1978-08-17 08:54:02', '2020-07-19 09:36:51'),
(70, 'Makuta Teddy Tampubolon', 'Ds. Bakhita No. 187, Palangka Raya 55610, SulTeng', '1973-01-21 10:26:02', '2020-07-19 09:36:51'),
(71, 'Laswi Wibowo', 'Jln. Kyai Mojo No. 752, Banda Aceh 88133, SulSel', '1986-05-13 01:11:12', '2020-07-19 09:36:51'),
(72, 'Paramita Oktaviani', 'Kpg. Otista No. 67, Padangsidempuan 97142, BaBel', '1994-08-19 07:33:19', '2020-07-19 09:36:51'),
(73, 'Arsipatra Waluyo S.Pt', 'Jln. Yos No. 266, Banjarbaru 38380, SulBar', '2006-12-20 05:43:22', '2020-07-19 09:36:51'),
(74, 'Cinta Safitri S.Sos', 'Dk. Rajiman No. 908, Mataram 65652, KepR', '2001-11-14 02:15:36', '2020-07-19 09:36:51'),
(75, 'Ilsa Wirda Lestari M.TI.', 'Jln. Bawal No. 562, Cirebon 11563, SulBar', '1995-05-19 05:40:15', '2020-07-19 09:36:51'),
(76, 'Ghani Hutasoit', 'Ds. Supomo No. 763, Banjar 36046, Jambi', '1983-12-30 19:10:02', '2020-07-19 09:36:51'),
(77, 'Rini Melani', 'Jr. Kyai Mojo No. 218, Pasuruan 15301, Aceh', '1994-07-22 00:27:30', '2020-07-19 09:36:51'),
(78, 'Zelda Wahyuni', 'Gg. Bagis Utama No. 575, Tangerang Selatan 92329, SumBar', '1973-01-16 19:10:13', '2020-07-19 09:36:51'),
(79, 'Caket Sihotang S.IP', 'Ds. Setia Budi No. 537, Lhokseumawe 52506, NTT', '2004-02-01 18:20:56', '2020-07-19 09:36:51'),
(80, 'Ivan Sihombing', 'Gg. Samanhudi No. 313, Tegal 29228, SulSel', '2000-03-12 04:22:07', '2020-07-19 09:36:52'),
(81, 'Eka Gandi Dongoran S.E.', 'Ki. Mulyadi No. 576, Denpasar 47576, SulBar', '1993-04-13 19:35:54', '2020-07-19 09:36:52'),
(82, 'Wadi Nyana Hidayat', 'Kpg. Bhayangkara No. 391, Salatiga 87971, NTB', '1993-09-11 21:55:22', '2020-07-19 09:36:52'),
(83, 'Wage Jailani', 'Dk. Reksoninten No. 446, Gunungsitoli 65042, KepR', '1993-01-21 22:18:33', '2020-07-19 09:36:52'),
(84, 'Limar Sihombing', 'Ds. Muwardi No. 504, Semarang 59229, SulUt', '1995-02-16 10:21:41', '2020-07-19 09:36:52'),
(85, 'Nalar Pradana S.Pd', 'Ki. Cikutra Timur No. 652, Prabumulih 64476, JaTeng', '2009-11-20 20:54:10', '2020-07-19 09:36:52'),
(86, 'Sabrina Suci Laksmiwati M.Ak', 'Jln. Setia Budi No. 467, Kendari 21070, Papua', '1997-03-14 20:26:33', '2020-07-19 09:36:52'),
(87, 'Vicky Astuti', 'Jr. Wahidin No. 482, Metro 19151, KalUt', '2019-06-28 19:43:45', '2020-07-19 09:36:52'),
(88, 'Shania Astuti', 'Kpg. Raya Setiabudhi No. 409, Magelang 18418, NTB', '1985-12-12 08:41:27', '2020-07-19 09:36:52'),
(89, 'Samiah Maya Suryatmi S.Kom', 'Gg. PHH. Mustofa No. 430, Tanjungbalai 44151, SulUt', '1990-01-27 22:03:48', '2020-07-19 09:36:52'),
(90, 'Kiandra Rahmawati', 'Dk. Yohanes No. 949, Bengkulu 57801, JaTim', '1973-05-25 23:31:28', '2020-07-19 09:36:52'),
(91, 'Salimah Zulaika S.Pd', 'Jln. Suryo Pranoto No. 431, Lubuklinggau 38336, SulSel', '2018-01-30 07:40:39', '2020-07-19 09:36:52'),
(92, 'Warsita Kariman Najmudin S.Ked', 'Psr. Ki Hajar Dewantara No. 602, Bau-Bau 49172, SulSel', '2005-12-12 22:24:18', '2020-07-19 09:36:52'),
(93, 'Margana Saefullah S.E.', 'Jr. Sutarto No. 164, Banda Aceh 37735, SulTra', '1990-07-30 11:34:25', '2020-07-19 09:36:52'),
(94, 'Darimin Putu Haryanto S.IP', 'Ki. Industri No. 797, Surabaya 52072, DIY', '2014-11-16 13:25:09', '2020-07-19 09:36:52'),
(95, 'Azalea Uchita Permata', 'Jr. Moch. Ramdan No. 886, Gunungsitoli 56385, JaTim', '1980-06-08 19:27:46', '2020-07-19 09:36:52'),
(96, 'Banawi Permadi', 'Dk. Jend. Sudirman No. 333, Mataram 49908, SumSel', '1989-04-23 01:21:26', '2020-07-19 09:36:52'),
(97, 'Sabrina Nasyiah', 'Dk. Babadak No. 771, Serang 22189, Gorontalo', '1975-05-22 19:58:04', '2020-07-19 09:36:52'),
(98, 'Abyasa Nugroho', 'Gg. Otista No. 891, Manado 36321, SumBar', '1974-10-07 21:12:37', '2020-07-19 09:36:52'),
(99, 'Qori Rahmawati', 'Jln. Ters. Buah Batu No. 35, Lubuklinggau 54486, SulUt', '1982-01-16 17:29:58', '2020-07-19 09:36:52'),
(100, 'Karman Wage Siregar', 'Dk. Laksamana No. 576, Probolinggo 70347, PapBar', '1996-02-02 18:40:36', '2020-07-19 09:36:52');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

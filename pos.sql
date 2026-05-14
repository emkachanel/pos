-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Mar 2022 pada 10.59
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akses`
--

CREATE TABLE `akses` (
  `id_akses` int(11) NOT NULL,
  `nama_akses` varchar(25) NOT NULL,
  `deskripsi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `akses`
--

INSERT INTO `akses` (`id_akses`, `nama_akses`, `deskripsi`) VALUES
(1, 'administrator', 'sebagai  pengelola kendali penuh pada sistem aplikasi'),
(2, 'Asisten admin', 'sebagai pengelola sistem stok barang, penjualan dan laporan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bank`
--

CREATE TABLE `bank` (
  `id` int(11) NOT NULL,
  `nama_bank` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bank`
--

INSERT INTO `bank` (`id`, `nama_bank`) VALUES
(1, 'MANDIRI'),
(2, 'BNI'),
(3, 'BCA'),
(4, 'BRI'),
(5, 'CIMB Niaga');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `barcode` varchar(50) DEFAULT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `ukuran` varchar(5) NOT NULL,
  `harga` int(20) NOT NULL,
  `foto` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `barcode`, `nama_barang`, `id_kategori`, `ukuran`, `harga`, `foto`) VALUES
(1, '12345678910', 'aqua 600ml', 1, ' 10', 6500, 'd71e3762a71051d25842c73db78ee51e.jpg'),
(2, '8990751000096', 'sapujagat', 1, '6', 15000, 'f3a4986e4403e68add53e7efdf57edd5.jpg'),
(3, NULL, 'cengkeh cokelat', 1, '6', 7000, 'unknow.png'),
(4, NULL, 'provost', 0, ' 14', 25500, '700f0c91f268b6b0e5a0418fb2b907e7.jpg'),
(5, NULL, 'krakatau', 1, '6', 35000, 'unknow.png'),
(6, NULL, 'kujang mas', 1, '6', 17000, 'unknow.png'),
(7, NULL, 'nogo sosro', 1, '6', 27000, 'unknow.png'),
(8, NULL, 'Cengkeh Biru', 1, '6', 7000, 'unknow.png'),
(9, NULL, 'Amplop  110x230', 1, '6', 2000, 'unknow.png'),
(10, NULL, 'Amplop  95x152', 1, '6', 2000, 'unknow.png'),
(11, NULL, 'Amplop  lam aran', 1, '6', 2000, 'unknow.png'),
(12, NULL, 'Buku  Gambar  A4  Ria', 1, '6', 2000, 'unknow.png'),
(13, NULL, 'Buku  Gambar  kecil Ria', 1, '6', 2000, 'unknow.png'),
(14, NULL, 'Buku  Tulis Big  Boss 42  Lem', 1, '6', 2000, 'unknow.png'),
(15, NULL, 'BUKU TULI S DODO 38  Lem bar', 1, '6', 2000, 'unknow.png'),
(16, NULL, 'Buku  tulis Dodo 58  Lembar', 1, '6', 2000, 'unknow.png'),
(17, NULL, 'BUKU TULI S LANI  30  Lembar', 1, '6', 2000, 'unknow.png'),
(18, NULL, 'BUKU TULI S LANI  38  Lembar', 1, '6', 2000, 'unknow.png'),
(19, NULL, 'BUKU TULI S SEGI TI GA 58  Lem', 1, '6', 2000, 'unknow.png'),
(20, NULL, 'BUKU TULI S SI DU 38  Lem bar', 1, '6', 2000, 'unknow.png'),
(21, NULL, 'BUKU TULI S SI DU 58  Lem bar', 1, '6', 2000, 'unknow.png'),
(22, NULL, 'FABER CASTEL 2B', 1, '6', 2000, 'unknow.png'),
(23, NULL, 'Joyko eraser  EB 30', 1, '6', 2000, 'unknow.png'),
(24, NULL, 'JOYKO PENCIL 2B', 1, '6', 2000, 'unknow.png'),
(25, NULL, 'KERTAS FOLI O', 1, '6', 2000, 'unknow.png'),
(26, NULL, 'KERTAS KADO', 1, '6', 2000, 'unknow.png'),
(27, NULL, 'Lem  kertas', 1, '6', 2000, 'unknow.png'),
(28, NULL, 'PENGGARI S POLOS', 1, '6', 2000, 'unknow.png'),
(29, NULL, 'Serutan  kotak', 1, '6', 2000, 'unknow.png'),
(30, NULL, 'Standar   Bolpen', 1, '6', 2000, 'unknow.png'),
(31, NULL, 'UNI STAR 2B', 1, '6', 2000, 'unknow.png'),
(32, NULL, 'Beras Murah', 1, '6', 2000, 'unknow.png'),
(33, NULL, 'Beras Sedang', 1, '6', 2000, 'unknow.png'),
(34, NULL, 'Beras Terrm ahal', 1, '6', 2000, 'unknow.png'),
(35, NULL, 'Beras Pera/ I R 42', 1, '6', 2000, 'unknow.png'),
(36, NULL, 'Bawang putih', 1, '6', 2000, 'unknow.png'),
(37, NULL, 'Jagung bihun', 1, '6', 2000, 'unknow.png'),
(38, NULL, 'KACANG TANAH', 1, '6', 2000, 'unknow.png'),
(39, NULL, 'KACANG HI JAU', 1, '6', 2000, 'unknow.png'),
(40, NULL, 'Kerupuk  nasi uduk', 1, '6', 2000, 'unknow.png'),
(41, NULL, 'Kem iri', 1, '6', 2000, 'unknow.png'),
(42, NULL, 'Ketum bar', 1, '6', 2000, 'unknow.png'),
(43, NULL, 'Lencana terigu', 1, '6', 2000, 'unknow.png'),
(44, NULL, 'Lada', 1, '6', 2000, 'unknow.png'),
(45, NULL, 'Minyak  goreng  curah', 1, '6', 2000, 'unknow.png'),
(46, NULL, 'Segitiga terigu', 1, '6', 2000, 'unknow.png'),
(47, NULL, 'Sagu  gunung', 1, '6', 2000, 'unknow.png'),
(48, NULL, 'Telor', 1, '6', 2000, 'unknow.png'),
(49, NULL, 'Gula Pasir', 1, '6', 2000, 'unknow.png'),
(50, NULL, 'Gula Merah', 1, '6', 2000, 'unknow.png'),
(51, NULL, 'ABC KECAP BOTOL 135ML', 1, '6', 2000, 'unknow.png'),
(52, NULL, 'ABC KECAP SACH', 1, '6', 2000, 'unknow.png'),
(53, NULL, 'ABC SAMBAL SAOS MEJA', 1, '6', 2000, 'unknow.png'),
(54, NULL, 'ABC SAOS SACH', 1, '6', 2000, 'unknow.png'),
(55, NULL, 'ABC Saos tom at  m eja', 1, '6', 2000, 'unknow.png'),
(56, NULL, 'ABC Terasi sach', 1, '6', 2000, 'unknow.png'),
(57, NULL, 'ABC SARDEN 155  Gr', 1, '6', 2000, 'unknow.png'),
(58, NULL, 'AROMA PASTA 30ML', 1, '6', 2000, 'unknow.png'),
(59, NULL, 'BANGO KECAP MEJA', 1, '6', 2000, 'unknow.png'),
(60, NULL, 'Bango kecap  reff 600', 1, '6', 2000, 'unknow.png'),
(61, NULL, 'Bango kecap  reff 85', 1, '6', 2000, 'unknow.png'),
(62, NULL, 'BANGO 225 ML', 1, '6', 2000, 'unknow.png'),
(63, NULL, 'BANGO 1000', 1, '6', 2000, 'unknow.png'),
(64, NULL, 'Blueband  sach  17  Gr', 1, '6', 2000, 'unknow.png'),
(65, NULL, 'Blueband  sach  200  Gr', 1, '6', 2000, 'unknow.png'),
(66, NULL, 'Bola Dunia agar', 1, '6', 2000, 'unknow.png'),
(67, NULL, 'BUMBU RACI K AYAM GORENG', 1, '6', 2000, 'unknow.png'),
(68, NULL, 'Bumbu  Racik  bumbu  tem pe', 1, '6', 2000, 'unknow.png'),
(69, NULL, 'BUMBU RACI K LODEH', 1, '6', 2000, 'unknow.png'),
(70, NULL, 'Bumbu  Racik  nasi goreng', 1, '6', 2000, 'unknow.png'),
(71, NULL, 'BUMBU RACI K SAYUR ASEM', 1, '6', 2000, 'unknow.png'),
(72, NULL, 'BUMBU RACI K SOP', 1, '6', 2000, 'unknow.png'),
(73, NULL, 'Cangkir  sarim anis', 1, '6', 2000, 'unknow.png'),
(74, NULL, 'Claris Tepung gula', 1, '6', 2000, 'unknow.png'),
(75, NULL, 'Dixi cuka 500', 1, '6', 2000, 'unknow.png'),
(76, NULL, 'DI XI  CUKA 1000', 1, '6', 2000, 'unknow.png'),
(77, NULL, 'Fortune m  goreng  2ltr', 1, '6', 2000, 'unknow.png'),
(78, NULL, 'Fortune m  goreng  1ltr', 1, '6', 2000, 'unknow.png'),
(79, NULL, 'Kara', 1, '6', 2000, 'unknow.png'),
(80, NULL, 'Kecap  Botol KRAT', 1, '6', 2000, 'unknow.png'),
(81, NULL, 'LADAKU', 1, '6', 2000, 'unknow.png'),
(82, NULL, 'MASAKO AYAM', 1, '6', 2000, 'unknow.png'),
(83, NULL, 'Masako sapi', 1, '6', 2000, 'unknow.png'),
(84, NULL, 'Maya sarden  155  Gr', 1, '6', 2000, 'unknow.png'),
(85, NULL, 'Maya sarden  425  Gr', 1, '6', 2000, 'unknow.png'),
(86, NULL, 'NUTRI JELL RASA BUAH', 1, '6', 2000, 'unknow.png'),
(87, NULL, 'Nutrijell coklat', 1, '6', 2000, 'unknow.png'),
(88, NULL, 'Perm ipan', 1, '6', 2000, 'unknow.png'),
(89, NULL, 'PEWARNA KUPU KUPU 30  ML', 1, '6', 2000, 'unknow.png'),
(90, NULL, 'ROSEBRAND TEPUNG BERAS', 1, '6', 2000, 'unknow.png'),
(91, NULL, 'Resto m  goreng  225 m l', 1, '6', 2000, 'unknow.png'),
(92, NULL, 'Resto 450  ML', 1, '6', 2000, 'unknow.png'),
(93, NULL, 'RESTO 900 ML', 1, '6', 2000, 'unknow.png'),
(94, NULL, 'Refina garam  250', 1, '6', 2000, 'unknow.png'),
(95, NULL, 'Rom an coklat  bubuk', 1, '6', 2000, 'unknow.png'),
(96, NULL, 'Royco ayam', 1, '6', 2000, 'unknow.png'),
(97, NULL, 'ROYCO   sapi', 1, '6', 2000, 'unknow.png'),
(98, NULL, 'SAJI KU TEPUNG BUMBU', 1, '6', 2000, 'unknow.png'),
(99, NULL, 'SAFARI  MESES', 1, '6', 2000, 'unknow.png'),
(100, NULL, 'SAOS BOTOL KRAT', 1, '6', 2000, 'unknow.png'),
(101, NULL, 'Sasa 250 gr', 1, '6', 2000, 'unknow.png'),
(102, NULL, 'Sasa 1000', 1, '6', 2000, 'unknow.png'),
(103, NULL, 'Sasa 500', 1, '6', 2000, 'unknow.png'),
(104, NULL, 'Segitiga garam  kecil', 1, '6', 2000, 'unknow.png'),
(105, NULL, 'SEGI  TI GA GARAM BESAR', 1, '6', 2000, 'unknow.png'),
(106, NULL, 'Sim as sach  200  Gr', 1, '6', 2000, 'unknow.png'),
(107, NULL, 'Soun  Naga', 1, '6', 2000, 'unknow.png'),
(108, NULL, 'SP kupu  kupu', 1, '6', 2000, 'unknow.png'),
(109, NULL, 'Stick  es krim', 1, '6', 2000, 'unknow.png'),
(110, NULL, 'SOUN 88', 1, '6', 2000, 'unknow.png'),
(111, NULL, 'Swallow  agar', 1, '6', 2000, 'unknow.png'),
(112, NULL, 'SAMHOK TERASI  MEDAN', 1, '6', 2000, 'unknow.png'),
(113, NULL, 'Saori saos t iram', 1, '6', 2000, 'unknow.png'),
(114, NULL, 'Sasa 100 gr', 1, '6', 2000, 'unknow.png'),
(115, NULL, 'TBM', 1, '6', 2000, 'unknow.png'),
(116, NULL, 'Tim bangan  Tepung gula', 1, '6', 2000, 'unknow.png'),
(117, NULL, 'Vanili R', 1, '6', 2000, 'unknow.png'),
(118, NULL, 'DAYAK 15', 1, '6', 2000, 'unknow.png'),
(119, NULL, 'Dayak  24', 1, '6', 2000, 'unknow.png'),
(120, NULL, 'Maskot  besar', 1, '6', 2000, 'unknow.png'),
(121, NULL, 'Sendok  kecil', 1, '6', 2000, 'unknow.png'),
(122, NULL, 'SENDOK kecil WARNA', 1, '6', 2000, 'unknow.png'),
(123, NULL, 'Sendok  24', 1, '6', 2000, 'unknow.png'),
(124, NULL, 'SPARTA 15', 1, '6', 2000, 'unknow.png'),
(125, NULL, 'Kereta 15', 1, '6', 2000, 'unknow.png'),
(126, NULL, 'Kereta 24', 1, '6', 2000, 'unknow.png'),
(127, NULL, 'Loco HDPE 15x30', 1, '6', 2000, 'unknow.png'),
(128, NULL, 'Loco HDPE 24x40', 1, '6', 2000, 'unknow.png'),
(129, NULL, 'PEONY 15', 1, '6', 2000, 'unknow.png'),
(130, NULL, 'PEONY 24', 1, '6', 2000, 'unknow.png'),
(131, NULL, 'MASCOT 10  L', 1, '6', 2000, 'unknow.png'),
(132, NULL, 'Attack  sach  500', 1, '6', 2000, 'unknow.png'),
(133, NULL, 'Attack  sach  1000', 1, '6', 2000, 'unknow.png'),
(134, NULL, 'Boom  det  750  gr', 1, '6', 2000, 'unknow.png'),
(135, NULL, 'Bayclin  botol 100m l', 1, '6', 2000, 'unknow.png'),
(136, NULL, 'Citrun', 1, '6', 2000, 'unknow.png'),
(137, NULL, 'Citra sabun', 1, '6', 2000, 'unknow.png'),
(138, NULL, 'Ciptadent  75  gr', 1, '6', 2000, 'unknow.png'),
(139, NULL, 'Carrera Shampo   m otor', 1, '6', 2000, 'unknow.png'),
(140, NULL, 'Citra bengkoang  sach', 1, '6', 2000, 'unknow.png'),
(141, NULL, 'Clear  shampoo   sach', 1, '6', 2000, 'unknow.png'),
(142, NULL, 'Citra bengkoang  60m l', 1, '6', 2000, 'unknow.png'),
(143, NULL, 'Daia 1000', 1, '6', 2000, 'unknow.png'),
(144, NULL, 'DOWNY SACH', 1, '6', 2000, 'unknow.png'),
(145, NULL, 'Dettol sabun', 1, '6', 2000, 'unknow.png'),
(146, NULL, 'DEE DEE PASTA GI GI  50 GR', 1, '6', 2000, 'unknow.png'),
(147, NULL, 'DEE DEE SHAMPO GRAPE 45 ML', 1, '6', 2000, 'unknow.png'),
(148, NULL, 'Dove sha sach', 1, '6', 2000, 'unknow.png'),
(149, NULL, 'DAI A   900GR', 1, '6', 2000, 'unknow.png'),
(150, NULL, 'Ekonom i EK 200', 1, '6', 2000, 'unknow.png'),
(151, NULL, 'EKONOMI  EK 350', 1, '6', 2000, 'unknow.png'),
(152, NULL, 'Ekonom i EK500', 1, '6', 2000, 'unknow.png'),
(153, NULL, 'Em eron  h/ body  100m l', 1, '6', 2000, 'unknow.png'),
(154, NULL, 'Em eron  sha 100m l', 1, '6', 2000, 'unknow.png'),
(155, NULL, 'Form ula Sikat  Gigi', 1, '6', 2000, 'unknow.png'),
(156, NULL, 'Fresh  sabun', 1, '6', 2000, 'unknow.png'),
(157, NULL, 'GI V sabun', 1, '6', 2000, 'unknow.png'),
(158, NULL, 'Head  shouldr  sham po sach', 1, '6', 2000, 'unknow.png'),
(159, NULL, 'I KAN KOI  BLAU SACH', 1, '6', 2000, 'unknow.png'),
(160, NULL, 'KODOMO SHA 45ML', 1, '6', 2000, 'unknow.png'),
(161, NULL, 'KODOMO SI KAT ANAK', 1, '6', 2000, 'unknow.png'),
(162, NULL, 'Kispray  sach', 1, '6', 2000, 'unknow.png'),
(163, NULL, 'Lifebouy sabun', 1, '6', 2000, 'unknow.png'),
(164, NULL, 'Lifebouy shampo 90  m l', 1, '6', 2000, 'unknow.png'),
(165, NULL, 'Lifebouy shampo sach', 1, '6', 2000, 'unknow.png'),
(166, NULL, 'LUX sabun', 1, '6', 2000, 'unknow.png'),
(167, NULL, 'Molto ultra sach', 1, '6', 2000, 'unknow.png'),
(168, NULL, 'MOLTO 1X BI LAS', 1, '6', 2000, 'unknow.png'),
(169, NULL, 'Mama lim e 80m l', 1, '6', 2000, 'unknow.png'),
(170, NULL, 'MAMA LI ME 160ML', 1, '6', 2000, 'unknow.png'),
(171, NULL, 'MBK talc baru', 1, '6', 2000, 'unknow.png'),
(172, NULL, 'MBK TALC SUSU', 1, '6', 2000, 'unknow.png'),
(173, NULL, 'Nuvo sabun', 1, '6', 2000, 'unknow.png'),
(174, NULL, 'PEPSODENT 190 gr', 1, '6', 2000, 'unknow.png'),
(175, NULL, 'Pepsodent  75gr', 1, '6', 2000, 'unknow.png'),
(176, NULL, 'POLYTEX SABUT SPONS', 1, '6', 2000, 'unknow.png'),
(177, NULL, 'Pepsodent  120  gr', 1, '6', 2000, 'unknow.png'),
(178, NULL, 'PONDS WHI TE FACI AL 50GR', 1, '6', 2000, 'unknow.png'),
(179, NULL, 'PONDS cream  20gr', 1, '6', 2000, 'unknow.png'),
(180, NULL, 'Pantene sha sach', 1, '6', 2000, 'unknow.png'),
(181, NULL, 'PROCLI N sach', 1, '6', 2000, 'unknow.png'),
(182, NULL, 'RI NSO CAI R', 1, '6', 2000, 'unknow.png'),
(183, NULL, 'RI NSO 500', 1, '6', 2000, 'unknow.png'),
(184, NULL, 'Rinso 1000', 1, '6', 2000, 'unknow.png'),
(185, NULL, 'Rapika sach', 1, '6', 2000, 'unknow.png'),
(186, NULL, 'Rejoice sach', 1, '6', 2000, 'unknow.png'),
(187, NULL, 'Rexona m an  sach', 1, '6', 2000, 'unknow.png'),
(188, NULL, 'Rexona women sach', 1, '6', 2000, 'unknow.png'),
(189, NULL, 'Soklin  lantai sach', 1, '6', 2000, 'unknow.png'),
(190, NULL, 'SOKLI N PEWANGI  SACH', 1, '6', 2000, 'unknow.png'),
(191, NULL, 'Sunsilk  sach', 1, '6', 2000, 'unknow.png'),
(192, NULL, 'SOKLI N LANTAI  SACH', 1, '6', 2000, 'unknow.png'),
(193, NULL, 'SABUT KAWAT TK- 15', 1, '6', 2000, 'unknow.png'),
(194, NULL, 'Shinzui sabun', 1, '6', 2000, 'unknow.png'),
(195, NULL, 'SUNLI GHT 200m l', 1, '6', 2000, 'unknow.png'),
(196, NULL, 'SUNLI GHT 90m l', 1, '6', 2000, 'unknow.png'),
(197, NULL, 'WPC EXTRA KUAT 400ML', 1, '6', 2000, 'unknow.png'),
(198, NULL, 'Zinc Shampo sach', 1, '6', 2000, 'unknow.png'),
(199, NULL, 'BI SKUAT BOLU', 1, '6', 2000, 'unknow.png'),
(200, NULL, 'BENG BENG 20GR', 1, '6', 2000, 'unknow.png'),
(201, NULL, 'BETTER ROMA', 1, '6', 2000, 'unknow.png'),
(202, NULL, 'BI G BABOL 3PCS', 1, '6', 2000, 'unknow.png'),
(203, NULL, 'BI SKUAT COKLAT 20GR', 1, '6', 2000, 'unknow.png'),
(204, NULL, 'BI SKUAT ENERGI  22. 5GR', 1, '6', 2000, 'unknow.png'),
(205, NULL, 'BI SKUAT SUSU 21GR', 1, '6', 2000, 'unknow.png'),
(206, NULL, 'BALLET TWI ST', 1, '6', 2000, 'unknow.png'),
(207, NULL, 'CHO CHO', 1, '6', 2000, 'unknow.png'),
(208, NULL, 'CHOQI  CHOQI', 1, '6', 2000, 'unknow.png'),
(209, NULL, 'CHI KI  BALLS', 1, '6', 2000, 'unknow.png'),
(210, NULL, 'CHEWEEZ', 1, '6', 2000, 'unknow.png'),
(211, NULL, 'CANNON BALL', 1, '6', 2000, 'unknow.png'),
(212, NULL, 'CHOKIPERO STICK', 1, '6', 2000, 'unknow.png'),
(213, NULL, 'CHACHA', 1, '6', 2000, 'unknow.png'),
(214, NULL, 'DUA KELI NCI  KACANG 250 gr', 1, '6', 2000, 'unknow.png'),
(215, NULL, 'ESPRESSO KOPI  SUSU', 1, '6', 2000, 'unknow.png'),
(216, NULL, 'ESCADO', 1, '6', 2000, 'unknow.png'),
(217, NULL, 'FULLO', 1, '6', 2000, 'unknow.png'),
(218, NULL, 'FRENCH FRI ES', 1, '6', 2000, 'unknow.png'),
(219, NULL, 'GERY  COLEK', 1, '6', 2000, 'unknow.png'),
(220, NULL, 'GERY PASTA CHOCOLATE', 1, '6', 2000, 'unknow.png'),
(221, NULL, 'GERY CHOCOLATOS', 1, '6', 2000, 'unknow.png'),
(222, NULL, 'GERY DONUTS', 1, '6', 2000, 'unknow.png'),
(223, NULL, 'HELLO PANDA', 1, '6', 2000, 'unknow.png'),
(224, NULL, 'JETZ', 1, '6', 2000, 'unknow.png'),
(225, NULL, 'KERI PI K SMS', 1, '6', 2000, 'unknow.png'),
(226, NULL, 'KOPI KO', 1, '6', 2000, 'unknow.png'),
(227, NULL, 'KACANG GARI NG 500', 1, '6', 2000, 'unknow.png'),
(228, NULL, 'KWACI  BUNGA MATAHARI', 1, '6', 2000, 'unknow.png'),
(229, NULL, 'KEJUCAKE', 1, '6', 2000, 'unknow.png'),
(230, NULL, 'LACOCO', 1, '6', 2000, 'unknow.png'),
(231, NULL, 'MAKARONI', 1, '6', 2000, 'unknow.png'),
(232, NULL, 'MENTHOS', 1, '6', 2000, 'unknow.png'),
(233, NULL, 'MARLEY MILK MEISES', 1, '6', 2000, 'unknow.png'),
(234, NULL, 'MOMOGI', 1, '6', 2000, 'unknow.png'),
(235, NULL, 'MI LKI TA LOLLIPOP', 1, '6', 2000, 'unknow.png'),
(236, NULL, 'MALKIST CRACKERS', 1, '6', 2000, 'unknow.png'),
(237, NULL, 'MI E GEMEZ', 1, '6', 2000, 'unknow.png'),
(238, NULL, 'MALKIST 500', 1, '6', 2000, 'unknow.png'),
(239, NULL, 'NI SSI N CRI SPY', 1, '6', 2000, 'unknow.png'),
(240, NULL, 'NI SSI N WAFER', 1, '6', 2000, 'unknow.png'),
(241, NULL, 'NABATI  KEJU', 1, '6', 2000, 'unknow.png'),
(242, NULL, 'OI SHI  SNACK', 1, '6', 2000, 'unknow.png'),
(243, NULL, 'OREO', 1, '6', 2000, 'unknow.png'),
(244, NULL, 'OPALFRUT', 1, '6', 2000, 'unknow.png'),
(245, NULL, 'PADI MAS BOLU', 1, '6', 2000, 'unknow.png'),
(246, NULL, 'PERMEN UNICAN', 1, '6', 2000, 'unknow.png'),
(247, NULL, 'PI LUS GARUDA 19  GR', 1, '6', 2000, 'unknow.png'),
(248, NULL, 'PERMEN KACA MATA', 1, '6', 2000, 'unknow.png'),
(249, NULL, 'PI ATTOS', 1, '6', 2000, 'unknow.png'),
(250, NULL, 'QTELA 23 gr', 1, '6', 2000, 'unknow.png'),
(251, NULL, 'BI SKUI T KELAPA ROMA', 1, '6', 2000, 'unknow.png'),
(252, NULL, 'RELAXA', 1, '6', 2000, 'unknow.png'),
(253, NULL, 'ROMA KELAPA', 1, '6', 2000, 'unknow.png'),
(254, NULL, 'SOSIS SONI CE', 1, '6', 2000, 'unknow.png'),
(255, NULL, 'SUPERMAN WAFER', 1, '6', 2000, 'unknow.png'),
(256, NULL, 'SARI PATI  JELLY', 1, '6', 2000, 'unknow.png'),
(257, NULL, 'SUPERCO 24  GR', 1, '6', 2000, 'unknow.png'),
(258, NULL, 'SALTCHEESE COMBO', 1, '6', 2000, 'unknow.png'),
(259, NULL, 'SUKRO 18  GR', 1, '6', 2000, 'unknow.png'),
(260, NULL, 'TOP 11  GR', 1, '6', 2000, 'unknow.png'),
(261, NULL, 'TARO BARBEQUE', 1, '6', 2000, 'unknow.png'),
(262, NULL, 'TANGO 500', 1, '6', 2000, 'unknow.png'),
(263, NULL, 'TOGO SI IP 17. 5GR', 1, '6', 2000, 'unknow.png'),
(264, NULL, 'WAFFLE TANGO', 1, '6', 2000, 'unknow.png'),
(265, NULL, 'WAFELATOS', 1, '6', 2000, 'unknow.png'),
(266, NULL, 'YULI E JELLY', 1, '6', 2000, 'unknow.png'),
(267, NULL, 'YUPI  1000', 1, '6', 2000, 'unknow.png'),
(268, NULL, 'YUPI  500', 1, '6', 2000, 'unknow.png'),
(269, NULL, 'ABC kopi susu', 1, '6', 2000, 'unknow.png'),
(270, NULL, 'ABC m occa', 1, '6', 2000, 'unknow.png'),
(271, NULL, 'GOODAY 3  I N1', 1, '6', 2000, 'unknow.png'),
(272, NULL, 'GOOD DAY FRESH', 1, '6', 2000, 'unknow.png'),
(273, NULL, 'I ndocafe coffeem ix', 1, '6', 2000, 'unknow.png'),
(274, NULL, 'Kapal api sp  m ix', 1, '6', 2000, 'unknow.png'),
(275, NULL, 'Kapal api special 35 gr', 1, '6', 2000, 'unknow.png'),
(276, NULL, 'Kapal api special 65  GR', 1, '6', 2000, 'unknow.png'),
(277, NULL, 'KAPAL API  SPECI AL 185  GR', 1, '6', 2000, 'unknow.png'),
(278, NULL, 'TOP KOPI  SUSU', 1, '6', 2000, 'unknow.png'),
(279, NULL, 'TOP KOPI  GULA', 1, '6', 2000, 'unknow.png'),
(280, NULL, 'Torabika Oke', 1, '6', 2000, 'unknow.png'),
(281, NULL, 'WHI TE KOFFI E', 1, '6', 2000, 'unknow.png'),
(282, NULL, 'LPG 3  kg', 1, '6', 2000, 'unknow.png'),
(283, NULL, 'LPG 12  kg', 1, '6', 2000, 'unknow.png'),
(284, NULL, 'SUN SWALLOW SERI', 1, '6', 2000, 'unknow.png'),
(285, NULL, 'SUN SWALLOW TANGGUNG', 1, '6', 2000, 'unknow.png'),
(286, NULL, 'SWALL0W SIZE 10- 10. 5', 1, '6', 2000, 'unknow.png'),
(287, NULL, 'SWALLOW SERI', 1, '6', 2000, 'unknow.png'),
(288, NULL, 'SWALLOW SI ZE 11', 1, '6', 2000, 'unknow.png'),
(289, NULL, 'I ndom ie ayam  bawang', 1, '6', 2000, 'unknow.png'),
(290, NULL, 'I ndom ie soto', 1, '6', 2000, 'unknow.png'),
(291, NULL, 'I ndom ie kari ayam', 1, '6', 2000, 'unknow.png'),
(292, NULL, 'I ndom ie goreng', 1, '6', 2000, 'unknow.png'),
(293, NULL, 'SEDAP KUAH', 1, '6', 2000, 'unknow.png'),
(294, NULL, 'Sedap  goreng', 1, '6', 2000, 'unknow.png'),
(295, NULL, 'MI E TELOR 3  AYAM', 1, '6', 2000, 'unknow.png'),
(296, NULL, 'Arinda', 1, '6', 2000, 'unknow.png'),
(297, NULL, 'Aqua gelas', 1, '6', 2000, 'unknow.png'),
(298, NULL, 'Aqua Mini', 1, '6', 2000, 'unknow.png'),
(299, NULL, 'AQUA Galon', 1, '6', 2000, 'unknow.png'),
(300, NULL, 'Ale- ale', 1, '6', 2000, 'unknow.png'),
(301, NULL, 'AQUA 1500ML', 1, '6', 2000, 'unknow.png'),
(302, NULL, 'ABC Squash  Delight  600 m l', 1, '6', 2000, 'unknow.png'),
(303, NULL, 'AQUA 600  m l', 1, '6', 2000, 'unknow.png'),
(304, NULL, 'JAHE MERAH AMANAH', 1, '6', 2000, 'unknow.png'),
(305, NULL, 'BI G COLA', 1, '6', 2000, 'unknow.png'),
(306, NULL, 'Coca cola sedang', 1, '6', 2000, 'unknow.png'),
(307, NULL, 'Extrajoss', 1, '6', 2000, 'unknow.png'),
(308, NULL, 'Energen', 1, '6', 2000, 'unknow.png'),
(309, NULL, 'ES DEGAN', 1, '6', 2000, 'unknow.png'),
(310, NULL, 'Fruittea box', 1, '6', 2000, 'unknow.png'),
(311, NULL, 'FN soda', 1, '6', 2000, 'unknow.png'),
(312, NULL, 'Fanta sedam g', 1, '6', 2000, 'unknow.png'),
(313, NULL, 'Fentania', 1, '6', 2000, 'unknow.png'),
(314, NULL, 'Granita', 1, '6', 2000, 'unknow.png'),
(315, NULL, 'GRESH', 1, '6', 2000, 'unknow.png'),
(316, NULL, 'Glace 600m l', 1, '6', 2000, 'unknow.png'),
(317, NULL, 'Happy  esteler', 1, '6', 2000, 'unknow.png'),
(318, NULL, 'Hemaviton  j reng', 1, '6', 2000, 'unknow.png'),
(319, NULL, 'KI KO', 1, '6', 2000, 'unknow.png'),
(320, NULL, 'Kratingdaeng', 1, '6', 2000, 'unknow.png'),
(321, NULL, 'KUKU BIMA ENERGI  SACH', 1, '6', 2000, 'unknow.png'),
(322, NULL, 'MADU RASA', 1, '6', 2000, 'unknow.png'),
(323, NULL, 'MARJAN SYRUP', 1, '6', 2000, 'unknow.png'),
(324, NULL, 'Mizone', 1, '6', 2000, 'unknow.png'),
(325, NULL, 'Monair gelas', 1, '6', 2000, 'unknow.png'),
(326, NULL, 'NESTLE 330  ML', 1, '6', 2000, 'unknow.png'),
(327, NULL, 'Nice lho', 1, '6', 2000, 'unknow.png'),
(328, NULL, 'NUTRI SARI  SACH', 1, '6', 2000, 'unknow.png'),
(329, NULL, 'Okky  jelly  drink', 1, '6', 2000, 'unknow.png'),
(330, NULL, 'OASIS 600  ML', 1, '6', 2000, 'unknow.png'),
(331, NULL, 'OASIS GLASS 240  ML', 1, '6', 2000, 'unknow.png'),
(332, NULL, 'PANTHER CUP', 1, '6', 2000, 'unknow.png'),
(333, NULL, 'PUCUK HARUM', 1, '6', 2000, 'unknow.png'),
(334, NULL, 'Pocari sweat  botol 350 m l', 1, '6', 2000, 'unknow.png'),
(335, NULL, 'Pocari sweat  kaleng  330m l', 1, '6', 2000, 'unknow.png'),
(336, NULL, 'POCARI  SWEAT SACH', 1, '6', 2000, 'unknow.png'),
(337, NULL, 'POP ICE', 1, '6', 2000, 'unknow.png'),
(338, NULL, 'SANQUA 600 ML', 1, '6', 2000, 'unknow.png'),
(339, NULL, 'SANQUA GELAS I DUS', 1, '6', 2000, 'unknow.png'),
(340, NULL, 'S- Tee botol', 1, '6', 2000, 'unknow.png'),
(341, NULL, 'Sprite sedang', 1, '6', 2000, 'unknow.png'),
(342, NULL, 'SARI  KACANG HI JAU 250 m l', 1, '6', 2000, 'unknow.png'),
(343, NULL, 'SARI  KACANG I JO 200  m l', 1, '6', 2000, 'unknow.png'),
(344, NULL, 'Sariasem  asli', 1, '6', 2000, 'unknow.png'),
(345, NULL, 'Tehbotol', 1, '6', 2000, 'unknow.png'),
(346, NULL, 'THE GELAS', 1, '6', 2000, 'unknow.png'),
(347, NULL, 'the gunung', 1, '6', 2000, 'unknow.png'),
(348, NULL, 'TRI COCO SARI  KELAPA', 1, '6', 2000, 'unknow.png'),
(349, NULL, 'Tehkotak', 1, '6', 2000, 'unknow.png'),
(350, NULL, 'Tehbotol kotak  200  m l', 1, '6', 2000, 'unknow.png'),
(351, NULL, 'Vitcool', 1, '6', 2000, 'unknow.png'),
(352, NULL, 'VI T GELAS', 1, '6', 2000, 'unknow.png'),
(353, NULL, 'VI T 1500  ML', 1, '6', 2000, 'unknow.png'),
(354, NULL, 'VI T 600  ML', 1, '6', 2000, 'unknow.png'),
(355, NULL, 'WONG CI LI K', 1, '6', 2000, 'unknow.png'),
(356, NULL, 'WONGNDESO ES TELER', 1, '6', 2000, 'unknow.png'),
(357, NULL, 'WOW COCO', 1, '6', 2000, 'unknow.png'),
(358, NULL, 'ADEM SARI', 1, '6', 2000, 'unknow.png'),
(359, NULL, 'ALANGSARI', 1, '6', 2000, 'unknow.png'),
(360, NULL, 'ANAKONI DI N', 1, '6', 2000, 'unknow.png'),
(361, NULL, 'ANTANGI N JRG SI RUP', 1, '6', 2000, 'unknow.png'),
(362, NULL, 'ANTANGI N JRG TABLET', 1, '6', 2000, 'unknow.png'),
(363, NULL, 'ANTI MO ANAK SI ROP', 1, '6', 2000, 'unknow.png'),
(364, NULL, 'ANTI MO TABLET', 1, '6', 2000, 'unknow.png'),
(365, NULL, 'AMANPLAST', 1, '6', 2000, 'unknow.png'),
(366, NULL, 'ANAK SUMANG', 1, '6', 2000, 'unknow.png'),
(367, NULL, 'BABY\'S COUGH SYRUP', 1, '6', 2000, 'unknow.png'),
(368, NULL, 'BETADI NE 5 ML', 1, '6', 2000, 'unknow.png'),
(369, NULL, 'BODREX EXTRA', 1, '6', 2000, 'unknow.png'),
(370, NULL, 'BODREX FLU BATUK', 1, '6', 2000, 'unknow.png'),
(371, NULL, 'BODREX MI GRA', 1, '6', 2000, 'unknow.png'),
(372, NULL, 'BODREK TABLET', 1, '6', 2000, 'unknow.png'),
(373, NULL, 'BODREXI N', 1, '6', 2000, 'unknow.png'),
(374, NULL, 'COOLANT', 1, '6', 2000, 'unknow.png'),
(375, NULL, 'DECOLGEN', 1, '6', 2000, 'unknow.png'),
(376, NULL, 'DI APET', 1, '6', 2000, 'unknow.png'),
(377, NULL, 'FATI GON', 1, '6', 2000, 'unknow.png'),
(378, NULL, 'Entrostop', 1, '6', 2000, 'unknow.png'),
(379, NULL, 'Entrostop  Anak', 1, '6', 2000, 'unknow.png'),
(380, NULL, 'Neozep', 1, '6', 2000, 'unknow.png'),
(381, NULL, 'FATI GON SPI RI T', 1, '6', 2000, 'unknow.png'),
(382, NULL, 'GARGLI N', 1, '6', 2000, 'unknow.png'),
(383, NULL, 'GELI GA BALSEM 20  GR', 1, '6', 2000, 'unknow.png'),
(384, NULL, 'GPU 30  ML', 1, '6', 2000, 'unknow.png'),
(385, NULL, 'HEROCYN', 1, '6', 2000, 'unknow.png'),
(386, NULL, 'HUFAGRIP PI LEK', 1, '6', 2000, 'unknow.png'),
(387, NULL, 'HUFAGRIP BP', 1, '6', 2000, 'unknow.png'),
(388, NULL, 'I NZANA', 1, '6', 2000, 'unknow.png'),
(389, NULL, 'I NSTO', 1, '6', 2000, 'unknow.png'),
(390, NULL, 'KAKI  TI GA BOTOL kino', 1, '6', 2000, 'unknow.png'),
(391, NULL, 'KAKI  TI GA KALENG', 1, '6', 2000, 'unknow.png'),
(392, NULL, 'KALPANAK', 1, '6', 2000, 'unknow.png'),
(393, NULL, 'KAPAK M ANGI N', 1, '6', 2000, 'unknow.png'),
(394, NULL, 'KOMI X', 1, '6', 2000, 'unknow.png'),
(395, NULL, 'KOMI X KI DS', 1, '6', 2000, 'unknow.png'),
(396, NULL, 'KONI DI N', 1, '6', 2000, 'unknow.png'),
(397, NULL, 'KOYO CABE', 1, '6', 2000, 'unknow.png'),
(398, NULL, 'KUPU KUPU PUYER', 1, '6', 2000, 'unknow.png'),
(399, NULL, 'LANG KP NO. 1', 1, '6', 2000, 'unknow.png'),
(400, NULL, 'LANG KP NO. 2', 1, '6', 2000, 'unknow.png'),
(401, NULL, 'LANG KP NO. 3', 1, '6', 2000, 'unknow.png'),
(402, NULL, 'LOTTE OBAT MATA', 1, '6', 2000, 'unknow.png'),
(403, NULL, 'LASERI N MADU', 1, '6', 2000, 'unknow.png'),
(404, NULL, 'LASERI N 30ML', 1, '6', 2000, 'unknow.png'),
(405, NULL, 'LANG BALSEM 10  GR', 1, '6', 2000, 'unknow.png'),
(406, NULL, 'LANG BALSEM 20  GR', 1, '6', 2000, 'unknow.png'),
(407, NULL, 'LANG MKP 4', 1, '6', 2000, 'unknow.png'),
(408, NULL, 'MI XAGRIP 1STRIP', 1, '6', 2000, 'unknow.png'),
(409, NULL, 'MEXTRI L', 1, '6', 2000, 'unknow.png'),
(410, NULL, 'NAPACI N NEO', 1, '6', 2000, 'unknow.png'),
(411, NULL, 'OBH COMBI  ANAK', 1, '6', 2000, 'unknow.png'),
(412, NULL, 'OBH COMBI  B/ F', 1, '6', 2000, 'unknow.png'),
(413, NULL, 'OSKADON', 1, '6', 2000, 'unknow.png'),
(414, NULL, 'OSKADON SP', 1, '6', 2000, 'unknow.png'),
(415, NULL, 'PI L KI TA', 1, '6', 2000, 'unknow.png'),
(416, NULL, 'PANADOL BI RU', 1, '6', 2000, 'unknow.png'),
(417, NULL, 'PANADOL MERAH', 1, '6', 2000, 'unknow.png'),
(418, NULL, 'Panadol Hijau', 1, '6', 2000, 'unknow.png'),
(419, NULL, 'PARAMEK', 1, '6', 2000, 'unknow.png'),
(420, NULL, 'PUYER BI NTANG 7', 1, '6', 2000, 'unknow.png'),
(421, NULL, 'PROCOLD', 1, '6', 2000, 'unknow.png'),
(422, NULL, 'PROMAGH', 1, '6', 2000, 'unknow.png'),
(423, NULL, 'REMACYL', 1, '6', 2000, 'unknow.png'),
(424, NULL, 'SALONPAS', 1, '6', 2000, 'unknow.png'),
(425, NULL, 'SANAFLU', 1, '6', 2000, 'unknow.png'),
(426, NULL, 'SANGOBI ON', 1, '6', 2000, 'unknow.png'),
(427, NULL, 'SEGAR DI NGI N', 1, '6', 2000, 'unknow.png'),
(428, NULL, 'SEGAR DI NGI N', 1, '6', 2000, 'unknow.png'),
(429, NULL, 'SALEP 88', 1, '6', 2000, 'unknow.png'),
(430, NULL, 'SALICYL I KA', 1, '6', 2000, 'unknow.png'),
(431, NULL, 'SALICYL KI MI A FARMA', 1, '6', 2000, 'unknow.png'),
(432, NULL, 'TOLAK ANGI N CAI R', 1, '6', 2000, 'unknow.png'),
(433, NULL, 'TOLAK ANGI N ANAK', 1, '6', 2000, 'unknow.png'),
(434, NULL, 'AUTAN SACH', 1, '6', 2000, 'unknow.png'),
(435, NULL, 'Autan  junior  sach', 1, '6', 2000, 'unknow.png'),
(436, NULL, 'Aica aibon', 1, '6', 2000, 'unknow.png'),
(437, NULL, 'ABC battery  AA', 1, '6', 2000, 'unknow.png'),
(438, NULL, 'ABC battery  D', 1, '6', 2000, 'unknow.png'),
(439, NULL, 'AMP KARET', 1, '6', 2000, 'unknow.png'),
(440, NULL, 'Baygon  bakar  5pc', 1, '6', 2000, 'unknow.png'),
(441, NULL, 'Baygon  cair  400  m l', 1, '6', 2000, 'unknow.png'),
(442, NULL, 'Baygon  cair  reffil 175 m l', 1, '6', 2000, 'unknow.png'),
(443, NULL, 'BENANG JAHI T 555', 1, '6', 2000, 'unknow.png'),
(444, NULL, 'BOLA PLASTI K', 1, '6', 2000, 'unknow.png'),
(445, NULL, 'CUP 12  OZ', 1, '6', 2000, 'unknow.png'),
(446, NULL, 'CHARM 1pad', 1, '6', 2000, 'unknow.png'),
(447, NULL, 'COTTON BODS B', 1, '6', 2000, 'unknow.png'),
(448, NULL, 'CELENGAN PLASTI K', 1, '6', 2000, 'unknow.png'),
(449, NULL, 'CHARM WI NGS 5\'', 1, '6', 2000, 'unknow.png'),
(450, NULL, 'Domestos nom os protector  5pc', 1, '6', 2000, 'unknow.png'),
(451, NULL, 'DOP 5watt', 1, '6', 2000, 'unknow.png'),
(452, NULL, 'DOP 15watt', 1, '6', 2000, 'unknow.png'),
(453, NULL, 'Dop  25watt', 1, '6', 2000, 'unknow.png'),
(454, NULL, 'DOP 10watt', 1, '6', 2000, 'unknow.png'),
(455, NULL, 'Etona staples no. 10', 1, '6', 2000, 'unknow.png'),
(456, NULL, 'KERTAS NASI  GAJAH', 1, '6', 2000, 'unknow.png'),
(457, NULL, 'Gillette goal klik', 1, '6', 2000, 'unknow.png'),
(458, NULL, 'Gillette goal I I', 1, '6', 2000, 'unknow.png'),
(459, NULL, 'Gillette goal', 1, '6', 2000, 'unknow.png'),
(460, NULL, 'GOLDTAPE BENI NG', 1, '6', 2000, 'unknow.png'),
(461, NULL, 'GOLDTAPE HI TAM', 1, '6', 2000, 'unknow.png'),
(462, NULL, 'HI T cair  reffil 175', 1, '6', 2000, 'unknow.png'),
(463, NULL, 'HI T mat  4pc', 1, '6', 2000, 'unknow.png'),
(464, NULL, 'HI T MAGI C', 1, '6', 2000, 'unknow.png'),
(465, NULL, 'HI T semprotan', 1, '6', 2000, 'unknow.png'),
(466, NULL, 'KI NGKONG BAKAR', 1, '6', 2000, 'unknow.png'),
(467, NULL, 'KOREK KAYU', 1, '6', 2000, 'unknow.png'),
(468, NULL, 'Laurier super  maxi long', 1, '6', 2000, 'unknow.png'),
(469, NULL, 'Laurier super  reg   8pads', 1, '6', 2000, 'unknow.png'),
(470, NULL, 'LAKBAN', 1, '6', 2000, 'unknow.png'),
(471, NULL, 'LAMPU JARI  MURAH', 1, '6', 2000, 'unknow.png'),
(472, NULL, 'KAPAS LEONY', 1, '6', 2000, 'unknow.png'),
(473, NULL, 'LAVENDA SACH', 1, '6', 2000, 'unknow.png'),
(474, NULL, 'NI CE TISSUE ROLL', 1, '6', 2000, 'unknow.png'),
(475, NULL, 'Power  glue m urah', 1, '6', 2000, 'unknow.png'),
(476, NULL, 'PHILI PS 15  watt', 1, '6', 2000, 'unknow.png'),
(477, NULL, 'PHILI PS 25  watt', 1, '6', 2000, 'unknow.png'),
(478, NULL, 'PAKU PAYUNG', 1, '6', 2000, 'unknow.png'),
(479, NULL, 'PASEO TI SSUE', 1, '6', 2000, 'unknow.png'),
(480, NULL, 'LI LI N CAP PAUS', 1, '6', 2000, 'unknow.png'),
(481, NULL, 'Royal TI SSUE', 1, '6', 2000, 'unknow.png'),
(482, NULL, 'SOFELL JERUK SACH', 1, '6', 2000, 'unknow.png'),
(483, NULL, 'Sedotan  warna', 1, '6', 2000, 'unknow.png'),
(484, NULL, 'STAR TI SSUE KOTAK', 1, '6', 2000, 'unknow.png'),
(485, NULL, 'Tokai korek  gas', 1, '6', 2000, 'unknow.png'),
(486, NULL, 'TESSA TISUE 15\'', 1, '6', 2000, 'unknow.png'),
(487, NULL, 'TESSY TI SSU MAKAN', 1, '6', 2000, 'unknow.png'),
(488, NULL, 'TALI  RAFIA', 1, '6', 2000, 'unknow.png'),
(489, NULL, 'TAMBANG 3  MM', 1, '6', 2000, 'unknow.png'),
(490, NULL, 'TAMBANG 4  MM', 1, '6', 2000, 'unknow.png'),
(491, NULL, 'TAMBANG 5  MM', 1, '6', 2000, 'unknow.png'),
(492, NULL, 'Tiger  blades', 1, '6', 2000, 'unknow.png'),
(493, NULL, 'TUSUK GI GI', 1, '6', 2000, 'unknow.png'),
(494, NULL, 'CUSSONS BABY SABUN', 1, '6', 2000, 'unknow.png'),
(495, NULL, 'CERELAC BERAS M', 1, '6', 2000, 'unknow.png'),
(496, NULL, 'CUSSONS Bedak', 1, '6', 2000, 'unknow.png'),
(497, NULL, 'HAPPY BEDAK', 1, '6', 2000, 'unknow.png'),
(498, NULL, 'TELON LANG 25ML', 1, '6', 2000, 'unknow.png'),
(499, NULL, 'TELON LANG 60ML', 1, '6', 2000, 'unknow.png'),
(500, NULL, 'MAMYPOKO S', 1, '6', 2000, 'unknow.png'),
(501, NULL, 'MAMYPOKO M', 1, '6', 2000, 'unknow.png'),
(502, NULL, 'MAMYPOKO XL', 1, '6', 2000, 'unknow.png'),
(503, NULL, 'MAMYPOKO L', 1, '6', 2000, 'unknow.png'),
(504, NULL, 'PROMI NA SACH', 1, '6', 2000, 'unknow.png'),
(505, NULL, 'SWEETY L', 1, '6', 2000, 'unknow.png'),
(506, NULL, 'SWEETYM', 1, '6', 2000, 'unknow.png'),
(507, NULL, 'SWEETY S', 1, '6', 2000, 'unknow.png'),
(979, '1122334455', 'aqua gelas', 14, '10', 500, 'db3cb5ff2c18e21c4c29e5a7608c9a52.jpg'),
(980, '8999909028999', 'djisamsoe premium', 19, '14', 14500, '8f38ae5712a73597467116f6f150c93b.jpg'),
(981, '123321', 'obeng', 2, ' 6', 1000, '433584baf39f66944b5e1a6fc93813a7.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `id` int(11) NOT NULL,
  `no_trf` varchar(50) NOT NULL,
  `nama_pelanggan` varchar(35) NOT NULL,
  `totalpure` bigint(20) NOT NULL,
  `grand_total` bigint(20) NOT NULL,
  `diskon` int(3) NOT NULL,
  `bayar` bigint(20) NOT NULL,
  `kembalian` bigint(20) NOT NULL,
  `catatan` varchar(50) NOT NULL,
  `tgl_trf` date NOT NULL,
  `jam_trf` time NOT NULL,
  `id_pembayaran` int(2) NOT NULL,
  `no_rek` int(18) DEFAULT NULL,
  `atas_nama` varchar(35) NOT NULL,
  `id_bank` int(2) DEFAULT NULL,
  `operator` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`id`, `no_trf`, `nama_pelanggan`, `totalpure`, `grand_total`, `diskon`, `bayar`, `kembalian`, `catatan`, `tgl_trf`, `jam_trf`, `id_pembayaran`, `no_rek`, `atas_nama`, `id_bank`, `operator`) VALUES
(12, 'C20220309001', '', 28000, 28000, 0, 30000, 2000, '', '2022-03-09', '22:20:43', 1, 0, '', NULL, 'admin'),
(13, 'C20220310012', '', 33000, 33000, 0, 50000, 17000, '', '2022-03-10', '02:48:23', 1, 0, '', NULL, 'admin'),
(14, 'C20220310013', '', 28000, 28000, 0, 30000, 2000, '', '2022-03-10', '17:02:17', 1, 0, '', NULL, 'admin'),
(15, 'T20220310014', 'tam', 21000, 21000, 0, 21000, 0, 'transfer', '2022-03-10', '17:59:52', 2, 2147483647, 'tama', 4, 'admin'),
(16, 'C20220310015', '', 28000, 28000, 0, 28000, 0, '', '2022-03-10', '18:22:24', 1, 0, '', NULL, 'admin'),
(17, 'C20220310016', 'rahmat', 42000, 42000, 0, 50000, 8000, 'ngutang', '2022-03-10', '22:27:38', 1, 0, '', NULL, 'admin'),
(18, 'C20220311017', '', 34000, 34000, 0, 50000, 16000, '', '2022-03-11', '15:44:39', 1, 0, '', NULL, 'admin'),
(19, 'C20220322018', '', 48500, 48500, 0, 50000, 1500, '', '2022-03-22', '22:26:05', 1, 0, '', NULL, 'admin'),
(20, 'C20220323019', 'si anu', 73000, 73000, 0, 73000, 0, 'ngutang', '2022-03-23', '10:58:29', 1, 0, '', 0, 'admin'),
(21, 'T20220323020', 'siani', 2000, 2000, 0, 2000, 0, 'cash', '2022-03-23', '11:05:40', 2, 555555555, 'mumu', 4, 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'food'),
(2, 'nonfood'),
(3, 'ALAT TULIS'),
(4, 'BERAS'),
(5, 'CURAH'),
(6, 'DAPUR'),
(7, 'KANTONG KRESEK'),
(8, 'SABUN'),
(9, 'JAJANAN SNACK'),
(10, 'KOPI'),
(11, 'GAS ELPG'),
(12, 'SENDAL'),
(13, 'MIE INSTAN'),
(14, 'MINUMAN'),
(15, 'OBAT OBATAN'),
(16, 'SUSU'),
(17, 'TEH'),
(18, 'KOPI'),
(19, 'ROKOK'),
(20, 'PERLENGKAPAN BAYI'),
(21, 'AIR MINERAL');

-- --------------------------------------------------------

--
-- Struktur dari tabel `operator`
--

CREATE TABLE `operator` (
  `id_operator` int(11) NOT NULL,
  `nama_operator` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `id_akses` int(3) NOT NULL,
  `last_login` date NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `operator`
--

INSERT INTO `operator` (`id_operator`, `nama_operator`, `username`, `password`, `id_akses`, `last_login`, `foto`) VALUES
(9, 'tambat efendi', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, '2022-03-23', 'e65ec8204ffcde913c83333cc57a3374.jpg'),
(13, 'kasir', 'kasir', 'c7911af3adbd12a035b289556d96470a', 2, '2022-03-11', '6d629bc7dadda3763266229483b9ba3b.jpg'),
(14, 'juminten', 'juminten', 'e10adc3949ba59abbe56e057f20f883e', 2, '2022-03-23', '6ad130d6345910f679949094cbfc53b1.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_byr` int(2) NOT NULL,
  `metode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_byr`, `metode`) VALUES
(1, 'Cash'),
(2, 'Transfer');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_transaksi` int(11) NOT NULL,
  `id_dtlpen` int(5) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah_stok` int(11) NOT NULL,
  `harga_barang` bigint(20) NOT NULL,
  `sub_total` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id_transaksi`, `id_dtlpen`, `id_barang`, `jumlah_stok`, `harga_barang`, `sub_total`) VALUES
(47, 12, 1, 1, 6000, 6000),
(48, 12, 2, 1, 15000, 15000),
(49, 12, 73, 1, 7000, 7000),
(50, 13, 1, 2, 6000, 12000),
(51, 13, 73, 3, 7000, 21000),
(52, 14, 73, 1, 7000, 7000),
(53, 14, 2, 1, 15000, 15000),
(54, 14, 1, 1, 6000, 6000),
(55, 15, 2, 1, 15000, 15000),
(56, 15, 1, 1, 6000, 6000),
(57, 16, 1, 1, 6000, 6000),
(58, 16, 73, 1, 7000, 7000),
(59, 16, 2, 1, 15000, 15000),
(60, 17, 45, 2, 2000, 4000),
(61, 17, 49, 1, 2000, 2000),
(62, 17, 12, 2, 2000, 4000),
(63, 17, 15, 2, 2000, 4000),
(64, 17, 16, 1, 2000, 2000),
(65, 17, 19, 2, 2000, 4000),
(66, 17, 11, 1, 2000, 2000),
(67, 17, 14, 2, 2000, 4000),
(68, 17, 37, 1, 2000, 2000),
(69, 17, 21, 1, 2000, 2000),
(70, 17, 9, 1, 2000, 2000),
(71, 17, 10, 1, 2000, 2000),
(72, 17, 18, 1, 2000, 2000),
(73, 17, 276, 1, 2000, 2000),
(74, 17, 270, 1, 2000, 2000),
(75, 17, 201, 1, 2000, 2000),
(76, 18, 6, 2, 17000, 34000),
(77, 19, 1, 1, 6000, 6000),
(78, 19, 4, 1, 25500, 25500),
(79, 19, 6, 1, 17000, 17000),
(80, 20, 1, 2, 6500, 13000),
(81, 20, 2, 4, 15000, 60000),
(82, 21, 45, 1, 2000, 2000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stok`
--

CREATE TABLE `stok` (
  `id_stok` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `stok_barang` int(11) NOT NULL,
  `tanggal_stok` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `stok`
--

INSERT INTO `stok` (`id_stok`, `id_barang`, `stok_barang`, `tanggal_stok`) VALUES
(1, 1, 18, '2022-03-23'),
(2, 2, 1, '2022-03-23'),
(3, 3, 5, '0000-00-00'),
(4, 4, 4, '2022-03-22'),
(5, 5, 5, '0000-00-00'),
(6, 6, 2, '2022-03-22'),
(7, 7, 5, '0000-00-00'),
(8, 8, 5, '0000-00-00'),
(9, 9, 5, '0000-00-00'),
(10, 10, 5, '0000-00-00'),
(11, 11, 5, '0000-00-00'),
(12, 12, 5, '0000-00-00'),
(13, 13, 5, '0000-00-00'),
(14, 14, 5, '0000-00-00'),
(15, 15, 5, '0000-00-00'),
(16, 16, 5, '0000-00-00'),
(17, 17, 5, '0000-00-00'),
(18, 18, 5, '0000-00-00'),
(19, 19, 5, '0000-00-00'),
(20, 20, 5, '0000-00-00'),
(21, 21, 5, '0000-00-00'),
(22, 22, 5, '0000-00-00'),
(23, 23, 5, '0000-00-00'),
(24, 24, 5, '0000-00-00'),
(25, 25, 5, '0000-00-00'),
(26, 26, 5, '0000-00-00'),
(27, 27, 5, '0000-00-00'),
(28, 28, 5, '0000-00-00'),
(29, 29, 5, '0000-00-00'),
(30, 30, 5, '0000-00-00'),
(31, 31, 5, '0000-00-00'),
(32, 32, 5, '0000-00-00'),
(33, 33, 5, '0000-00-00'),
(34, 34, 5, '0000-00-00'),
(35, 35, 5, '0000-00-00'),
(36, 36, 5, '0000-00-00'),
(37, 37, 5, '0000-00-00'),
(38, 38, 5, '0000-00-00'),
(39, 39, 5, '0000-00-00'),
(40, 40, 5, '0000-00-00'),
(41, 41, 5, '0000-00-00'),
(42, 42, 5, '0000-00-00'),
(43, 43, 5, '0000-00-00'),
(44, 44, 5, '0000-00-00'),
(45, 45, 4, '2022-03-23'),
(46, 46, 5, '0000-00-00'),
(47, 47, 5, '0000-00-00'),
(48, 48, 5, '0000-00-00'),
(49, 49, 5, '0000-00-00'),
(50, 50, 5, '0000-00-00'),
(51, 51, 5, '0000-00-00'),
(52, 52, 5, '0000-00-00'),
(53, 53, 5, '0000-00-00'),
(54, 54, 5, '0000-00-00'),
(55, 55, 5, '0000-00-00'),
(56, 56, 5, '0000-00-00'),
(57, 57, 5, '0000-00-00'),
(58, 58, 5, '0000-00-00'),
(59, 59, 5, '0000-00-00'),
(60, 60, 5, '0000-00-00'),
(61, 61, 5, '0000-00-00'),
(62, 62, 5, '0000-00-00'),
(63, 63, 5, '0000-00-00'),
(64, 64, 5, '0000-00-00'),
(65, 65, 5, '0000-00-00'),
(66, 66, 5, '0000-00-00'),
(67, 67, 5, '0000-00-00'),
(68, 68, 5, '0000-00-00'),
(69, 69, 5, '0000-00-00'),
(70, 70, 5, '0000-00-00'),
(71, 71, 5, '0000-00-00'),
(72, 72, 5, '0000-00-00'),
(73, 73, 5, '0000-00-00'),
(74, 74, 5, '0000-00-00'),
(75, 75, 5, '0000-00-00'),
(76, 76, 5, '0000-00-00'),
(77, 77, 5, '0000-00-00'),
(78, 78, 5, '0000-00-00'),
(79, 79, 5, '0000-00-00'),
(80, 80, 5, '0000-00-00'),
(81, 81, 5, '0000-00-00'),
(82, 82, 5, '0000-00-00'),
(83, 83, 5, '0000-00-00'),
(84, 84, 5, '0000-00-00'),
(85, 85, 5, '0000-00-00'),
(86, 86, 5, '0000-00-00'),
(87, 87, 5, '0000-00-00'),
(88, 88, 5, '0000-00-00'),
(89, 89, 5, '0000-00-00'),
(90, 90, 5, '0000-00-00'),
(91, 91, 5, '0000-00-00'),
(92, 92, 5, '0000-00-00'),
(93, 93, 5, '0000-00-00'),
(94, 94, 5, '0000-00-00'),
(95, 95, 5, '0000-00-00'),
(96, 96, 5, '0000-00-00'),
(97, 97, 5, '0000-00-00'),
(98, 98, 5, '0000-00-00'),
(99, 99, 5, '0000-00-00'),
(100, 100, 5, '0000-00-00'),
(101, 101, 5, '0000-00-00'),
(102, 102, 5, '0000-00-00'),
(103, 103, 5, '0000-00-00'),
(104, 104, 5, '0000-00-00'),
(105, 105, 5, '0000-00-00'),
(106, 106, 5, '0000-00-00'),
(107, 107, 5, '0000-00-00'),
(108, 108, 5, '0000-00-00'),
(109, 109, 5, '0000-00-00'),
(110, 110, 5, '0000-00-00'),
(111, 111, 5, '0000-00-00'),
(112, 112, 5, '0000-00-00'),
(113, 113, 5, '0000-00-00'),
(114, 114, 5, '0000-00-00'),
(115, 115, 5, '0000-00-00'),
(116, 116, 5, '0000-00-00'),
(117, 117, 5, '0000-00-00'),
(118, 118, 5, '0000-00-00'),
(119, 119, 5, '0000-00-00'),
(120, 120, 5, '0000-00-00'),
(121, 121, 5, '0000-00-00'),
(122, 122, 5, '0000-00-00'),
(123, 123, 5, '0000-00-00'),
(124, 124, 5, '0000-00-00'),
(125, 125, 5, '0000-00-00'),
(126, 126, 5, '0000-00-00'),
(127, 127, 5, '0000-00-00'),
(128, 128, 5, '0000-00-00'),
(129, 129, 5, '0000-00-00'),
(130, 130, 5, '0000-00-00'),
(131, 131, 5, '0000-00-00'),
(132, 132, 5, '0000-00-00'),
(133, 133, 5, '0000-00-00'),
(134, 134, 5, '0000-00-00'),
(135, 135, 5, '0000-00-00'),
(136, 136, 5, '0000-00-00'),
(137, 137, 5, '0000-00-00'),
(138, 138, 5, '0000-00-00'),
(139, 139, 5, '0000-00-00'),
(140, 140, 5, '0000-00-00'),
(141, 141, 5, '0000-00-00'),
(142, 142, 5, '0000-00-00'),
(143, 143, 5, '0000-00-00'),
(144, 144, 5, '0000-00-00'),
(145, 145, 5, '0000-00-00'),
(146, 146, 5, '0000-00-00'),
(147, 147, 5, '0000-00-00'),
(148, 148, 5, '0000-00-00'),
(149, 149, 5, '0000-00-00'),
(150, 150, 5, '0000-00-00'),
(151, 151, 5, '0000-00-00'),
(152, 152, 5, '0000-00-00'),
(153, 153, 5, '0000-00-00'),
(154, 154, 5, '0000-00-00'),
(155, 155, 5, '0000-00-00'),
(156, 156, 5, '0000-00-00'),
(157, 157, 5, '0000-00-00'),
(158, 158, 5, '0000-00-00'),
(159, 159, 5, '0000-00-00'),
(160, 160, 5, '0000-00-00'),
(161, 161, 5, '0000-00-00'),
(162, 162, 5, '0000-00-00'),
(163, 163, 5, '0000-00-00'),
(164, 164, 5, '0000-00-00'),
(165, 165, 5, '0000-00-00'),
(166, 166, 5, '0000-00-00'),
(167, 167, 5, '0000-00-00'),
(168, 168, 5, '0000-00-00'),
(169, 169, 5, '0000-00-00'),
(170, 170, 5, '0000-00-00'),
(171, 171, 5, '0000-00-00'),
(172, 172, 5, '0000-00-00'),
(173, 173, 5, '0000-00-00'),
(174, 174, 5, '0000-00-00'),
(175, 175, 5, '0000-00-00'),
(176, 176, 5, '0000-00-00'),
(177, 177, 5, '0000-00-00'),
(178, 178, 5, '0000-00-00'),
(179, 179, 5, '0000-00-00'),
(180, 180, 5, '0000-00-00'),
(181, 181, 5, '0000-00-00'),
(182, 182, 5, '0000-00-00'),
(183, 183, 5, '0000-00-00'),
(184, 184, 5, '0000-00-00'),
(185, 185, 5, '0000-00-00'),
(186, 186, 5, '0000-00-00'),
(187, 187, 5, '0000-00-00'),
(188, 188, 5, '0000-00-00'),
(189, 189, 5, '0000-00-00'),
(190, 190, 5, '0000-00-00'),
(191, 191, 5, '0000-00-00'),
(192, 192, 5, '0000-00-00'),
(193, 193, 5, '0000-00-00'),
(194, 194, 5, '0000-00-00'),
(195, 195, 5, '0000-00-00'),
(196, 196, 5, '0000-00-00'),
(197, 197, 5, '0000-00-00'),
(198, 198, 5, '0000-00-00'),
(199, 199, 5, '0000-00-00'),
(200, 200, 5, '0000-00-00'),
(201, 201, 5, '0000-00-00'),
(202, 202, 5, '0000-00-00'),
(203, 203, 5, '0000-00-00'),
(204, 204, 5, '0000-00-00'),
(205, 205, 5, '0000-00-00'),
(206, 206, 5, '0000-00-00'),
(207, 207, 5, '0000-00-00'),
(208, 208, 5, '0000-00-00'),
(209, 209, 5, '0000-00-00'),
(210, 210, 5, '0000-00-00'),
(211, 211, 5, '0000-00-00'),
(212, 212, 5, '0000-00-00'),
(213, 213, 5, '0000-00-00'),
(214, 214, 5, '0000-00-00'),
(215, 215, 5, '0000-00-00'),
(216, 216, 5, '0000-00-00'),
(217, 217, 5, '0000-00-00'),
(218, 218, 5, '0000-00-00'),
(219, 219, 5, '0000-00-00'),
(220, 220, 5, '0000-00-00'),
(221, 221, 5, '0000-00-00'),
(222, 222, 5, '0000-00-00'),
(223, 223, 5, '0000-00-00'),
(224, 224, 5, '0000-00-00'),
(225, 225, 5, '0000-00-00'),
(226, 226, 5, '0000-00-00'),
(227, 227, 5, '0000-00-00'),
(228, 228, 5, '0000-00-00'),
(229, 229, 5, '0000-00-00'),
(230, 230, 5, '0000-00-00'),
(231, 231, 5, '0000-00-00'),
(232, 232, 5, '0000-00-00'),
(233, 233, 5, '0000-00-00'),
(234, 234, 5, '0000-00-00'),
(235, 235, 5, '0000-00-00'),
(236, 236, 5, '0000-00-00'),
(237, 237, 5, '0000-00-00'),
(238, 238, 5, '0000-00-00'),
(239, 239, 5, '0000-00-00'),
(240, 240, 5, '0000-00-00'),
(241, 241, 5, '0000-00-00'),
(242, 242, 5, '0000-00-00'),
(243, 243, 5, '0000-00-00'),
(244, 244, 5, '0000-00-00'),
(245, 245, 5, '0000-00-00'),
(246, 246, 5, '0000-00-00'),
(247, 247, 5, '0000-00-00'),
(248, 248, 5, '0000-00-00'),
(249, 249, 5, '0000-00-00'),
(250, 250, 5, '0000-00-00'),
(251, 251, 5, '0000-00-00'),
(252, 252, 5, '0000-00-00'),
(253, 253, 5, '0000-00-00'),
(254, 254, 5, '0000-00-00'),
(255, 255, 5, '0000-00-00'),
(256, 256, 5, '0000-00-00'),
(257, 257, 5, '0000-00-00'),
(258, 258, 5, '0000-00-00'),
(259, 259, 5, '0000-00-00'),
(260, 260, 5, '0000-00-00'),
(261, 261, 5, '0000-00-00'),
(262, 262, 5, '0000-00-00'),
(263, 263, 5, '0000-00-00'),
(264, 264, 5, '0000-00-00'),
(265, 265, 5, '0000-00-00'),
(266, 266, 5, '0000-00-00'),
(267, 267, 5, '0000-00-00'),
(268, 268, 5, '0000-00-00'),
(269, 269, 5, '0000-00-00'),
(270, 270, 5, '0000-00-00'),
(271, 271, 5, '0000-00-00'),
(272, 272, 5, '0000-00-00'),
(273, 273, 5, '0000-00-00'),
(274, 274, 5, '0000-00-00'),
(275, 275, 5, '0000-00-00'),
(276, 276, 5, '0000-00-00'),
(277, 277, 5, '0000-00-00'),
(278, 278, 5, '0000-00-00'),
(279, 279, 5, '0000-00-00'),
(280, 280, 5, '0000-00-00'),
(281, 281, 5, '0000-00-00'),
(282, 282, 5, '0000-00-00'),
(283, 283, 5, '0000-00-00'),
(284, 284, 5, '0000-00-00'),
(285, 285, 5, '0000-00-00'),
(286, 286, 5, '0000-00-00'),
(287, 287, 5, '0000-00-00'),
(288, 288, 5, '0000-00-00'),
(289, 289, 5, '0000-00-00'),
(290, 290, 5, '0000-00-00'),
(291, 291, 5, '0000-00-00'),
(292, 292, 5, '0000-00-00'),
(293, 293, 5, '0000-00-00'),
(294, 294, 5, '0000-00-00'),
(295, 295, 5, '0000-00-00'),
(296, 296, 5, '0000-00-00'),
(297, 297, 5, '0000-00-00'),
(298, 298, 5, '0000-00-00'),
(299, 299, 5, '0000-00-00'),
(300, 300, 5, '0000-00-00'),
(301, 301, 5, '0000-00-00'),
(302, 302, 5, '0000-00-00'),
(303, 303, 5, '0000-00-00'),
(304, 304, 5, '0000-00-00'),
(305, 305, 5, '0000-00-00'),
(306, 306, 5, '0000-00-00'),
(307, 307, 5, '0000-00-00'),
(308, 308, 5, '0000-00-00'),
(309, 309, 5, '0000-00-00'),
(310, 310, 5, '0000-00-00'),
(311, 311, 5, '0000-00-00'),
(312, 312, 5, '0000-00-00'),
(313, 313, 5, '0000-00-00'),
(314, 314, 5, '0000-00-00'),
(315, 315, 5, '0000-00-00'),
(316, 316, 5, '0000-00-00'),
(317, 317, 5, '0000-00-00'),
(318, 318, 5, '0000-00-00'),
(319, 319, 5, '0000-00-00'),
(320, 320, 5, '0000-00-00'),
(321, 321, 5, '0000-00-00'),
(322, 322, 5, '0000-00-00'),
(323, 323, 5, '0000-00-00'),
(324, 324, 5, '0000-00-00'),
(325, 325, 5, '0000-00-00'),
(326, 326, 5, '0000-00-00'),
(327, 327, 5, '0000-00-00'),
(328, 328, 5, '0000-00-00'),
(329, 329, 5, '0000-00-00'),
(330, 330, 5, '0000-00-00'),
(331, 331, 5, '0000-00-00'),
(332, 332, 5, '0000-00-00'),
(333, 333, 5, '0000-00-00'),
(334, 334, 5, '0000-00-00'),
(335, 335, 5, '0000-00-00'),
(336, 336, 5, '0000-00-00'),
(337, 337, 5, '0000-00-00'),
(338, 338, 5, '0000-00-00'),
(339, 339, 5, '0000-00-00'),
(340, 340, 5, '0000-00-00'),
(341, 341, 5, '0000-00-00'),
(342, 342, 5, '0000-00-00'),
(343, 343, 5, '0000-00-00'),
(344, 344, 5, '0000-00-00'),
(345, 345, 5, '0000-00-00'),
(346, 346, 5, '0000-00-00'),
(347, 347, 5, '0000-00-00'),
(348, 348, 5, '0000-00-00'),
(349, 349, 5, '0000-00-00'),
(350, 350, 5, '0000-00-00'),
(351, 351, 5, '0000-00-00'),
(352, 352, 5, '0000-00-00'),
(353, 353, 5, '0000-00-00'),
(354, 354, 5, '0000-00-00'),
(355, 355, 5, '0000-00-00'),
(356, 356, 5, '0000-00-00'),
(357, 357, 5, '0000-00-00'),
(358, 358, 5, '0000-00-00'),
(359, 359, 5, '0000-00-00'),
(360, 360, 5, '0000-00-00'),
(361, 361, 5, '0000-00-00'),
(362, 362, 5, '0000-00-00'),
(363, 363, 5, '0000-00-00'),
(364, 364, 5, '0000-00-00'),
(365, 365, 5, '0000-00-00'),
(366, 366, 5, '0000-00-00'),
(367, 367, 5, '0000-00-00'),
(368, 368, 5, '0000-00-00'),
(369, 369, 5, '0000-00-00'),
(370, 370, 5, '0000-00-00'),
(371, 371, 5, '0000-00-00'),
(372, 372, 5, '0000-00-00'),
(373, 373, 5, '0000-00-00'),
(374, 374, 5, '0000-00-00'),
(375, 375, 5, '0000-00-00'),
(376, 376, 5, '0000-00-00'),
(377, 377, 5, '0000-00-00'),
(378, 378, 5, '0000-00-00'),
(379, 379, 5, '0000-00-00'),
(380, 380, 5, '0000-00-00'),
(381, 381, 5, '0000-00-00'),
(382, 382, 5, '0000-00-00'),
(383, 383, 5, '0000-00-00'),
(384, 384, 5, '0000-00-00'),
(385, 385, 5, '0000-00-00'),
(386, 386, 5, '0000-00-00'),
(387, 387, 5, '0000-00-00'),
(388, 388, 5, '0000-00-00'),
(389, 389, 5, '0000-00-00'),
(390, 390, 5, '0000-00-00'),
(391, 391, 5, '0000-00-00'),
(392, 392, 5, '0000-00-00'),
(393, 393, 5, '0000-00-00'),
(394, 394, 5, '0000-00-00'),
(395, 395, 5, '0000-00-00'),
(396, 396, 5, '0000-00-00'),
(397, 397, 5, '0000-00-00'),
(398, 398, 5, '0000-00-00'),
(399, 399, 5, '0000-00-00'),
(400, 400, 5, '0000-00-00'),
(401, 401, 5, '0000-00-00'),
(402, 402, 5, '0000-00-00'),
(403, 403, 5, '0000-00-00'),
(404, 404, 5, '0000-00-00'),
(405, 405, 5, '0000-00-00'),
(406, 406, 5, '0000-00-00'),
(407, 407, 5, '0000-00-00'),
(408, 408, 5, '0000-00-00'),
(409, 409, 5, '0000-00-00'),
(410, 410, 5, '0000-00-00'),
(411, 411, 5, '0000-00-00'),
(412, 412, 5, '0000-00-00'),
(413, 413, 5, '0000-00-00'),
(414, 414, 5, '0000-00-00'),
(415, 415, 5, '0000-00-00'),
(416, 416, 5, '0000-00-00'),
(417, 417, 5, '0000-00-00'),
(418, 418, 5, '0000-00-00'),
(419, 419, 5, '0000-00-00'),
(420, 420, 5, '0000-00-00'),
(421, 421, 5, '0000-00-00'),
(422, 422, 5, '0000-00-00'),
(423, 423, 5, '0000-00-00'),
(424, 424, 5, '0000-00-00'),
(425, 425, 5, '0000-00-00'),
(426, 426, 5, '0000-00-00'),
(427, 427, 5, '0000-00-00'),
(428, 428, 5, '0000-00-00'),
(429, 429, 5, '0000-00-00'),
(430, 430, 5, '0000-00-00'),
(431, 431, 5, '0000-00-00'),
(432, 432, 5, '0000-00-00'),
(433, 433, 5, '0000-00-00'),
(434, 434, 5, '0000-00-00'),
(435, 435, 5, '0000-00-00'),
(436, 436, 5, '0000-00-00'),
(437, 437, 5, '0000-00-00'),
(438, 438, 5, '0000-00-00'),
(439, 439, 5, '0000-00-00'),
(440, 440, 5, '0000-00-00'),
(441, 441, 5, '0000-00-00'),
(442, 442, 5, '0000-00-00'),
(443, 443, 5, '0000-00-00'),
(444, 444, 5, '0000-00-00'),
(445, 445, 5, '0000-00-00'),
(446, 446, 5, '0000-00-00'),
(447, 447, 5, '0000-00-00'),
(448, 448, 5, '0000-00-00'),
(449, 449, 5, '0000-00-00'),
(450, 450, 5, '0000-00-00'),
(451, 451, 5, '0000-00-00'),
(452, 452, 5, '0000-00-00'),
(453, 453, 5, '0000-00-00'),
(454, 454, 5, '0000-00-00'),
(455, 455, 5, '0000-00-00'),
(456, 456, 5, '0000-00-00'),
(457, 457, 5, '0000-00-00'),
(458, 458, 5, '0000-00-00'),
(459, 459, 5, '0000-00-00'),
(460, 460, 5, '0000-00-00'),
(461, 461, 5, '0000-00-00'),
(462, 462, 5, '0000-00-00'),
(463, 463, 5, '0000-00-00'),
(464, 464, 5, '0000-00-00'),
(465, 465, 5, '0000-00-00'),
(466, 466, 5, '0000-00-00'),
(467, 467, 5, '0000-00-00'),
(468, 468, 5, '0000-00-00'),
(469, 469, 5, '0000-00-00'),
(470, 470, 5, '0000-00-00'),
(471, 471, 5, '0000-00-00'),
(472, 472, 5, '0000-00-00'),
(473, 473, 5, '0000-00-00'),
(474, 474, 5, '0000-00-00'),
(475, 475, 5, '0000-00-00'),
(476, 476, 5, '0000-00-00'),
(477, 477, 5, '0000-00-00'),
(478, 478, 5, '0000-00-00'),
(479, 479, 5, '0000-00-00'),
(480, 480, 5, '0000-00-00'),
(481, 481, 5, '0000-00-00'),
(482, 482, 5, '0000-00-00'),
(483, 483, 5, '0000-00-00'),
(484, 484, 5, '0000-00-00'),
(485, 485, 5, '0000-00-00'),
(486, 486, 5, '0000-00-00'),
(487, 487, 5, '0000-00-00'),
(488, 488, 5, '0000-00-00'),
(489, 489, 5, '0000-00-00'),
(490, 490, 5, '0000-00-00'),
(491, 491, 5, '0000-00-00'),
(492, 492, 5, '0000-00-00'),
(493, 493, 5, '0000-00-00'),
(494, 494, 5, '0000-00-00'),
(495, 495, 5, '0000-00-00'),
(496, 496, 5, '0000-00-00'),
(497, 497, 5, '0000-00-00'),
(498, 498, 5, '0000-00-00'),
(499, 499, 5, '0000-00-00'),
(500, 500, 5, '0000-00-00'),
(501, 501, 5, '0000-00-00'),
(502, 502, 5, '0000-00-00'),
(503, 503, 5, '0000-00-00'),
(504, 504, 5, '0000-00-00'),
(505, 505, 5, '0000-00-00'),
(506, 506, 5, '0000-00-00'),
(507, 507, 5, '0000-00-00'),
(510, 1, 18, '2022-03-23'),
(511, 980, 50, '2022-03-23'),
(512, 981, 50, '2022-03-23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ukuran`
--

CREATE TABLE `ukuran` (
  `id_ukuran` int(11) NOT NULL,
  `nama_ukuran` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ukuran`
--

INSERT INTO `ukuran` (`id_ukuran`, `nama_ukuran`) VALUES
(1, 'S'),
(2, 'M'),
(3, 'L'),
(4, 'XL'),
(5, 'XXL'),
(6, 'No Size'),
(7, 'liter'),
(8, 'kg'),
(9, 'g'),
(10, 'ml'),
(11, 'M'),
(12, 'Cm'),
(13, 'pack'),
(14, 'bks');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akses`
--
ALTER TABLE `akses`
  ADD PRIMARY KEY (`id_akses`);

--
-- Indeks untuk tabel `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `operator`
--
ALTER TABLE `operator`
  ADD PRIMARY KEY (`id_operator`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_byr`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `stok`
--
ALTER TABLE `stok`
  ADD PRIMARY KEY (`id_stok`);

--
-- Indeks untuk tabel `ukuran`
--
ALTER TABLE `ukuran`
  ADD PRIMARY KEY (`id_ukuran`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akses`
--
ALTER TABLE `akses`
  MODIFY `id_akses` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=982;

--
-- AUTO_INCREMENT untuk tabel `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `operator`
--
ALTER TABLE `operator`
  MODIFY `id_operator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_byr` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT untuk tabel `stok`
--
ALTER TABLE `stok`
  MODIFY `id_stok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=513;

--
-- AUTO_INCREMENT untuk tabel `ukuran`
--
ALTER TABLE `ukuran`
  MODIFY `id_ukuran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jul 2022 pada 07.31
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `harga_barang` varchar(30) NOT NULL,
  `image_barang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`id_barang`, `nama_barang`, `harga_barang`, `image_barang`) VALUES
(1, 'kaos', '75000', 'kaos.jpeg'),
(2, 'topi', '35000', 'topijpg.jpg'),
(3, 'totebag', '60000', 'totebag.jpg'),
(4, 'ewallet', '52500', 'ewallet.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_penukaran`
--

CREATE TABLE `tb_penukaran` (
  `id_penukaran` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_penukaran`
--

INSERT INTO `tb_penukaran` (`id_penukaran`, `id_user`, `id_barang`) VALUES
(1, 13, 1),
(2, 13, 2),
(3, 13, 3),
(4, 13, 4),
(5, 21, 1),
(6, 21, 2),
(7, 21, 3),
(8, 21, 4),
(9, 21, 4),
(10, 13, 1),
(11, 13, 1),
(12, 13, 1),
(13, 13, 1),
(14, 13, 1),
(15, 13, 1),
(16, 13, 1),
(17, 13, 1),
(18, 13, 1),
(19, 13, 1),
(20, 13, 2),
(21, 13, 4),
(22, 13, 1),
(23, 13, 1),
(24, 13, 1),
(25, 13, 1),
(26, 13, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_sampah`
--

CREATE TABLE `tb_sampah` (
  `id_sampah` int(11) NOT NULL,
  `sampah` varchar(30) NOT NULL,
  `harga` varchar(30) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_sampah`
--

INSERT INTO `tb_sampah` (`id_sampah`, `sampah`, `harga`, `image`) VALUES
(1, 'botol plastik', '100', 'sampah_btl_plastik.jpg'),
(2, 'kaleng bekas', '150', 'sampah_kaleng.jpg'),
(3, 'sterofoam', '100', 'sampah_sterofoam.jpeg'),
(4, 'kain bekas', '100', 'sampah_kain.jpeg'),
(5, 'botol kaca', '150', 'sampah_botol_kaca.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_sampah` int(11) NOT NULL,
  `kuantitas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_transaksi`, `id_user`, `id_sampah`, `kuantitas`) VALUES
(41, 13, 1, 1),
(42, 13, 2, 1),
(43, 13, 3, 1),
(44, 13, 4, 1),
(45, 13, 5, 1),
(46, 16, 1, 1),
(47, 16, 2, 1),
(48, 16, 3, 1),
(49, 16, 4, 1),
(50, 16, 5, 1),
(51, 13, 1, 10),
(52, 13, 2, 12),
(53, 13, 3, 14),
(54, 13, 4, 15),
(55, 13, 5, 14),
(56, 13, 1, 100),
(57, 13, 2, 100),
(58, 13, 3, 100),
(59, 13, 4, 142),
(60, 13, 5, 1),
(61, 13, 1, 42),
(62, 13, 2, 22),
(63, 13, 3, 11),
(64, 13, 4, 1),
(65, 13, 5, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(35) NOT NULL,
  `phonenumber` varchar(15) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(11) NOT NULL,
  `saldo` int(11) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `fullname`, `phonenumber`, `username`, `email`, `password`, `saldo`, `gender`, `status`) VALUES
(13, 'sukasuki', '753524', 'kucing', 'kucing@ymail.com', 'jiji', 0, 'Male', 'user'),
(14, 'admin_master', '081226347103', 'kang_admin', 'musyaffaaffa@gmail.com', 'masteradmin', 0, 'Male', 'admin'),
(16, 'admin_satu', '001', 'admin1', 'admin@gmail.com', 'adminsatu', 0, 'Male', 'admin'),
(17, 'admin_dua', '002', 'admin2', 'admin@gmail.com', 'admin2', 0, 'Female', 'admin'),
(22, 'asd', 'adddd', 'asa', 'asa@asa.m', 'asa', 0, 'Male', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `tb_penukaran`
--
ALTER TABLE `tb_penukaran`
  ADD PRIMARY KEY (`id_penukaran`);

--
-- Indeks untuk tabel `tb_sampah`
--
ALTER TABLE `tb_sampah`
  ADD PRIMARY KEY (`id_sampah`);

--
-- Indeks untuk tabel `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_penukaran`
--
ALTER TABLE `tb_penukaran`
  MODIFY `id_penukaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `tb_sampah`
--
ALTER TABLE `tb_sampah`
  MODIFY `id_sampah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

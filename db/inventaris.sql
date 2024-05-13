-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Bulan Mei 2024 pada 06.20
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventaris`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `keluar`
--

CREATE TABLE `keluar` (
  `idkeluar` int(11) NOT NULL,
  `idbarang` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `penerima` varchar(50) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `keluar`
--

INSERT INTO `keluar` (`idkeluar`, `idbarang`, `tanggal`, `penerima`, `qty`) VALUES
(1, 1, '2024-03-27 01:52:29', 'bambang', 13),
(2, 1, '2024-03-27 01:53:15', 'adi', 2),
(3, 3, '2024-03-27 05:26:55', 'dimas', 25),
(4, 19, '2024-04-16 15:42:50', 'bayu', 100),
(7, 21, '2024-04-19 04:16:37', 'bayu', 1),
(8, 32, '2024-04-22 05:43:47', 'Pak Andi', 2),
(9, 26, '2024-04-22 05:44:14', 'Pak Syaiful', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `list`
--

CREATE TABLE `list` (
  `idbarang` int(11) NOT NULL,
  `namabarang` varchar(50) NOT NULL,
  `deskripsi` varchar(50) NOT NULL,
  `stock` int(11) NOT NULL,
  `barcode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `list`
--

INSERT INTO `list` (`idbarang`, `namabarang`, `deskripsi`, `stock`, `barcode`) VALUES
(22, 'Panasonic', 'AC, Terdapat di ruangan Billing Room', 4, ''),
(23, 'LG', '1 Set Komputer, di ruangan Billing Room', 9, ''),
(24, 'Sofa', 'kursi dan meja, di ruangan Billling Room', 1, ''),
(25, 'Kursi Kantor Roda', 'di ruangan Billing Room', 9, ''),
(26, 'Meja Kantor', 'di ruangan Billing Room', 9, ''),
(31, 'Canon', 'Printer Scanner, di ruangan Billing room', 3, ''),
(32, 'Epson', 'Printer 3ply, di ruangan Billing Room', 1, ''),
(33, 'Panasonic', 'AC, Terdapat di ruangan Keuangan', 1, ''),
(34, 'LG', '1 Set Komputer, di ruangan Keuangan', 2, ''),
(35, 'Kursi Kantor Roda', 'di ruangan Keuangan', 2, ''),
(36, 'Meja Kantor', 'di ruangan Keuangan', 2, ''),
(37, 'Panasonic', '1 Set Komputer, di ruangan Control Tower', 6, ''),
(38, 'Panasonic', 'AC, Terdapat di ruangan Control Tower', 5, ''),
(39, 'Canon', 'Printer Scanner, di ruangan Control Tower', 2, ''),
(41, 'toyota', 'mobil', 2, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `iduser` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`iduser`, `email`, `password`) VALUES
(1, 'ptipc@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Struktur dari tabel `masuk`
--

CREATE TABLE `masuk` (
  `idmasuk` int(11) NOT NULL,
  `idbarang` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `keterangan` varchar(50) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `masuk`
--

INSERT INTO `masuk` (`idmasuk`, `idbarang`, `tanggal`, `keterangan`, `qty`) VALUES
(16, 2, '2024-03-26 16:31:36', 'adi', 300),
(17, 3, '2024-03-27 05:26:36', 'adit', 40),
(31, 16, '2024-04-16 14:29:17', 'bambang', 50),
(41, 19, '2024-04-16 16:00:17', 'bayu', 800),
(42, 21, '2024-04-19 04:14:36', 'bayu', 4),
(43, 32, '2024-04-22 05:28:56', 'Pak Andi', 2),
(44, 26, '2024-04-22 05:42:51', 'Pak Syaiful', 5);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `keluar`
--
ALTER TABLE `keluar`
  ADD PRIMARY KEY (`idkeluar`);

--
-- Indeks untuk tabel `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`idbarang`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`iduser`);

--
-- Indeks untuk tabel `masuk`
--
ALTER TABLE `masuk`
  ADD PRIMARY KEY (`idmasuk`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `keluar`
--
ALTER TABLE `keluar`
  MODIFY `idkeluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `list`
--
ALTER TABLE `list`
  MODIFY `idbarang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `masuk`
--
ALTER TABLE `masuk`
  MODIFY `idmasuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

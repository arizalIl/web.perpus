-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2026 at 01:36 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','manajer') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`id`, `nama`, `username`, `password`, `role`, `created_at`) VALUES
(1, 'Administrator', 'admin', 'admin123', 'admin', '2026-07-03 02:13:53'),
(2, 'Budi Santoso', 'budi', 'budi123', 'manajer', '2026-07-03 02:13:53');

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `tanggal_daftar` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id`, `nama`, `jenis_kelamin`, `alamat`, `no_hp`, `tanggal_daftar`) VALUES
(1, 'Ahmad Fauzi', 'L', 'Bandung', '081234567890', '2025-01-10'),
(2, 'Siti Rahma', 'P', 'Jakarta', '081234567891', '2025-02-12'),
(3, 'Dewi Lestari', 'P', 'Bogor', '081234567892', '2025-03-15'),
(4, 'Rizky Pratama', 'L', 'Bekasi', '081234567893', '2025-04-20'),
(5, 'Nanda Putri', 'P', 'Depok', '081234567894', '2025-05-01'),
(6, 'Ahmad Fauzi', 'L', 'Bandung', '081111111111', '2025-01-01'),
(7, 'Siti Rahma', 'P', 'Jakarta', '081111111112', '2025-01-05'),
(8, 'Dewi Lestari', 'P', 'Bogor', '081111111113', '2025-01-10'),
(9, 'Rizky Pratama', 'L', 'Bekasi', '081111111114', '2025-01-15'),
(10, 'Nanda Putri', 'P', 'Depok', '081111111115', '2025-01-20'),
(11, 'Fajar Nugraha', 'L', 'Bandung', '081111111116', '2025-02-01'),
(12, 'Ayu Kartika', 'P', 'Jakarta', '081111111117', '2025-02-10'),
(13, 'Doni Saputra', 'L', 'Bogor', '081111111118', '2025-02-15'),
(14, 'Rina Melati', 'P', 'Bekasi', '081111111119', '2025-03-01'),
(15, 'Yoga Prasetyo', 'L', 'Depok', '081111111120', '2025-03-10');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `isbn` varchar(200) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `penulis` varchar(100) NOT NULL,
  `penerbit` varchar(100) DEFAULT NULL,
  `tahun_terbit` year(4) DEFAULT NULL,
  `stok` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `kategori_id`, `isbn`, `judul`, `penulis`, `penerbit`, `tahun_terbit`, `stok`) VALUES
(1, 1, '978001', 'Pemrograman Java', 'Andi Wijaya', 'Informatika', '2023', 11),
(2, 1, '978002', 'Belajar PHP', 'Rudi Hartono', 'Elex Media', '2022', 9),
(3, 2, '978003', 'Metode Penelitian', 'Sugiyono', 'Alfabeta', '2021', 12),
(4, 3, '978004', 'Laskar Pelangi', 'Andrea Hirata', 'Bentang', '2005', 15),
(5, 4, '978005', 'Sejarah Indonesia', 'M.C. Ricklefs', 'Gramedia', '2018', 7),
(6, 5, '978006', 'Manajemen Bisnis Modern', 'Bambang Riyanto', 'Gramedia', '2020', 9),
(7, 1, '978007', 'Laravel Fundamental', 'Muhammad Iqbal', 'Informatika', '2024', 5),
(8, 1, '978008', 'Database MySQL', 'Andri Kurniawan', 'Elex Media', '2022', 3),
(9, 1, '978009', 'JavaScript Modern', 'Rizal Fahmi', 'Informatika', '2023', 2),
(10, 2, '978010', 'Statistika Dasar', 'Sugiyono', 'Alfabeta', '2021', 10),
(11, 2, '978011', 'Psikologi Pendidikan', 'Slameto', 'Rineka Cipta', '2020', 4),
(12, 3, '978012', 'Bumi', 'Tere Liye', 'Gramedia', '2021', 12),
(13, 3, '978013', 'Hujan', 'Tere Liye', 'Gramedia', '2018', 8),
(14, 4, '978014', 'Sejarah Dunia', 'John Roberts', 'Gramedia', '2019', 6),
(15, 5, '978015', 'Pengantar Ekonomi', 'Sadono Sukirno', 'Rajawali', '2020', 7);

-- --------------------------------------------------------

--
-- Table structure for table `detail_peminjaman`
--

CREATE TABLE `detail_peminjaman` (
  `id` int(11) NOT NULL,
  `peminjaman_id` int(11) NOT NULL,
  `buku_id` int(11) NOT NULL,
  `jumlah` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_peminjaman`
--

INSERT INTO `detail_peminjaman` (`id`, `peminjaman_id`, `buku_id`, `jumlah`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 2, 3, 1),
(4, 3, 4, 1),
(5, 4, 5, 1),
(6, 4, 6, 1),
(7, 5, 2, 1),
(8, 6, 1, 1),
(9, 7, 2, 1),
(10, 8, 2, 1),
(11, 9, 1, 1),
(12, 10, 7, 1),
(13, 11, 8, 1),
(14, 12, 2, 1),
(15, 13, 1, 1),
(16, 14, 12, 1),
(17, 15, 13, 1),
(18, 16, 2, 1),
(19, 17, 1, 1),
(20, 18, 2, 1),
(21, 19, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama_kategori`) VALUES
(1, 'Teknologi'),
(2, 'Pendidikan'),
(3, 'Novel'),
(4, 'Sejarah'),
(5, 'Bisnis');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` int(11) NOT NULL,
  `anggota_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_jatuh_tempo` date NOT NULL,
  `status` enum('Dipinjam','Selesai') DEFAULT 'Dipinjam'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id`, `anggota_id`, `user_id`, `tanggal_pinjam`, `tanggal_jatuh_tempo`, `status`) VALUES
(1, 1, 2, '2026-06-01', '2026-06-08', 'Selesai'),
(2, 2, 2, '2026-06-05', '2026-06-12', 'Selesai'),
(3, 3, 2, '2026-06-10', '2026-06-17', 'Selesai'),
(4, 4, 2, '2026-06-15', '2026-06-22', 'Selesai'),
(5, 5, 2, '2026-01-10', '2026-01-17', 'Selesai'),
(6, 6, 2, '2026-01-20', '2026-01-27', 'Selesai'),
(7, 7, 2, '2026-02-05', '2026-02-12', 'Selesai'),
(8, 8, 2, '2026-02-18', '2026-02-25', 'Selesai'),
(9, 9, 2, '2026-03-08', '2026-03-15', 'Selesai'),
(10, 10, 2, '2026-03-20', '2026-03-27', 'Selesai'),
(11, 11, 2, '2026-04-02', '2026-04-09', 'Selesai'),
(12, 12, 2, '2026-04-18', '2026-04-25', 'Selesai'),
(13, 13, 2, '2026-05-05', '2026-05-12', 'Selesai'),
(14, 14, 2, '2026-05-17', '2026-05-24', 'Selesai'),
(15, 15, 2, '2026-06-02', '2026-06-09', 'Selesai'),
(16, 6, 2, '2026-06-10', '2026-06-17', 'Selesai'),
(17, 7, 2, '2026-06-20', '2026-06-27', 'Selesai'),
(18, 8, 2, '2026-06-25', '2026-07-02', 'Selesai'),
(19, 9, 2, '2026-07-01', '2026-07-08', 'Dipinjam');

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan`
--

CREATE TABLE `pengaturan` (
  `id` int(11) NOT NULL,
  `denda_per_hari` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengaturan`
--

INSERT INTO `pengaturan` (`id`, `denda_per_hari`) VALUES
(1, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id` int(11) NOT NULL,
  `peminjaman_id` int(11) NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `denda` decimal(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengembalian`
--

INSERT INTO `pengembalian` (`id`, `peminjaman_id`, `tanggal_kembali`, `denda`) VALUES
(2, 3, '2026-06-20', 15000.00),
(5, 7, '2026-02-10', 0.00),
(6, 8, '2026-02-24', 0.00),
(7, 9, '2026-03-18', 10000.00),
(8, 10, '2026-03-25', 0.00),
(9, 11, '2026-04-09', 0.00),
(10, 12, '2026-04-28', 15000.00),
(11, 13, '2026-05-11', 0.00),
(12, 14, '2026-05-23', 0.00),
(13, 15, '2026-06-08', 0.00),
(14, 16, '2026-06-20', 5000.00),
(15, 17, '2026-06-27', 0.00),
(16, 18, '2026-09-03', 315000.00),
(17, 1, '2026-07-05', 0.00),
(18, 2, '2026-07-05', 0.00),
(19, 4, '2026-07-05', 0.00),
(20, 5, '2026-07-05', 0.00),
(21, 6, '2026-07-05', 0.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indexes for table `detail_peminjaman`
--
ALTER TABLE `detail_peminjaman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `peminjaman_id` (`peminjaman_id`),
  ADD KEY `buku_id` (`buku_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anggota_id` (`anggota_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `peminjaman_id` (`peminjaman_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrator`
--
ALTER TABLE `administrator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `detail_peminjaman`
--
ALTER TABLE `detail_peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `detail_peminjaman`
--
ALTER TABLE `detail_peminjaman`
  ADD CONSTRAINT `detail_peminjaman_ibfk_1` FOREIGN KEY (`peminjaman_id`) REFERENCES `peminjaman` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `detail_peminjaman_ibfk_2` FOREIGN KEY (`buku_id`) REFERENCES `buku` (`id`);

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`anggota_id`) REFERENCES `anggota` (`id`);

--
-- Constraints for table `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD CONSTRAINT `pengembalian_ibfk_1` FOREIGN KEY (`peminjaman_id`) REFERENCES `peminjaman` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

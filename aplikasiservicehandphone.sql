-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 12 Bulan Mei 2020 pada 18.05
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplikasiservicehandphone`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` varchar(6) NOT NULL,
  `nama_pelanggan` varchar(30) NOT NULL,
  `merk_hp` varchar(30) NOT NULL,
  `penyebab` varchar(30) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `no_telepon` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `merk_hp`, `penyebab`, `tanggal_masuk`, `no_telepon`) VALUES
('140032', 'Dimas Aprilian Sulaiman Putra', 'Iphone 11 Pro Max', 'LCD retak', '2020-05-10', '08990402224'),
('140042', 'Sony Raihan Putra Butar Butar', 'Iphone 11 Pro', 'Mati total', '2020-05-10', '082178767298'),
('140056', 'Muhammad Ariq Rafi', 'Samsung Galaxy S20 Ultra', 'Kamera depan buram', '2020-05-11', '085234567565'),
('140065', 'Adam Taufiqurrahman', 'Samsung Galaxy Z Flip', 'Tidak bisa hidup', '2020-05-12', '081299877765'),
('140177', 'Sabrina Zahra Salsabila', 'Iphone SE 2', 'Tidak bisa ngecas', '2020-05-10', '089504080333'),
('140197', 'Neza Chania Putri', 'Samsung Galaxy Fold', 'HP suka mati sendiri', '2020-05-11', '085246332439');

-- --------------------------------------------------------

--
-- Struktur dari tabel `service`
--

CREATE TABLE `service` (
  `id_pelanggan` varchar(6) NOT NULL,
  `nama_pelanggan` varchar(30) NOT NULL,
  `merk_hp` varchar(30) NOT NULL,
  `penyebab` varchar(30) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `no_telepon` varchar(30) NOT NULL,
  `id_teknisi` varchar(6) NOT NULL,
  `nama_teknisi` varchar(30) NOT NULL,
  `notelp_teknisi` varchar(30) NOT NULL,
  `bagian_rusak` varchar(30) NOT NULL,
  `konfirmasi_kerusakan` varchar(30) NOT NULL,
  `tanggal_selesai` date NOT NULL,
  `biaya_perbaikan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `service`
--

INSERT INTO `service` (`id_pelanggan`, `nama_pelanggan`, `merk_hp`, `penyebab`, `tanggal_masuk`, `no_telepon`, `id_teknisi`, `nama_teknisi`, `notelp_teknisi`, `bagian_rusak`, `konfirmasi_kerusakan`, `tanggal_selesai`, `biaya_perbaikan`) VALUES
('140032', 'Dimas Aprilian Sulaiman Putra', 'Iphone 11 Pro Max', 'LCD retak', '2020-05-10', '08990402224', '100001', 'Harry Potter', '081256743231', 'LCD', 'Selesai', '2020-05-14', '8300000'),
('140042', 'Sony Raihan Putra Butar Butar', 'Iphone 11 Pro', 'Mati Total', '2020-05-10', '082178767298', '100002', 'Ron Weasley', '089567843212', 'Baterai', 'Selesai', '2020-05-14', '1500000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `teknisi`
--

CREATE TABLE `teknisi` (
  `id_teknisi` varchar(6) NOT NULL,
  `nama_teknisi` varchar(30) NOT NULL,
  `notelp_teknisi` varchar(30) NOT NULL,
  `bagian_rusak` varchar(30) NOT NULL,
  `konfirmasi_kerusakan` varchar(30) NOT NULL,
  `tanggal_selesai` date NOT NULL,
  `biaya_perbaikan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `teknisi`
--

INSERT INTO `teknisi` (`id_teknisi`, `nama_teknisi`, `notelp_teknisi`, `bagian_rusak`, `konfirmasi_kerusakan`, `tanggal_selesai`, `biaya_perbaikan`) VALUES
('100001', 'Harry Potter', '081256743231', 'LCD', 'Selesai', '2020-05-14', '8300000'),
('100002', 'Ron Weasley', '089567843212', 'Baterai', 'Selesai', '2020-05-14', '1500000');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `service`
--
ALTER TABLE `service`
  ADD KEY `fk_teknisi_service` (`id_teknisi`),
  ADD KEY `fk_pelanggan_service` (`id_pelanggan`);

--
-- Indeks untuk tabel `teknisi`
--
ALTER TABLE `teknisi`
  ADD PRIMARY KEY (`id_teknisi`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `fk_pelanggan_service` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`),
  ADD CONSTRAINT `fk_teknisi_service` FOREIGN KEY (`id_teknisi`) REFERENCES `teknisi` (`id_teknisi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

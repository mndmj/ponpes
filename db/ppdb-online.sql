-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jun 2022 pada 22.10
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppdb-online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_agama`
--

CREATE TABLE `tbl_agama` (
  `id_agama` int(2) NOT NULL,
  `agama` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_agama`
--

INSERT INTO `tbl_agama` (`id_agama`, `agama`) VALUES
(1, 'Islam'),
(2, 'Protestan'),
(3, 'Hindu'),
(5, 'Khatolik'),
(6, 'Budha'),
(7, 'Konghucu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pekerjaan`
--

CREATE TABLE `tbl_pekerjaan` (
  `id_pekerjaan` int(2) NOT NULL,
  `pekerjaan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pekerjaan`
--

INSERT INTO `tbl_pekerjaan` (`id_pekerjaan`, `pekerjaan`) VALUES
(1, 'PNS'),
(2, 'Swasta'),
(3, 'TNI/POLRI'),
(4, 'Wiraswasta'),
(13, 'Buruh');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pendidikan`
--

CREATE TABLE `tbl_pendidikan` (
  `id_pendidikan` int(2) NOT NULL,
  `pendidikan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pendidikan`
--

INSERT INTO `tbl_pendidikan` (`id_pendidikan`, `pendidikan`) VALUES
(4, 'Tidak Tamat Sekolah'),
(5, 'SD/Setara'),
(6, 'SMP/Setara'),
(8, 'SMA/Setara'),
(9, 'D1'),
(10, 'D2'),
(11, 'D3'),
(12, 'D4'),
(13, 'S1'),
(14, 'S2'),
(15, 'S3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_penghasilan`
--

CREATE TABLE `tbl_penghasilan` (
  `id_penghasilan` int(2) NOT NULL,
  `penghasilan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_penghasilan`
--

INSERT INTO `tbl_penghasilan` (`id_penghasilan`, `penghasilan`) VALUES
(1, 'Rp.0 s/d Rp.500.000'),
(2, 'Rp.500.000 s/d Rp.1.000.000'),
(3, 'Rp.1.000.000 s/d Rp.1.500.000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `id` int(1) NOT NULL,
  `nama_sekolah` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kecamatan` varchar(255) DEFAULT NULL,
  `kabupaten` varchar(255) DEFAULT NULL,
  `provinsi` varchar(255) DEFAULT NULL,
  `no_telp` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `web` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_setting`
--

INSERT INTO `tbl_setting` (`id`, `nama_sekolah`, `alamat`, `kecamatan`, `kabupaten`, `provinsi`, `no_telp`, `email`, `web`, `deskripsi`, `logo`) VALUES
(1, 'Pondok Pesantren Al-Iman Muntilan', 'Jl. Talun, Patosan, Sedayu', 'Muntilan', 'Muntilan', 'Jawa Tengah', '0293587367', 'pondokiman@gmail.com', 'https://pesantrenaliman.or.id/', 'Unggul dalam akhlaq, ilmu, prestasi, life skill, dan sosial dakwah                                                                                                                                            ', '1654964124_3632054bfa8040f452cd.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_ta`
--

CREATE TABLE `tbl_ta` (
  `id_ta` int(11) NOT NULL,
  `tahun` year(4) DEFAULT NULL,
  `ta` varchar(25) DEFAULT NULL,
  `status` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_ta`
--

INSERT INTO `tbl_ta` (`id_ta`, `tahun`, `ta`, `status`) VALUES
(1, 2021, '2021/2022', 0),
(2, 2022, '2022/2023', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_user`, `email`, `password`, `foto`) VALUES
(1, 'Administrator', 'admin@gmail.com', '1234', '1650941385_55692b206507e8ae8f84.jpg'),
(2, 'a', 'a@gmail.com', '1234', '1650941399_1eef8ef5256ac84a5e17.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_agama`
--
ALTER TABLE `tbl_agama`
  ADD PRIMARY KEY (`id_agama`);

--
-- Indeks untuk tabel `tbl_pekerjaan`
--
ALTER TABLE `tbl_pekerjaan`
  ADD PRIMARY KEY (`id_pekerjaan`);

--
-- Indeks untuk tabel `tbl_pendidikan`
--
ALTER TABLE `tbl_pendidikan`
  ADD PRIMARY KEY (`id_pendidikan`);

--
-- Indeks untuk tabel `tbl_penghasilan`
--
ALTER TABLE `tbl_penghasilan`
  ADD PRIMARY KEY (`id_penghasilan`);

--
-- Indeks untuk tabel `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_ta`
--
ALTER TABLE `tbl_ta`
  ADD PRIMARY KEY (`id_ta`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_agama`
--
ALTER TABLE `tbl_agama`
  MODIFY `id_agama` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_pekerjaan`
--
ALTER TABLE `tbl_pekerjaan`
  MODIFY `id_pekerjaan` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `tbl_pendidikan`
--
ALTER TABLE `tbl_pendidikan`
  MODIFY `id_pendidikan` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tbl_penghasilan`
--
ALTER TABLE `tbl_penghasilan`
  MODIFY `id_penghasilan` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_setting`
--
ALTER TABLE `tbl_setting`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_ta`
--
ALTER TABLE `tbl_ta`
  MODIFY `id_ta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

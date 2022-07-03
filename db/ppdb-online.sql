-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jul 2022 pada 22.02
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
-- Struktur dari tabel `tbl_baner`
--

CREATE TABLE `tbl_baner` (
  `id_baner` int(11) NOT NULL,
  `ket` varchar(255) DEFAULT NULL,
  `baner` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_baner`
--

INSERT INTO `tbl_baner` (`id_baner`, `ket`, `baner`) VALUES
(1, 'Baner 1', 'baner1.jpg'),
(2, 'Baner 2', '1656342681_81e4edad1e6dd53035bb.jpg'),
(3, 'Baner 3', '1656153601_096ccd0c6c3fcffb168a.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jalur_masuk`
--

CREATE TABLE `tbl_jalur_masuk` (
  `id_jalur_masuk` int(2) NOT NULL,
  `jalur_masuk` varchar(255) DEFAULT NULL,
  `kuota` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_jalur_masuk`
--

INSERT INTO `tbl_jalur_masuk` (`id_jalur_masuk`, `jalur_masuk`, `kuota`) VALUES
(1, 'Zonasi', 100),
(2, 'Prestasi', 25),
(3, 'Afirmasi', 40),
(4, 'Perpindahan', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jurusan`
--

CREATE TABLE `tbl_jurusan` (
  `id_jurusan` int(2) NOT NULL,
  `jurusan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_jurusan`
--

INSERT INTO `tbl_jurusan` (`id_jurusan`, `jurusan`) VALUES
(1, 'Tidak Ada'),
(2, 'MTs IPA'),
(3, 'MTs IPS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_lampiran`
--

CREATE TABLE `tbl_lampiran` (
  `id_lampiran` int(2) NOT NULL,
  `lampiran` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_lampiran`
--

INSERT INTO `tbl_lampiran` (`id_lampiran`, `lampiran`) VALUES
(1, 'Kartu Keluarga'),
(2, 'Ijazah'),
(3, 'SKHUN'),
(5, 'Akte Kelahiran'),
(6, 'FC Nilai Raport'),
(7, 'Kartu NISN'),
(8, 'Sertifikat'),
(9, 'KIP');

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
  `logo` varchar(255) DEFAULT NULL,
  `beranda` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_setting`
--

INSERT INTO `tbl_setting` (`id`, `nama_sekolah`, `alamat`, `kecamatan`, `kabupaten`, `provinsi`, `no_telp`, `email`, `web`, `deskripsi`, `logo`, `beranda`) VALUES
(1, 'Pondok Pesantren Al-Iman Muntilan', 'Jl. Talun, Patosan, Sedayu', 'Muntilan', 'Muntilan', 'Jawa Tengah', '0293587367', 'pondokiman@gmail.com', 'https://pesantrenaliman.or.id/', 'Unggul dalam akhlaq, ilmu, prestasi, life skill, dan sosial dakwah                                                                                                                                            ', '1654964124_3632054bfa8040f452cd.png', '                    <h5 style=\"text-align: center; margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px;\" class=\"\"><span style=\"font-family: \" source=\"\" sans=\"\" pro\";\"=\"\"><b>PPDB Online Pondok Pesantrean Al Iman Muntilan</b></span></h5><p style=\"margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px;\" class=\"\"><span style=\"font-family: \" source=\"\" sans=\"\" pro\";\"=\"\"><br></span></p><p style=\"margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px;\" class=\"\"><b><span style=\"font-family: \" source=\"\" sans=\"\" pro\";=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);\"=\"\">Terkait syaratnya di antaranya:</span></b></p><ul><li style=\"margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px;\"><span style=\"font-family: \" source=\"\" sans=\"\" pro\";=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);\"=\"\"> Akta Kelahiran</span></li><li style=\"margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px;\"><span style=\"font-family: \" source=\"\" sans=\"\" pro\";=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);\"=\"\">Kartu Keluarga</span></li><li style=\"margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px;\"><span style=\"font-family: \" source=\"\" sans=\"\" pro\";=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);\"=\"\">Nilai Rapor</span></li><li style=\"margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px;\"><span style=\"font-family: \" source=\"\" sans=\"\" pro\";=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);\"=\"\">Syarat Kelulusan</span></li><li style=\"margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px;\"><span style=\"font-family: \" source=\"\" sans=\"\" pro\";=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);\"=\"\">Sertifikat akreditasi sekolah asal</span></li><li style=\"margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px;\"><span style=\"font-family: \" source=\"\" sans=\"\" pro\";=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);\"=\"\">Surat pertanggungjawaban mutlak keabsahan dokumen</span></li></ul><p style=\"margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px;\" class=\"\"><span style=\"font-family: \" source=\"\" sans=\"\" pro\";=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);\"=\"\"><br></span><span style=\"font-family: \" source=\"\" sans=\"\" pro\";=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);\"=\"\"><b>Adapun tata cara pendaftarannya sebagai berikut;</b></span></p><h2 dir=\"ltr\" style=\"font-family: \" open=\"\" sans\",=\"\" \"helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);=\"\" margin-top:=\"\" 21px;=\"\" margin-bottom:=\"\" 10.5px;=\"\" font-size:=\"\" 32px;\"=\"\"><strong style=\"font-weight: bold;\"><span style=\"font-size: 16px;\"><span style=\"font-family: \" source=\"\" sans=\"\" pro\";\"=\"\">1. Pembuatan Akun PPDB</span></span></strong></h2><ul style=\"margin-bottom: 10.5px; color: rgb(34, 34, 34); font-family: \" open=\"\" sans\",=\"\" \"helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\"><li dir=\"ltr\"><p dir=\"ltr\" style=\"margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px;\"><span style=\"font-size: 16px;\"><span style=\"font-family: \" source=\"\" sans=\"\" pro\";\"=\"\">kunjungi situs PPDB online sesuai daerah (namadaerah.siap-ppdb.com)</span></span></p></li><li dir=\"ltr\"><p dir=\"ltr\" style=\"margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px;\"><span style=\"font-size: 16px;\"><span style=\"font-family: \" source=\"\" sans=\"\" pro\";\"=\"\">isi formulir dan lengkapi berkas persyaratan digital</span></span></p></li><li dir=\"ltr\"><p dir=\"ltr\" style=\"margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px;\"><span style=\"font-size: 16px;\"><span style=\"font-family: \" source=\"\" sans=\"\" pro\";\"=\"\">mendapat bukti pengajuan akun berisi PIN (token)</span></span></p></li></ul><h2 dir=\"ltr\" style=\"font-family: \" open=\"\" sans\",=\"\" \"helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);=\"\" margin-top:=\"\" 21px;=\"\" margin-bottom:=\"\" 10.5px;=\"\" font-size:=\"\" 32px;\"=\"\"><strong style=\"font-weight: bold;\"><span style=\"font-size: 16px;\"><span style=\"font-family: \" source=\"\" sans=\"\" pro\";\"=\"\">2. Aktivasi Akun</span></span></strong></h2><ul style=\"margin-bottom: 10.5px; color: rgb(34, 34, 34); font-family: \" open=\"\" sans\",=\"\" \"helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\"><li dir=\"ltr\"><p dir=\"ltr\" style=\"margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px;\"><span style=\"font-size: 16px;\"><span style=\"font-family: \" source=\"\" sans=\"\" pro\";\"=\"\">aktivasi di situs PPDB online</span></span></p></li><li dir=\"ltr\"><p dir=\"ltr\" style=\"margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px;\"><span style=\"font-size: 16px;\"><span style=\"font-family: \" source=\"\" sans=\"\" pro\";\"=\"\">ubah token dengan kata sandi pribadi</span></span></p></li></ul><h2 dir=\"ltr\" style=\"font-family: \" open=\"\" sans\",=\"\" \"helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);=\"\" margin-top:=\"\" 21px;=\"\" margin-bottom:=\"\" 10.5px;=\"\" font-size:=\"\" 32px;\"=\"\"><strong style=\"font-weight: bold;\"><span style=\"font-size: 16px;\"><span style=\"font-family: \" source=\"\" sans=\"\" pro\";\"=\"\">3. Pendaftaran</span></span></strong></h2><ul style=\"margin-bottom: 10.5px; color: rgb(34, 34, 34); font-family: \" open=\"\" sans\",=\"\" \"helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\"><li dir=\"ltr\"><p dir=\"ltr\" style=\"margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px;\"><span style=\"font-size: 16px;\"><span style=\"font-family: \" source=\"\" sans=\"\" pro\";\"=\"\">kunjungi situs PPDB online</span></span></p></li><li dir=\"ltr\"><p dir=\"ltr\" style=\"margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px;\"><span style=\"font-size: 16px;\"><span style=\"font-family: \" source=\"\" sans=\"\" pro\";\"=\"\">masuk sesuai akun PPDB</span></span></p></li><li dir=\"ltr\"><p dir=\"ltr\" style=\"margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px;\"><span style=\"font-size: 16px;\"><span style=\"font-family: \" source=\"\" sans=\"\" pro\";\"=\"\">pilih sekolah tujuan</span></span></p></li><li dir=\"ltr\"><p dir=\"ltr\" style=\"margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px;\"><span style=\"font-size: 16px;\"><span style=\"font-family: \" source=\"\" sans=\"\" pro\";\"=\"\">mendapat tanda bukti pendaftaran</span></span></p></li><li dir=\"ltr\"><p dir=\"ltr\" style=\"margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px;\"><span style=\"font-size: 16px;\"><span style=\"font-family: \" source=\"\" sans=\"\" pro\";\"=\"\">proses seleksi</span></span></p></li></ul><h2 dir=\"ltr\" style=\"font-family: \" open=\"\" sans\",=\"\" \"helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(34,=\"\" 34,=\"\" 34);=\"\" margin-top:=\"\" 21px;=\"\" margin-bottom:=\"\" 10.5px;=\"\" font-size:=\"\" 32px;\"=\"\"><strong style=\"font-weight: bold;\"><span style=\"font-size: 16px;\"><span style=\"font-family: \" source=\"\" sans=\"\" pro\";\"=\"\">4. Lapor Diri</span></span></strong></h2><ul style=\"margin-bottom: 10.5px; color: rgb(34, 34, 34); font-family: \" open=\"\" sans\",=\"\" \"helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\"><li dir=\"ltr\"><p dir=\"ltr\" style=\"margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px;\"><span style=\"font-size: 16px;\"><span style=\"font-family: \" source=\"\" sans=\"\" pro\";\"=\"\">kunjungi situs PPDB online</span></span></p></li><li dir=\"ltr\"><p dir=\"ltr\" style=\"margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px;\"><span style=\"font-size: 16px;\"><span style=\"font-family: \" source=\"\" sans=\"\" pro\";\"=\"\">masuk sebagai akun PPDB</span></span></p></li><li dir=\"ltr\"><p dir=\"ltr\" style=\"margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px;\"><span style=\"font-size: 16px;\"><span style=\"font-family: \" source=\"\" sans=\"\" pro\";\"=\"\">pilih lapor diri</span></span></p></li><li dir=\"ltr\"><p dir=\"ltr\" style=\"margin-right: 0px; margin-bottom: 10.5px; margin-left: 0px;\"><span style=\"font-size: 16px;\"><span style=\"font-family: \" source=\"\" sans=\"\" pro\";\"=\"\">mendapat tanda bukti lapor diri sebagai murid baru sekolah tujuan</span></span></p></li></ul>                ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `id_siswa` int(11) NOT NULL,
  `no_pendaftaran` varchar(12) DEFAULT NULL,
  `tgl_pendaftaran` date DEFAULT NULL,
  `nisn` varchar(10) DEFAULT NULL,
  `nama_lengkap` varchar(255) DEFAULT NULL,
  `jk` varchar(1) DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `id_jalur_masuk` int(2) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `nik` varchar(25) DEFAULT NULL,
  `id_agama` int(2) DEFAULT NULL,
  `id_status` int(2) DEFAULT NULL,
  `jml_saudara` int(4) DEFAULT NULL,
  `no_telpon` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`id_siswa`, `no_pendaftaran`, `tgl_pendaftaran`, `nisn`, `nama_lengkap`, `jk`, `tempat_lahir`, `tgl_lahir`, `password`, `id_jalur_masuk`, `foto`, `nik`, `id_agama`, `id_status`, `jml_saudara`, `no_telpon`) VALUES
(1, '202206230001', '2022-06-23', '1234567890', 'Muhammad Nasrullah', 'L', 'Makassar', '2002-03-25', '032002', 2, '1656875575_390665a80abb336fc661.jpg', '3313112503020003', 1, 1, 3, '08979086055'),
(3, '202206240001', '2022-06-24', '1234567891', 'Adella Nawang', 'P', 'Klaten', '2006-09-17', '092006', 2, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_status_keluarga`
--

CREATE TABLE `tbl_status_keluarga` (
  `id_status` int(2) NOT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_status_keluarga`
--

INSERT INTO `tbl_status_keluarga` (`id_status`, `status`) VALUES
(1, 'Anak Kandung'),
(2, 'Anak Tiri'),
(5, 'Anak Angkat');

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
-- Indeks untuk tabel `tbl_baner`
--
ALTER TABLE `tbl_baner`
  ADD PRIMARY KEY (`id_baner`);

--
-- Indeks untuk tabel `tbl_jalur_masuk`
--
ALTER TABLE `tbl_jalur_masuk`
  ADD PRIMARY KEY (`id_jalur_masuk`);

--
-- Indeks untuk tabel `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indeks untuk tabel `tbl_lampiran`
--
ALTER TABLE `tbl_lampiran`
  ADD PRIMARY KEY (`id_lampiran`);

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
-- Indeks untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indeks untuk tabel `tbl_status_keluarga`
--
ALTER TABLE `tbl_status_keluarga`
  ADD PRIMARY KEY (`id_status`);

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
-- AUTO_INCREMENT untuk tabel `tbl_baner`
--
ALTER TABLE `tbl_baner`
  MODIFY `id_baner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tbl_jalur_masuk`
--
ALTER TABLE `tbl_jalur_masuk`
  MODIFY `id_jalur_masuk` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  MODIFY `id_jurusan` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tbl_lampiran`
--
ALTER TABLE `tbl_lampiran`
  MODIFY `id_lampiran` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
-- AUTO_INCREMENT untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_status_keluarga`
--
ALTER TABLE `tbl_status_keluarga`
  MODIFY `id_status` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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

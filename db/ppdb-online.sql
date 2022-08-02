-- phpMyAdmin SQL Dump

-- version 5.1.1

-- https://www.phpmyadmin.net/

--

-- Host: 127.0.0.1

-- Waktu pembuatan: 28 Jul 2022 pada 08.49

-- Versi server: 10.4.22-MariaDB

-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

START TRANSACTION;

SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */

;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */

;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */

;

/*!40101 SET NAMES utf8mb4 */

;

--

-- Database: `ppdb-online`

--

-- --------------------------------------------------------

--

-- Struktur dari tabel `tbl_agama`

--

CREATE TABLE
    `tbl_agama` (
        `id_agama` int(2) NOT NULL,
        `agama` varchar(20) DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--

-- Dumping data untuk tabel `tbl_agama`

--

INSERT INTO
    `tbl_agama` (`id_agama`, `agama`)
VALUES (1, 'Islam'), (2, 'Protestan'), (3, 'Hindu'), (5, 'Khatolik'), (6, 'Budha'), (7, 'Konghucu');

-- --------------------------------------------------------

--

-- Struktur dari tabel `tbl_baner`

--

CREATE TABLE
    `tbl_baner` (
        `id_baner` int(11) NOT NULL,
        `ket` varchar(255) DEFAULT NULL,
        `baner` varchar(255) DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--

-- Dumping data untuk tabel `tbl_baner`

--

INSERT INTO
    `tbl_baner` (`id_baner`, `ket`, `baner`)
VALUES (1, 'Baner 1', 'baner1.jpg'), (
        2,
        'Baner 2',
        '1656342681_81e4edad1e6dd53035bb.jpg'
    );

-- --------------------------------------------------------

--

-- Struktur dari tabel `tbl_berkas`

--

CREATE TABLE
    `tbl_berkas` (
        `id_berkas` int(11) NOT NULL,
        `id_siswa` int(11) DEFAULT NULL,
        `id_lampiran` int(2) DEFAULT NULL,
        `ket` varchar(255) DEFAULT NULL,
        `berkas` varchar(255) DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--

-- Dumping data untuk tabel `tbl_berkas`

--

INSERT INTO
    `tbl_berkas` (
        `id_berkas`,
        `id_siswa`,
        `id_lampiran`,
        `ket`,
        `berkas`
    )
VALUES (3, 1, 2, 'Ijazah', 'ijazah.pdf'), (
        9,
        58,
        1,
        'KK',
        '1658547182_976e2254d23b910255c8.pdf'
    ), (
        10,
        58,
        2,
        'Ijazah',
        '1658547826_f373a9ba1ac9def02ef5.pdf'
    );

-- --------------------------------------------------------

--

-- Struktur dari tabel `tbl_jalur_masuk`

--

CREATE TABLE
    `tbl_jalur_masuk` (
        `id_jalur_masuk` int(2) NOT NULL,
        `jalur_masuk` varchar(255) DEFAULT NULL,
        `kuota` int(11) DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--

-- Dumping data untuk tabel `tbl_jalur_masuk`

--

INSERT INTO
    `tbl_jalur_masuk` (
        `id_jalur_masuk`,
        `jalur_masuk`,
        `kuota`
    )
VALUES (1, 'Zonasi', 100), (2, 'Prestasi', 25), (3, 'Afirmasi', 40), (4, 'Perpindahan', 10);

-- --------------------------------------------------------

--

-- Struktur dari tabel `tbl_jurusan`

--

CREATE TABLE
    `tbl_jurusan` (
        `id_jurusan` int(2) NOT NULL,
        `jurusan` varchar(255) DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--

-- Dumping data untuk tabel `tbl_jurusan`

--

INSERT INTO
    `tbl_jurusan` (`id_jurusan`, `jurusan`)
VALUES (1, 'MTs'), (2, 'MA IPA'), (3, 'MA IPS');

-- --------------------------------------------------------

--

-- Struktur dari tabel `tbl_kabupaten`

--

CREATE TABLE
    `tbl_kabupaten` (
        `id_kabupaten` char(4) COLLATE utf8_unicode_ci NOT NULL,
        `id_provinsi` char(2) COLLATE utf8_unicode_ci NOT NULL,
        `nama_kabupaten` varchar(255) COLLATE utf8_unicode_ci NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

--

-- Dumping data untuk tabel `tbl_kabupaten`

--

INSERT INTO
    `tbl_kabupaten` (
        `id_kabupaten`,
        `id_provinsi`,
        `nama_kabupaten`
    )
VALUES (
        '1101',
        '11',
        'KABUPATEN SIMEULUE'
    ), (
        '1102',
        '11',
        'KABUPATEN ACEH SINGKIL'
    ), (
        '1103',
        '11',
        'KABUPATEN ACEH SELATAN'
    ), (
        '1104',
        '11',
        'KABUPATEN ACEH TENGGARA'
    ), (
        '1105',
        '11',
        'KABUPATEN ACEH TIMUR'
    ), (
        '1106',
        '11',
        'KABUPATEN ACEH TENGAH'
    ), (
        '1107',
        '11',
        'KABUPATEN ACEH BARAT'
    ), (
        '1108',
        '11',
        'KABUPATEN ACEH BESAR'
    ), (
        '1109',
        '11',
        'KABUPATEN PIDIE'
    ), (
        '1110',
        '11',
        'KABUPATEN BIREUEN'
    ), (
        '1111',
        '11',
        'KABUPATEN ACEH UTARA'
    ), (
        '1112',
        '11',
        'KABUPATEN ACEH BARAT DAYA'
    ), (
        '1113',
        '11',
        'KABUPATEN GAYO LUES'
    ), (
        '1114',
        '11',
        'KABUPATEN ACEH TAMIANG'
    ), (
        '1115',
        '11',
        'KABUPATEN NAGAN RAYA'
    ), (
        '1116',
        '11',
        'KABUPATEN ACEH JAYA'
    ), (
        '1117',
        '11',
        'KABUPATEN BENER MERIAH'
    ), (
        '1118',
        '11',
        'KABUPATEN PIDIE JAYA'
    ), (
        '1171',
        '11',
        'KOTA BANDA ACEH'
    ), ('1172', '11', 'KOTA SABANG'), ('1173', '11', 'KOTA LANGSA'), (
        '1174',
        '11',
        'KOTA LHOKSEUMAWE'
    ), (
        '1175',
        '11',
        'KOTA SUBULUSSALAM'
    ), ('1201', '12', 'KABUPATEN NIAS'), (
        '1202',
        '12',
        'KABUPATEN MANDAILING NATAL'
    ), (
        '1203',
        '12',
        'KABUPATEN TAPANULI SELATAN'
    ), (
        '1204',
        '12',
        'KABUPATEN TAPANULI TENGAH'
    ), (
        '1205',
        '12',
        'KABUPATEN TAPANULI UTARA'
    ), (
        '1206',
        '12',
        'KABUPATEN TOBA SAMOSIR'
    ), (
        '1207',
        '12',
        'KABUPATEN LABUHAN BATU'
    ), (
        '1208',
        '12',
        'KABUPATEN ASAHAN'
    ), (
        '1209',
        '12',
        'KABUPATEN SIMALUNGUN'
    ), (
        '1210',
        '12',
        'KABUPATEN DAIRI'
    ), ('1211', '12', 'KABUPATEN KARO'), (
        '1212',
        '12',
        'KABUPATEN DELI SERDANG'
    ), (
        '1213',
        '12',
        'KABUPATEN LANGKAT'
    ), (
        '1214',
        '12',
        'KABUPATEN NIAS SELATAN'
    ), (
        '1215',
        '12',
        'KABUPATEN HUMBANG HASUNDUTAN'
    ), (
        '1216',
        '12',
        'KABUPATEN PAKPAK BHARAT'
    ), (
        '1217',
        '12',
        'KABUPATEN SAMOSIR'
    ), (
        '1218',
        '12',
        'KABUPATEN SERDANG BEDAGAI'
    ), (
        '1219',
        '12',
        'KABUPATEN BATU BARA'
    ), (
        '1220',
        '12',
        'KABUPATEN PADANG LAWAS UTARA'
    ), (
        '1221',
        '12',
        'KABUPATEN PADANG LAWAS'
    ), (
        '1222',
        '12',
        'KABUPATEN LABUHAN BATU SELATAN'
    ), (
        '1223',
        '12',
        'KABUPATEN LABUHAN BATU UTARA'
    ), (
        '1224',
        '12',
        'KABUPATEN NIAS UTARA'
    ), (
        '1225',
        '12',
        'KABUPATEN NIAS BARAT'
    ), ('1271', '12', 'KOTA SIBOLGA'), (
        '1272',
        '12',
        'KOTA TANJUNG BALAI'
    ), (
        '1273',
        '12',
        'KOTA PEMATANG SIANTAR'
    ), (
        '1274',
        '12',
        'KOTA TEBING TINGGI'
    ), ('1275', '12', 'KOTA MEDAN'), ('1276', '12', 'KOTA BINJAI'), (
        '1277',
        '12',
        'KOTA PADANGSIDIMPUAN'
    ), (
        '1278',
        '12',
        'KOTA GUNUNGSITOLI'
    ), (
        '1301',
        '13',
        'KABUPATEN KEPULAUAN MENTAWAI'
    ), (
        '1302',
        '13',
        'KABUPATEN PESISIR SELATAN'
    ), (
        '1303',
        '13',
        'KABUPATEN SOLOK'
    ), (
        '1304',
        '13',
        'KABUPATEN SIJUNJUNG'
    ), (
        '1305',
        '13',
        'KABUPATEN TANAH DATAR'
    ), (
        '1306',
        '13',
        'KABUPATEN PADANG PARIAMAN'
    ), ('1307', '13', 'KABUPATEN AGAM'), (
        '1308',
        '13',
        'KABUPATEN LIMA PULUH KOTA'
    ), (
        '1309',
        '13',
        'KABUPATEN PASAMAN'
    ), (
        '1310',
        '13',
        'KABUPATEN SOLOK SELATAN'
    ), (
        '1311',
        '13',
        'KABUPATEN DHARMASRAYA'
    ), (
        '1312',
        '13',
        'KABUPATEN PASAMAN BARAT'
    ), ('1371', '13', 'KOTA PADANG'), ('1372', '13', 'KOTA SOLOK'), (
        '1373',
        '13',
        'KOTA SAWAH LUNTO'
    ), (
        '1374',
        '13',
        'KOTA PADANG PANJANG'
    ), (
        '1375',
        '13',
        'KOTA BUKITTINGGI'
    ), (
        '1376',
        '13',
        'KOTA PAYAKUMBUH'
    ), ('1377', '13', 'KOTA PARIAMAN'), (
        '1401',
        '14',
        'KABUPATEN KUANTAN SINGINGI'
    ), (
        '1402',
        '14',
        'KABUPATEN INDRAGIRI HULU'
    ), (
        '1403',
        '14',
        'KABUPATEN INDRAGIRI HILIR'
    ), (
        '1404',
        '14',
        'KABUPATEN PELALAWAN'
    ), (
        '1405',
        '14',
        'KABUPATEN S I A K'
    ), (
        '1406',
        '14',
        'KABUPATEN KAMPAR'
    ), (
        '1407',
        '14',
        'KABUPATEN ROKAN HULU'
    ), (
        '1408',
        '14',
        'KABUPATEN BENGKALIS'
    ), (
        '1409',
        '14',
        'KABUPATEN ROKAN HILIR'
    ), (
        '1410',
        '14',
        'KABUPATEN KEPULAUAN MERANTI'
    ), ('1471', '14', 'KOTA PEKANBARU'), ('1473', '14', 'KOTA D U M A I'), (
        '1501',
        '15',
        'KABUPATEN KERINCI'
    ), (
        '1502',
        '15',
        'KABUPATEN MERANGIN'
    ), (
        '1503',
        '15',
        'KABUPATEN SAROLANGUN'
    ), (
        '1504',
        '15',
        'KABUPATEN BATANG HARI'
    ), (
        '1505',
        '15',
        'KABUPATEN MUARO JAMBI'
    ), (
        '1506',
        '15',
        'KABUPATEN TANJUNG JABUNG TIMUR'
    ), (
        '1507',
        '15',
        'KABUPATEN TANJUNG JABUNG BARAT'
    ), ('1508', '15', 'KABUPATEN TEBO'), (
        '1509',
        '15',
        'KABUPATEN BUNGO'
    ), ('1571', '15', 'KOTA JAMBI'), (
        '1572',
        '15',
        'KOTA SUNGAI PENUH'
    ), (
        '1601',
        '16',
        'KABUPATEN OGAN KOMERING ULU'
    ), (
        '1602',
        '16',
        'KABUPATEN OGAN KOMERING ILIR'
    ), (
        '1603',
        '16',
        'KABUPATEN MUARA ENIM'
    ), (
        '1604',
        '16',
        'KABUPATEN LAHAT'
    ), (
        '1605',
        '16',
        'KABUPATEN MUSI RAWAS'
    ), (
        '1606',
        '16',
        'KABUPATEN MUSI BANYUASIN'
    ), (
        '1607',
        '16',
        'KABUPATEN BANYU ASIN'
    ), (
        '1608',
        '16',
        'KABUPATEN OGAN KOMERING ULU SELATAN'
    ), (
        '1609',
        '16',
        'KABUPATEN OGAN KOMERING ULU TIMUR'
    ), (
        '1610',
        '16',
        'KABUPATEN OGAN ILIR'
    ), (
        '1611',
        '16',
        'KABUPATEN EMPAT LAWANG'
    ), (
        '1612',
        '16',
        'KABUPATEN PENUKAL ABAB LEMATANG ILIR'
    ), (
        '1613',
        '16',
        'KABUPATEN MUSI RAWAS UTARA'
    ), ('1671', '16', 'KOTA PALEMBANG'), (
        '1672',
        '16',
        'KOTA PRABUMULIH'
    ), (
        '1673',
        '16',
        'KOTA PAGAR ALAM'
    ), (
        '1674',
        '16',
        'KOTA LUBUKLINGGAU'
    ), (
        '1701',
        '17',
        'KABUPATEN BENGKULU SELATAN'
    ), (
        '1702',
        '17',
        'KABUPATEN REJANG LEBONG'
    ), (
        '1703',
        '17',
        'KABUPATEN BENGKULU UTARA'
    ), ('1704', '17', 'KABUPATEN KAUR'), (
        '1705',
        '17',
        'KABUPATEN SELUMA'
    ), (
        '1706',
        '17',
        'KABUPATEN MUKOMUKO'
    ), (
        '1707',
        '17',
        'KABUPATEN LEBONG'
    ), (
        '1708',
        '17',
        'KABUPATEN KEPAHIANG'
    ), (
        '1709',
        '17',
        'KABUPATEN BENGKULU TENGAH'
    ), ('1771', '17', 'KOTA BENGKULU'), (
        '1801',
        '18',
        'KABUPATEN LAMPUNG BARAT'
    ), (
        '1802',
        '18',
        'KABUPATEN TANGGAMUS'
    ), (
        '1803',
        '18',
        'KABUPATEN LAMPUNG SELATAN'
    ), (
        '1804',
        '18',
        'KABUPATEN LAMPUNG TIMUR'
    ), (
        '1805',
        '18',
        'KABUPATEN LAMPUNG TENGAH'
    ), (
        '1806',
        '18',
        'KABUPATEN LAMPUNG UTARA'
    ), (
        '1807',
        '18',
        'KABUPATEN WAY KANAN'
    ), (
        '1808',
        '18',
        'KABUPATEN TULANGBAWANG'
    ), (
        '1809',
        '18',
        'KABUPATEN PESAWARAN'
    ), (
        '1810',
        '18',
        'KABUPATEN PRINGSEWU'
    ), (
        '1811',
        '18',
        'KABUPATEN MESUJI'
    ), (
        '1812',
        '18',
        'KABUPATEN TULANG BAWANG BARAT'
    ), (
        '1813',
        '18',
        'KABUPATEN PESISIR BARAT'
    ), (
        '1871',
        '18',
        'KOTA BANDAR LAMPUNG'
    ), ('1872', '18', 'KOTA METRO'), (
        '1901',
        '19',
        'KABUPATEN BANGKA'
    ), (
        '1902',
        '19',
        'KABUPATEN BELITUNG'
    ), (
        '1903',
        '19',
        'KABUPATEN BANGKA BARAT'
    ), (
        '1904',
        '19',
        'KABUPATEN BANGKA TENGAH'
    ), (
        '1905',
        '19',
        'KABUPATEN BANGKA SELATAN'
    ), (
        '1906',
        '19',
        'KABUPATEN BELITUNG TIMUR'
    ), (
        '1971',
        '19',
        'KOTA PANGKAL PINANG'
    ), (
        '2101',
        '21',
        'KABUPATEN KARIMUN'
    ), (
        '2102',
        '21',
        'KABUPATEN BINTAN'
    ), (
        '2103',
        '21',
        'KABUPATEN NATUNA'
    ), (
        '2104',
        '21',
        'KABUPATEN LINGGA'
    ), (
        '2105',
        '21',
        'KABUPATEN KEPULAUAN ANAMBAS'
    ), ('2171', '21', 'KOTA B A T A M'), (
        '2172',
        '21',
        'KOTA TANJUNG PINANG'
    ), (
        '3101',
        '31',
        'KABUPATEN KEPULAUAN SERIBU'
    ), (
        '3171',
        '31',
        'KOTA JAKARTA SELATAN'
    ), (
        '3172',
        '31',
        'KOTA JAKARTA TIMUR'
    ), (
        '3173',
        '31',
        'KOTA JAKARTA PUSAT'
    ), (
        '3174',
        '31',
        'KOTA JAKARTA BARAT'
    ), (
        '3175',
        '31',
        'KOTA JAKARTA UTARA'
    ), (
        '3201',
        '32',
        'KABUPATEN BOGOR'
    ), (
        '3202',
        '32',
        'KABUPATEN SUKABUMI'
    ), (
        '3203',
        '32',
        'KABUPATEN CIANJUR'
    ), (
        '3204',
        '32',
        'KABUPATEN BANDUNG'
    ), (
        '3205',
        '32',
        'KABUPATEN GARUT'
    ), (
        '3206',
        '32',
        'KABUPATEN TASIKMALAYA'
    ), (
        '3207',
        '32',
        'KABUPATEN CIAMIS'
    ), (
        '3208',
        '32',
        'KABUPATEN KUNINGAN'
    ), (
        '3209',
        '32',
        'KABUPATEN CIREBON'
    ), (
        '3210',
        '32',
        'KABUPATEN MAJALENGKA'
    ), (
        '3211',
        '32',
        'KABUPATEN SUMEDANG'
    ), (
        '3212',
        '32',
        'KABUPATEN INDRAMAYU'
    ), (
        '3213',
        '32',
        'KABUPATEN SUBANG'
    ), (
        '3214',
        '32',
        'KABUPATEN PURWAKARTA'
    ), (
        '3215',
        '32',
        'KABUPATEN KARAWANG'
    ), (
        '3216',
        '32',
        'KABUPATEN BEKASI'
    ), (
        '3217',
        '32',
        'KABUPATEN BANDUNG BARAT'
    ), (
        '3218',
        '32',
        'KABUPATEN PANGANDARAN'
    ), ('3271', '32', 'KOTA BOGOR'), ('3272', '32', 'KOTA SUKABUMI'), ('3273', '32', 'KOTA BANDUNG'), ('3274', '32', 'KOTA CIREBON'), ('3275', '32', 'KOTA BEKASI'), ('3276', '32', 'KOTA DEPOK'), ('3277', '32', 'KOTA CIMAHI'), (
        '3278',
        '32',
        'KOTA TASIKMALAYA'
    ), ('3279', '32', 'KOTA BANJAR'), (
        '3301',
        '33',
        'KABUPATEN CILACAP'
    ), (
        '3302',
        '33',
        'KABUPATEN BANYUMAS'
    ), (
        '3303',
        '33',
        'KABUPATEN PURBALINGGA'
    ), (
        '3304',
        '33',
        'KABUPATEN BANJARNEGARA'
    ), (
        '3305',
        '33',
        'KABUPATEN KEBUMEN'
    ), (
        '3306',
        '33',
        'KABUPATEN PURWOREJO'
    ), (
        '3307',
        '33',
        'KABUPATEN WONOSOBO'
    ), (
        '3308',
        '33',
        'KABUPATEN MAGELANG'
    ), (
        '3309',
        '33',
        'KABUPATEN BOYOLALI'
    ), (
        '3310',
        '33',
        'KABUPATEN KLATEN'
    ), (
        '3311',
        '33',
        'KABUPATEN SUKOHARJO'
    ), (
        '3312',
        '33',
        'KABUPATEN WONOGIRI'
    ), (
        '3313',
        '33',
        'KABUPATEN KARANGANYAR'
    ), (
        '3314',
        '33',
        'KABUPATEN SRAGEN'
    ), (
        '3315',
        '33',
        'KABUPATEN GROBOGAN'
    ), (
        '3316',
        '33',
        'KABUPATEN BLORA'
    ), (
        '3317',
        '33',
        'KABUPATEN REMBANG'
    ), ('3318', '33', 'KABUPATEN PATI'), (
        '3319',
        '33',
        'KABUPATEN KUDUS'
    ), (
        '3320',
        '33',
        'KABUPATEN JEPARA'
    ), (
        '3321',
        '33',
        'KABUPATEN DEMAK'
    ), (
        '3322',
        '33',
        'KABUPATEN SEMARANG'
    ), (
        '3323',
        '33',
        'KABUPATEN TEMANGGUNG'
    ), (
        '3324',
        '33',
        'KABUPATEN KENDAL'
    ), (
        '3325',
        '33',
        'KABUPATEN BATANG'
    ), (
        '3326',
        '33',
        'KABUPATEN PEKALONGAN'
    ), (
        '3327',
        '33',
        'KABUPATEN PEMALANG'
    ), (
        '3328',
        '33',
        'KABUPATEN TEGAL'
    ), (
        '3329',
        '33',
        'KABUPATEN BREBES'
    ), ('3371', '33', 'KOTA MAGELANG'), ('3372', '33', 'KOTA SURAKARTA'), ('3373', '33', 'KOTA SALATIGA'), ('3374', '33', 'KOTA SEMARANG'), (
        '3375',
        '33',
        'KOTA PEKALONGAN'
    ), ('3376', '33', 'KOTA TEGAL'), (
        '3401',
        '34',
        'KABUPATEN KULON PROGO'
    ), (
        '3402',
        '34',
        'KABUPATEN BANTUL'
    ), (
        '3403',
        '34',
        'KABUPATEN GUNUNG KIDUL'
    ), (
        '3404',
        '34',
        'KABUPATEN SLEMAN'
    ), (
        '3471',
        '34',
        'KOTA YOGYAKARTA'
    ), (
        '3501',
        '35',
        'KABUPATEN PACITAN'
    ), (
        '3502',
        '35',
        'KABUPATEN PONOROGO'
    ), (
        '3503',
        '35',
        'KABUPATEN TRENGGALEK'
    ), (
        '3504',
        '35',
        'KABUPATEN TULUNGAGUNG'
    ), (
        '3505',
        '35',
        'KABUPATEN BLITAR'
    ), (
        '3506',
        '35',
        'KABUPATEN KEDIRI'
    ), (
        '3507',
        '35',
        'KABUPATEN MALANG'
    ), (
        '3508',
        '35',
        'KABUPATEN LUMAJANG'
    ), (
        '3509',
        '35',
        'KABUPATEN JEMBER'
    ), (
        '3510',
        '35',
        'KABUPATEN BANYUWANGI'
    ), (
        '3511',
        '35',
        'KABUPATEN BONDOWOSO'
    ), (
        '3512',
        '35',
        'KABUPATEN SITUBONDO'
    ), (
        '3513',
        '35',
        'KABUPATEN PROBOLINGGO'
    ), (
        '3514',
        '35',
        'KABUPATEN PASURUAN'
    ), (
        '3515',
        '35',
        'KABUPATEN SIDOARJO'
    ), (
        '3516',
        '35',
        'KABUPATEN MOJOKERTO'
    ), (
        '3517',
        '35',
        'KABUPATEN JOMBANG'
    ), (
        '3518',
        '35',
        'KABUPATEN NGANJUK'
    ), (
        '3519',
        '35',
        'KABUPATEN MADIUN'
    ), (
        '3520',
        '35',
        'KABUPATEN MAGETAN'
    ), (
        '3521',
        '35',
        'KABUPATEN NGAWI'
    ), (
        '3522',
        '35',
        'KABUPATEN BOJONEGORO'
    ), (
        '3523',
        '35',
        'KABUPATEN TUBAN'
    ), (
        '3524',
        '35',
        'KABUPATEN LAMONGAN'
    ), (
        '3525',
        '35',
        'KABUPATEN GRESIK'
    ), (
        '3526',
        '35',
        'KABUPATEN BANGKALAN'
    ), (
        '3527',
        '35',
        'KABUPATEN SAMPANG'
    ), (
        '3528',
        '35',
        'KABUPATEN PAMEKASAN'
    ), (
        '3529',
        '35',
        'KABUPATEN SUMENEP'
    ), ('3571', '35', 'KOTA KEDIRI'), ('3572', '35', 'KOTA BLITAR'), ('3573', '35', 'KOTA MALANG'), (
        '3574',
        '35',
        'KOTA PROBOLINGGO'
    ), ('3575', '35', 'KOTA PASURUAN'), ('3576', '35', 'KOTA MOJOKERTO'), ('3577', '35', 'KOTA MADIUN'), ('3578', '35', 'KOTA SURABAYA'), ('3579', '35', 'KOTA BATU'), (
        '3601',
        '36',
        'KABUPATEN PANDEGLANG'
    ), (
        '3602',
        '36',
        'KABUPATEN LEBAK'
    ), (
        '3603',
        '36',
        'KABUPATEN TANGERANG'
    ), (
        '3604',
        '36',
        'KABUPATEN SERANG'
    ), ('3671', '36', 'KOTA TANGERANG'), ('3672', '36', 'KOTA CILEGON'), ('3673', '36', 'KOTA SERANG'), (
        '3674',
        '36',
        'KOTA TANGERANG SELATAN'
    ), (
        '5101',
        '51',
        'KABUPATEN JEMBRANA'
    ), (
        '5102',
        '51',
        'KABUPATEN TABANAN'
    ), (
        '5103',
        '51',
        'KABUPATEN BADUNG'
    ), (
        '5104',
        '51',
        'KABUPATEN GIANYAR'
    ), (
        '5105',
        '51',
        'KABUPATEN KLUNGKUNG'
    ), (
        '5106',
        '51',
        'KABUPATEN BANGLI'
    ), (
        '5107',
        '51',
        'KABUPATEN KARANG ASEM'
    ), (
        '5108',
        '51',
        'KABUPATEN BULELENG'
    ), ('5171', '51', 'KOTA DENPASAR'), (
        '5201',
        '52',
        'KABUPATEN LOMBOK BARAT'
    ), (
        '5202',
        '52',
        'KABUPATEN LOMBOK TENGAH'
    ), (
        '5203',
        '52',
        'KABUPATEN LOMBOK TIMUR'
    ), (
        '5204',
        '52',
        'KABUPATEN SUMBAWA'
    ), (
        '5205',
        '52',
        'KABUPATEN DOMPU'
    ), ('5206', '52', 'KABUPATEN BIMA'), (
        '5207',
        '52',
        'KABUPATEN SUMBAWA BARAT'
    ), (
        '5208',
        '52',
        'KABUPATEN LOMBOK UTARA'
    ), ('5271', '52', 'KOTA MATARAM'), ('5272', '52', 'KOTA BIMA'), (
        '5301',
        '53',
        'KABUPATEN SUMBA BARAT'
    ), (
        '5302',
        '53',
        'KABUPATEN SUMBA TIMUR'
    ), (
        '5303',
        '53',
        'KABUPATEN KUPANG'
    ), (
        '5304',
        '53',
        'KABUPATEN TIMOR TENGAH SELATAN'
    ), (
        '5305',
        '53',
        'KABUPATEN TIMOR TENGAH UTARA'
    ), ('5306', '53', 'KABUPATEN BELU'), ('5307', '53', 'KABUPATEN ALOR'), (
        '5308',
        '53',
        'KABUPATEN LEMBATA'
    ), (
        '5309',
        '53',
        'KABUPATEN FLORES TIMUR'
    ), (
        '5310',
        '53',
        'KABUPATEN SIKKA'
    ), ('5311', '53', 'KABUPATEN ENDE'), (
        '5312',
        '53',
        'KABUPATEN NGADA'
    ), (
        '5313',
        '53',
        'KABUPATEN MANGGARAI'
    ), (
        '5314',
        '53',
        'KABUPATEN ROTE NDAO'
    ), (
        '5315',
        '53',
        'KABUPATEN MANGGARAI BARAT'
    ), (
        '5316',
        '53',
        'KABUPATEN SUMBA TENGAH'
    ), (
        '5317',
        '53',
        'KABUPATEN SUMBA BARAT DAYA'
    ), (
        '5318',
        '53',
        'KABUPATEN NAGEKEO'
    ), (
        '5319',
        '53',
        'KABUPATEN MANGGARAI TIMUR'
    ), (
        '5320',
        '53',
        'KABUPATEN SABU RAIJUA'
    ), (
        '5321',
        '53',
        'KABUPATEN MALAKA'
    ), ('5371', '53', 'KOTA KUPANG'), (
        '6101',
        '61',
        'KABUPATEN SAMBAS'
    ), (
        '6102',
        '61',
        'KABUPATEN BENGKAYANG'
    ), (
        '6103',
        '61',
        'KABUPATEN LANDAK'
    ), (
        '6104',
        '61',
        'KABUPATEN MEMPAWAH'
    ), (
        '6105',
        '61',
        'KABUPATEN SANGGAU'
    ), (
        '6106',
        '61',
        'KABUPATEN KETAPANG'
    ), (
        '6107',
        '61',
        'KABUPATEN SINTANG'
    ), (
        '6108',
        '61',
        'KABUPATEN KAPUAS HULU'
    ), (
        '6109',
        '61',
        'KABUPATEN SEKADAU'
    ), (
        '6110',
        '61',
        'KABUPATEN MELAWI'
    ), (
        '6111',
        '61',
        'KABUPATEN KAYONG UTARA'
    ), (
        '6112',
        '61',
        'KABUPATEN KUBU RAYA'
    ), ('6171', '61', 'KOTA PONTIANAK'), (
        '6172',
        '61',
        'KOTA SINGKAWANG'
    ), (
        '6201',
        '62',
        'KABUPATEN KOTAWARINGIN BARAT'
    ), (
        '6202',
        '62',
        'KABUPATEN KOTAWARINGIN TIMUR'
    ), (
        '6203',
        '62',
        'KABUPATEN KAPUAS'
    ), (
        '6204',
        '62',
        'KABUPATEN BARITO SELATAN'
    ), (
        '6205',
        '62',
        'KABUPATEN BARITO UTARA'
    ), (
        '6206',
        '62',
        'KABUPATEN SUKAMARA'
    ), (
        '6207',
        '62',
        'KABUPATEN LAMANDAU'
    ), (
        '6208',
        '62',
        'KABUPATEN SERUYAN'
    ), (
        '6209',
        '62',
        'KABUPATEN KATINGAN'
    ), (
        '6210',
        '62',
        'KABUPATEN PULANG PISAU'
    ), (
        '6211',
        '62',
        'KABUPATEN GUNUNG MAS'
    ), (
        '6212',
        '62',
        'KABUPATEN BARITO TIMUR'
    ), (
        '6213',
        '62',
        'KABUPATEN MURUNG RAYA'
    ), (
        '6271',
        '62',
        'KOTA PALANGKA RAYA'
    ), (
        '6301',
        '63',
        'KABUPATEN TANAH LAUT'
    ), (
        '6302',
        '63',
        'KABUPATEN KOTA BARU'
    ), (
        '6303',
        '63',
        'KABUPATEN BANJAR'
    ), (
        '6304',
        '63',
        'KABUPATEN BARITO KUALA'
    ), (
        '6305',
        '63',
        'KABUPATEN TAPIN'
    ), (
        '6306',
        '63',
        'KABUPATEN HULU SUNGAI SELATAN'
    ), (
        '6307',
        '63',
        'KABUPATEN HULU SUNGAI TENGAH'
    ), (
        '6308',
        '63',
        'KABUPATEN HULU SUNGAI UTARA'
    ), (
        '6309',
        '63',
        'KABUPATEN TABALONG'
    ), (
        '6310',
        '63',
        'KABUPATEN TANAH BUMBU'
    ), (
        '6311',
        '63',
        'KABUPATEN BALANGAN'
    ), (
        '6371',
        '63',
        'KOTA BANJARMASIN'
    ), (
        '6372',
        '63',
        'KOTA BANJAR BARU'
    ), (
        '6401',
        '64',
        'KABUPATEN PASER'
    ), (
        '6402',
        '64',
        'KABUPATEN KUTAI BARAT'
    ), (
        '6403',
        '64',
        'KABUPATEN KUTAI KARTANEGARA'
    ), (
        '6404',
        '64',
        'KABUPATEN KUTAI TIMUR'
    ), (
        '6405',
        '64',
        'KABUPATEN BERAU'
    ), (
        '6409',
        '64',
        'KABUPATEN PENAJAM PASER UTARA'
    ), (
        '6411',
        '64',
        'KABUPATEN MAHAKAM HULU'
    ), (
        '6471',
        '64',
        'KOTA BALIKPAPAN'
    ), ('6472', '64', 'KOTA SAMARINDA'), ('6474', '64', 'KOTA BONTANG'), (
        '6501',
        '65',
        'KABUPATEN MALINAU'
    ), (
        '6502',
        '65',
        'KABUPATEN BULUNGAN'
    ), (
        '6503',
        '65',
        'KABUPATEN TANA TIDUNG'
    ), (
        '6504',
        '65',
        'KABUPATEN NUNUKAN'
    ), ('6571', '65', 'KOTA TARAKAN'), (
        '7101',
        '71',
        'KABUPATEN BOLAANG MONGONDOW'
    ), (
        '7102',
        '71',
        'KABUPATEN MINAHASA'
    ), (
        '7103',
        '71',
        'KABUPATEN KEPULAUAN SANGIHE'
    ), (
        '7104',
        '71',
        'KABUPATEN KEPULAUAN TALAUD'
    ), (
        '7105',
        '71',
        'KABUPATEN MINAHASA SELATAN'
    ), (
        '7106',
        '71',
        'KABUPATEN MINAHASA UTARA'
    ), (
        '7107',
        '71',
        'KABUPATEN BOLAANG MONGONDOW UTARA'
    ), (
        '7108',
        '71',
        'KABUPATEN SIAU TAGULANDANG BIARO'
    ), (
        '7109',
        '71',
        'KABUPATEN MINAHASA TENGGARA'
    ), (
        '7110',
        '71',
        'KABUPATEN BOLAANG MONGONDOW SELATAN'
    ), (
        '7111',
        '71',
        'KABUPATEN BOLAANG MONGONDOW TIMUR'
    ), ('7171', '71', 'KOTA MANADO'), ('7172', '71', 'KOTA BITUNG'), ('7173', '71', 'KOTA TOMOHON'), (
        '7174',
        '71',
        'KOTA KOTAMOBAGU'
    ), (
        '7201',
        '72',
        'KABUPATEN BANGGAI KEPULAUAN'
    ), (
        '7202',
        '72',
        'KABUPATEN BANGGAI'
    ), (
        '7203',
        '72',
        'KABUPATEN MOROWALI'
    ), ('7204', '72', 'KABUPATEN POSO'), (
        '7205',
        '72',
        'KABUPATEN DONGGALA'
    ), (
        '7206',
        '72',
        'KABUPATEN TOLI-TOLI'
    ), ('7207', '72', 'KABUPATEN BUOL'), (
        '7208',
        '72',
        'KABUPATEN PARIGI MOUTONG'
    ), (
        '7209',
        '72',
        'KABUPATEN TOJO UNA-UNA'
    ), ('7210', '72', 'KABUPATEN SIGI'), (
        '7211',
        '72',
        'KABUPATEN BANGGAI LAUT'
    ), (
        '7212',
        '72',
        'KABUPATEN MOROWALI UTARA'
    ), ('7271', '72', 'KOTA PALU'), (
        '7301',
        '73',
        'KABUPATEN KEPULAUAN SELAYAR'
    ), (
        '7302',
        '73',
        'KABUPATEN BULUKUMBA'
    ), (
        '7303',
        '73',
        'KABUPATEN BANTAENG'
    ), (
        '7304',
        '73',
        'KABUPATEN JENEPONTO'
    ), (
        '7305',
        '73',
        'KABUPATEN TAKALAR'
    ), ('7306', '73', 'KABUPATEN GOWA'), (
        '7307',
        '73',
        'KABUPATEN SINJAI'
    ), (
        '7308',
        '73',
        'KABUPATEN MAROS'
    ), (
        '7309',
        '73',
        'KABUPATEN PANGKAJENE DAN KEPULAUAN'
    ), (
        '7310',
        '73',
        'KABUPATEN BARRU'
    ), ('7311', '73', 'KABUPATEN BONE'), (
        '7312',
        '73',
        'KABUPATEN SOPPENG'
    ), ('7313', '73', 'KABUPATEN WAJO'), (
        '7314',
        '73',
        'KABUPATEN SIDENRENG RAPPANG'
    ), (
        '7315',
        '73',
        'KABUPATEN PINRANG'
    ), (
        '7316',
        '73',
        'KABUPATEN ENREKANG'
    ), ('7317', '73', 'KABUPATEN LUWU'), (
        '7318',
        '73',
        'KABUPATEN TANA TORAJA'
    ), (
        '7322',
        '73',
        'KABUPATEN LUWU UTARA'
    ), (
        '7325',
        '73',
        'KABUPATEN LUWU TIMUR'
    ), (
        '7326',
        '73',
        'KABUPATEN TORAJA UTARA'
    ), ('7371', '73', 'KOTA MAKASSAR'), ('7372', '73', 'KOTA PAREPARE'), ('7373', '73', 'KOTA PALOPO'), (
        '7401',
        '74',
        'KABUPATEN BUTON'
    ), ('7402', '74', 'KABUPATEN MUNA'), (
        '7403',
        '74',
        'KABUPATEN KONAWE'
    ), (
        '7404',
        '74',
        'KABUPATEN KOLAKA'
    ), (
        '7405',
        '74',
        'KABUPATEN KONAWE SELATAN'
    ), (
        '7406',
        '74',
        'KABUPATEN BOMBANA'
    ), (
        '7407',
        '74',
        'KABUPATEN WAKATOBI'
    ), (
        '7408',
        '74',
        'KABUPATEN KOLAKA UTARA'
    ), (
        '7409',
        '74',
        'KABUPATEN BUTON UTARA'
    ), (
        '7410',
        '74',
        'KABUPATEN KONAWE UTARA'
    ), (
        '7411',
        '74',
        'KABUPATEN KOLAKA TIMUR'
    ), (
        '7412',
        '74',
        'KABUPATEN KONAWE KEPULAUAN'
    ), (
        '7413',
        '74',
        'KABUPATEN MUNA BARAT'
    ), (
        '7414',
        '74',
        'KABUPATEN BUTON TENGAH'
    ), (
        '7415',
        '74',
        'KABUPATEN BUTON SELATAN'
    ), ('7471', '74', 'KOTA KENDARI'), ('7472', '74', 'KOTA BAUBAU'), (
        '7501',
        '75',
        'KABUPATEN BOALEMO'
    ), (
        '7502',
        '75',
        'KABUPATEN GORONTALO'
    ), (
        '7503',
        '75',
        'KABUPATEN POHUWATO'
    ), (
        '7504',
        '75',
        'KABUPATEN BONE BOLANGO'
    ), (
        '7505',
        '75',
        'KABUPATEN GORONTALO UTARA'
    ), ('7571', '75', 'KOTA GORONTALO'), (
        '7601',
        '76',
        'KABUPATEN MAJENE'
    ), (
        '7602',
        '76',
        'KABUPATEN POLEWALI MANDAR'
    ), (
        '7603',
        '76',
        'KABUPATEN MAMASA'
    ), (
        '7604',
        '76',
        'KABUPATEN MAMUJU'
    ), (
        '7605',
        '76',
        'KABUPATEN MAMUJU UTARA'
    ), (
        '7606',
        '76',
        'KABUPATEN MAMUJU TENGAH'
    ), (
        '8101',
        '81',
        'KABUPATEN MALUKU TENGGARA BARAT'
    ), (
        '8102',
        '81',
        'KABUPATEN MALUKU TENGGARA'
    ), (
        '8103',
        '81',
        'KABUPATEN MALUKU TENGAH'
    ), ('8104', '81', 'KABUPATEN BURU'), (
        '8105',
        '81',
        'KABUPATEN KEPULAUAN ARU'
    ), (
        '8106',
        '81',
        'KABUPATEN SERAM BAGIAN BARAT'
    ), (
        '8107',
        '81',
        'KABUPATEN SERAM BAGIAN TIMUR'
    ), (
        '8108',
        '81',
        'KABUPATEN MALUKU BARAT DAYA'
    ), (
        '8109',
        '81',
        'KABUPATEN BURU SELATAN'
    ), ('8171', '81', 'KOTA AMBON'), ('8172', '81', 'KOTA TUAL'), (
        '8201',
        '82',
        'KABUPATEN HALMAHERA BARAT'
    ), (
        '8202',
        '82',
        'KABUPATEN HALMAHERA TENGAH'
    ), (
        '8203',
        '82',
        'KABUPATEN KEPULAUAN SULA'
    ), (
        '8204',
        '82',
        'KABUPATEN HALMAHERA SELATAN'
    ), (
        '8205',
        '82',
        'KABUPATEN HALMAHERA UTARA'
    ), (
        '8206',
        '82',
        'KABUPATEN HALMAHERA TIMUR'
    ), (
        '8207',
        '82',
        'KABUPATEN PULAU MOROTAI'
    ), (
        '8208',
        '82',
        'KABUPATEN PULAU TALIABU'
    ), ('8271', '82', 'KOTA TERNATE'), (
        '8272',
        '82',
        'KOTA TIDORE KEPULAUAN'
    ), (
        '9101',
        '91',
        'KABUPATEN FAKFAK'
    ), (
        '9102',
        '91',
        'KABUPATEN KAIMANA'
    ), (
        '9103',
        '91',
        'KABUPATEN TELUK WONDAMA'
    ), (
        '9104',
        '91',
        'KABUPATEN TELUK BINTUNI'
    ), (
        '9105',
        '91',
        'KABUPATEN MANOKWARI'
    ), (
        '9106',
        '91',
        'KABUPATEN SORONG SELATAN'
    ), (
        '9107',
        '91',
        'KABUPATEN SORONG'
    ), (
        '9108',
        '91',
        'KABUPATEN RAJA AMPAT'
    ), (
        '9109',
        '91',
        'KABUPATEN TAMBRAUW'
    ), (
        '9110',
        '91',
        'KABUPATEN MAYBRAT'
    ), (
        '9111',
        '91',
        'KABUPATEN MANOKWARI SELATAN'
    ), (
        '9112',
        '91',
        'KABUPATEN PEGUNUNGAN ARFAK'
    ), ('9171', '91', 'KOTA SORONG'), (
        '9401',
        '94',
        'KABUPATEN MERAUKE'
    ), (
        '9402',
        '94',
        'KABUPATEN JAYAWIJAYA'
    ), (
        '9403',
        '94',
        'KABUPATEN JAYAPURA'
    ), (
        '9404',
        '94',
        'KABUPATEN NABIRE'
    ), (
        '9408',
        '94',
        'KABUPATEN KEPULAUAN YAPEN'
    ), (
        '9409',
        '94',
        'KABUPATEN BIAK NUMFOR'
    ), (
        '9410',
        '94',
        'KABUPATEN PANIAI'
    ), (
        '9411',
        '94',
        'KABUPATEN PUNCAK JAYA'
    ), (
        '9412',
        '94',
        'KABUPATEN MIMIKA'
    ), (
        '9413',
        '94',
        'KABUPATEN BOVEN DIGOEL'
    ), (
        '9414',
        '94',
        'KABUPATEN MAPPI'
    ), (
        '9415',
        '94',
        'KABUPATEN ASMAT'
    ), (
        '9416',
        '94',
        'KABUPATEN YAHUKIMO'
    ), (
        '9417',
        '94',
        'KABUPATEN PEGUNUNGAN BINTANG'
    ), (
        '9418',
        '94',
        'KABUPATEN TOLIKARA'
    ), (
        '9419',
        '94',
        'KABUPATEN SARMI'
    ), (
        '9420',
        '94',
        'KABUPATEN KEEROM'
    ), (
        '9426',
        '94',
        'KABUPATEN WAROPEN'
    ), (
        '9427',
        '94',
        'KABUPATEN SUPIORI'
    ), (
        '9428',
        '94',
        'KABUPATEN MAMBERAMO RAYA'
    ), (
        '9429',
        '94',
        'KABUPATEN NDUGA'
    ), (
        '9430',
        '94',
        'KABUPATEN LANNY JAYA'
    ), (
        '9431',
        '94',
        'KABUPATEN MAMBERAMO TENGAH'
    ), (
        '9432',
        '94',
        'KABUPATEN YALIMO'
    ), (
        '9433',
        '94',
        'KABUPATEN PUNCAK'
    ), (
        '9434',
        '94',
        'KABUPATEN DOGIYAI'
    ), (
        '9435',
        '94',
        'KABUPATEN INTAN JAYA'
    ), (
        '9436',
        '94',
        'KABUPATEN DEIYAI'
    ), ('9471', '94', 'KOTA JAYAPURA');

-- --------------------------------------------------------

--

-- Struktur dari tabel `tbl_kecamatan`

--

CREATE TABLE
    `tbl_kecamatan` (
        `id_kecamatan` char(7) COLLATE utf8_unicode_ci NOT NULL,
        `id_kabupaten` char(4) COLLATE utf8_unicode_ci NOT NULL,
        `nama_kecamatan` varchar(255) COLLATE utf8_unicode_ci NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

--

-- Dumping data untuk tabel `tbl_kecamatan`

--

INSERT INTO
    `tbl_kecamatan` (
        `id_kecamatan`,
        `id_kabupaten`,
        `nama_kecamatan`
    )
VALUES (
        '1101010',
        '1101',
        'TEUPAH SELATAN'
    ), (
        '1101020',
        '1101',
        'SIMEULUE TIMUR'
    ), (
        '1101021',
        '1101',
        'TEUPAH BARAT'
    ), (
        '1101022',
        '1101',
        'TEUPAH TENGAH'
    ), (
        '1101030',
        '1101',
        'SIMEULUE TENGAH'
    ), (
        '1101031',
        '1101',
        'TELUK DALAM'
    ), (
        '1101032',
        '1101',
        'SIMEULUE CUT'
    ), ('1101040', '1101', 'SALANG'), (
        '1101050',
        '1101',
        'SIMEULUE BARAT'
    ), ('1101051', '1101', 'ALAFAN'), (
        '1102010',
        '1102',
        'PULAU BANYAK'
    ), (
        '1102011',
        '1102',
        'PULAU BANYAK BARAT'
    ), ('1102020', '1102', 'SINGKIL'), (
        '1102021',
        '1102',
        'SINGKIL UTARA'
    ), (
        '1102022',
        '1102',
        'KUALA BARU'
    ), (
        '1102030',
        '1102',
        'SIMPANG KANAN'
    ), (
        '1102031',
        '1102',
        'GUNUNG MERIAH'
    ), (
        '1102032',
        '1102',
        'DANAU PARIS'
    ), ('1102033', '1102', 'SURO'), ('1102042', '1102', 'SINGKOHOR'), (
        '1102043',
        '1102',
        'KOTA BAHARU'
    ), ('1103010', '1103', 'TRUMON'), (
        '1103011',
        '1103',
        'TRUMON TIMUR'
    ), (
        '1103012',
        '1103',
        'TRUMON TENGAH'
    ), ('1103020', '1103', 'BAKONGAN'), (
        '1103021',
        '1103',
        'BAKONGAN TIMUR'
    ), (
        '1103022',
        '1103',
        'KOTA BAHAGIA'
    ), (
        '1103030',
        '1103',
        'KLUET SELATAN'
    ), (
        '1103031',
        '1103',
        'KLUET TIMUR'
    ), (
        '1103040',
        '1103',
        'KLUET UTARA'
    ), (
        '1103041',
        '1103',
        'PASIE RAJA'
    ), (
        '1103042',
        '1103',
        'KLUET TENGAH'
    ), (
        '1103050',
        '1103',
        'TAPAK TUAN'
    ), ('1103060', '1103', 'SAMA DUA'), ('1103070', '1103', 'SAWANG'), ('1103080', '1103', 'MEUKEK'), (
        '1103090',
        '1103',
        'LABUHAN HAJI'
    ), (
        '1103091',
        '1103',
        'LABUHAN HAJI TIMUR'
    ), (
        '1103092',
        '1103',
        'LABUHAN HAJI BARAT'
    ), ('1104010', '1104', 'LAWE ALAS'), (
        '1104011',
        '1104',
        'BABUL RAHMAH'
    ), (
        '1104012',
        '1104',
        'TANOH ALAS'
    ), (
        '1104020',
        '1104',
        'LAWE SIGALA-GALA'
    ), (
        '1104021',
        '1104',
        'BABUL MAKMUR'
    ), ('1104022', '1104', 'SEMADAM'), ('1104023', '1104', 'LAUSER'), ('1104030', '1104', 'BAMBEL'), (
        '1104031',
        '1104',
        'BUKIT TUSAM'
    ), (
        '1104032',
        '1104',
        'LAWE SUMUR'
    ), (
        '1104040',
        '1104',
        'BABUSSALAM'
    ), (
        '1104041',
        '1104',
        'LAWE BULAN'
    ), ('1104050', '1104', 'BADAR'), (
        '1104051',
        '1104',
        'DARUL HASANAH'
    ), ('1104052', '1104', 'KETAMBE'), (
        '1104053',
        '1104',
        'DELENG POKHKISEN'
    ), (
        '1105080',
        '1105',
        'SERBA JADI'
    ), (
        '1105081',
        '1105',
        'SIMPANG JERNIH'
    ), ('1105082', '1105', 'PEUNARON'), (
        '1105090',
        '1105',
        'BIREM BAYEUN'
    ), (
        '1105100',
        '1105',
        'RANTAU SELAMAT'
    ), (
        '1105101',
        '1105',
        'SUNGAI RAYA'
    ), ('1105110', '1105', 'PEUREULAK'), (
        '1105111',
        '1105',
        'PEUREULAK TIMUR'
    ), (
        '1105112',
        '1105',
        'PEUREULAK BARAT'
    ), (
        '1105120',
        '1105',
        'RANTO PEUREULAK'
    ), (
        '1105130',
        '1105',
        'IDI RAYEUK'
    ), ('1105131', '1105', 'PEUDAWA'), (
        '1105132',
        '1105',
        'BANDA ALAM'
    ), (
        '1105133',
        '1105',
        'IDI TUNONG'
    ), (
        '1105134',
        '1105',
        'DARUL IHSAN'
    ), ('1105135', '1105', 'IDI TIMUR'), (
        '1105140',
        '1105',
        'DARUL AMAN'
    ), (
        '1105150',
        '1105',
        'NURUSSALAM'
    ), (
        '1105151',
        '1105',
        'DARUL FALAH'
    ), ('1105160', '1105', 'JULOK'), (
        '1105161',
        '1105',
        'INDRA MAKMUR'
    ), (
        '1105170',
        '1105',
        'PANTE BIDARI'
    ), (
        '1105180',
        '1105',
        'SIMPANG ULIM'
    ), ('1105181', '1105', 'MADAT'), ('1106010', '1106', 'LINGE'), (
        '1106011',
        '1106',
        'ATU LINTANG'
    ), (
        '1106012',
        '1106',
        'JAGONG JEGET'
    ), ('1106020', '1106', 'BINTANG'), ('1106031', '1106', 'LUT TAWAR'), ('1106032', '1106', 'KEBAYAKAN'), ('1106040', '1106', 'PEGASING'), ('1106041', '1106', 'BIES'), ('1106050', '1106', 'BEBESEN'), (
        '1106051',
        '1106',
        'KUTE PANANG'
    ), (
        '1106060',
        '1106',
        'SILIH NARA'
    ), ('1106061', '1106', 'KETOL'), ('1106062', '1106', 'CELALA'), (
        '1106063',
        '1106',
        'RUSIP ANTARA'
    ), (
        '1107050',
        '1107',
        'JOHAN PAHLAWAN'
    ), ('1107060', '1107', 'SAMATIGA'), ('1107061', '1107', 'BUBON'), (
        '1107062',
        '1107',
        'ARONGAN LAMBALEK'
    ), ('1107070', '1107', 'WOYLA'), (
        '1107071',
        '1107',
        'WOYLA BARAT'
    ), (
        '1107072',
        '1107',
        'WOYLA TIMUR'
    ), ('1107080', '1107', 'KAWAY XVI'), ('1107081', '1107', 'MEUREUBO'), (
        '1107082',
        '1107',
        'PANTAI CEUREMEN'
    ), (
        '1107083',
        '1107',
        'PANTON REU'
    ), (
        '1107090',
        '1107',
        'SUNGAI MAS'
    ), ('1108010', '1108', 'LHOONG'), ('1108020', '1108', 'LHOKNGA'), ('1108021', '1108', 'LEUPUNG'), ('1108030', '1108', 'INDRAPURI'), (
        '1108031',
        '1108',
        'KUTA COT GLIE'
    ), ('1108040', '1108', 'SEULIMEUM'), (
        '1108041',
        '1108',
        'KOTA JANTHO'
    ), (
        '1108042',
        '1108',
        'LEMBAH SEULAWAH'
    ), (
        '1108050',
        '1108',
        'MESJID RAYA'
    ), (
        '1108060',
        '1108',
        'DARUSSALAM'
    ), (
        '1108061',
        '1108',
        'BAITUSSALAM'
    ), ('1108070', '1108', 'KUTA BARO'), ('1108080', '1108', 'MONTASIK'), (
        '1108081',
        '1108',
        'BLANG BINTANG'
    ), (
        '1108090',
        '1108',
        'INGIN JAYA'
    ), (
        '1108091',
        '1108',
        'KRUENG BARONA JAYA'
    ), (
        '1108100',
        '1108',
        'SUKA MAKMUR'
    ), (
        '1108101',
        '1108',
        'KUTA MALAKA'
    ), (
        '1108102',
        '1108',
        'SIMPANG TIGA'
    ), (
        '1108110',
        '1108',
        'DARUL IMARAH'
    ), (
        '1108111',
        '1108',
        'DARUL KAMAL'
    ), (
        '1108120',
        '1108',
        'PEUKAN BADA'
    ), ('1108130', '1108', 'PULO ACEH'), ('1109010', '1109', 'GEUMPANG'), ('1109011', '1109', 'MANE'), (
        '1109070',
        '1109',
        'GLUMPANG TIGA'
    ), (
        '1109071',
        '1109',
        'GLUMPANG BARO'
    ), ('1109080', '1109', 'MUTIARA'), (
        '1109081',
        '1109',
        'MUTIARA TIMUR'
    ), (
        '1109090',
        '1109',
        'TIRO/TRUSEB'
    ), ('1109100', '1109', 'TANGSE'), ('1109111', '1109', 'KEUMALA'), ('1109112', '1109', 'TITEUE'), ('1109120', '1109', 'SAKTI'), ('1109130', '1109', 'MILA'), (
        '1109140',
        '1109',
        'PADANG TIJI'
    ), ('1109150', '1109', 'DELIMA'), (
        '1109151',
        '1109',
        'GRONG GRONG'
    ), ('1109160', '1109', 'INDRAJAYA'), (
        '1109170',
        '1109',
        'PEUKAN BARO'
    ), (
        '1109180',
        '1109',
        'KEMBANG TANJONG'
    ), (
        '1109190',
        '1109',
        'SIMPANG TIGA'
    ), (
        '1109200',
        '1109',
        'KOTA SIGLI'
    ), ('1109210', '1109', 'PIDIE'), ('1109220', '1109', 'BATEE'), (
        '1109230',
        '1109',
        'MUARA TIGA'
    ), ('1110010', '1110', 'SAMALANGA'), (
        '1110011',
        '1110',
        'SIMPANG MAMPLAM'
    ), ('1110020', '1110', 'PANDRAH'), ('1110030', '1110', 'JEUNIEB'), (
        '1110031',
        '1110',
        'PEULIMBANG'
    ), ('1110040', '1110', 'PEUDADA'), ('1110050', '1110', 'JULI'), ('1110060', '1110', 'JEUMPA'), (
        '1110061',
        '1110',
        'KOTA JUANG'
    ), ('1110062', '1110', 'KUALA'), ('1110070', '1110', 'JANGKA'), ('1110080', '1110', 'PEUSANGAN'), (
        '1110081',
        '1110',
        'PEUSANGAN SELATAN'
    ), (
        '1110082',
        '1110',
        'PEUSANGAN SIBLAH KRUENG'
    ), ('1110090', '1110', 'MAKMUR'), (
        '1110100',
        '1110',
        'GANDA PURA'
    ), (
        '1110101',
        '1110',
        'KUTA BLANG'
    ), ('1111010', '1111', 'SAWANG'), ('1111020', '1111', 'NISAM'), (
        '1111021',
        '1111',
        'NISAM ANTARA'
    ), (
        '1111022',
        '1111',
        'BANDA BARO'
    ), (
        '1111030',
        '1111',
        'KUTA MAKMUR'
    ), (
        '1111031',
        '1111',
        'SIMPANG KERAMAT'
    ), (
        '1111040',
        '1111',
        'SYAMTALIRA BAYU'
    ), (
        '1111041',
        '1111',
        'GEUREUDONG PASE'
    ), (
        '1111050',
        '1111',
        'MEURAH MULIA'
    ), (
        '1111060',
        '1111',
        'MATANGKULI'
    ), (
        '1111061',
        '1111',
        'PAYA BAKONG'
    ), (
        '1111062',
        '1111',
        'PIRAK TIMU'
    ), ('1111070', '1111', 'COT GIREK'), (
        '1111080',
        '1111',
        'TANAH JAMBO AYE'
    ), ('1111081', '1111', 'LANGKAHAN'), ('1111090', '1111', 'SEUNUDDON'), ('1111100', '1111', 'BAKTIYA'), (
        '1111101',
        '1111',
        'BAKTIYA BARAT'
    ), ('1111110', '1111', 'LHOKSUKON'), (
        '1111120',
        '1111',
        'TANAH LUAS'
    ), ('1111121', '1111', 'NIBONG'), ('1111130', '1111', 'SAMUDERA'), (
        '1111140',
        '1111',
        'SYAMTALIRA ARON'
    ), (
        '1111150',
        '1111',
        'TANAH PASIR'
    ), ('1111151', '1111', 'LAPANG'), (
        '1111160',
        '1111',
        'MUARA BATU'
    ), ('1111170', '1111', 'DEWANTARA'), ('1112010', '1112', 'MANGGENG'), (
        '1112011',
        '1112',
        'LEMBAH SABIL'
    ), (
        '1112020',
        '1112',
        'TANGAN-TANGAN'
    ), ('1112021', '1112', 'SETIA'), (
        '1112030',
        '1112',
        'BLANG PIDIE'
    ), ('1112031', '1112', 'JEUMPA'), ('1112040', '1112', 'SUSOH'), (
        '1112050',
        '1112',
        'KUALA BATEE'
    ), ('1112060', '1112', 'BABAH ROT'), (
        '1113010',
        '1113',
        'KUTA PANJANG'
    ), (
        '1113011',
        '1113',
        'BLANG JERANGO'
    ), (
        '1113020',
        '1113',
        'BLANGKEJEREN'
    ), (
        '1113021',
        '1113',
        'PUTRI BETUNG'
    ), (
        '1113022',
        '1113',
        'DABUN GELANG'
    ), (
        '1113023',
        '1113',
        'BLANG PEGAYON'
    ), ('1113030', '1113', 'PINING'), (
        '1113040',
        '1113',
        'RIKIT GAIB'
    ), (
        '1113041',
        '1113',
        'PANTAN CUACA'
    ), ('1113050', '1113', 'TERANGUN'), (
        '1113051',
        '1113',
        'TRIPE JAYA'
    ), (
        '1114010',
        '1114',
        'TAMIANG HULU'
    ), (
        '1114011',
        '1114',
        'BANDAR PUSAKA'
    ), (
        '1114020',
        '1114',
        'KEJURUAN MUDA'
    ), ('1114021', '1114', 'TENGGULUN'), ('1114030', '1114', 'RANTAU'), (
        '1114040',
        '1114',
        'KOTA KUALA SIMPANG'
    ), ('1114050', '1114', 'SERUWAY'), ('1114060', '1114', 'BENDAHARA'), (
        '1114061',
        '1114',
        'BANDA MULIA'
    ), (
        '1114070',
        '1114',
        'KARANG BARU'
    ), ('1114071', '1114', 'SEKERAK'), (
        '1114080',
        '1114',
        'MANYAK PAYED'
    ), (
        '1115010',
        '1115',
        'DARUL MAKMUR'
    ), (
        '1115011',
        '1115',
        'TRIPA MAKMUR'
    ), ('1115020', '1115', 'KUALA'), (
        '1115021',
        '1115',
        'KUALA PESISIR'
    ), ('1115022', '1115', 'TADU RAYA'), ('1115030', '1115', 'BEUTONG'), (
        '1115031',
        '1115',
        'BEUTONG ATEUH BANGGALANG'
    ), ('1115040', '1115', 'SEUNAGAN'), (
        '1115041',
        '1115',
        'SUKA MAKMUE'
    ), (
        '1115050',
        '1115',
        'SEUNAGAN TIMUR'
    ), ('1116010', '1116', 'TEUNOM'), (
        '1116011',
        '1116',
        'PASIE RAYA'
    ), ('1116020', '1116', 'PANGA'), (
        '1116030',
        '1116',
        'KRUENG SABEE'
    ), (
        '1116040',
        '1116',
        'SETIA BAKTI'
    ), (
        '1116050',
        '1116',
        'SAMPOINIET'
    ), (
        '1116051',
        '1116',
        'DARUL HIKMAH'
    ), ('1116060', '1116', 'JAYA'), (
        '1116061',
        '1116',
        'INDRA JAYA'
    ), (
        '1117010',
        '1117',
        'TIMANG GAJAH'
    ), (
        '1117011',
        '1117',
        'GAJAH PUTIH'
    ), (
        '1117020',
        '1117',
        'PINTU RIME GAYO'
    ), ('1117030', '1117', 'BUKIT'), ('1117040', '1117', 'WIH PESAM'), ('1117050', '1117', 'BANDAR'), (
        '1117051',
        '1117',
        'BENER KELIPAH'
    ), (
        '1117060',
        '1117',
        'SYIAH UTAMA'
    ), ('1117061', '1117', 'MESIDAH'), ('1117070', '1117', 'PERMATA'), ('1118010', '1118', 'MEUREUDU'), (
        '1118020',
        '1118',
        'MEURAH DUA'
    ), (
        '1118030',
        '1118',
        'BANDAR DUA'
    ), (
        '1118040',
        '1118',
        'JANGKA BUYA'
    ), ('1118050', '1118', 'ULIM'), (
        '1118060',
        '1118',
        'TRIENGGADENG'
    ), ('1118070', '1118', 'PANTERAJA'), (
        '1118080',
        '1118',
        'BANDAR BARU'
    ), ('1171010', '1171', 'MEURAXA'), ('1171011', '1171', 'JAYA BARU'), (
        '1171012',
        '1171',
        'BANDA RAYA'
    ), (
        '1171020',
        '1171',
        'BAITURRAHMAN'
    ), (
        '1171021',
        '1171',
        'LUENG BATA'
    ), ('1171030', '1171', 'KUTA ALAM'), ('1171031', '1171', 'KUTA RAJA'), (
        '1171040',
        '1171',
        'SYIAH KUALA'
    ), (
        '1171041',
        '1171',
        'ULEE KARENG'
    ), ('1172010', '1172', 'SUKAJAYA'), ('1172020', '1172', 'SUKAKARYA'), (
        '1173010',
        '1173',
        'LANGSA TIMUR'
    ), (
        '1173011',
        '1173',
        'LANGSA LAMA'
    ), (
        '1173020',
        '1173',
        'LANGSA BARAT'
    ), (
        '1173021',
        '1173',
        'LANGSA BARO'
    ), (
        '1173030',
        '1173',
        'LANGSA KOTA'
    ), (
        '1174010',
        '1174',
        'BLANG MANGAT'
    ), ('1174020', '1174', 'MUARA DUA'), (
        '1174021',
        '1174',
        'MUARA SATU'
    ), (
        '1174030',
        '1174',
        'BANDA SAKTI'
    ), (
        '1175010',
        '1175',
        'SIMPANG KIRI'
    ), (
        '1175020',
        '1175',
        'PENANGGALAN'
    ), ('1175030', '1175', 'RUNDENG'), (
        '1175040',
        '1175',
        'SULTAN DAULAT'
    ), ('1175050', '1175', 'LONGKIB'), (
        '1201060',
        '1201',
        'IDANO GAWO'
    ), ('1201061', '1201', 'BAWOLATO'), ('1201062', '1201', 'ULUGAWO'), ('1201070', '1201', 'GIDO'), ('1201071', '1201', 'SOGAEADU'), ('1201081', '1201', 'MA U'), (
        '1201082',
        '1201',
        'SOMOLO - MOLO'
    ), ('1201130', '1201', 'HILIDUHO'), (
        '1201131',
        '1201',
        'HILI SERANGKAI'
    ), ('1201132', '1201', 'BOTOMUZOI'), ('1202010', '1202', 'BATAHAN'), ('1202011', '1202', 'SINUNUKAN'), (
        '1202020',
        '1202',
        'BATANG NATAL'
    ), (
        '1202021',
        '1202',
        'LINGGA BAYU'
    ), (
        '1202022',
        '1202',
        'RANTO BAEK'
    ), ('1202030', '1202', 'KOTANOPAN'), (
        '1202031',
        '1202',
        'ULU PUNGKUT'
    ), ('1202032', '1202', 'TAMBANGAN'), (
        '1202033',
        '1202',
        'LEMBAH SORIK MARAPI'
    ), (
        '1202034',
        '1202',
        'PUNCAK SORIK MARAPI'
    ), (
        '1202040',
        '1202',
        'MUARA SIPONGI'
    ), ('1202041', '1202', 'PAKANTAN'), (
        '1202050',
        '1202',
        'PANYABUNGAN'
    ), (
        '1202051',
        '1202',
        'PANYABUNGAN SELATAN'
    ), (
        '1202052',
        '1202',
        'PANYABUNGAN BARAT'
    ), (
        '1202053',
        '1202',
        'PANYABUNGAN UTARA'
    ), (
        '1202054',
        '1202',
        'PANYABUNGAN TIMUR'
    ), (
        '1202055',
        '1202',
        'HUTA BARGOT'
    ), ('1202060', '1202', 'NATAL'), (
        '1202070',
        '1202',
        'MUARA BATANG GADIS'
    ), ('1202080', '1202', 'SIABU'), (
        '1202081',
        '1202',
        'BUKIT MALINTANG'
    ), (
        '1202082',
        '1202',
        'NAGA JUANG'
    ), (
        '1203010',
        '1203',
        'BATANG ANGKOLA'
    ), (
        '1203011',
        '1203',
        'SAYUR MATINGGI'
    ), (
        '1203012',
        '1203',
        'TANO TOMBANGAN ANGKOLA'
    ), (
        '1203070',
        '1203',
        'ANGKOLA TIMUR'
    ), (
        '1203080',
        '1203',
        'ANGKOLA SELATAN'
    ), (
        '1203090',
        '1203',
        'ANGKOLA  BARAT'
    ), (
        '1203091',
        '1203',
        'ANGKOLA SANGKUNUR'
    ), (
        '1203100',
        '1203',
        'BATANG TORU'
    ), ('1203101', '1203', 'MARANCAR'), (
        '1203102',
        '1203',
        'MUARA BATANG TORU'
    ), ('1203110', '1203', 'SIPIROK'), ('1203120', '1203', 'ARSE'), (
        '1203160',
        '1203',
        'SAIPAR DOLOK HOLE'
    ), ('1203161', '1203', 'AEK BILAH'), (
        '1204010',
        '1204',
        'PINANG SORI'
    ), ('1204011', '1204', 'BADIRI'), (
        '1204020',
        '1204',
        'SIBABANGUN'
    ), ('1204021', '1204', 'LUMUT'), (
        '1204022',
        '1204',
        'SUKABANGUN'
    ), ('1204030', '1204', 'PANDAN'), ('1204031', '1204', 'TUKKA'), ('1204032', '1204', 'SARUDIK'), (
        '1204040',
        '1204',
        'TAPIAN NAULI'
    ), ('1204041', '1204', 'SITAHUIS'), ('1204050', '1204', 'KOLANG'), ('1204060', '1204', 'SORKAM'), (
        '1204061',
        '1204',
        'SORKAM BARAT'
    ), (
        '1204062',
        '1204',
        'PASARIBU TOBING'
    ), ('1204070', '1204', 'BARUS'), (
        '1204071',
        '1204',
        'SOSOR GADONG'
    ), (
        '1204072',
        '1204',
        'ANDAM DEWI'
    ), (
        '1204073',
        '1204',
        'BARUS UTARA'
    ), ('1204080', '1204', 'MANDUAMAS'), (
        '1204081',
        '1204',
        'SIRANDORUNG'
    ), (
        '1205030',
        '1205',
        'PARMONANGAN'
    ), (
        '1205040',
        '1205',
        'ADIAN KOTING'
    ), ('1205050', '1205', 'SIPOHOLON'), ('1205060', '1205', 'TARUTUNG'), (
        '1205061',
        '1205',
        'SIATAS BARITA'
    ), (
        '1205070',
        '1205',
        'PAHAE JULU'
    ), ('1205080', '1205', 'PAHAE JAE'), ('1205081', '1205', 'PURBATUA'), (
        '1205082',
        '1205',
        'SIMANGUMBAN'
    ), (
        '1205090',
        '1205',
        'PANGARIBUAN'
    ), ('1205100', '1205', 'GAROGA'), ('1205110', '1205', 'SIPAHUTAR'), (
        '1205120',
        '1205',
        'SIBORONG-BORONG'
    ), ('1205130', '1205', 'PAGARAN'), ('1205180', '1205', 'MUARA'), ('1206030', '1206', 'BALIGE'), ('1206031', '1206', 'TAMPAHAN'), ('1206040', '1206', 'LAGUBOTI'), (
        '1206050',
        '1206',
        'HABINSARAN'
    ), ('1206051', '1206', 'BORBOR'), ('1206052', '1206', 'NASSAU'), ('1206060', '1206', 'SILAEN'), ('1206061', '1206', 'SIGUMPAR'), ('1206070', '1206', 'PORSEA'), (
        '1206071',
        '1206',
        'PINTU POHAN MERANTI'
    ), (
        '1206072',
        '1206',
        'SIANTAR NARUMONDA'
    ), (
        '1206073',
        '1206',
        'PARMAKSIAN'
    ), (
        '1206080',
        '1206',
        'LUMBAN JULU'
    ), ('1206081', '1206', 'ULUAN'), ('1206082', '1206', 'AJIBATA'), (
        '1206083',
        '1206',
        'BONATUA LUNASI'
    ), (
        '1207050',
        '1207',
        'BILAH HULU'
    ), ('1207070', '1207', 'PANGKATAN'), (
        '1207080',
        '1207',
        'BILAH BARAT'
    ), (
        '1207130',
        '1207',
        'BILAH HILIR'
    ), (
        '1207140',
        '1207',
        'PANAI HULU'
    ), (
        '1207150',
        '1207',
        'PANAI TENGAH'
    ), (
        '1207160',
        '1207',
        'PANAI HILIR'
    ), (
        '1207210',
        '1207',
        'RANTAU SELATAN'
    ), (
        '1207220',
        '1207',
        'RANTAU UTARA'
    ), (
        '1208010',
        '1208',
        'BANDAR PASIR MANDOGE'
    ), (
        '1208020',
        '1208',
        'BANDAR PULAU'
    ), (
        '1208021',
        '1208',
        'AEK SONGSONGAN'
    ), ('1208022', '1208', 'RAHUNING'), (
        '1208030',
        '1208',
        'PULAU RAKYAT'
    ), (
        '1208031',
        '1208',
        'AEK KUASAN'
    ), (
        '1208032',
        '1208',
        'AEK LEDONG'
    ), (
        '1208040',
        '1208',
        'SEI KEPAYANG'
    ), (
        '1208041',
        '1208',
        'SEI KEPAYANG BARAT'
    ), (
        '1208042',
        '1208',
        'SEI KEPAYANG TIMUR'
    ), (
        '1208050',
        '1208',
        'TANJUNG BALAI'
    ), (
        '1208060',
        '1208',
        'SIMPANG EMPAT'
    ), (
        '1208061',
        '1208',
        'TELUK DALAM'
    ), ('1208070', '1208', 'AIR BATU'), ('1208071', '1208', 'SEI DADAP'), (
        '1208080',
        '1208',
        'BUNTU PANE'
    ), (
        '1208081',
        '1208',
        'TINGGI RAJA'
    ), (
        '1208082',
        '1208',
        'SETIA JANJI'
    ), ('1208090', '1208', 'MERANTI'), (
        '1208091',
        '1208',
        'PULO BANDRING'
    ), (
        '1208092',
        '1208',
        'RAWANG PANCA ARGA'
    ), ('1208100', '1208', 'AIR JOMAN'), (
        '1208101',
        '1208',
        'SILAU LAUT'
    ), (
        '1208160',
        '1208',
        'KISARAN BARAT'
    ), (
        '1208170',
        '1208',
        'KISARAN TIMUR'
    ), (
        '1209010',
        '1209',
        'SILIMAKUTA'
    ), (
        '1209011',
        '1209',
        'PEMATANG SILIMAHUTA'
    ), ('1209020', '1209', 'PURBA'), (
        '1209021',
        '1209',
        'HARANGGAOL HORISON'
    ), (
        '1209030',
        '1209',
        'DOLOK PARDAMEAN'
    ), ('1209040', '1209', 'SIDAMANIK'), (
        '1209041',
        '1209',
        'PEMATANG SIDAMANIK'
    ), (
        '1209050',
        '1209',
        'GIRSANG SIPANGAN BOLON'
    ), (
        '1209060',
        '1209',
        'TANAH JAWA'
    ), (
        '1209061',
        '1209',
        'HATONDUHAN'
    ), (
        '1209070',
        '1209',
        'DOLOK PANRIBUAN'
    ), (
        '1209080',
        '1209',
        'JORLANG HATARAN'
    ), ('1209090', '1209', 'PANEI'), (
        '1209091',
        '1209',
        'PANOMBEAN PANEI'
    ), ('1209100', '1209', 'RAYA'), (
        '1209110',
        '1209',
        'DOLOK SILAU'
    ), (
        '1209120',
        '1209',
        'SILAU KAHEAN'
    ), (
        '1209130',
        '1209',
        'RAYA KAHEAN'
    ), (
        '1209140',
        '1209',
        'TAPIAN DOLOK'
    ), (
        '1209150',
        '1209',
        'DOLOK BATU NANGGAR'
    ), ('1209160', '1209', 'SIANTAR'), (
        '1209161',
        '1209',
        'GUNUNG MALELA'
    ), (
        '1209162',
        '1209',
        'GUNUNG MALIGAS'
    ), (
        '1209170',
        '1209',
        'HUTABAYU RAJA'
    ), (
        '1209171',
        '1209',
        'JAWA MARAJA BAH JAMBI'
    ), (
        '1209180',
        '1209',
        'PEMATANG BANDAR'
    ), (
        '1209181',
        '1209',
        'BANDAR HULUAN'
    ), ('1209190', '1209', 'BANDAR'), (
        '1209191',
        '1209',
        'BANDAR MASILAM'
    ), (
        '1209200',
        '1209',
        'BOSAR MALIGAS'
    ), (
        '1209210',
        '1209',
        'UJUNG PADANG'
    ), (
        '1210030',
        '1210',
        'SIDIKALANG'
    ), ('1210031', '1210', 'BERAMPU'), ('1210032', '1210', 'SITINJO'), ('1210040', '1210', 'PARBULUAN'), ('1210050', '1210', 'SUMBUL'), (
        '1210051',
        '1210',
        'SILAHI SABUNGAN'
    ), (
        '1210060',
        '1210',
        'SILIMA PUNGGA-PUNGGA'
    ), (
        '1210061',
        '1210',
        'LAE PARIRA'
    ), (
        '1210070',
        '1210',
        'SIEMPAT NEMPU'
    ), (
        '1210080',
        '1210',
        'SIEMPAT NEMPU HULU'
    ), (
        '1210090',
        '1210',
        'SIEMPAT NEMPU HILIR'
    ), (
        '1210100',
        '1210',
        'TIGA LINGGA'
    ), (
        '1210101',
        '1210',
        'GUNUNG SITEMBER'
    ), (
        '1210110',
        '1210',
        'PEGAGAN HILIR'
    ), (
        '1210120',
        '1210',
        'TANAH PINEM'
    ), (
        '1211010',
        '1211',
        'MARDINGDING'
    ), ('1211020', '1211', 'LAUBALENG'), (
        '1211030',
        '1211',
        'TIGA BINANGA'
    ), ('1211040', '1211', 'JUHAR'), ('1211050', '1211', 'MUNTE'), (
        '1211060',
        '1211',
        'KUTA BULUH'
    ), ('1211070', '1211', 'PAYUNG'), (
        '1211071',
        '1211',
        'TIGANDERKET'
    ), (
        '1211080',
        '1211',
        'SIMPANG EMPAT'
    ), (
        '1211081',
        '1211',
        'NAMAN TERAN'
    ), ('1211082', '1211', 'MERDEKA'), ('1211090', '1211', 'KABANJAHE'), ('1211100', '1211', 'BERASTAGI'), ('1211110', '1211', 'TIGAPANAH'), (
        '1211111',
        '1211',
        'DOLAT RAYAT'
    ), ('1211120', '1211', 'MEREK'), ('1211130', '1211', 'BARUSJAHE'), (
        '1212010',
        '1212',
        'GUNUNG MERIAH'
    ), (
        '1212020',
        '1212',
        'SINEMBAH TANJUNG MUDA HULU'
    ), (
        '1212030',
        '1212',
        'SIBOLANGIT'
    ), (
        '1212040',
        '1212',
        'KUTALIMBARU'
    ), (
        '1212050',
        '1212',
        'PANCUR BATU'
    ), (
        '1212060',
        '1212',
        'NAMO RAMBE'
    ), ('1212070', '1212', 'BIRU-BIRU'), (
        '1212080',
        '1212',
        'SINEMBAH TANJUNG MUDA HILIR'
    ), (
        '1212090',
        '1212',
        'BANGUN PURBA'
    ), ('1212190', '1212', 'GALANG'), (
        '1212200',
        '1212',
        'TANJUNG MORAWA'
    ), ('1212210', '1212', 'PATUMBAK'), ('1212220', '1212', 'DELI TUA'), ('1212230', '1212', 'SUNGGAL'), (
        '1212240',
        '1212',
        'HAMPARAN PERAK'
    ), (
        '1212250',
        '1212',
        'LABUHAN DELI'
    ), (
        '1212260',
        '1212',
        'PERCUT SEI TUAN'
    ), (
        '1212270',
        '1212',
        'BATANG KUIS'
    ), (
        '1212280',
        '1212',
        'PANTAI LABU'
    ), ('1212290', '1212', 'BERINGIN'), (
        '1212300',
        '1212',
        'LUBUK PAKAM'
    ), (
        '1212310',
        '1212',
        'PAGAR MERBAU'
    ), ('1213010', '1213', 'BOHOROK'), ('1213011', '1213', 'SIRAPIT'), ('1213020', '1213', 'SALAPIAN'), ('1213021', '1213', 'KUTAMBARU'), (
        '1213030',
        '1213',
        'SEI BINGAI'
    ), ('1213040', '1213', 'KUALA'), ('1213050', '1213', 'SELESAI'), ('1213060', '1213', 'BINJAI'), ('1213070', '1213', 'STABAT'), ('1213080', '1213', 'WAMPU'), (
        '1213090',
        '1213',
        'BATANG SERANGAN'
    ), (
        '1213100',
        '1213',
        'SAWIT SEBERANG'
    ), (
        '1213110',
        '1213',
        'PADANG TUALANG'
    ), ('1213120', '1213', 'HINAI'), (
        '1213130',
        '1213',
        'SECANGGANG'
    ), (
        '1213140',
        '1213',
        'TANJUNG PURA'
    ), ('1213150', '1213', 'GEBANG'), ('1213160', '1213', 'BABALAN'), ('1213170', '1213', 'SEI LEPAN'), (
        '1213180',
        '1213',
        'BRANDAN BARAT'
    ), ('1213190', '1213', 'BESITANG'), (
        '1213200',
        '1213',
        'PANGKALAN SUSU'
    ), (
        '1213201',
        '1213',
        'PEMATANG JAYA'
    ), ('1214010', '1214', 'HIBALA'), (
        '1214011',
        '1214',
        'TANAH MASA'
    ), (
        '1214020',
        '1214',
        'PULAU-PULAU BATU'
    ), (
        '1214021',
        '1214',
        'PULAU-PULAU BATU TIMUR'
    ), ('1214022', '1214', 'SIMUK'), (
        '1214023',
        '1214',
        'PULAU-PULAU BATU BARAT'
    ), (
        '1214024',
        '1214',
        'PULAU-PULAU BATU UTARA'
    ), (
        '1214030',
        '1214',
        'TELUK DALAM'
    ), ('1214031', '1214', 'FANAYAMA'), ('1214032', '1214', 'TOMA'), ('1214033', '1214', 'MANIAMOLO'), ('1214034', '1214', 'MAZINO'), (
        '1214035',
        '1214',
        'LUAHAGUNDRE MANIAMOLO'
    ), ('1214036', '1214', 'ONOLALU'), ('1214040', '1214', 'AMANDRAYA'), ('1214041', '1214', 'ARAMO'), ('1214042', '1214', 'ULUSUSUA'), ('1214050', '1214', 'LAHUSA'), ('1214051', '1214', 'SIDUAORI'), ('1214052', '1214', 'SOMAMBAWA'), ('1214060', '1214', 'GOMO'), ('1214061', '1214', 'SUSUA'), ('1214062', '1214', 'MAZO'), ('1214063', '1214', 'UMBUNASI'), ('1214064', '1214', 'IDANOTAE'), (
        '1214065',
        '1214',
        'ULUIDANOTAE'
    ), ('1214066', '1214', 'BORONADU'), ('1214070', '1214', 'LOLOMATUA'), ('1214071', '1214', 'ULUNOYO'), ('1214072', '1214', 'HURUNA'), ('1214080', '1214', 'LOLOWA\'U'), ('1214081', '1214', 'HILIMEGAI'), ('1214082', '1214', 'OOU'), (
        '1214083',
        '1214',
        'ONOHAZUMBA'
    ), (
        '1214084',
        '1214',
        'HILISALAWAAHE'
    ), ('1215010', '1215', 'PAKKAT'), (
        '1215020',
        '1215',
        'ONAN GANJANG'
    ), (
        '1215030',
        '1215',
        'SIJAMA POLANG'
    ), (
        '1215040',
        '1215',
        'DOLOK SANGGUL'
    ), (
        '1215050',
        '1215',
        'LINTONG NIHUTA'
    ), (
        '1215060',
        '1215',
        'PARANGINAN'
    ), (
        '1215070',
        '1215',
        'BAKTI RAJA'
    ), ('1215080', '1215', 'POLLUNG'), (
        '1215090',
        '1215',
        'PARLILITAN'
    ), (
        '1215100',
        '1215',
        'TARA BINTANG'
    ), ('1216010', '1216', 'SALAK'), (
        '1216011',
        '1216',
        'SITELLU TALI URANG JEHE'
    ), ('1216012', '1216', 'PAGINDAR'), (
        '1216013',
        '1216',
        'SITELLU TALI URANG JULU'
    ), (
        '1216014',
        '1216',
        'PERGETTENG-GETTENG SENGKUT'
    ), ('1216020', '1216', 'KERAJAAN'), ('1216021', '1216', 'TINADA'), (
        '1216022',
        '1216',
        'SIEMPAT RUBE'
    ), (
        '1217010',
        '1217',
        'SIANJUR MULA MULA'
    ), ('1217020', '1217', 'HARIAN'), ('1217030', '1217', 'SITIO-TIO'), (
        '1217040',
        '1217',
        'ONAN RUNGGU'
    ), (
        '1217050',
        '1217',
        'NAINGGOLAN'
    ), ('1217060', '1217', 'PALIPI'), (
        '1217070',
        '1217',
        'RONGGUR NIHUTA'
    ), (
        '1217080',
        '1217',
        'PANGURURAN'
    ), ('1217090', '1217', 'SIMANINDO'), ('1218010', '1218', 'KOTARIH'), ('1218011', '1218', 'SILINDA'), (
        '1218012',
        '1218',
        'BINTANG BAYU'
    ), (
        '1218020',
        '1218',
        'DOLOK MASIHUL'
    ), ('1218021', '1218', 'SERBAJADI'), ('1218030', '1218', 'SIPISPIS'), (
        '1218040',
        '1218',
        'DOLOK MERAWAN'
    ), (
        '1218050',
        '1218',
        'TEBINGTINGGI'
    ), (
        '1218051',
        '1218',
        'TEBING SYAHBANDAR'
    ), (
        '1218060',
        '1218',
        'BANDAR KHALIPAH'
    ), (
        '1218070',
        '1218',
        'TANJUNG BERINGIN'
    ), (
        '1218080',
        '1218',
        'SEI RAMPAH'
    ), (
        '1218081',
        '1218',
        'SEI BAMBAN'
    ), (
        '1218090',
        '1218',
        'TELUK MENGKUDU'
    ), (
        '1218100',
        '1218',
        'PERBAUNGAN'
    ), ('1218101', '1218', 'PEGAJAHAN'), (
        '1218110',
        '1218',
        'PANTAI CERMIN'
    ), ('1219010', '1219', 'SEI BALAI'), (
        '1219020',
        '1219',
        'TANJUNG TIRAM'
    ), ('1219030', '1219', 'TALAWI'), ('1219040', '1219', 'LIMAPULUH'), ('1219050', '1219', 'AIR PUTIH'), ('1219060', '1219', 'SEI SUKA'), (
        '1219070',
        '1219',
        'MEDANG DERAS'
    ), (
        '1220010',
        '1220',
        'BATANG ONANG'
    ), (
        '1220020',
        '1220',
        'PADANG BOLAK JULU'
    ), ('1220030', '1220', 'PORTIBI'), (
        '1220040',
        '1220',
        'PADANG BOLAK'
    ), (
        '1220050',
        '1220',
        'SIMANGAMBAT'
    ), (
        '1220060',
        '1220',
        'HALONGONAN'
    ), ('1220070', '1220', 'DOLOK'), (
        '1220080',
        '1220',
        'DOLOK SIGOMPULON'
    ), (
        '1220090',
        '1220',
        'HULU SIHAPAS'
    ), ('1221010', '1221', 'SOSOPAN'), (
        '1221020',
        '1221',
        'ULU BARUMUN'
    ), ('1221030', '1221', 'BARUMUN'), (
        '1221031',
        '1221',
        'BARUMUN SELATAN'
    ), (
        '1221040',
        '1221',
        'LUBUK BARUMUN'
    ), ('1221050', '1221', 'SOSA'), (
        '1221060',
        '1221',
        'BATANG LUBU SUTAM'
    ), (
        '1221070',
        '1221',
        'HUTA RAJA TINGGI'
    ), ('1221080', '1221', 'HURISTAK'), (
        '1221090',
        '1221',
        'BARUMUN TENGAH'
    ), (
        '1221091',
        '1221',
        'AEK NABARA BARUMUN'
    ), (
        '1221092',
        '1221',
        'SIHAPAS BARUMUN'
    ), (
        '1222010',
        '1222',
        'SUNGAI KANAN'
    ), ('1222020', '1222', 'TORGAMBA'), (
        '1222030',
        '1222',
        'KOTA PINANG'
    ), (
        '1222040',
        '1222',
        'SILANGKITANG'
    ), (
        '1222050',
        '1222',
        'KAMPUNG RAKYAT'
    ), ('1223010', '1223', 'NA IX-X'), ('1223020', '1223', 'MARBAU'), ('1223030', '1223', 'AEK KUO'), ('1223040', '1223', 'AEK NATAS'), (
        '1223050',
        '1223',
        'KUALUH SELATAN'
    ), (
        '1223060',
        '1223',
        'KUALUH HILIR'
    ), (
        '1223070',
        '1223',
        'KUALUH HULU'
    ), (
        '1223080',
        '1223',
        'KUALUH LEIDONG'
    ), (
        '1224010',
        '1224',
        'TUGALA OYO'
    ), ('1224020', '1224', 'ALASA'), (
        '1224030',
        '1224',
        'ALASA TALU MUZOI'
    ), (
        '1224040',
        '1224',
        'NAMOHALU ESIWA'
    ), (
        '1224050',
        '1224',
        'SITOLU ORI'
    ), (
        '1224060',
        '1224',
        'TUHEMBERUA'
    ), ('1224070', '1224', 'SAWO'), ('1224080', '1224', 'LOTU'), (
        '1224090',
        '1224',
        'LAHEWA TIMUR'
    ), ('1224100', '1224', 'AFULU'), ('1224110', '1224', 'LAHEWA'), ('1225010', '1225', 'SIROMBU'), ('1225020', '1225', 'LAHOMI'), (
        '1225030',
        '1225',
        'ULU MORO O'
    ), (
        '1225040',
        '1225',
        'LOLOFITU MOI'
    ), (
        '1225050',
        '1225',
        'MANDREHE UTARA'
    ), ('1225060', '1225', 'MANDREHE'), (
        '1225070',
        '1225',
        'MANDREHE BARAT'
    ), ('1225080', '1225', 'MORO O'), (
        '1271010',
        '1271',
        'SIBOLGA UTARA'
    ), (
        '1271020',
        '1271',
        'SIBOLGA KOTA'
    ), (
        '1271030',
        '1271',
        'SIBOLGA SELATAN'
    ), (
        '1271031',
        '1271',
        'SIBOLGA SAMBAS'
    ), (
        '1272010',
        '1272',
        'DATUK BANDAR'
    ), (
        '1272011',
        '1272',
        'DATUK BANDAR TIMUR'
    ), (
        '1272020',
        '1272',
        'TANJUNG BALAI SELATAN'
    ), (
        '1272030',
        '1272',
        'TANJUNG BALAI UTARA'
    ), (
        '1272040',
        '1272',
        'SEI TUALANG RASO'
    ), (
        '1272050',
        '1272',
        'TELUK NIBUNG'
    ), (
        '1273010',
        '1273',
        'SIANTAR MARIHAT'
    ), (
        '1273011',
        '1273',
        'SIANTAR MARIMBUN'
    ), (
        '1273020',
        '1273',
        'SIANTAR SELATAN'
    ), (
        '1273030',
        '1273',
        'SIANTAR BARAT'
    ), (
        '1273040',
        '1273',
        'SIANTAR UTARA'
    ), (
        '1273050',
        '1273',
        'SIANTAR TIMUR'
    ), (
        '1273060',
        '1273',
        'SIANTAR MARTOBA'
    ), (
        '1273061',
        '1273',
        'SIANTAR SITALASARI'
    ), (
        '1274010',
        '1274',
        'PADANG HULU'
    ), (
        '1274011',
        '1274',
        'TEBING TINGGI KOTA'
    ), ('1274020', '1274', 'RAMBUTAN'), ('1274021', '1274', 'BAJENIS'), (
        '1274030',
        '1274',
        'PADANG HILIR'
    ), (
        '1275010',
        '1275',
        'MEDAN TUNTUNGAN'
    ), (
        '1275020',
        '1275',
        'MEDAN JOHOR'
    ), (
        '1275030',
        '1275',
        'MEDAN AMPLAS'
    ), (
        '1275040',
        '1275',
        'MEDAN DENAI'
    ), (
        '1275050',
        '1275',
        'MEDAN AREA'
    ), (
        '1275060',
        '1275',
        'MEDAN KOTA'
    ), (
        '1275070',
        '1275',
        'MEDAN MAIMUN'
    ), (
        '1275080',
        '1275',
        'MEDAN POLONIA'
    ), (
        '1275090',
        '1275',
        'MEDAN BARU'
    ), (
        '1275100',
        '1275',
        'MEDAN SELAYANG'
    ), (
        '1275110',
        '1275',
        'MEDAN SUNGGAL'
    ), (
        '1275120',
        '1275',
        'MEDAN HELVETIA'
    ), (
        '1275130',
        '1275',
        'MEDAN PETISAH'
    ), (
        '1275140',
        '1275',
        'MEDAN BARAT'
    ), (
        '1275150',
        '1275',
        'MEDAN TIMUR'
    ), (
        '1275160',
        '1275',
        'MEDAN PERJUANGAN'
    ), (
        '1275170',
        '1275',
        'MEDAN TEMBUNG'
    ), (
        '1275180',
        '1275',
        'MEDAN DELI'
    ), (
        '1275190',
        '1275',
        'MEDAN LABUHAN'
    ), (
        '1275200',
        '1275',
        'MEDAN MARELAN'
    ), (
        '1275210',
        '1275',
        'MEDAN BELAWAN'
    ), (
        '1276010',
        '1276',
        'BINJAI SELATAN'
    ), (
        '1276020',
        '1276',
        'BINJAI KOTA'
    ), (
        '1276030',
        '1276',
        'BINJAI TIMUR'
    ), (
        '1276040',
        '1276',
        'BINJAI UTARA'
    ), (
        '1276050',
        '1276',
        'BINJAI BARAT'
    ), (
        '1277010',
        '1277',
        'PADANGSIDIMPUAN TENGGARA'
    ), (
        '1277020',
        '1277',
        'PADANGSIDIMPUAN SELATAN'
    ), (
        '1277030',
        '1277',
        'PADANGSIDIMPUAN BATUNADUA'
    ), (
        '1277040',
        '1277',
        'PADANGSIDIMPUAN UTARA'
    ), (
        '1277050',
        '1277',
        'PADANGSIDIMPUAN HUTAIMBARU'
    ), (
        '1277051',
        '1277',
        'PADANGSIDIMPUAN ANGKOLA JULU'
    ), (
        '1278010',
        '1278',
        'GUNUNGSITOLI IDANOI'
    ), (
        '1278020',
        '1278',
        'GUNUNGSITOLI SELATAN'
    ), (
        '1278030',
        '1278',
        'GUNUNGSITOLI BARAT'
    ), (
        '1278040',
        '1278',
        'GUNUNG SITOLI'
    ), (
        '1278050',
        '1278',
        'GUNUNGSITOLI ALO OA'
    ), (
        '1278060',
        '1278',
        'GUNUNGSITOLI UTARA'
    ), (
        '1301011',
        '1301',
        'PAGAI SELATAN'
    ), ('1301012', '1301', 'SIKAKAP'), (
        '1301013',
        '1301',
        'PAGAI UTARA'
    ), (
        '1301021',
        '1301',
        'SIPORA SELATAN'
    ), (
        '1301022',
        '1301',
        'SIPORA UTARA'
    ), (
        '1301030',
        '1301',
        'SIBERUT SELATAN'
    ), (
        '1301031',
        '1301',
        'SEBERUT BARAT DAYA'
    ), (
        '1301032',
        '1301',
        'SIBERUT TENGAH'
    ), (
        '1301040',
        '1301',
        'SIBERUT UTARA'
    ), (
        '1301041',
        '1301',
        'SIBERUT BARAT'
    ), ('1302011', '1302', 'SILAUT'), ('1302012', '1302', 'LUNANG'), (
        '1302020',
        '1302',
        'BASA AMPEK BALAI TAPAN'
    ), (
        '1302021',
        '1302',
        'RANAH AMPEK HULU TAPAN'
    ), (
        '1302030',
        '1302',
        'PANCUNG SOAL'
    ), ('1302031', '1302', 'AIRPURA'), (
        '1302040',
        '1302',
        'LINGGO SARI BAGANTI'
    ), (
        '1302050',
        '1302',
        'RANAH PESISIR'
    ), ('1302060', '1302', 'LENGAYANG'), ('1302070', '1302', 'SUTERA'), (
        '1302080',
        '1302',
        'BATANG KAPAS'
    ), ('1302090', '1302', 'IV JURAI'), ('1302100', '1302', 'BAYANG'), (
        '1302101',
        '1302',
        'IV  NAGARI BAYANG UTARA'
    ), (
        '1302110',
        '1302',
        'KOTO XI TARUSAN'
    ), (
        '1303040',
        '1303',
        'PANTAI CERMIN'
    ), (
        '1303050',
        '1303',
        'LEMBAH GUMANTI'
    ), (
        '1303051',
        '1303',
        'HILIRAN GUMANTI'
    ), (
        '1303060',
        '1303',
        'PAYUNG SEKAKI'
    ), (
        '1303061',
        '1303',
        'TIGO LURAH'
    ), (
        '1303070',
        '1303',
        'LEMBANG JAYA'
    ), (
        '1303071',
        '1303',
        'DANAU KEMBAR'
    ), (
        '1303080',
        '1303',
        'GUNUNG TALANG'
    ), (
        '1303090',
        '1303',
        'BUKIT SUNDI'
    ), (
        '1303100',
        '1303',
        'IX KOTO SUNGAI LASI'
    ), ('1303110', '1303', 'KUBUNG'), (
        '1303120',
        '1303',
        'X KOTO DIATAS'
    ), (
        '1303130',
        '1303',
        'X KOTO SINGKARAK'
    ), (
        '1303140',
        '1303',
        'JUNJUNG SIRIH'
    ), (
        '1304050',
        '1304',
        'KAMANG BARU'
    ), (
        '1304060',
        '1304',
        'TANJUNG GADANG'
    ), ('1304070', '1304', 'SIJUNJUNG'), (
        '1304071',
        '1304',
        'LUBUK TAROK'
    ), ('1304080', '1304', 'IV NAGARI'), ('1304090', '1304', 'KUPITAN'), (
        '1304100',
        '1304',
        'KOTO TUJUH'
    ), (
        '1304110',
        '1304',
        'SUMPUR KUDUS'
    ), (
        '1305010',
        '1305',
        'SEPULUH KOTO'
    ), ('1305020', '1305', 'BATIPUH'), (
        '1305021',
        '1305',
        'BATIPUH SELATAN'
    ), ('1305030', '1305', 'PARIANGAN'), ('1305040', '1305', 'RAMBATAN'), ('1305050', '1305', 'LIMA KAUM'), (
        '1305060',
        '1305',
        'TANJUNG EMAS'
    ), (
        '1305070',
        '1305',
        'PADANG GANTING'
    ), (
        '1305080',
        '1305',
        'LINTAU BUO'
    ), (
        '1305081',
        '1305',
        'LINTAU BUO UTARA'
    ), ('1305090', '1305', 'SUNGAYANG'), (
        '1305100',
        '1305',
        'SUNGAI TARAB'
    ), (
        '1305110',
        '1305',
        'SALIMPAUNG'
    ), (
        '1305111',
        '1305',
        'TANJUNG BARU'
    ), (
        '1306010',
        '1306',
        'BATANG ANAI'
    ), (
        '1306020',
        '1306',
        'LUBUK ALUNG'
    ), (
        '1306021',
        '1306',
        'SINTUK TOBOH GADANG'
    ), (
        '1306030',
        '1306',
        'ULAKAN TAPAKIS'
    ), (
        '1306040',
        '1306',
        'NAN SABARIS'
    ), (
        '1306050',
        '1306',
        '2 X 11 ENAM LINGKUNG'
    ), (
        '1306051',
        '1306',
        'ENAM LINGKUNG'
    ), (
        '1306052',
        '1306',
        '2 X 11 KAYU TANAM'
    ), (
        '1306060',
        '1306',
        'VII KOTO SUNGAI SARIAK'
    ), ('1306061', '1306', 'PATAMUAN'), (
        '1306062',
        '1306',
        'PADANG SAGO'
    ), (
        '1306070',
        '1306',
        'V KOTO KP DALAM'
    ), (
        '1306071',
        '1306',
        'V KOTO TIMUR'
    ), (
        '1306080',
        '1306',
        'SUNGAI LIMAU'
    ), (
        '1306081',
        '1306',
        'BATANG GASAN'
    ), (
        '1306090',
        '1306',
        'SUNGAI GERINGGING'
    ), (
        '1306100',
        '1306',
        'IV KOTO AUR MALINTANG'
    ), (
        '1307010',
        '1307',
        'TANJUNG MUTIARA'
    ), (
        '1307020',
        '1307',
        'LUBUK BASUNG'
    ), (
        '1307021',
        '1307',
        'AMPEK NAGARI'
    ), (
        '1307030',
        '1307',
        'TANJUNG RAYA'
    ), ('1307040', '1307', 'MATUR'), ('1307050', '1307', 'IV KOTO'), ('1307051', '1307', 'MALALAK'), ('1307061', '1307', 'BANUHAMPU'), (
        '1307062',
        '1307',
        'SUNGAI PUA'
    ), (
        '1307070',
        '1307',
        'AMPEK ANGKEK'
    ), ('1307071', '1307', 'CANDUANG'), ('1307080', '1307', 'BASO'), (
        '1307090',
        '1307',
        'TILATANG KAMANG'
    ), (
        '1307091',
        '1307',
        'KAMANG MAGEK'
    ), (
        '1307100',
        '1307',
        'PALEMBAYAN'
    ), ('1307110', '1307', 'PALUPUH'), (
        '1308010',
        '1308',
        'PAYAKUMBUH'
    ), ('1308011', '1308', 'AKABILURU'), ('1308020', '1308', 'LUAK'), (
        '1308021',
        '1308',
        'LAREH SAGO HALABAN'
    ), (
        '1308022',
        '1308',
        'SITUJUAH LIMO NAGARI'
    ), ('1308030', '1308', 'HARAU'), ('1308040', '1308', 'GUGUAK'), ('1308041', '1308', 'MUNGKA'), ('1308050', '1308', 'SULIKI'), (
        '1308051',
        '1308',
        'BUKIK BARISAN'
    ), (
        '1308060',
        '1308',
        'GUNUANG OMEH'
    ), ('1308070', '1308', 'KAPUR IX'), (
        '1308080',
        '1308',
        'PANGKALAN KOTO BARU'
    ), ('1309070', '1309', 'BONJOL'), (
        '1309071',
        '1309',
        'TIGO NAGARI'
    ), (
        '1309072',
        '1309',
        'SIMPANG ALAHAN MATI'
    ), (
        '1309080',
        '1309',
        'LUBUK SIKAPING'
    ), ('1309100', '1309', 'DUA KOTO'), ('1309110', '1309', 'PANTI'), (
        '1309111',
        '1309',
        'PADANG GELUGUR'
    ), ('1309121', '1309', 'RAO'), (
        '1309122',
        '1309',
        'MAPAT TUNGGUL'
    ), (
        '1309123',
        '1309',
        'MAPAT TUNGGUL SELATAN'
    ), (
        '1309124',
        '1309',
        'RAO SELATAN'
    ), ('1309125', '1309', 'RAO UTARA'), ('1310010', '1310', 'SANGIR'), (
        '1310020',
        '1310',
        'SANGIR JUJUAN'
    ), (
        '1310021',
        '1310',
        'SANGIR BALAI JANGGO'
    ), (
        '1310030',
        '1310',
        'SANGIR BATANG HARI'
    ), (
        '1310040',
        '1310',
        'SUNGAI PAGU'
    ), ('1310041', '1310', 'PAUAH DUO'), (
        '1310050',
        '1310',
        'KOTO PARIK GADANG DIATEH'
    ), (
        '1311010',
        '1311',
        'SUNGAI RUMBAI'
    ), (
        '1311011',
        '1311',
        'KOTO BESAR'
    ), (
        '1311012',
        '1311',
        'ASAM JUJUHAN'
    ), ('1311020', '1311', 'KOTO BARU'), (
        '1311021',
        '1311',
        'KOTO SALAK'
    ), ('1311022', '1311', 'TIUMANG'), (
        '1311023',
        '1311',
        'PADANG LAWEH'
    ), ('1311030', '1311', 'SITIUNG'), ('1311031', '1311', 'TIMPEH'), (
        '1311040',
        '1311',
        'PULAU PUNJUNG'
    ), ('1311041', '1311', 'IX KOTO'), (
        '1312010',
        '1312',
        'SUNGAI BEREMAS'
    ), (
        '1312020',
        '1312',
        'RANAH BATAHAN'
    ), (
        '1312030',
        '1312',
        'KOTO BALINGKA'
    ), (
        '1312040',
        '1312',
        'SUNGAI AUR'
    ), (
        '1312050',
        '1312',
        'LEMBAH MALINTANG'
    ), (
        '1312060',
        '1312',
        'GUNUNG TULEH'
    ), ('1312070', '1312', 'TALAMAU'), ('1312080', '1312', 'PASAMAN'), (
        '1312090',
        '1312',
        'LUHAK NAN DUO'
    ), (
        '1312100',
        '1312',
        'SASAK RANAH PASISIE'
    ), ('1312110', '1312', 'KINALI'), (
        '1371010',
        '1371',
        'BUNGUS TELUK KABUNG'
    ), (
        '1371020',
        '1371',
        'LUBUK KILANGAN'
    ), (
        '1371030',
        '1371',
        'LUBUK BEGALUNG'
    ), (
        '1371040',
        '1371',
        'PADANG SELATAN'
    ), (
        '1371050',
        '1371',
        'PADANG TIMUR'
    ), (
        '1371060',
        '1371',
        'PADANG BARAT'
    ), (
        '1371070',
        '1371',
        'PADANG UTARA'
    ), ('1371080', '1371', 'NANGGALO'), ('1371090', '1371', 'KURANJI'), ('1371100', '1371', 'PAUH'), (
        '1371110',
        '1371',
        'KOTO TANGAH'
    ), (
        '1372010',
        '1372',
        'LUBUK SIKARAH'
    ), (
        '1372020',
        '1372',
        'TANJUNG HARAPAN'
    ), (
        '1373010',
        '1373',
        'SILUNGKANG'
    ), (
        '1373020',
        '1373',
        'LEMBAH SEGAR'
    ), ('1373030', '1373', 'BARANGIN'), ('1373040', '1373', 'TALAWI'), (
        '1374010',
        '1374',
        'PADANG PANJANG BARAT'
    ), (
        '1374020',
        '1374',
        'PADANG PANJANG TIMUR'
    ), (
        '1375010',
        '1375',
        'GUGUK PANJANG'
    ), (
        '1375020',
        '1375',
        'MANDIANGIN KOTO SELAYAN'
    ), (
        '1375030',
        '1375',
        'AUR BIRUGO TIGO BALEH'
    ), (
        '1376010',
        '1376',
        'PAYAKUMBUH BARAT'
    ), (
        '1376011',
        '1376',
        'PAYAKUMBUH SELATAN'
    ), (
        '1376020',
        '1376',
        'PAYAKUMBUH TIMUR'
    ), (
        '1376030',
        '1376',
        'PAYAKUMBUH UTARA'
    ), (
        '1376031',
        '1376',
        'LAMPOSI TIGO NAGORI'
    ), (
        '1377010',
        '1377',
        'PARIAMAN SELATAN'
    ), (
        '1377020',
        '1377',
        'PARIAMAN TENGAH'
    ), (
        '1377021',
        '1377',
        'PARIAMAN TIMUR'
    ), (
        '1377030',
        '1377',
        'PARIAMAN UTARA'
    ), (
        '1401010',
        '1401',
        'KUANTAN MUDIK'
    ), (
        '1401011',
        '1401',
        'HULU KUANTAN'
    ), (
        '1401012',
        '1401',
        'GUNUNG TOAR'
    ), (
        '1401013',
        '1401',
        'PUCUK RANTAU'
    ), ('1401020', '1401', 'SINGINGI'), (
        '1401021',
        '1401',
        'SINGINGI HILIR'
    ), (
        '1401030',
        '1401',
        'KUANTAN TENGAH'
    ), (
        '1401031',
        '1401',
        'SENTAJO RAYA'
    ), ('1401040', '1401', 'BENAI'), (
        '1401050',
        '1401',
        'KUANTAN HILIR'
    ), ('1401051', '1401', 'PANGEAN'), (
        '1401052',
        '1401',
        'LOGAS TANAH DARAT'
    ), (
        '1401053',
        '1401',
        'KUANTAN HILIR SEBERANG'
    ), ('1401060', '1401', 'CERENTI'), ('1401061', '1401', 'INUMAN'), ('1402010', '1402', 'PERANAP'), (
        '1402011',
        '1402',
        'BATANG PERANAP'
    ), ('1402020', '1402', 'SEBERIDA'), (
        '1402021',
        '1402',
        'BATANG CENAKU'
    ), (
        '1402022',
        '1402',
        'BATANG GANSAL'
    ), ('1402030', '1402', 'KELAYANG'), (
        '1402031',
        '1402',
        'RAKIT KULIM'
    ), (
        '1402040',
        '1402',
        'PASIR PENYU'
    ), ('1402041', '1402', 'LIRIK'), (
        '1402042',
        '1402',
        'SUNGAI LALA'
    ), (
        '1402043',
        '1402',
        'LUBUK BATU JAYA'
    ), (
        '1402050',
        '1402',
        'RENGAT BARAT'
    ), ('1402060', '1402', 'RENGAT'), (
        '1402061',
        '1402',
        'KUALA CENAKU'
    ), ('1403010', '1403', 'KERITANG'), ('1403011', '1403', 'KEMUNING'), ('1403020', '1403', 'RETEH'), (
        '1403021',
        '1403',
        'SUNGAI BATANG'
    ), ('1403030', '1403', 'ENOK'), (
        '1403040',
        '1403',
        'TANAH MERAH'
    ), (
        '1403050',
        '1403',
        'KUALA INDRAGIRI'
    ), ('1403051', '1403', 'CONCONG'), (
        '1403060',
        '1403',
        'TEMBILAHAN'
    ), (
        '1403061',
        '1403',
        'TEMBILAHAN HULU'
    ), ('1403070', '1403', 'TEMPULING'), ('1403071', '1403', 'KEMPAS'), (
        '1403080',
        '1403',
        'BATANG TUAKA'
    ), (
        '1403090',
        '1403',
        'GAUNG ANAK SERKA'
    ), ('1403100', '1403', 'GAUNG'), ('1403110', '1403', 'MANDAH'), ('1403120', '1403', 'KATEMAN'), (
        '1403121',
        '1403',
        'PELANGIRAN'
    ), (
        '1403122',
        '1403',
        'TELUK BELENGKONG'
    ), (
        '1403123',
        '1403',
        'PULAU BURUNG'
    ), ('1404010', '1404', 'LANGGAM'), (
        '1404011',
        '1404',
        'PANGKALAN KERINCI'
    ), (
        '1404012',
        '1404',
        'BANDAR SEIKIJANG'
    ), (
        '1404020',
        '1404',
        'PANGKALAN KURAS'
    ), ('1404021', '1404', 'UKUI'), (
        '1404022',
        '1404',
        'PANGKALAN LESUNG'
    ), ('1404030', '1404', 'BUNUT'), ('1404031', '1404', 'PELALAWAN'), (
        '1404032',
        '1404',
        'BANDAR PETALANGAN'
    ), (
        '1404040',
        '1404',
        'KUALA KAMPAR'
    ), ('1404041', '1404', 'KERUMUTAN'), (
        '1404042',
        '1404',
        'TELUK MERANTI'
    ), ('1405010', '1405', 'MINAS'), (
        '1405011',
        '1405',
        'SUNGAI MANDAU'
    ), ('1405012', '1405', 'KANDIS'), ('1405020', '1405', 'SIAK'), (
        '1405021',
        '1405',
        'KERINCI KANAN'
    ), ('1405022', '1405', 'TUALANG'), ('1405023', '1405', 'DAYUN'), (
        '1405024',
        '1405',
        'LUBUK DALAM'
    ), (
        '1405025',
        '1405',
        'KOTO GASIB'
    ), ('1405026', '1405', 'MEMPURA'), (
        '1405030',
        '1405',
        'SUNGAI APIT'
    ), (
        '1405031',
        '1405',
        'BUNGA RAYA'
    ), ('1405032', '1405', 'SABAK AUH'), ('1405033', '1405', 'PUSAKO'), (
        '1406010',
        '1406',
        'KAMPAR KIRI'
    ), (
        '1406011',
        '1406',
        'KAMPAR KIRI HULU'
    ), (
        '1406012',
        '1406',
        'KAMPAR KIRI HILIR'
    ), (
        '1406013',
        '1406',
        'GUNUNG SAHILAN'
    ), (
        '1406014',
        '1406',
        'KAMPAR KIRI TENGAH'
    ), (
        '1406020',
        '1406',
        'XIII KOTO KAMPAR'
    ), (
        '1406021',
        '1406',
        'KOTO KAMPAR HULU'
    ), ('1406030', '1406', 'KUOK'), ('1406031', '1406', 'SALO'), ('1406040', '1406', 'TAPUNG'), (
        '1406041',
        '1406',
        'TAPUNG HULU'
    ), (
        '1406042',
        '1406',
        'TAPUNG HILIR'
    ), (
        '1406050',
        '1406',
        'BANGKINANG KOTA'
    ), (
        '1406051',
        '1406',
        'BANGKINANG'
    ), ('1406060', '1406', 'KAMPAR'), (
        '1406061',
        '1406',
        'KAMPAR TIMUR'
    ), (
        '1406062',
        '1406',
        'RUMBIO JAYA'
    ), (
        '1406063',
        '1406',
        'KAMPAR UTARA'
    ), ('1406070', '1406', 'TAMBANG'), ('1406080', '1406', 'SIAK HULU'), (
        '1406081',
        '1406',
        'PERHENTIAN RAJA'
    ), (
        '1407010',
        '1407',
        'ROKAN IV KOTO'
    ), (
        '1407011',
        '1407',
        'PENDALIAN IV KOTO'
    ), ('1407020', '1407', 'TANDUN'), ('1407021', '1407', 'KABUN'), (
        '1407022',
        '1407',
        'UJUNG BATU'
    ), (
        '1407030',
        '1407',
        'RAMBAH SAMO'
    ), ('1407040', '1407', 'RAMBAH'), (
        '1407041',
        '1407',
        'RAMBAH HILIR'
    ), (
        '1407042',
        '1407',
        'BANGUN PURBA'
    ), ('1407050', '1407', 'TAMBUSAI'), (
        '1407051',
        '1407',
        'TAMBUSAI UTARA'
    ), ('1407060', '1407', 'KEPENUHAN'), (
        '1407061',
        '1407',
        'KEPENUHAN HULU'
    ), (
        '1407070',
        '1407',
        'KUNTO DARUSSALAM'
    ), (
        '1407071',
        '1407',
        'PAGARAN TAPAH DARUSSALAM'
    ), (
        '1407072',
        '1407',
        'BONAI DARUSSALAM'
    ), ('1408010', '1408', 'MANDAU'), ('1408011', '1408', 'PINGGIR'), (
        '1408020',
        '1408',
        'BUKIT BATU'
    ), (
        '1408021',
        '1408',
        'SIAK KECIL'
    ), ('1408030', '1408', 'RUPAT'), (
        '1408031',
        '1408',
        'RUPAT UTARA'
    ), ('1408040', '1408', 'BENGKALIS'), ('1408050', '1408', 'BANTAN'), (
        '1409010',
        '1409',
        'TANAH PUTIH'
    ), ('1409011', '1409', 'PUJUD'), (
        '1409012',
        '1409',
        'TANAH PUTIH TANJUNG MELAWAN'
    ), (
        '1409013',
        '1409',
        'RANTAU KOPAR'
    ), (
        '1409014',
        '1409',
        'TANJUNG MEDAN'
    ), (
        '1409020',
        '1409',
        'BAGAN SINEMBAH'
    ), (
        '1409021',
        '1409',
        'SIMPANG KANAN'
    ), (
        '1409022',
        '1409',
        'BAGAN SINEMBAH RAYA'
    ), (
        '1409023',
        '1409',
        'BALAI JAYA'
    ), ('1409030', '1409', 'KUBU'), (
        '1409031',
        '1409',
        'PASIR LIMAU KAPAS'
    ), (
        '1409032',
        '1409',
        'KUBU BABUSSALAM'
    ), ('1409040', '1409', 'BANGKO'), ('1409041', '1409', 'SINABOI'), (
        '1409042',
        '1409',
        'BATU HAMPAR'
    ), ('1409043', '1409', 'PEKAITAN'), (
        '1409050',
        '1409',
        'RIMBA MELINTANG'
    ), (
        '1409051',
        '1409',
        'BANGKO PUSAKO'
    ), (
        '1410010',
        '1410',
        'TEBING TINGGI BARAT'
    ), (
        '1410020',
        '1410',
        'TEBING TINGGI'
    ), (
        '1410021',
        '1410',
        'TEBING TINGGI TIMUR'
    ), ('1410030', '1410', 'RANGSANG'), (
        '1410031',
        '1410',
        'RANGSANG PESISIR'
    ), (
        '1410040',
        '1410',
        'RANGSANG BARAT'
    ), ('1410050', '1410', 'MERBAU'), (
        '1410051',
        '1410',
        'PULAU MERBAU'
    ), (
        '1410052',
        '1410',
        'PUTRI PUYU'
    ), ('1471010', '1471', 'TAMPAN'), (
        '1471011',
        '1471',
        'PAYUNG SEKAKI'
    ), (
        '1471020',
        '1471',
        'BUKIT RAYA'
    ), (
        '1471021',
        '1471',
        'MARPOYAN DAMAI'
    ), (
        '1471022',
        '1471',
        'TENAYAN RAYA'
    ), ('1471030', '1471', 'LIMAPULUH'), ('1471040', '1471', 'SAIL'), (
        '1471050',
        '1471',
        'PEKANBARU KOTA'
    ), ('1471060', '1471', 'SUKAJADI'), ('1471070', '1471', 'SENAPELAN'), ('1471080', '1471', 'RUMBAI'), (
        '1471081',
        '1471',
        'RUMBAI PESISIR'
    ), (
        '1473010',
        '1473',
        'BUKIT KAPUR'
    ), (
        '1473011',
        '1473',
        'MEDANG KAMPAI'
    ), (
        '1473012',
        '1473',
        'SUNGAI SEMBILAN'
    ), (
        '1473020',
        '1473',
        'DUMAI BARAT'
    ), (
        '1473021',
        '1473',
        'DUMAI SELATAN'
    ), (
        '1473030',
        '1473',
        'DUMAI TIMUR'
    ), (
        '1473031',
        '1473',
        'DUMAI KOTA'
    ), (
        '1501010',
        '1501',
        'GUNUNG RAYA'
    ), (
        '1501011',
        '1501',
        'BUKIT KERMAN'
    ), (
        '1501020',
        '1501',
        'BATANG MERANGIN'
    ), (
        '1501030',
        '1501',
        'KELILING DANAU'
    ), (
        '1501040',
        '1501',
        'DANAU KERINCI'
    ), (
        '1501050',
        '1501',
        'SITINJAU LAUT'
    ), (
        '1501070',
        '1501',
        'AIR HANGAT'
    ), (
        '1501071',
        '1501',
        'AIR HANGAT TIMUR'
    ), (
        '1501072',
        '1501',
        'DEPATI VII'
    ), (
        '1501073',
        '1501',
        'AIR HANGAT BARAT'
    ), (
        '1501080',
        '1501',
        'GUNUNG KERINCI'
    ), ('1501081', '1501', 'SIULAK'), (
        '1501082',
        '1501',
        'SIULAK MUKAI'
    ), ('1501090', '1501', 'KAYU ARO'), (
        '1501091',
        '1501',
        'GUNUNG TUJUH'
    ), (
        '1501092',
        '1501',
        'KAYU ARO BARAT'
    ), ('1502010', '1502', 'JANGKAT'), (
        '1502011',
        '1502',
        'SUNGAI TENANG'
    ), (
        '1502020',
        '1502',
        'MUARA SIAU'
    ), (
        '1502021',
        '1502',
        'LEMBAH MASURAI'
    ), (
        '1502022',
        '1502',
        'TIANG PUMPUNG'
    ), ('1502030', '1502', 'PAMENANG'), (
        '1502031',
        '1502',
        'PAMENANG BARAT'
    ), (
        '1502032',
        '1502',
        'RENAH PAMENANG'
    ), (
        '1502033',
        '1502',
        'PAMENANG SELATAN'
    ), ('1502040', '1502', 'BANGKO'), (
        '1502041',
        '1502',
        'BANGKO BARAT'
    ), (
        '1502042',
        '1502',
        'NALO TANTAN'
    ), (
        '1502043',
        '1502',
        'BATANG MASUMAI'
    ), (
        '1502050',
        '1502',
        'SUNGAI MANAU'
    ), (
        '1502051',
        '1502',
        'RENAH PEMBARAP'
    ), (
        '1502052',
        '1502',
        'PANGKALAN JAMBU'
    ), ('1502060', '1502', 'TABIR'), ('1502061', '1502', 'TABIR ULU'), (
        '1502062',
        '1502',
        'TABIR SELATAN'
    ), (
        '1502063',
        '1502',
        'TABIR ILIR'
    ), (
        '1502064',
        '1502',
        'TABIR TIMUR'
    ), (
        '1502065',
        '1502',
        'TABIR LINTAS'
    ), (
        '1502066',
        '1502',
        'MARGO TABIR'
    ), (
        '1502067',
        '1502',
        'TABIR BARAT'
    ), (
        '1503010',
        '1503',
        'BATANG ASAI'
    ), ('1503020', '1503', 'LIMUN'), (
        '1503021',
        '1503',
        'CERMIN NAN GEDANG'
    ), ('1503030', '1503', 'PELAWAN'), ('1503031', '1503', 'SINGKUT'), (
        '1503040',
        '1503',
        'SAROLANGUN'
    ), (
        '1503041',
        '1503',
        'BATHIN VIII'
    ), ('1503050', '1503', 'PAUH'), ('1503051', '1503', 'AIR HITAM'), (
        '1503060',
        '1503',
        'MANDIANGIN'
    ), ('1504010', '1504', 'MERSAM'), (
        '1504011',
        '1504',
        'MARO SEBO ULU'
    ), (
        '1504020',
        '1504',
        'BATIN XXIV'
    ), (
        '1504030',
        '1504',
        'MUARA TEMBESI'
    ), (
        '1504040',
        '1504',
        'MUARA BULIAN'
    ), ('1504041', '1504', 'BAJUBANG'), (
        '1504042',
        '1504',
        'MARO SEBO ILIR'
    ), ('1504050', '1504', 'PEMAYUNG'), ('1505010', '1505', 'MESTONG'), (
        '1505011',
        '1505',
        'SUNGAI BAHAR'
    ), (
        '1505012',
        '1505',
        'BAHAR SELATAN'
    ), (
        '1505013',
        '1505',
        'BAHAR UTARA'
    ), (
        '1505020',
        '1505',
        'KUMPEH ULU'
    ), (
        '1505021',
        '1505',
        'SUNGAI GELAM'
    ), ('1505030', '1505', 'KUMPEH'), ('1505040', '1505', 'MARO SEBO'), (
        '1505041',
        '1505',
        'TAMAN RAJO'
    ), (
        '1505050',
        '1505',
        'JAMBI LUAR KOTA'
    ), ('1505060', '1505', 'SEKERNAN'), ('1506010', '1506', 'MENDAHARA'), (
        '1506011',
        '1506',
        'MENDAHARA ULU'
    ), ('1506012', '1506', 'GERAGAI'), ('1506020', '1506', 'DENDANG'), (
        '1506031',
        '1506',
        'MUARA SABAK BARAT'
    ), (
        '1506032',
        '1506',
        'MUARA SABAK TIMUR'
    ), (
        '1506033',
        '1506',
        'KUALA JAMBI'
    ), (
        '1506040',
        '1506',
        'RANTAU RASAU'
    ), ('1506041', '1506', 'BERBAK'), (
        '1506050',
        '1506',
        'NIPAH PANJANG'
    ), ('1506060', '1506', 'SADU'), (
        '1507010',
        '1507',
        'TUNGKAL ULU'
    ), ('1507011', '1507', 'MERLUNG'), (
        '1507012',
        '1507',
        'BATANG ASAM'
    ), (
        '1507013',
        '1507',
        'TEBING TINGGI'
    ), (
        '1507014',
        '1507',
        'RENAH MENDALUH'
    ), (
        '1507015',
        '1507',
        'MUARA PAPALIK'
    ), ('1507020', '1507', 'PENGABUAN'), ('1507021', '1507', 'SENYERANG'), (
        '1507030',
        '1507',
        'TUNGKAL ILIR'
    ), ('1507031', '1507', 'BRAM ITAM'), (
        '1507032',
        '1507',
        'SEBERANG KOTA'
    ), ('1507040', '1507', 'BETARA'), (
        '1507041',
        '1507',
        'KUALA BETARA'
    ), ('1508010', '1508', 'TEBO ILIR'), (
        '1508011',
        '1508',
        'MUARA TABIR'
    ), (
        '1508020',
        '1508',
        'TEBO TENGAH'
    ), ('1508021', '1508', 'SUMAY'), (
        '1508022',
        '1508',
        'TENGAH ILIR'
    ), (
        '1508030',
        '1508',
        'RIMBO BUJANG'
    ), ('1508031', '1508', 'RIMBO ULU'), (
        '1508032',
        '1508',
        'RIMBO ILIR'
    ), ('1508040', '1508', 'TEBO ULU'), ('1508041', '1508', 'VII KOTO'), (
        '1508042',
        '1508',
        'SERAI SERUMPUN'
    ), (
        '1508043',
        '1508',
        'VII KOTO ILIR'
    ), ('1509010', '1509', 'PELEPAT'), (
        '1509011',
        '1509',
        'PELEPAT ILIR'
    ), (
        '1509021',
        '1509',
        'BATHIN II BABEKO'
    ), (
        '1509022',
        '1509',
        'RIMBO TENGAH'
    ), (
        '1509023',
        '1509',
        'BUNGO DANI'
    ), (
        '1509024',
        '1509',
        'PASAR MUARA BUNGO'
    ), (
        '1509025',
        '1509',
        'BATHIN III'
    ), (
        '1509030',
        '1509',
        'RANTAU PANDAN'
    ), (
        '1509031',
        '1509',
        'MUKO-MUKO BATHIN VII'
    ), (
        '1509032',
        '1509',
        'BATHIN III ULU'
    ), (
        '1509040',
        '1509',
        'TANAH SEPENGGAL'
    ), (
        '1509041',
        '1509',
        'TANAH SEPENGGAL LINTAS'
    ), (
        '1509050',
        '1509',
        'TANAH TUMBUH'
    ), (
        '1509051',
        '1509',
        'LIMBUR LUBUK MENGKUANG'
    ), (
        '1509052',
        '1509',
        'BATHIN II PELAYANG'
    ), ('1509060', '1509', 'JUJUHAN'), (
        '1509061',
        '1509',
        'JUJUHAN ILIR'
    ), ('1571010', '1571', 'KOTA BARU'), (
        '1571020',
        '1571',
        'JAMBI SELATAN'
    ), ('1571030', '1571', 'JELUTUNG'), (
        '1571040',
        '1571',
        'PASAR JAMBI'
    ), (
        '1571050',
        '1571',
        'TELANAIPURA'
    ), (
        '1571060',
        '1571',
        'DANAU TELUK'
    ), (
        '1571070',
        '1571',
        'PELAYANGAN'
    ), (
        '1571080',
        '1571',
        'JAMBI TIMUR'
    ), (
        '1572010',
        '1572',
        'TANAH KAMPUNG'
    ), (
        '1572020',
        '1572',
        'KUMUN DEBAI'
    ), (
        '1572030',
        '1572',
        'SUNGAI PENUH'
    ), (
        '1572031',
        '1572',
        'PONDOK TINGGGI'
    ), (
        '1572032',
        '1572',
        'SUNGAI BUNGKAL'
    ), (
        '1572040',
        '1572',
        'HAMPARAN RAWANG'
    ), (
        '1572050',
        '1572',
        'PESISIR BUKIT'
    ), ('1572051', '1572', 'KOTO BARU'), ('1601052', '1601', 'LENGKITI'), (
        '1601070',
        '1601',
        'SOSOH BUAY RAYAP'
    ), (
        '1601080',
        '1601',
        'PENGANDONAN'
    ), (
        '1601081',
        '1601',
        'SEMIDANG AJI'
    ), ('1601082', '1601', 'ULU OGAN'), (
        '1601083',
        '1601',
        'MUARA JAYA'
    ), (
        '1601090',
        '1601',
        'PENINJAUAN'
    ), (
        '1601091',
        '1601',
        'LUBUK BATANG'
    ), (
        '1601092',
        '1601',
        'SINAR PENINJAUAN'
    ), (
        '1601130',
        '1601',
        'BATU RAJA TIMUR'
    ), (
        '1601131',
        '1601',
        'LUBUK RAJA'
    ), (
        '1601140',
        '1601',
        'BATU RAJA BARAT'
    ), ('1602010', '1602', 'LEMPUING'), (
        '1602011',
        '1602',
        'LEMPUING JAYA'
    ), ('1602020', '1602', 'MESUJI'), (
        '1602021',
        '1602',
        'SUNGAI MENANG'
    ), (
        '1602022',
        '1602',
        'MESUJI MAKMUR'
    ), (
        '1602023',
        '1602',
        'MESUJI RAYA'
    ), (
        '1602030',
        '1602',
        'TULUNG SELAPAN'
    ), ('1602031', '1602', 'CENGAL'), ('1602040', '1602', 'PEDAMARAN'), (
        '1602041',
        '1602',
        'PEDAMARAN TIMUR'
    ), (
        '1602050',
        '1602',
        'TANJUNG LUBUK'
    ), (
        '1602051',
        '1602',
        'TELUK GELAM'
    ), (
        '1602060',
        '1602',
        'KOTA KAYU AGUNG'
    ), (
        '1602120',
        '1602',
        'SIRAH PULAU PADANG'
    ), ('1602121', '1602', 'JEJAWI'), ('1602130', '1602', 'PAMPANGAN'), (
        '1602131',
        '1602',
        'PANGKALAN LAPAM'
    ), (
        '1602140',
        '1602',
        'AIR SUGIHAN'
    ), (
        '1603010',
        '1603',
        'SEMENDO DARAT LAUT'
    ), (
        '1603011',
        '1603',
        'SEMENDO DARAT ULU'
    ), (
        '1603012',
        '1603',
        'SEMENDO DARAT TENGAH'
    ), (
        '1603020',
        '1603',
        'TANJUNG AGUNG'
    ), ('1603031', '1603', 'RAMBANG'), ('1603032', '1603', 'LUBAI'), ('1603033', '1603', 'LUBAI ULU'), (
        '1603040',
        '1603',
        'LAWANG KIDUL'
    ), (
        '1603050',
        '1603',
        'MUARA ENIM'
    ), ('1603051', '1603', 'UJAN MAS'), (
        '1603060',
        '1603',
        'GUNUNG MEGANG'
    ), ('1603061', '1603', 'BENAKAT'), ('1603062', '1603', 'BELIMBING'), (
        '1603070',
        '1603',
        'RAMBANG DANGKU'
    ), ('1603090', '1603', 'GELUMBANG'), ('1603091', '1603', 'LEMBAK'), (
        '1603092',
        '1603',
        'SUNGAI ROTAN'
    ), (
        '1603093',
        '1603',
        'MUARA BELIDA'
    ), ('1603094', '1603', 'KELEKAR'), (
        '1603095',
        '1603',
        'BELIDA DARAT'
    ), (
        '1604011',
        '1604',
        'TANJUNG SAKTI PUMI'
    ), (
        '1604012',
        '1604',
        'TANJUNG SAKTI PUMU'
    ), (
        '1604040',
        '1604',
        'KOTA AGUNG'
    ), ('1604041', '1604', 'MULAK ULU'), (
        '1604042',
        '1604',
        'TANJUNG TEBAT'
    ), (
        '1604050',
        '1604',
        'PULAU PINANG'
    ), (
        '1604051',
        '1604',
        'PAGAR GUNUNG'
    ), ('1604052', '1604', 'GUMAY ULU'), ('1604060', '1604', 'JARAI'), (
        '1604061',
        '1604',
        'PAJAR BULAN'
    ), (
        '1604062',
        '1604',
        'MUARA PAYANG'
    ), (
        '1604063',
        '1604',
        'SUKAMERINDU'
    ), (
        '1604111',
        '1604',
        'KIKIM BARAT'
    ), (
        '1604112',
        '1604',
        'KIKIM TIMUR'
    ), (
        '1604113',
        '1604',
        'KIKIM SELATAN'
    ), (
        '1604114',
        '1604',
        'KIKIM TENGAH'
    ), ('1604120', '1604', 'LAHAT'), (
        '1604121',
        '1604',
        'GUMAY TALANG'
    ), ('1604122', '1604', 'PSEKSU'), (
        '1604131',
        '1604',
        'MERAPI BARAT'
    ), (
        '1604132',
        '1604',
        'MERAPI TIMUR'
    ), (
        '1604133',
        '1604',
        'MERAPI SELATAN'
    ), (
        '1605030',
        '1605',
        'SUKU TENGAH LAKITAN ULU'
    ), ('1605031', '1605', 'SELANGIT'), (
        '1605032',
        '1605',
        'SUMBER HARTA'
    ), ('1605040', '1605', 'TUGUMULYO'), ('1605041', '1605', 'PURWODADI'), (
        '1605050',
        '1605',
        'MUARA BELITI'
    ), (
        '1605051',
        '1605',
        'TIANG PUMPUNG KEPUNGUT'
    ), ('1605060', '1605', 'JAYALOKA'), (
        '1605061',
        '1605',
        'SUKA KARYA'
    ), (
        '1605070',
        '1605',
        'MUARA KELINGI'
    ), (
        '1605071',
        '1605',
        'BULANG TENGAH SUKU ULU'
    ), (
        '1605072',
        '1605',
        'TUAH NEGERI'
    ), (
        '1605080',
        '1605',
        'MUARA LAKITAN'
    ), (
        '1605090',
        '1605',
        'MEGANG SAKTI'
    ), (
        '1606010',
        '1606',
        'SANGA DESA'
    ), (
        '1606020',
        '1606',
        'BABAT TOMAN'
    ), (
        '1606021',
        '1606',
        'BATANGHARI LEKO'
    ), (
        '1606022',
        '1606',
        'PLAKAT TINGGI'
    ), (
        '1606023',
        '1606',
        'LAWANG WETAN'
    ), (
        '1606030',
        '1606',
        'SUNGAI KERUH'
    ), ('1606040', '1606', 'SEKAYU'), ('1606041', '1606', 'LAIS'), (
        '1606090',
        '1606',
        'SUNGAI LILIN'
    ), ('1606091', '1606', 'KELUANG'), (
        '1606092',
        '1606',
        'BABAT SUPAT'
    ), (
        '1606100',
        '1606',
        'BAYUNG LENCIR'
    ), ('1606101', '1606', 'LALAN'), (
        '1606102',
        '1606',
        'TUNGKAL JAYA'
    ), (
        '1607010',
        '1607',
        'RANTAU BAYUR'
    ), ('1607020', '1607', 'BETUNG'), (
        '1607021',
        '1607',
        'SUAK TAPEH'
    ), (
        '1607030',
        '1607',
        'PULAU RIMAU'
    ), (
        '1607031',
        '1607',
        'TUNGKAL ILIR'
    ), (
        '1607040',
        '1607',
        'BANYUASIN III'
    ), ('1607041', '1607', 'SEMBAWA'), (
        '1607050',
        '1607',
        'TALANG KELAPA'
    ), (
        '1607051',
        '1607',
        'TANJUNG LAGO'
    ), (
        '1607060',
        '1607',
        'BANYUASIN I'
    ), (
        '1607061',
        '1607',
        'AIR KUMBANG'
    ), ('1607070', '1607', 'RAMBUTAN'), (
        '1607080',
        '1607',
        'MUARA PADANG'
    ), (
        '1607081',
        '1607',
        'MUARA SUGIHAN'
    ), (
        '1607090',
        '1607',
        'MAKARTI JAYA'
    ), ('1607091', '1607', 'AIR SALEH'), (
        '1607100',
        '1607',
        'BANYUASIN II'
    ), (
        '1607110',
        '1607',
        'MUARA TELANG'
    ), (
        '1607111',
        '1607',
        'SUMBER MARGA TELANG'
    ), (
        '1608010',
        '1608',
        'MEKAKAU ILIR'
    ), (
        '1608020',
        '1608',
        'BANDING AGUNG'
    ), (
        '1608021',
        '1608',
        'WARKUK RANAU SELATAN'
    ), (
        '1608022',
        '1608',
        'BUAY PEMATANG RIBU RANAU TENGAH'
    ), (
        '1608030',
        '1608',
        'BUAY PEMACA'
    ), ('1608040', '1608', 'SIMPANG'), (
        '1608041',
        '1608',
        'BUANA PEMACA'
    ), ('1608050', '1608', 'MUARADUA'), (
        '1608051',
        '1608',
        'BUAY RAWAN'
    ), (
        '1608060',
        '1608',
        'BUAY SANDANG AJI'
    ), (
        '1608061',
        '1608',
        'TIGA DIHAJI'
    ), (
        '1608070',
        '1608',
        'BUAY RUNJUNG'
    ), (
        '1608071',
        '1608',
        'RUNJUNG AGUNG'
    ), (
        '1608080',
        '1608',
        'KISAM TINGGI'
    ), (
        '1608090',
        '1608',
        'MUARADUA KISAM'
    ), (
        '1608091',
        '1608',
        'KISAM ILIR'
    ), (
        '1608100',
        '1608',
        'PULAU BERINGIN'
    ), (
        '1608101',
        '1608',
        'SINDANG DANAU'
    ), (
        '1608102',
        '1608',
        'SUNGAI ARE'
    ), ('1609010', '1609', 'MARTAPURA'), (
        '1609011',
        '1609',
        'BUNGA MAYANG'
    ), ('1609012', '1609', 'JAYA PURA'), (
        '1609020',
        '1609',
        'BUAY PEMUKA PELIUNG'
    ), (
        '1609030',
        '1609',
        'BUAY MADANG'
    ), (
        '1609031',
        '1609',
        'BUAY MADANG TIMUR'
    ), (
        '1609032',
        '1609',
        'BUAY PEMUKA BANGSA RAJA'
    ), (
        '1609040',
        '1609',
        'MADANG SUKU II'
    ), (
        '1609041',
        '1609',
        'MADANG SUKU III'
    ), (
        '1609050',
        '1609',
        'MADANG SUKU I'
    ), (
        '1609051',
        '1609',
        'BELITANG MADANG RAYA'
    ), ('1609060', '1609', 'BELITANG'), (
        '1609061',
        '1609',
        'BELITANG JAYA'
    ), (
        '1609070',
        '1609',
        'BELITANG III'
    ), (
        '1609080',
        '1609',
        'BELITANG II'
    ), (
        '1609081',
        '1609',
        'BELITANG MULYA'
    ), (
        '1609090',
        '1609',
        'SEMENDAWAI SUKU III'
    ), (
        '1609091',
        '1609',
        'SEMENDAWAI TIMUR'
    ), ('1609100', '1609', 'CEMPAKA'), (
        '1609101',
        '1609',
        'SEMENDAWAI BARAT'
    ), (
        '1610010',
        '1610',
        'MUARA KUANG'
    ), (
        '1610011',
        '1610',
        'RAMBANG KUANG'
    ), (
        '1610012',
        '1610',
        'LUBUK KELIAT'
    ), (
        '1610020',
        '1610',
        'TANJUNG BATU'
    ), ('1610021', '1610', 'PAYARAMAN'), (
        '1610030',
        '1610',
        'RANTAU ALAI'
    ), ('1610031', '1610', 'KANDIS'), (
        '1610040',
        '1610',
        'TANJUNG RAJA'
    ), (
        '1610041',
        '1610',
        'RANTAU PANJANG'
    ), (
        '1610042',
        '1610',
        'SUNGAI PINANG'
    ), ('1610050', '1610', 'PEMULUTAN'), (
        '1610051',
        '1610',
        'PEMULUTAN SELATAN'
    ), (
        '1610052',
        '1610',
        'PEMULUTAN BARAT'
    ), ('1610060', '1610', 'INDRALAYA'), (
        '1610061',
        '1610',
        'INDRALAYA UTARA'
    ), (
        '1610062',
        '1610',
        'INDRALAYA SELATAN'
    ), (
        '1611010',
        '1611',
        'MUARA PINANG'
    ), (
        '1611020',
        '1611',
        'LINTANG KANAN'
    ), ('1611030', '1611', 'PENDOPO'), (
        '1611031',
        '1611',
        'PENDOPO BARAT'
    ), (
        '1611040',
        '1611',
        'PASEMAH AIR KERUH'
    ), ('1611050', '1611', 'ULU MUSI'), (
        '1611051',
        '1611',
        'SIKAP DALAM'
    ), (
        '1611060',
        '1611',
        'TALANG PADANG'
    ), (
        '1611070',
        '1611',
        'TEBING TINGGI'
    ), ('1611071', '1611', 'SALING'), (
        '1612010',
        '1612',
        'TALANG UBI'
    ), (
        '1612020',
        '1612',
        'TANAH ABANG'
    ), ('1612030', '1612', 'ABAB'), ('1612040', '1612', 'PENUKAL'), (
        '1612050',
        '1612',
        'PENUKAL UTARA'
    ), ('1613010', '1613', 'ULU RAWAS'), (
        '1613020',
        '1613',
        'KARANG JAYA'
    ), ('1613030', '1613', 'RAWAS ULU'), ('1613040', '1613', 'RUPIT'), (
        '1613050',
        '1613',
        'KARANG DAPO'
    ), (
        '1613060',
        '1613',
        'RAWAS ILIR'
    ), ('1613070', '1613', 'NIBUNG'), (
        '1671010',
        '1671',
        'ILIR BARAT II'
    ), ('1671011', '1671', 'GANDUS'), (
        '1671020',
        '1671',
        'SEBERANG ULU I'
    ), ('1671021', '1671', 'KERTAPATI'), (
        '1671030',
        '1671',
        'SEBERANG ULU II'
    ), ('1671031', '1671', 'PLAJU'), (
        '1671040',
        '1671',
        'ILIR BARAT I'
    ), (
        '1671041',
        '1671',
        'BUKIT KECIL'
    ), (
        '1671050',
        '1671',
        'ILIR TIMUR I'
    ), ('1671051', '1671', 'KEMUNING'), (
        '1671060',
        '1671',
        'ILIR TIMUR II'
    ), ('1671061', '1671', 'KALIDONI'), ('1671070', '1671', 'SAKO'), (
        '1671071',
        '1671',
        'SEMATANG BORANG'
    ), ('1671080', '1671', 'SUKARAMI'), (
        '1671081',
        '1671',
        'ALANG ALANG LEBAR'
    ), (
        '1672010',
        '1672',
        'RAMBANG KAPAK TENGAH'
    ), (
        '1672020',
        '1672',
        'PRABUMULIH TIMUR'
    ), (
        '1672021',
        '1672',
        'PRABUMULIH SELATAN'
    ), (
        '1672030',
        '1672',
        'PRABUMULIH BARAT'
    ), (
        '1672031',
        '1672',
        'PRABUMULIH UTARA'
    ), ('1672040', '1672', 'CAMBAI'), (
        '1673010',
        '1673',
        'DEMPO SELATAN'
    ), (
        '1673011',
        '1673',
        'DEMPO TENGAH'
    ), (
        '1673020',
        '1673',
        'DEMPO UTARA'
    ), (
        '1673030',
        '1673',
        'PAGAR ALAM SELATAN'
    ), (
        '1673040',
        '1673',
        'PAGAR ALAM UTARA'
    ), (
        '1674011',
        '1674',
        'LUBUK LINGGAU BARAT I'
    ), (
        '1674012',
        '1674',
        'LUBUK LINGGAU BARAT II'
    ), (
        '1674021',
        '1674',
        'LUBUK LINGGAU SELATAN I'
    ), (
        '1674022',
        '1674',
        'LUBUK LINGGAU SELATAN II'
    ), (
        '1674031',
        '1674',
        'LUBUK LINGGAU TIMUR I'
    ), (
        '1674032',
        '1674',
        'LUBUK LINGGAU TIMUR II'
    ), (
        '1674041',
        '1674',
        'LUBUK LINGGAU UTARA I'
    ), (
        '1674042',
        '1674',
        'LUBUK LINGGAU UTARA II'
    ), ('1701040', '1701', 'MANNA'), (
        '1701041',
        '1701',
        'KOTA MANNA'
    ), ('1701042', '1701', 'KEDURANG'), ('1701043', '1701', 'BUNGA MAS'), (
        '1701044',
        '1701',
        'PASAR MANNA'
    ), (
        '1701045',
        '1701',
        'KEDURANG ILIR'
    ), ('1701050', '1701', 'SEGINIM'), ('1701051', '1701', 'AIR NIPIS'), ('1701060', '1701', 'PINO'), ('1701061', '1701', 'PINORAYA'), ('1701062', '1701', 'ULU MANNA'), (
        '1702020',
        '1702',
        'KOTA PADANG'
    ), (
        '1702021',
        '1702',
        'SINDANG BELITI ILIR'
    ), (
        '1702030',
        '1702',
        'PADANG ULAK TANDING'
    );

INSERT INTO
    `tbl_kecamatan` (
        `id_kecamatan`,
        `id_kabupaten`,
        `nama_kecamatan`
    )
VALUES (
        '1702031',
        '1702',
        'SINDANG KELINGI'
    ), (
        '1702032',
        '1702',
        'BINDU RIANG'
    ), (
        '1702033',
        '1702',
        'SINDANG BELITI ULU'
    ), (
        '1702034',
        '1702',
        'SINDANG DATARAN'
    ), ('1702040', '1702', 'CURUP'), (
        '1702041',
        '1702',
        'BERMANI ULU'
    ), (
        '1702042',
        '1702',
        'SELUPU REJANG'
    ), (
        '1702043',
        '1702',
        'CURUP SELATAN'
    ), (
        '1702044',
        '1702',
        'CURUP TENGAH'
    ), (
        '1702045',
        '1702',
        'BERMANI ULU RAYA'
    ), (
        '1702046',
        '1702',
        'CURUP UTARA'
    ), (
        '1702047',
        '1702',
        'CURUP TIMUR'
    ), ('1703010', '1703', 'ENGGANO'), ('1703050', '1703', 'KERKAP'), ('1703051', '1703', 'AIR NAPAL'), ('1703052', '1703', 'AIR BESI'), (
        '1703053',
        '1703',
        'HULU PALIK'
    ), (
        '1703054',
        '1703',
        'TANJUNG AGUNG PALIK'
    ), (
        '1703060',
        '1703',
        'ARGA MAKMUR'
    ), ('1703061', '1703', 'ARMA JAYA'), ('1703070', '1703', 'LAIS'), ('1703071', '1703', 'BATIK NAU'), (
        '1703072',
        '1703',
        'GIRI MULYA'
    ), (
        '1703073',
        '1703',
        'AIR PADANG'
    ), (
        '1703080',
        '1703',
        'PADANG JAYA'
    ), ('1703090', '1703', 'KETAHUN'), (
        '1703091',
        '1703',
        'NAPAL PUTIH'
    ), (
        '1703092',
        '1703',
        'ULOK KUPAI'
    ), (
        '1703100',
        '1703',
        'PUTRI HIJAU'
    ), ('1704010', '1704', 'NASAL'), ('1704020', '1704', 'MAJE'), (
        '1704030',
        '1704',
        'KAUR SELATAN'
    ), ('1704031', '1704', 'TETAP'), (
        '1704040',
        '1704',
        'KAUR TENGAH'
    ), ('1704041', '1704', 'LUAS'), (
        '1704042',
        '1704',
        'MUARA SAHUNG'
    ), ('1704050', '1704', 'KINAL'), (
        '1704051',
        '1704',
        'SEMIDANG GUMAY'
    ), (
        '1704060',
        '1704',
        'TANJUNG KEMUNING'
    ), (
        '1704061',
        '1704',
        'KELAM TENGAH'
    ), (
        '1704070',
        '1704',
        'KAUR UTARA'
    ), (
        '1704071',
        '1704',
        'PADANG GUCI HILIR'
    ), (
        '1704072',
        '1704',
        'LUNGKANG KULE'
    ), (
        '1704073',
        '1704',
        'PADANG GUCI HULU'
    ), (
        '1705010',
        '1705',
        'SEMIDANG ALAS MARAS'
    ), (
        '1705020',
        '1705',
        'SEMIDANG ALAS'
    ), ('1705030', '1705', 'TALO'), ('1705031', '1705', 'ILIR TALO'), (
        '1705032',
        '1705',
        'TALO KECIL'
    ), ('1705033', '1705', 'ULU TALO'), ('1705040', '1705', 'SELUMA'), (
        '1705041',
        '1705',
        'SELUMA SELATAN'
    ), (
        '1705042',
        '1705',
        'SELUMA BARAT'
    ), (
        '1705043',
        '1705',
        'SELUMA TIMUR'
    ), (
        '1705044',
        '1705',
        'SELUMA UTARA'
    ), ('1705050', '1705', 'SUKARAJA'), (
        '1705051',
        '1705',
        'AIR PERIUKAN'
    ), (
        '1705052',
        '1705',
        'LUBUK SANDI'
    ), ('1706010', '1706', 'IPUH'), ('1706011', '1706', 'AIR RAMI'), (
        '1706012',
        '1706',
        'MALIN DEMAN'
    ), (
        '1706020',
        '1706',
        'PONDOK SUGUH'
    ), (
        '1706021',
        '1706',
        'SUNGAI RUMBAI'
    ), (
        '1706022',
        '1706',
        'TERAMANG JAYA'
    ), (
        '1706030',
        '1706',
        'TERAS TERUNJAM'
    ), ('1706031', '1706', 'PENARIK'), (
        '1706032',
        '1706',
        'SELAGAN RAYA'
    ), (
        '1706040',
        '1706',
        'KOTA MUKOMUKO'
    ), ('1706041', '1706', 'AIR DIKIT'), ('1706042', '1706', 'XIV KOTO'), (
        '1706050',
        '1706',
        'LUBUK PINANG'
    ), (
        '1706051',
        '1706',
        'AIR MANJUNTO'
    ), ('1706052', '1706', 'V KOTO'), (
        '1707010',
        '1707',
        'RIMBO PENGADANG'
    ), ('1707011', '1707', 'TOPOS'), (
        '1707020',
        '1707',
        'LEBONG SELATAN'
    ), (
        '1707021',
        '1707',
        'BINGIN KUNING'
    ), (
        '1707030',
        '1707',
        'LEBONG TENGAH'
    ), (
        '1707031',
        '1707',
        'LEBONG SAKTI'
    ), (
        '1707040',
        '1707',
        'LEBONG ATAS'
    ), (
        '1707041',
        '1707',
        'PADANG BANO'
    ), ('1707042', '1707', 'PELABAI'), (
        '1707050',
        '1707',
        'LEBONG UTARA'
    ), ('1707051', '1707', 'AMEN'), ('1707052', '1707', 'URAM JAYA'), (
        '1707053',
        '1707',
        'PINANG BELAPIS'
    ), (
        '1708010',
        '1708',
        'MUARA KEMUMU'
    ), (
        '1708020',
        '1708',
        'BERMANI ILIR'
    ), (
        '1708030',
        '1708',
        'SEBERANG MUSI'
    ), (
        '1708040',
        '1708',
        'TEBAT KARAI'
    ), ('1708050', '1708', 'KEPAHIANG'), (
        '1708060',
        '1708',
        'KABA WETAN'
    ), ('1708070', '1708', 'UJAN MAS'), ('1708080', '1708', 'MERIGI'), (
        '1709010',
        '1709',
        'TALANG EMPAT'
    ), (
        '1709020',
        '1709',
        'KARANG TINGGI'
    ), (
        '1709030',
        '1709',
        'TABA PENANJUNG'
    ), (
        '1709031',
        '1709',
        'MERIGI KELINDANG'
    ), (
        '1709040',
        '1709',
        'PAGAR JATI'
    ), (
        '1709041',
        '1709',
        'MERIGI SAKTI'
    ), (
        '1709050',
        '1709',
        'PONDOK KELAPA'
    ), (
        '1709051',
        '1709',
        'PONDOK KUBANG'
    ), (
        '1709060',
        '1709',
        'PEMATANG TIGA'
    ), ('1709061', '1709', 'BANG HAJI'), ('1771010', '1771', 'SELEBAR'), (
        '1771011',
        '1771',
        'KAMPUNG MELAYU'
    ), (
        '1771020',
        '1771',
        'GADING CEMPAKA'
    ), (
        '1771021',
        '1771',
        'RATU AGUNG'
    ), (
        '1771022',
        '1771',
        'RATU SAMBAN'
    ), (
        '1771023',
        '1771',
        'SINGARAN PATI'
    ), (
        '1771030',
        '1771',
        'TELUK SEGARA'
    ), (
        '1771031',
        '1771',
        'SUNGAI SERUT'
    ), (
        '1771040',
        '1771',
        'MUARA BANGKA HULU'
    ), (
        '1801040',
        '1801',
        'BALIK BUKIT'
    ), ('1801041', '1801', 'SUKAU'), (
        '1801042',
        '1801',
        'LUMBOK SEMINUNG'
    ), ('1801050', '1801', 'BELALAU'), ('1801051', '1801', 'SEKINCAU'), ('1801052', '1801', 'SUOH'), ('1801053', '1801', 'BATU BRAK'), (
        '1801054',
        '1801',
        'PAGAR DEWA'
    ), (
        '1801055',
        '1801',
        'BATU KETULIS'
    ), (
        '1801056',
        '1801',
        'BANDAR NEGERI SUOH'
    ), (
        '1801060',
        '1801',
        'SUMBER JAYA'
    ), (
        '1801061',
        '1801',
        'WAY TENONG'
    ), (
        '1801062',
        '1801',
        'GEDUNG SURIAN'
    ), (
        '1801063',
        '1801',
        'KEBUN TEBU'
    ), ('1801064', '1801', 'AIR HITAM'), ('1802010', '1802', 'WONOSOBO'), ('1802011', '1802', 'SEMAKA'), (
        '1802012',
        '1802',
        'BANDAR NEGERI SEMUONG'
    ), (
        '1802020',
        '1802',
        'KOTA AGUNG'
    ), (
        '1802021',
        '1802',
        'PEMATANG SAWA'
    ), (
        '1802022',
        '1802',
        'KOTA AGUNG TIMUR'
    ), (
        '1802023',
        '1802',
        'KOTA AGUNG BARAT'
    ), (
        '1802030',
        '1802',
        'PULAU PANGGUNG'
    ), ('1802031', '1802', 'ULUBELU'), (
        '1802032',
        '1802',
        'AIR NANINGAN'
    ), (
        '1802040',
        '1802',
        'TALANG PADANG'
    ), ('1802041', '1802', 'SUMBEREJO'), ('1802042', '1802', 'GISTING'), (
        '1802043',
        '1802',
        'GUNUNG ALIP'
    ), ('1802050', '1802', 'PUGUNG'), ('1802101', '1802', 'BULOK'), (
        '1802110',
        '1802',
        'CUKUH BALAK'
    ), (
        '1802111',
        '1802',
        'KELUMBAYAN'
    ), ('1802112', '1802', 'LIMAU'), (
        '1802113',
        '1802',
        'KELUMBAYAN BARAT'
    ), ('1803060', '1803', 'NATAR'), (
        '1803070',
        '1803',
        'JATI AGUNG'
    ), (
        '1803080',
        '1803',
        'TANJUNG BINTANG'
    ), (
        '1803081',
        '1803',
        'TANJUNG SARI'
    ), ('1803090', '1803', 'KATIBUNG'), (
        '1803091',
        '1803',
        'MERBAU MATARAM'
    ), ('1803092', '1803', 'WAY SULAN'), ('1803100', '1803', 'SIDOMULYO'), ('1803101', '1803', 'CANDIPURO'), ('1803102', '1803', 'WAY PANJI'), ('1803110', '1803', 'KALIANDA'), ('1803111', '1803', 'RAJABASA'), ('1803120', '1803', 'PALAS'), ('1803121', '1803', 'SRAGI'), (
        '1803130',
        '1803',
        'PENENGAHAN'
    ), ('1803131', '1803', 'KETAPANG'), ('1803132', '1803', 'BAKAUHENI'), (
        '1804010',
        '1804',
        'METRO KIBANG'
    ), (
        '1804020',
        '1804',
        'BATANGHARI'
    ), ('1804030', '1804', 'SEKAMPUNG'), ('1804040', '1804', 'MARGATIGA'), (
        '1804050',
        '1804',
        'SEKAMPUNG UDIK'
    ), ('1804060', '1804', 'JABUNG'), (
        '1804061',
        '1804',
        'PASIR SAKTI'
    ), (
        '1804062',
        '1804',
        'WAWAY KARYA'
    ), (
        '1804063',
        '1804',
        'MARGA SEKAMPUNG'
    ), (
        '1804070',
        '1804',
        'LABUHAN MARINGGAI'
    ), (
        '1804071',
        '1804',
        'MATARAM BARU'
    ), (
        '1804072',
        '1804',
        'BANDAR SRIBAWONO'
    ), ('1804073', '1804', 'MELINTING'), (
        '1804074',
        '1804',
        'GUNUNG PELINDUNG'
    ), (
        '1804080',
        '1804',
        'WAY JEPARA'
    ), (
        '1804081',
        '1804',
        'BRAJA SLEBAH'
    ), (
        '1804082',
        '1804',
        'LABUHAN RATU'
    ), ('1804090', '1804', 'SUKADANA'), (
        '1804091',
        '1804',
        'BUMI AGUNG'
    ), (
        '1804092',
        '1804',
        'BATANGHARI NUBAN'
    ), (
        '1804100',
        '1804',
        'PEKALONGAN'
    ), (
        '1804110',
        '1804',
        'RAMAN UTARA'
    ), (
        '1804120',
        '1804',
        'PURBOLINGGO'
    ), (
        '1804121',
        '1804',
        'WAY BUNGUR'
    ), (
        '1805010',
        '1805',
        'PADANG RATU'
    ), (
        '1805011',
        '1805',
        'SELAGAI LINGGA'
    ), ('1805012', '1805', 'PUBIAN'), ('1805013', '1805', 'ANAK TUHA'), (
        '1805014',
        '1805',
        'ANAK RATU AJI'
    ), ('1805020', '1805', 'KALIREJO'), (
        '1805021',
        '1805',
        'SENDANG AGUNG'
    ), (
        '1805030',
        '1805',
        'BANGUNREJO'
    ), (
        '1805040',
        '1805',
        'GUNUNG SUGIH'
    ), ('1805041', '1805', 'BEKRI'), (
        '1805042',
        '1805',
        'BUMI RATU NUBAN'
    ), ('1805050', '1805', 'TRIMURJO'), ('1805060', '1805', 'PUNGGUR'), (
        '1805061',
        '1805',
        'KOTA GAJAH'
    ), (
        '1805070',
        '1805',
        'SEPUTIH RAMAN'
    ), (
        '1805080',
        '1805',
        'TERBANGGI BESAR'
    ), (
        '1805081',
        '1805',
        'SEPUTIH AGUNG'
    ), (
        '1805082',
        '1805',
        'WAY PENGUBUAN'
    ), (
        '1805090',
        '1805',
        'TERUSAN NUNYAI'
    ), (
        '1805100',
        '1805',
        'SEPUTIH MATARAM'
    ), (
        '1805101',
        '1805',
        'BANDAR MATARAM'
    ), (
        '1805110',
        '1805',
        'SEPUTIH BANYAK'
    ), (
        '1805111',
        '1805',
        'WAY SEPUTIH'
    ), ('1805120', '1805', 'RUMBIA'), (
        '1805121',
        '1805',
        'BUMI NABUNG'
    ), (
        '1805122',
        '1805',
        'PUTRA RUMBIA'
    ), (
        '1805130',
        '1805',
        'SEPUTIH SURABAYA'
    ), (
        '1805131',
        '1805',
        'BANDAR SURABAYA'
    ), (
        '1806010',
        '1806',
        'BUKIT KEMUNING'
    ), (
        '1806011',
        '1806',
        'ABUNG TINGGI'
    ), (
        '1806020',
        '1806',
        'TANJUNG RAJA'
    ), (
        '1806030',
        '1806',
        'ABUNG BARAT'
    ), (
        '1806031',
        '1806',
        'ABUNG TENGAH'
    ), (
        '1806032',
        '1806',
        'ABUNG  KUNANG'
    ), (
        '1806033',
        '1806',
        'ABUNG PEKURUN'
    ), ('1806040', '1806', 'KOTABUMI'), (
        '1806041',
        '1806',
        'KOTABUMI UTARA'
    ), (
        '1806042',
        '1806',
        'KOTABUMI SELATAN'
    ), (
        '1806050',
        '1806',
        'ABUNG SELATAN'
    ), (
        '1806051',
        '1806',
        'ABUNG SEMULI'
    ), (
        '1806052',
        '1806',
        'BLAMBANGAN PAGAR'
    ), (
        '1806060',
        '1806',
        'ABUNG TIMUR'
    ), (
        '1806061',
        '1806',
        'ABUNG SURAKARTA'
    ), (
        '1806070',
        '1806',
        'SUNGKAI SELATAN'
    ), (
        '1806071',
        '1806',
        'MUARA SUNGKAI'
    ), (
        '1806072',
        '1806',
        'BUNGA MAYANG'
    ), (
        '1806073',
        '1806',
        'SUNGKAI  BARAT'
    ), (
        '1806074',
        '1806',
        'SUNGKAI JAYA'
    ), (
        '1806080',
        '1806',
        'SUNGKAI UTARA'
    ), (
        '1806081',
        '1806',
        'HULUSUNGKAI'
    ), (
        '1806082',
        '1806',
        'SUNGKAI TENGAH'
    ), ('1807010', '1807', 'BANJIT'), ('1807020', '1807', 'BARADATU'), (
        '1807021',
        '1807',
        'GUNUNG LABUHAN'
    ), ('1807030', '1807', 'KASUI'), (
        '1807031',
        '1807',
        'REBANG TANGKAS'
    ), (
        '1807040',
        '1807',
        'BLAMBANGAN UMPU'
    ), ('1807041', '1807', 'WAY TUBA'), (
        '1807042',
        '1807',
        'NEGERI AGUNG'
    ), ('1807050', '1807', 'BAHUGA'), (
        '1807051',
        '1807',
        'BUAY  BAHUGA'
    ), (
        '1807052',
        '1807',
        'BUMI AGUNG'
    ), (
        '1807060',
        '1807',
        'PAKUAN RATU'
    ), (
        '1807061',
        '1807',
        'NEGARA BATIN'
    ), (
        '1807062',
        '1807',
        'NEGERI BESAR'
    ), (
        '1808030',
        '1808',
        'BANJAR AGUNG'
    ), (
        '1808031',
        '1808',
        'BANJAR MARGO'
    ), (
        '1808032',
        '1808',
        'BANJAR BARU'
    ), (
        '1808040',
        '1808',
        'GEDUNG AJI'
    ), (
        '1808041',
        '1808',
        'PENAWAR AJI'
    ), (
        '1808042',
        '1808',
        'MERAKSA AJI'
    ), ('1808050', '1808', 'MENGGALA'), (
        '1808051',
        '1808',
        'PENAWAR TAMA'
    ), (
        '1808052',
        '1808',
        'RAWAJITU SELATAN'
    ), (
        '1808053',
        '1808',
        'GEDUNG MENENG'
    ), (
        '1808054',
        '1808',
        'RAWAJITU TIMUR'
    ), ('1808055', '1808', 'RAWA PITU'), (
        '1808056',
        '1808',
        'GEDUNG AJI BARU'
    ), (
        '1808057',
        '1808',
        'DENTE TELADAS'
    ), (
        '1808058',
        '1808',
        'MENGGALA TIMUR'
    ), (
        '1809010',
        '1809',
        'PUNDUH PIDADA'
    ), (
        '1809011',
        '1809',
        'MARGA PUNDUH'
    ), (
        '1809020',
        '1809',
        'PADANG CERMIN'
    ), (
        '1809021',
        '1809',
        'TELUK PANDAN'
    ), ('1809022', '1809', 'WAY RATAI'), ('1809030', '1809', 'KEDONDONG'), (
        '1809031',
        '1809',
        'WAY KHILAU'
    ), ('1809040', '1809', 'WAY LIMA'), (
        '1809050',
        '1809',
        'GEDUNG TATAAN'
    ), (
        '1809060',
        '1809',
        'NEGERI KATON'
    ), (
        '1809070',
        '1809',
        'TEGINENENG'
    ), ('1810010', '1810', 'PARDASUKA'), ('1810020', '1810', 'AMBARAWA'), ('1810030', '1810', 'PAGELARAN'), (
        '1810031',
        '1810',
        'PAGELARAN UTARA'
    ), ('1810040', '1810', 'PRINGSEWU'), (
        '1810050',
        '1810',
        'GADING REJO'
    ), ('1810060', '1810', 'SUKOHARJO'), ('1810070', '1810', 'BANYUMAS'), ('1810080', '1810', 'ADI LUWIH'), (
        '1811010',
        '1811',
        'WAY SERDANG'
    ), (
        '1811020',
        '1811',
        'SIMPANG PEMATANG'
    ), (
        '1811030',
        '1811',
        'PANCA JAYA'
    ), (
        '1811040',
        '1811',
        'TANJUNG RAYA'
    ), ('1811050', '1811', 'MESUJI'), (
        '1811060',
        '1811',
        'MESUJI TIMUR'
    ), (
        '1811070',
        '1811',
        'RAWAJITU UTARA'
    ), (
        '1812010',
        '1812',
        'TULANG BAWANG UDIK'
    ), (
        '1812020',
        '1812',
        'TUMI JAJAR'
    ), (
        '1812030',
        '1812',
        'TULANG BAWANG TENGAH'
    ), (
        '1812040',
        '1812',
        'PAGAR DEWA'
    ), (
        '1812050',
        '1812',
        'LAMBU KIBANG'
    ), (
        '1812060',
        '1812',
        'GUNUNG TERANG'
    ), (
        '1812070',
        '1812',
        'GUNUNG AGUNG'
    ), (
        '1812080',
        '1812',
        'WAY KENANGA'
    ), ('1813010', '1813', 'LEMONG'), (
        '1813020',
        '1813',
        'PESISIR UTARA'
    ), (
        '1813030',
        '1813',
        'PULAU PISANG'
    ), (
        '1813040',
        '1813',
        'KARYA PENGGAWA'
    ), ('1813050', '1813', 'WAY KRUI'), (
        '1813060',
        '1813',
        'PESISIR TENGAH'
    ), (
        '1813070',
        '1813',
        'KRUI SELATAN'
    ), (
        '1813080',
        '1813',
        'PESISIR SELATAN'
    ), ('1813090', '1813', 'NGAMBUR'), ('1813100', '1813', 'BENGKUNAT'), (
        '1813110',
        '1813',
        'BENGKUNAT BELIMBING'
    ), (
        '1871010',
        '1871',
        'TELUK BETUNG BARAT'
    ), (
        '1871011',
        '1871',
        'TELUKBETUNG TIMUR'
    ), (
        '1871020',
        '1871',
        'TELUK BETUNG SELATAN'
    ), (
        '1871021',
        '1871',
        'BUMI WARAS'
    ), ('1871030', '1871', 'PANJANG'), (
        '1871040',
        '1871',
        'TANJUNG KARANG TIMUR'
    ), ('1871041', '1871', 'KEDAMAIAN'), (
        '1871050',
        '1871',
        'TELUK BETUNG UTARA'
    ), (
        '1871060',
        '1871',
        'TANJUNG KARANG PUSAT'
    ), ('1871061', '1871', 'ENGGAL'), (
        '1871070',
        '1871',
        'TANJUNG KARANG BARAT'
    ), ('1871071', '1871', 'KEMILING'), (
        '1871072',
        '1871',
        'LANGKAPURA'
    ), ('1871080', '1871', 'KEDATON'), ('1871081', '1871', 'RAJABASA'), (
        '1871082',
        '1871',
        'TANJUNG SENANG'
    ), (
        '1871083',
        '1871',
        'LABUHAN RATU'
    ), ('1871090', '1871', 'SUKARAME'), ('1871091', '1871', 'SUKABUMI'), ('1871092', '1871', 'WAY HALIM'), (
        '1872011',
        '1872',
        'METRO SELATAN'
    ), (
        '1872012',
        '1872',
        'METRO BARAT'
    ), (
        '1872021',
        '1872',
        'METRO TIMUR'
    ), (
        '1872022',
        '1872',
        'METRO PUSAT'
    ), (
        '1872023',
        '1872',
        'METRO UTARA'
    ), (
        '1901070',
        '1901',
        'MENDO BARAT'
    ), ('1901080', '1901', 'MERAWANG'), (
        '1901081',
        '1901',
        'PUDING BESAR'
    ), (
        '1901090',
        '1901',
        'SUNGAI LIAT'
    ), ('1901091', '1901', 'PEMALI'), ('1901092', '1901', 'BAKAM'), ('1901130', '1901', 'BELINYU'), (
        '1901131',
        '1901',
        'RIAU SILIP'
    ), ('1902010', '1902', 'MEMBALONG'), (
        '1902060',
        '1902',
        'TANJUNG PANDAN'
    ), ('1902061', '1902', 'BADAU'), ('1902062', '1902', 'SIJUK'), (
        '1902063',
        '1902',
        'SELAT NASIK'
    ), ('1903010', '1903', 'KELAPA'), ('1903020', '1903', 'TEMPILANG'), ('1903030', '1903', 'MENTOK'), (
        '1903040',
        '1903',
        'SIMPANG TERITIP'
    ), ('1903050', '1903', 'JEBUS'), ('1903051', '1903', 'PARITTIGA'), ('1904010', '1904', 'KOBA'), (
        '1904011',
        '1904',
        'LUBUK BESAR'
    ), (
        '1904020',
        '1904',
        'PANGKALAN BARU'
    ), ('1904021', '1904', 'NAMANG'), (
        '1904030',
        '1904',
        'SUNGAI SELAN'
    ), (
        '1904040',
        '1904',
        'SIMPANG KATIS'
    ), ('1905010', '1905', 'PAYUNG'), (
        '1905011',
        '1905',
        'PULAU BESAR'
    ), (
        '1905020',
        '1905',
        'SIMPANG RIMBA'
    ), ('1905030', '1905', 'TOBOALI'), (
        '1905031',
        '1905',
        'TUKAK SADAI'
    ), ('1905040', '1905', 'AIR GEGAS'), (
        '1905050',
        '1905',
        'LEPAR PONGOK'
    ), (
        '1905051',
        '1905',
        'KEPULAUAN PONGOK'
    ), ('1906010', '1906', 'DENDANG'), (
        '1906011',
        '1906',
        'SIMPANG PESAK'
    ), ('1906020', '1906', 'GANTUNG'), (
        '1906021',
        '1906',
        'SIMPANG RENGGIANG'
    ), ('1906030', '1906', 'MANGGAR'), ('1906031', '1906', 'DAMAR'), (
        '1906040',
        '1906',
        'KELAPA KAMPIT'
    ), ('1971010', '1971', 'RANGKUI'), (
        '1971020',
        '1971',
        'BUKIT INTAN'
    ), ('1971021', '1971', 'GIRIMAYA'), (
        '1971030',
        '1971',
        'PANGKAL BALAM'
    ), ('1971031', '1971', 'GABEK'), (
        '1971040',
        '1971',
        'TAMAN SARI'
    ), (
        '1971041',
        '1971',
        'GERUNGGANG'
    ), ('2101010', '2101', 'MORO'), ('2101011', '2101', 'DURAI'), ('2101020', '2101', 'KUNDUR'), (
        '2101021',
        '2101',
        'KUNDUR UTARA'
    ), (
        '2101022',
        '2101',
        'KUNDUR BARAT'
    ), ('2101023', '2101', 'UNGAR'), ('2101024', '2101', 'BELAT'), ('2101030', '2101', 'KARIMUN'), ('2101031', '2101', 'BURU'), ('2101032', '2101', 'MERAL'), ('2101033', '2101', 'TEBING'), (
        '2101034',
        '2101',
        'MERAL BARAT'
    ), (
        '2102040',
        '2102',
        'TELUK BINTAN'
    ), (
        '2102050',
        '2102',
        'BINTAN UTARA'
    ), (
        '2102051',
        '2102',
        'TELUK SEBONG'
    ), (
        '2102052',
        '2102',
        'SERI KUALA LOBAM'
    ), (
        '2102060',
        '2102',
        'BINTAN TIMUR'
    ), (
        '2102061',
        '2102',
        'GUNUNG KIJANG'
    ), ('2102062', '2102', 'MANTANG'), (
        '2102063',
        '2102',
        'BINTAN PESISIR'
    ), ('2102064', '2102', 'TOAPAYA'), ('2102070', '2102', 'TAMBELAN'), ('2103030', '2103', 'MIDAI'), (
        '2103040',
        '2103',
        'BUNGURAN BARAT'
    ), (
        '2103041',
        '2103',
        'BUNGURAN UTARA'
    ), (
        '2103042',
        '2103',
        'PULAU LAUT'
    ), (
        '2103043',
        '2103',
        'PULAU TIGA'
    ), (
        '2103050',
        '2103',
        'BUNGURAN TIMUR'
    ), (
        '2103051',
        '2103',
        'BUNGURAN TIMUR LAUT'
    ), (
        '2103052',
        '2103',
        'BUNGURAN TENGAH'
    ), (
        '2103053',
        '2103',
        'BUNGURAN SELATAN'
    ), ('2103060', '2103', 'SERASAN'), ('2103061', '2103', 'SUBI'), (
        '2103062',
        '2103',
        'SERASAN TIMUR'
    ), (
        '2104010',
        '2104',
        'SINGKEP BARAT'
    ), ('2104020', '2104', 'SINGKEP'), (
        '2104021',
        '2104',
        'SINGKEP SELATAN'
    ), (
        '2104022',
        '2104',
        'SINGKEP PESISIR'
    ), ('2104030', '2104', 'LINGGA'), ('2104031', '2104', 'SELAYAR'), (
        '2104032',
        '2104',
        'LINGGA TIMUR'
    ), (
        '2104040',
        '2104',
        'LINGGA UTARA'
    ), ('2104050', '2104', 'SENAYANG'), ('2105010', '2105', 'JEMAJA'), (
        '2105020',
        '2105',
        'JEMAJA TIMUR'
    ), (
        '2105030',
        '2105',
        'SIANTAN SELATAN'
    ), ('2105040', '2105', 'SIANTAN'), (
        '2105050',
        '2105',
        'SIANTAN TIMUR'
    ), (
        '2105060',
        '2105',
        'SIANTAN TENGAH'
    ), ('2105070', '2105', 'PALMATAK'), (
        '2171010',
        '2171',
        'BELAKANG PADANG'
    ), ('2171020', '2171', 'BULANG'), ('2171030', '2171', 'GALANG'), ('2171040', '2171', 'SEI BEDUK'), ('2171041', '2171', 'SAGULUNG'), ('2171050', '2171', 'NONGSA'), (
        '2171051',
        '2171',
        'BATAM KOTA'
    ), ('2171060', '2171', 'SEKUPANG'), ('2171061', '2171', 'BATU AJI'), (
        '2171070',
        '2171',
        'LUBUK BAJA'
    ), (
        '2171080',
        '2171',
        'BATU AMPAR'
    ), ('2171081', '2171', 'BENGKONG'), (
        '2172010',
        '2172',
        'BUKIT BESTARI'
    ), (
        '2172020',
        '2172',
        'TANJUNGPINANG TIMUR'
    ), (
        '2172030',
        '2172',
        'TANJUNGPINANG KOTA'
    ), (
        '2172040',
        '2172',
        'TANJUNGPINANG BARAT'
    ), (
        '3101010',
        '3101',
        'KEPULAUAN SERIBU SELATAN'
    ), (
        '3101020',
        '3101',
        'KEPULAUAN SERIBU UTARA'
    ), ('3171010', '3171', 'JAGAKARSA'), (
        '3171020',
        '3171',
        'PASAR MINGGU'
    ), ('3171030', '3171', 'CILANDAK'), (
        '3171040',
        '3171',
        'PESANGGRAHAN'
    ), (
        '3171050',
        '3171',
        'KEBAYORAN LAMA'
    ), (
        '3171060',
        '3171',
        'KEBAYORAN BARU'
    ), (
        '3171070',
        '3171',
        'MAMPANG PRAPATAN'
    ), ('3171080', '3171', 'PANCORAN'), ('3171090', '3171', 'TEBET'), (
        '3171100',
        '3171',
        'SETIA BUDI'
    ), (
        '3172010',
        '3172',
        'PASAR REBO'
    ), ('3172020', '3172', 'CIRACAS'), ('3172030', '3172', 'CIPAYUNG'), ('3172040', '3172', 'MAKASAR'), (
        '3172050',
        '3172',
        'KRAMAT JATI'
    ), (
        '3172060',
        '3172',
        'JATINEGARA'
    ), (
        '3172070',
        '3172',
        'DUREN SAWIT'
    ), ('3172080', '3172', 'CAKUNG'), (
        '3172090',
        '3172',
        'PULO GADUNG'
    ), ('3172100', '3172', 'MATRAMAN'), (
        '3173010',
        '3173',
        'TANAH ABANG'
    ), ('3173020', '3173', 'MENTENG'), ('3173030', '3173', 'SENEN'), (
        '3173040',
        '3173',
        'JOHAR BARU'
    ), (
        '3173050',
        '3173',
        'CEMPAKA PUTIH'
    ), ('3173060', '3173', 'KEMAYORAN'), (
        '3173070',
        '3173',
        'SAWAH BESAR'
    ), ('3173080', '3173', 'GAMBIR'), ('3174010', '3174', 'KEMBANGAN'), (
        '3174020',
        '3174',
        'KEBON JERUK'
    ), ('3174030', '3174', 'PALMERAH'), (
        '3174040',
        '3174',
        'GROGOL PETAMBURAN'
    ), ('3174050', '3174', 'TAMBORA'), (
        '3174060',
        '3174',
        'TAMAN SARI'
    ), (
        '3174070',
        '3174',
        'CENGKARENG'
    ), (
        '3174080',
        '3174',
        'KALI DERES'
    ), (
        '3175010',
        '3175',
        'PENJARINGAN'
    ), (
        '3175020',
        '3175',
        'PADEMANGAN'
    ), (
        '3175030',
        '3175',
        'TANJUNG PRIOK'
    ), ('3175040', '3175', 'KOJA'), (
        '3175050',
        '3175',
        'KELAPA GADING'
    ), ('3175060', '3175', 'CILINCING'), ('3201010', '3201', 'NANGGUNG'), (
        '3201020',
        '3201',
        'LEUWILIANG'
    ), (
        '3201021',
        '3201',
        'LEUWISADENG'
    ), ('3201030', '3201', 'PAMIJAHAN'), (
        '3201040',
        '3201',
        'CIBUNGBULANG'
    ), ('3201050', '3201', 'CIAMPEA'), ('3201051', '3201', 'TENJOLAYA'), ('3201060', '3201', 'DRAMAGA'), ('3201070', '3201', 'CIOMAS'), ('3201071', '3201', 'TAMANSARI'), ('3201080', '3201', 'CIJERUK'), ('3201081', '3201', 'CIGOMBONG'), ('3201090', '3201', 'CARINGIN'), ('3201100', '3201', 'CIAWI'), ('3201110', '3201', 'CISARUA'), (
        '3201120',
        '3201',
        'MEGAMENDUNG'
    ), ('3201130', '3201', 'SUKARAJA'), (
        '3201140',
        '3201',
        'BABAKAN MADANG'
    ), (
        '3201150',
        '3201',
        'SUKAMAKMUR'
    ), ('3201160', '3201', 'CARIU'), (
        '3201161',
        '3201',
        'TANJUNGSARI'
    ), ('3201170', '3201', 'JONGGOL'), ('3201180', '3201', 'CILEUNGSI'), (
        '3201181',
        '3201',
        'KELAPA NUNGGAL'
    ), (
        '3201190',
        '3201',
        'GUNUNG PUTRI'
    ), ('3201200', '3201', 'CITEUREUP'), ('3201210', '3201', 'CIBINONG'), (
        '3201220',
        '3201',
        'BOJONG GEDE'
    ), (
        '3201221',
        '3201',
        'TAJUR HALANG'
    ), ('3201230', '3201', 'KEMANG'), (
        '3201231',
        '3201',
        'RANCA BUNGUR'
    ), ('3201240', '3201', 'PARUNG'), ('3201241', '3201', 'CISEENG'), (
        '3201250',
        '3201',
        'GUNUNG SINDUR'
    ), ('3201260', '3201', 'RUMPIN'), ('3201270', '3201', 'CIGUDEG'), ('3201271', '3201', 'SUKAJAYA'), ('3201280', '3201', 'JASINGA'), ('3201290', '3201', 'TENJO'), (
        '3201300',
        '3201',
        'PARUNG PANJANG'
    ), ('3202010', '3202', 'CIEMAS'), ('3202020', '3202', 'CIRACAP'), ('3202021', '3202', 'WALURAN'), ('3202030', '3202', 'SURADE'), ('3202031', '3202', 'CIBITUNG'), (
        '3202040',
        '3202',
        'JAMPANG KULON'
    ), ('3202041', '3202', 'CIMANGGU'), (
        '3202050',
        '3202',
        'KALI BUNDER'
    ), (
        '3202060',
        '3202',
        'TEGAL BULEUD'
    ), ('3202070', '3202', 'CIDOLOG'), (
        '3202080',
        '3202',
        'SAGARANTEN'
    ), ('3202081', '3202', 'CIDADAP'), (
        '3202082',
        '3202',
        'CURUGKEMBAR'
    ), ('3202090', '3202', 'PABUARAN'), ('3202100', '3202', 'LENGKONG'), (
        '3202110',
        '3202',
        'PALABUHANRATU'
    ), ('3202111', '3202', 'SIMPENAN'), (
        '3202120',
        '3202',
        'WARUNG KIARA'
    ), (
        '3202121',
        '3202',
        'BANTARGADUNG'
    ), (
        '3202130',
        '3202',
        'JAMPANG TENGAH'
    ), ('3202131', '3202', 'PURABAYA'), ('3202140', '3202', 'CIKEMBAR'), (
        '3202150',
        '3202',
        'NYALINDUNG'
    ), (
        '3202160',
        '3202',
        'GEGER BITUNG'
    ), ('3202170', '3202', 'SUKARAJA'), (
        '3202171',
        '3202',
        'KEBONPEDES'
    ), (
        '3202172',
        '3202',
        'CIREUNGHAS'
    ), (
        '3202173',
        '3202',
        'SUKALARANG'
    ), ('3202180', '3202', 'SUKABUMI'), (
        '3202190',
        '3202',
        'KADUDAMPIT'
    ), ('3202200', '3202', 'CISAAT'), (
        '3202201',
        '3202',
        'GUNUNGGURUH'
    ), ('3202210', '3202', 'CIBADAK'), (
        '3202211',
        '3202',
        'CICANTAYAN'
    ), ('3202212', '3202', 'CARINGIN'), ('3202220', '3202', 'NAGRAK'), ('3202221', '3202', 'CIAMBAR'), ('3202230', '3202', 'CICURUG'), ('3202240', '3202', 'CIDAHU'), (
        '3202250',
        '3202',
        'PARAKAN SALAK'
    ), (
        '3202260',
        '3202',
        'PARUNG KUDA'
    ), (
        '3202261',
        '3202',
        'BOJONG GENTENG'
    ), (
        '3202270',
        '3202',
        'KALAPA NUNGGAL'
    ), ('3202280', '3202', 'CIKIDANG'), ('3202290', '3202', 'CISOLOK'), ('3202291', '3202', 'CIKAKAK'), (
        '3202300',
        '3202',
        'KABANDUNGAN'
    ), ('3203010', '3203', 'AGRABINTA'), ('3203011', '3203', 'LELES'), (
        '3203020',
        '3203',
        'SINDANGBARANG'
    ), ('3203030', '3203', 'CIDAUN'), ('3203040', '3203', 'NARINGGUL'), ('3203050', '3203', 'CIBINONG'), ('3203051', '3203', 'CIKADU'), ('3203060', '3203', 'TANGGEUNG'), ('3203061', '3203', 'PASIRKUDA'), (
        '3203070',
        '3203',
        'KADUPANDAK'
    ), ('3203071', '3203', 'CIJATI'), ('3203080', '3203', 'TAKOKAK'), (
        '3203090',
        '3203',
        'SUKANAGARA'
    ), ('3203100', '3203', 'PAGELARAN'), ('3203110', '3203', 'CAMPAKA'), (
        '3203111',
        '3203',
        'CAMPAKA MULYA'
    ), ('3203120', '3203', 'CIBEBER'), (
        '3203130',
        '3203',
        'WARUNGKONDANG'
    ), ('3203131', '3203', 'GEKBRONG'), ('3203140', '3203', 'CILAKU'), ('3203150', '3203', 'SUKALUYU'), (
        '3203160',
        '3203',
        'BOJONGPICUNG'
    ), ('3203161', '3203', 'HAURWANGI'), ('3203170', '3203', 'CIRANJANG'), ('3203180', '3203', 'MANDE'), (
        '3203190',
        '3203',
        'KARANGTENGAH'
    ), ('3203200', '3203', 'CIANJUR'), ('3203210', '3203', 'CUGENANG'), ('3203220', '3203', 'PACET'), ('3203221', '3203', 'CIPANAS'), ('3203230', '3203', 'SUKARESMI'), (
        '3203240',
        '3203',
        'CIKALONGKULON'
    ), ('3204010', '3204', 'CIWIDEY'), ('3204011', '3204', 'RANCABALI'), (
        '3204020',
        '3204',
        'PASIRJAMBU'
    ), ('3204030', '3204', 'CIMAUNG'), (
        '3204040',
        '3204',
        'PANGALENGAN'
    ), ('3204050', '3204', 'KERTASARI'), ('3204060', '3204', 'PACET'), ('3204070', '3204', 'IBUN'), ('3204080', '3204', 'PASEH'), ('3204090', '3204', 'CIKANCUNG'), (
        '3204100',
        '3204',
        'CICALENGKA'
    ), ('3204101', '3204', 'NAGREG'), ('3204110', '3204', 'RANCAEKEK'), ('3204120', '3204', 'MAJALAYA'), (
        '3204121',
        '3204',
        'SOLOKAN JERUK'
    ), ('3204130', '3204', 'CIPARAY'), ('3204140', '3204', 'BALEENDAH'), ('3204150', '3204', 'ARJASARI'), ('3204160', '3204', 'BANJARAN'), ('3204161', '3204', 'CANGKUANG'), (
        '3204170',
        '3204',
        'PAMEUNGPEUK'
    ), ('3204180', '3204', 'KATAPANG'), ('3204190', '3204', 'SOREANG'), (
        '3204191',
        '3204',
        'KUTAWARINGIN'
    ), ('3204250', '3204', 'MARGAASIH'), ('3204260', '3204', 'MARGAHAYU'), (
        '3204270',
        '3204',
        'DAYEUHKOLOT'
    ), (
        '3204280',
        '3204',
        'BOJONGSOANG'
    ), ('3204290', '3204', 'CILEUNYI'), (
        '3204300',
        '3204',
        'CILENGKRANG'
    ), ('3204310', '3204', 'CIMENYAN'), ('3205010', '3205', 'CISEWU'), ('3205011', '3205', 'CARINGIN'), ('3205020', '3205', 'TALEGONG'), (
        '3205030',
        '3205',
        'BUNGBULANG'
    ), (
        '3205031',
        '3205',
        'MEKARMUKTI'
    ), ('3205040', '3205', 'PAMULIHAN'), ('3205050', '3205', 'PAKENJENG'), ('3205060', '3205', 'CIKELET'), (
        '3205070',
        '3205',
        'PAMEUNGPEUK'
    ), ('3205080', '3205', 'CIBALONG'), ('3205090', '3205', 'CISOMPET'), ('3205100', '3205', 'PEUNDEUY'), ('3205110', '3205', 'SINGAJAYA'), ('3205111', '3205', 'CIHURIP'), ('3205120', '3205', 'CIKAJANG'), (
        '3205130',
        '3205',
        'BANJARWANGI'
    ), ('3205140', '3205', 'CILAWU'), (
        '3205150',
        '3205',
        'BAYONGBONG'
    ), ('3205151', '3205', 'CIGEDUG'), ('3205160', '3205', 'CISURUPAN'), ('3205161', '3205', 'SUKARESMI'), ('3205170', '3205', 'SAMARANG'), (
        '3205171',
        '3205',
        'PASIRWANGI'
    ), (
        '3205181',
        '3205',
        'TAROGONG KIDUL'
    ), (
        '3205182',
        '3205',
        'TAROGONG KALER'
    ), (
        '3205190',
        '3205',
        'GARUT KOTA'
    ), (
        '3205200',
        '3205',
        'KARANGPAWITAN'
    ), ('3205210', '3205', 'WANARAJA'), (
        '3205211',
        '3205',
        'SUCINARAJA'
    ), (
        '3205212',
        '3205',
        'PANGATIKAN'
    ), (
        '3205220',
        '3205',
        'SUKAWENING'
    ), (
        '3205221',
        '3205',
        'KARANGTENGAH'
    ), (
        '3205230',
        '3205',
        'BANYURESMI'
    ), ('3205240', '3205', 'LELES'), (
        '3205250',
        '3205',
        'LEUWIGOONG'
    ), ('3205260', '3205', 'CIBATU'), (
        '3205261',
        '3205',
        'KERSAMANAH'
    ), ('3205270', '3205', 'CIBIUK'), ('3205280', '3205', 'KADUNGORA'), (
        '3205290',
        '3205',
        'BLUBUR LIMBANGAN'
    ), ('3205300', '3205', 'SELAAWI'), (
        '3205310',
        '3205',
        'MALANGBONG'
    ), ('3206010', '3206', 'CIPATUJAH'), (
        '3206020',
        '3206',
        'KARANGNUNGGAL'
    ), ('3206030', '3206', 'CIKALONG'), (
        '3206040',
        '3206',
        'PANCATENGAH'
    ), ('3206050', '3206', 'CIKATOMAS'), ('3206060', '3206', 'CIBALONG'), (
        '3206061',
        '3206',
        'PARUNGPONTENG'
    ), (
        '3206070',
        '3206',
        'BANTARKALONG'
    ), (
        '3206071',
        '3206',
        'BOJONGASIH'
    ), ('3206072', '3206', 'CULAMEGA'), (
        '3206080',
        '3206',
        'BOJONGGAMBIR'
    ), (
        '3206090',
        '3206',
        'SODONGHILIR'
    ), ('3206100', '3206', 'TARAJU'), ('3206110', '3206', 'SALAWU'), (
        '3206111',
        '3206',
        'PUSPAHIANG'
    ), (
        '3206120',
        '3206',
        'TANJUNGJAYA'
    ), ('3206130', '3206', 'SUKARAJA'), ('3206140', '3206', 'SALOPA'), ('3206141', '3206', 'JATIWARAS'), ('3206150', '3206', 'CINEAM'), (
        '3206151',
        '3206',
        'KARANGJAYA'
    ), ('3206160', '3206', 'MANONJAYA'), (
        '3206161',
        '3206',
        'GUNUNGTANJUNG'
    ), (
        '3206190',
        '3206',
        'SINGAPARNA'
    ), ('3206191', '3206', 'SUKARAME'), (
        '3206192',
        '3206',
        'MANGUNREJA'
    ), (
        '3206200',
        '3206',
        'CIGALONTANG'
    ), ('3206210', '3206', 'LEUWISARI'), ('3206211', '3206', 'SARIWANGI'), (
        '3206212',
        '3206',
        'PADAKEMBANG'
    ), ('3206221', '3206', 'SUKARATU'), ('3206230', '3206', 'CISAYONG'), (
        '3206231',
        '3206',
        'SUKAHENING'
    ), ('3206240', '3206', 'RAJAPOLAH'), ('3206250', '3206', 'JAMANIS'), ('3206260', '3206', 'CIAWI'), ('3206261', '3206', 'KADIPATEN'), (
        '3206270',
        '3206',
        'PAGERAGEUNG'
    ), ('3206271', '3206', 'SUKARESIK'), (
        '3207100',
        '3207',
        'BANJARSARI'
    ), ('3207110', '3207', 'LAKBOK'), ('3207111', '3207', 'PURWADADI'), ('3207120', '3207', 'PAMARICAN'), ('3207130', '3207', 'CIDOLOG'), ('3207140', '3207', 'CIMARAGAS'), (
        '3207150',
        '3207',
        'CIJEUNGJING'
    ), ('3207160', '3207', 'CISAGA'), (
        '3207170',
        '3207',
        'TAMBAKSARI'
    ), ('3207180', '3207', 'RANCAH'), ('3207190', '3207', 'RAJADESA'), ('3207200', '3207', 'SUKADANA'), ('3207210', '3207', 'CIAMIS'), ('3207211', '3207', 'BAREGBEG'), ('3207220', '3207', 'CIKONENG'), (
        '3207221',
        '3207',
        'SINDANGKASIH'
    ), (
        '3207230',
        '3207',
        'CIHAURBEUTI'
    ), ('3207240', '3207', 'SADANANYA'), ('3207250', '3207', 'CIPAKU'), (
        '3207260',
        '3207',
        'JATINAGARA'
    ), (
        '3207270',
        '3207',
        'PANAWANGAN'
    ), ('3207280', '3207', 'KAWALI'), ('3207281', '3207', 'LUMBUNG'), ('3207290', '3207', 'PANJALU'), (
        '3207291',
        '3207',
        'SUKAMANTRI'
    ), (
        '3207300',
        '3207',
        'PANUMBANGAN'
    ), ('3208010', '3208', 'DARMA'), ('3208020', '3208', 'KADUGEDE'), (
        '3208021',
        '3208',
        'NUSAHERANG'
    ), ('3208030', '3208', 'CINIRU'), ('3208031', '3208', 'HANTARA'), ('3208040', '3208', 'SELAJAMBE'), ('3208050', '3208', 'SUBANG'), ('3208051', '3208', 'CILEBAK'), ('3208060', '3208', 'CIWARU'), (
        '3208061',
        '3208',
        'KARANGKANCANA'
    ), ('3208070', '3208', 'CIBINGBIN'), ('3208071', '3208', 'CIBEUREUM'), ('3208080', '3208', 'LURAGUNG'), ('3208081', '3208', 'CIMAHI'), ('3208090', '3208', 'CIDAHU'), (
        '3208091',
        '3208',
        'KALIMANGGIS'
    ), (
        '3208100',
        '3208',
        'CIAWIGEBANG'
    ), ('3208101', '3208', 'CIPICUNG'), (
        '3208110',
        '3208',
        'LEBAKWANGI'
    ), ('3208111', '3208', 'MALEBER'), ('3208120', '3208', 'GARAWANGI'), (
        '3208121',
        '3208',
        'SINDANGAGUNG'
    ), ('3208130', '3208', 'KUNINGAN'), ('3208140', '3208', 'CIGUGUR'), (
        '3208150',
        '3208',
        'KRAMATMULYA'
    ), ('3208160', '3208', 'JALAKSANA'), ('3208161', '3208', 'JAPARA'), ('3208170', '3208', 'CILIMUS'), (
        '3208171',
        '3208',
        'CIGANDAMEKAR'
    ), (
        '3208180',
        '3208',
        'MANDIRANCAN'
    ), ('3208181', '3208', 'PANCALANG'), ('3208190', '3208', 'PASAWAHAN'), ('3209010', '3209', 'WALED'), ('3209011', '3209', 'PASALEMAN'), ('3209020', '3209', 'CILEDUG'), ('3209021', '3209', 'PABUARAN'), ('3209030', '3209', 'LOSARI'), ('3209031', '3209', 'PABEDILAN'), ('3209040', '3209', 'BABAKAN'), ('3209041', '3209', 'GEBANG'), (
        '3209050',
        '3209',
        'KARANGSEMBUNG'
    ), (
        '3209051',
        '3209',
        'KARANGWARENG'
    ), (
        '3209060',
        '3209',
        'LEMAHABANG'
    ), (
        '3209061',
        '3209',
        'SUSUKANLEBAK'
    ), ('3209070', '3209', 'SEDONG'), (
        '3209080',
        '3209',
        'ASTANAJAPURA'
    ), ('3209081', '3209', 'PANGENAN'), ('3209090', '3209', 'MUNDU'), ('3209100', '3209', 'BEBER'), ('3209101', '3209', 'GREGED'), ('3209111', '3209', 'TALUN'), ('3209120', '3209', 'SUMBER'), (
        '3209121',
        '3209',
        'DUKUPUNTANG'
    ), ('3209130', '3209', 'PALIMANAN'), ('3209140', '3209', 'PLUMBON'), ('3209141', '3209', 'DEPOK'), ('3209150', '3209', 'WERU'), ('3209151', '3209', 'PLERED'), (
        '3209161',
        '3209',
        'TENGAH TANI'
    ), ('3209162', '3209', 'KEDAWUNG'), (
        '3209171',
        '3209',
        'GUNUNGJATI'
    ), ('3209180', '3209', 'KAPETAKAN'), (
        '3209181',
        '3209',
        'SURANENGGALA'
    ), ('3209190', '3209', 'KLANGENAN'), ('3209191', '3209', 'JAMBLANG'), (
        '3209200',
        '3209',
        'ARJAWINANGUN'
    ), (
        '3209201',
        '3209',
        'PANGURAGAN'
    ), (
        '3209210',
        '3209',
        'CIWARINGIN'
    ), ('3209211', '3209', 'GEMPOL'), ('3209220', '3209', 'SUSUKAN'), ('3209230', '3209', 'GEGESIK'), ('3209231', '3209', 'KALIWEDI'), (
        '3210010',
        '3210',
        'LEMAHSUGIH'
    ), (
        '3210020',
        '3210',
        'BANTARUJEG'
    ), ('3210021', '3210', 'MALAUSMA'), ('3210030', '3210', 'CIKIJING'), ('3210031', '3210', 'CINGAMBUL'), ('3210040', '3210', 'TALAGA'), ('3210041', '3210', 'BANJARAN'), ('3210050', '3210', 'ARGAPURA'), ('3210060', '3210', 'MAJA'), (
        '3210070',
        '3210',
        'MAJALENGKA'
    ), ('3210080', '3210', 'CIGASONG'), ('3210090', '3210', 'SUKAHAJI'), ('3210091', '3210', 'SINDANG'), ('3210100', '3210', 'RAJAGALUH'), (
        '3210110',
        '3210',
        'SINDANGWANGI'
    ), (
        '3210120',
        '3210',
        'LEUWIMUNDING'
    ), ('3210130', '3210', 'PALASAH'), ('3210140', '3210', 'JATIWANGI'), ('3210150', '3210', 'DAWUAN'), (
        '3210151',
        '3210',
        'KASOKANDEL'
    ), (
        '3210160',
        '3210',
        'PANYINGKIRAN'
    ), ('3210170', '3210', 'KADIPATEN'), ('3210180', '3210', 'KERTAJATI'), ('3210190', '3210', 'JATITUJUH'), ('3210200', '3210', 'LIGUNG'), (
        '3210210',
        '3210',
        'SUMBERJAYA'
    ), (
        '3211010',
        '3211',
        'JATINANGOR'
    ), (
        '3211020',
        '3211',
        'CIMANGGUNG'
    ), (
        '3211030',
        '3211',
        'TANJUNGSARI'
    ), ('3211031', '3211', 'SUKASARI'), ('3211032', '3211', 'PAMULIHAN'), (
        '3211040',
        '3211',
        'RANCAKALONG'
    ), (
        '3211050',
        '3211',
        'SUMEDANG SELATAN'
    ), (
        '3211060',
        '3211',
        'SUMEDANG UTARA'
    ), ('3211061', '3211', 'GANEAS'), ('3211070', '3211', 'SITURAJA'), ('3211071', '3211', 'CISITU'), ('3211080', '3211', 'DARMARAJA'), ('3211090', '3211', 'CIBUGEL'), ('3211100', '3211', 'WADO'), (
        '3211101',
        '3211',
        'JATINUNGGAL'
    ), ('3211111', '3211', 'JATIGEDE'), ('3211120', '3211', 'TOMO'), (
        '3211130',
        '3211',
        'UJUNG JAYA'
    ), ('3211140', '3211', 'CONGGEANG'), ('3211150', '3211', 'PASEH'), ('3211160', '3211', 'CIMALAKA'), ('3211161', '3211', 'CISARUA'), (
        '3211170',
        '3211',
        'TANJUNGKERTA'
    ), (
        '3211171',
        '3211',
        'TANJUNGMEDAR'
    ), ('3211180', '3211', 'BUAHDUA'), ('3211181', '3211', 'SURIAN'), (
        '3212010',
        '3212',
        'HAURGEULIS'
    ), ('3212011', '3212', 'GANTAR'), ('3212020', '3212', 'KROYA'), (
        '3212030',
        '3212',
        'GABUSWETAN'
    ), ('3212040', '3212', 'CIKEDUNG'), ('3212041', '3212', 'TERISI'), ('3212050', '3212', 'LELEA'), ('3212060', '3212', 'BANGODUA'), ('3212061', '3212', 'TUKDANA'), ('3212070', '3212', 'WIDASARI'), (
        '3212080',
        '3212',
        'KERTASEMAYA'
    ), (
        '3212081',
        '3212',
        'SUKAGUMIWANG'
    ), ('3212090', '3212', 'KRANGKENG'), (
        '3212100',
        '3212',
        'KARANGAMPEL'
    ), (
        '3212101',
        '3212',
        'KEDOKAN BUNDER'
    ), (
        '3212110',
        '3212',
        'JUNTINYUAT'
    ), ('3212120', '3212', 'SLIYEG'), (
        '3212130',
        '3212',
        'JATIBARANG'
    ), ('3212140', '3212', 'BALONGAN'), ('3212150', '3212', 'INDRAMAYU'), ('3212160', '3212', 'SINDANG'), ('3212161', '3212', 'CANTIGI'), ('3212162', '3212', 'PASEKAN'), ('3212170', '3212', 'LOHBENER'), ('3212171', '3212', 'ARAHAN'), ('3212180', '3212', 'LOSARANG'), (
        '3212190',
        '3212',
        'KANDANGHAUR'
    ), ('3212200', '3212', 'BONGAS'), ('3212210', '3212', 'ANJATAN'), ('3212220', '3212', 'SUKRA'), ('3212221', '3212', 'PATROL'), (
        '3213010',
        '3213',
        'SAGALAHERANG'
    ), (
        '3213011',
        '3213',
        'SERANGPANJANG'
    ), (
        '3213020',
        '3213',
        'JALANCAGAK'
    ), ('3213021', '3213', 'CIATER'), ('3213030', '3213', 'CISALAK'), (
        '3213031',
        '3213',
        'KASOMALANG'
    ), (
        '3213040',
        '3213',
        'TANJUNGSIANG'
    ), ('3213050', '3213', 'CIJAMBE'), ('3213060', '3213', 'CIBOGO'), ('3213070', '3213', 'SUBANG'), ('3213080', '3213', 'KALIJATI'), ('3213081', '3213', 'DAWUAN'), (
        '3213090',
        '3213',
        'CIPEUNDEUY'
    ), ('3213100', '3213', 'PABUARAN'), (
        '3213110',
        '3213',
        'PATOKBEUSI'
    ), ('3213120', '3213', 'PURWADADI'), ('3213130', '3213', 'CIKAUM'), ('3213140', '3213', 'PAGADEN'), (
        '3213141',
        '3213',
        'PAGADEN BARAT'
    ), (
        '3213150',
        '3213',
        'CIPUNAGARA'
    ), ('3213160', '3213', 'COMPRENG'), ('3213170', '3213', 'BINONG'), (
        '3213171',
        '3213',
        'TAMBAKDAHAN'
    ), ('3213180', '3213', 'CIASEM'), ('3213190', '3213', 'PAMANUKAN'), ('3213191', '3213', 'SUKASARI'), (
        '3213200',
        '3213',
        'PUSAKANAGARA'
    ), (
        '3213201',
        '3213',
        'PUSAKAJAYA'
    ), (
        '3213210',
        '3213',
        'LEGONKULON'
    ), ('3213220', '3213', 'BLANAKAN'), ('3214010', '3214', 'JATILUHUR'), ('3214011', '3214', 'SUKASARI'), ('3214020', '3214', 'MANIIS'), (
        '3214030',
        '3214',
        'TEGAL WARU'
    ), ('3214040', '3214', 'PLERED'), ('3214050', '3214', 'SUKATANI'), ('3214060', '3214', 'DARANGDAN'), ('3214070', '3214', 'BOJONG'), ('3214080', '3214', 'WANAYASA'), (
        '3214081',
        '3214',
        'KIARAPEDES'
    ), ('3214090', '3214', 'PASAWAHAN'), (
        '3214091',
        '3214',
        'PONDOK SALAM'
    ), (
        '3214100',
        '3214',
        'PURWAKARTA'
    ), (
        '3214101',
        '3214',
        'BABAKANCIKAO'
    ), ('3214110', '3214', 'CAMPAKA'), ('3214111', '3214', 'CIBATU'), (
        '3214112',
        '3214',
        'BUNGURSARI'
    ), ('3215010', '3215', 'PANGKALAN'), ('3215011', '3215', 'TEGALWARU'), ('3215020', '3215', 'CIAMPEL'), (
        '3215031',
        '3215',
        'TELUKJAMBE TIMUR'
    ), (
        '3215032',
        '3215',
        'TELUKJAMBE BARAT'
    ), ('3215040', '3215', 'KLARI'), ('3215050', '3215', 'CIKAMPEK'), ('3215051', '3215', 'PURWASARI'), (
        '3215060',
        '3215',
        'TIRTAMULYA'
    ), ('3215070', '3215', 'JATISARI'), ('3215071', '3215', 'BANYUSARI'), ('3215072', '3215', 'KOTABARU'), (
        '3215081',
        '3215',
        'CILAMAYA WETAN'
    ), (
        '3215082',
        '3215',
        'CILAMAYA KULON'
    ), (
        '3215090',
        '3215',
        'LEMAHABANG'
    ), (
        '3215100',
        '3215',
        'TALAGASARI'
    ), ('3215111', '3215', 'MAJALAYA'), (
        '3215112',
        '3215',
        'KARAWANG TIMUR'
    ), (
        '3215113',
        '3215',
        'KARAWANG BARAT'
    ), ('3215120', '3215', 'RAWAMERTA'), ('3215130', '3215', 'TEMPURAN'), (
        '3215140',
        '3215',
        'KUTAWALUYA'
    ), (
        '3215150',
        '3215',
        'RENGASDENGKLOK'
    ), ('3215151', '3215', 'JAYAKERTA'), ('3215160', '3215', 'PEDES'), ('3215161', '3215', 'CILEBAR'), ('3215170', '3215', 'CIBUAYA'), ('3215180', '3215', 'TIRTAJAYA'), ('3215190', '3215', 'BATUJAYA'), ('3215200', '3215', 'PAKISJAYA'), ('3216010', '3216', 'SETU'), (
        '3216021',
        '3216',
        'SERANG BARU'
    ), (
        '3216022',
        '3216',
        'CIKARANG PUSAT'
    ), (
        '3216023',
        '3216',
        'CIKARANG SELATAN'
    ), ('3216030', '3216', 'CIBARUSAH'), (
        '3216031',
        '3216',
        'BOJONGMANGU'
    ), (
        '3216041',
        '3216',
        'CIKARANG TIMUR'
    ), (
        '3216050',
        '3216',
        'KEDUNGWARINGIN'
    ), (
        '3216061',
        '3216',
        'CIKARANG UTARA'
    ), (
        '3216062',
        '3216',
        'KARANGBAHAGIA'
    ), ('3216070', '3216', 'CIBITUNG'), (
        '3216071',
        '3216',
        'CIKARANG BARAT'
    ), (
        '3216081',
        '3216',
        'TAMBUN SELATAN'
    ), (
        '3216082',
        '3216',
        'TAMBUN UTARA'
    ), ('3216090', '3216', 'BABELAN'), (
        '3216100',
        '3216',
        'TARUMAJAYA'
    ), ('3216110', '3216', 'TAMBELANG'), ('3216111', '3216', 'SUKAWANGI'), ('3216120', '3216', 'SUKATANI'), ('3216121', '3216', 'SUKAKARYA'), ('3216130', '3216', 'PEBAYURAN'), (
        '3216140',
        '3216',
        'CABANGBUNGIN'
    ), (
        '3216150',
        '3216',
        'MUARA GEMBONG'
    ), ('3217010', '3217', 'RONGGA'), (
        '3217020',
        '3217',
        'GUNUNGHALU'
    ), (
        '3217030',
        '3217',
        'SINDANGKERTA'
    ), ('3217040', '3217', 'CILILIN'), (
        '3217050',
        '3217',
        'CIHAMPELAS'
    ), ('3217060', '3217', 'CIPONGKOR'), ('3217070', '3217', 'BATUJAJAR'), ('3217071', '3217', 'SAGULING'), ('3217080', '3217', 'CIPATAT'), (
        '3217090',
        '3217',
        'PADALARANG'
    ), ('3217100', '3217', 'NGAMPRAH'), (
        '3217110',
        '3217',
        'PARONGPONG'
    ), ('3217120', '3217', 'LEMBANG'), ('3217130', '3217', 'CISARUA'), (
        '3217140',
        '3217',
        'CIKALONG WETAN'
    ), (
        '3217150',
        '3217',
        'CIPEUNDEUY'
    ), ('3218010', '3218', 'CIMERAK'), ('3218020', '3218', 'CIJULANG'), ('3218030', '3218', 'CIGUGUR'), (
        '3218040',
        '3218',
        'LANGKAPLANCAR'
    ), ('3218050', '3218', 'PARIGI'), ('3218060', '3218', 'SIDAMULIH'), (
        '3218070',
        '3218',
        'PANGANDARAN'
    ), (
        '3218080',
        '3218',
        'KALIPUCANG'
    ), (
        '3218090',
        '3218',
        'PADAHERANG'
    ), (
        '3218100',
        '3218',
        'MANGUNJAYA'
    ), (
        '3271010',
        '3271',
        'BOGOR SELATAN'
    ), (
        '3271020',
        '3271',
        'BOGOR TIMUR'
    ), (
        '3271030',
        '3271',
        'BOGOR UTARA'
    ), (
        '3271040',
        '3271',
        'BOGOR TENGAH'
    ), (
        '3271050',
        '3271',
        'BOGOR BARAT'
    ), (
        '3271060',
        '3271',
        'TANAH SEREAL'
    ), ('3272010', '3272', 'BAROS'), (
        '3272011',
        '3272',
        'LEMBURSITU'
    ), ('3272012', '3272', 'CIBEUREUM'), ('3272020', '3272', 'CITAMIANG'), (
        '3272030',
        '3272',
        'WARUDOYONG'
    ), (
        '3272040',
        '3272',
        'GUNUNG PUYUH'
    ), ('3272050', '3272', 'CIKOLE'), (
        '3273010',
        '3273',
        'BANDUNG KULON'
    ), (
        '3273020',
        '3273',
        'BABAKAN CIPARAY'
    ), (
        '3273030',
        '3273',
        'BOJONGLOA KALER'
    ), (
        '3273040',
        '3273',
        'BOJONGLOA KIDUL'
    ), (
        '3273050',
        '3273',
        'ASTANAANYAR'
    ), ('3273060', '3273', 'REGOL'), ('3273070', '3273', 'LENGKONG'), (
        '3273080',
        '3273',
        'BANDUNG KIDUL'
    ), ('3273090', '3273', 'BUAHBATU'), ('3273100', '3273', 'RANCASARI'), ('3273101', '3273', 'GEDEBAGE'), ('3273110', '3273', 'CIBIRU'), (
        '3273111',
        '3273',
        'PANYILEUKAN'
    ), (
        '3273120',
        '3273',
        'UJUNG BERUNG'
    ), ('3273121', '3273', 'CINAMBO'), ('3273130', '3273', 'ARCAMANIK'), ('3273141', '3273', 'ANTAPANI'), (
        '3273142',
        '3273',
        'MANDALAJATI'
    ), (
        '3273150',
        '3273',
        'KIARACONDONG'
    ), (
        '3273160',
        '3273',
        'BATUNUNGGAL'
    ), (
        '3273170',
        '3273',
        'SUMUR BANDUNG'
    ), ('3273180', '3273', 'ANDIR'), ('3273190', '3273', 'CICENDO'), (
        '3273200',
        '3273',
        'BANDUNG WETAN'
    ), (
        '3273210',
        '3273',
        'CIBEUNYING KIDUL'
    ), (
        '3273220',
        '3273',
        'CIBEUNYING KALER'
    ), ('3273230', '3273', 'COBLONG'), ('3273240', '3273', 'SUKAJADI'), ('3273250', '3273', 'SUKASARI'), ('3273260', '3273', 'CIDADAP'), (
        '3274010',
        '3274',
        'HARJAMUKTI'
    ), (
        '3274020',
        '3274',
        'LEMAHWUNGKUK'
    ), ('3274030', '3274', 'PEKALIPAN'), ('3274040', '3274', 'KESAMBI'), ('3274050', '3274', 'KEJAKSAN'), (
        '3275010',
        '3275',
        'PONDOKGEDE'
    ), (
        '3275011',
        '3275',
        'JATISAMPURNA'
    ), (
        '3275012',
        '3275',
        'PONDOKMELATI'
    ), ('3275020', '3275', 'JATIASIH'), (
        '3275030',
        '3275',
        'BANTARGEBANG'
    ), (
        '3275031',
        '3275',
        'MUSTIKAJAYA'
    ), (
        '3275040',
        '3275',
        'BEKASI TIMUR'
    ), ('3275041', '3275', 'RAWALUMBU'), (
        '3275050',
        '3275',
        'BEKASI SELATAN'
    ), (
        '3275060',
        '3275',
        'BEKASI BARAT'
    ), (
        '3275061',
        '3275',
        'MEDAN SATRIA'
    ), (
        '3275070',
        '3275',
        'BEKASI UTARA'
    ), ('3276010', '3276', 'SAWANGAN'), (
        '3276011',
        '3276',
        'BOJONGSARI'
    ), (
        '3276020',
        '3276',
        'PANCORAN MAS'
    ), ('3276021', '3276', 'CIPAYUNG'), (
        '3276030',
        '3276',
        'SUKMA JAYA'
    ), ('3276031', '3276', 'CILODONG'), ('3276040', '3276', 'CIMANGGIS'), ('3276041', '3276', 'TAPOS'), ('3276050', '3276', 'BEJI'), ('3276060', '3276', 'LIMO'), ('3276061', '3276', 'CINERE'), (
        '3277010',
        '3277',
        'CIMAHI SELATAN'
    ), (
        '3277020',
        '3277',
        'CIMAHI TENGAH'
    ), (
        '3277030',
        '3277',
        'CIMAHI UTARA'
    ), ('3278010', '3278', 'KAWALU'), ('3278020', '3278', 'TAMANSARI'), ('3278030', '3278', 'CIBEUREUM'), ('3278031', '3278', 'PURBARATU'), ('3278040', '3278', 'TAWANG'), ('3278050', '3278', 'CIHIDEUNG'), (
        '3278060',
        '3278',
        'MANGKUBUMI'
    ), ('3278070', '3278', 'INDIHIANG'), (
        '3278071',
        '3278',
        'BUNGURSARI'
    ), ('3278080', '3278', 'CIPEDES'), ('3279010', '3279', 'BANJAR'), (
        '3279020',
        '3279',
        'PURWAHARJA'
    ), ('3279030', '3279', 'PATARUMAN'), (
        '3279040',
        '3279',
        'LANGENSARI'
    ), (
        '3301010',
        '3301',
        'DAYEUHLUHUR'
    ), ('3301020', '3301', 'WANAREJA'), ('3301030', '3301', 'MAJENANG'), ('3301040', '3301', 'CIMANGGU'), (
        '3301050',
        '3301',
        'KARANGPUCUNG'
    ), ('3301060', '3301', 'CIPARI'), ('3301070', '3301', 'SIDAREJA'), (
        '3301080',
        '3301',
        'KEDUNGREJA'
    ), ('3301090', '3301', 'PATIMUAN'), (
        '3301100',
        '3301',
        'GANDRUNGMANGU'
    ), (
        '3301110',
        '3301',
        'BANTARSARI'
    ), (
        '3301120',
        '3301',
        'KAWUNGANTEN'
    ), (
        '3301121',
        '3301',
        'KAMPUNG LAUT'
    ), ('3301130', '3301', 'JERUKLEGI'), ('3301140', '3301', 'KESUGIHAN'), ('3301150', '3301', 'ADIPALA'), ('3301160', '3301', 'MAOS'), ('3301170', '3301', 'SAMPANG'), ('3301180', '3301', 'KROYA'), ('3301190', '3301', 'BINANGUN'), ('3301200', '3301', 'NUSAWUNGU'), (
        '3301710',
        '3301',
        'CILACAP SELATAN'
    ), (
        '3301720',
        '3301',
        'CILACAP TENGAH'
    ), (
        '3301730',
        '3301',
        'CILACAP UTARA'
    ), ('3302010', '3302', 'LUMBIR'), ('3302020', '3302', 'WANGON'), (
        '3302030',
        '3302',
        'JATILAWANG'
    ), ('3302040', '3302', 'RAWALO'), ('3302050', '3302', 'KEBASEN'), ('3302060', '3302', 'KEMRANJEN'), ('3302070', '3302', 'SUMPIUH'), ('3302080', '3302', 'TAMBAK'), ('3302090', '3302', 'SOMAGEDE'), ('3302100', '3302', 'KALIBAGOR'), ('3302110', '3302', 'BANYUMAS'), ('3302120', '3302', 'PATIKRAJA'), ('3302130', '3302', 'PURWOJATI'), ('3302140', '3302', 'AJIBARANG'), ('3302150', '3302', 'GUMELAR'), ('3302160', '3302', 'PEKUNCEN'), ('3302170', '3302', 'CILONGOK'), (
        '3302180',
        '3302',
        'KARANGLEWAS'
    ), (
        '3302190',
        '3302',
        'KEDUNG BANTENG'
    ), (
        '3302200',
        '3302',
        'BATURRADEN'
    ), ('3302210', '3302', 'SUMBANG'), ('3302220', '3302', 'KEMBARAN'), ('3302230', '3302', 'SOKARAJA'), (
        '3302710',
        '3302',
        'PURWOKERTO SELATAN'
    ), (
        '3302720',
        '3302',
        'PURWOKERTO BARAT'
    ), (
        '3302730',
        '3302',
        'PURWOKERTO TIMUR'
    ), (
        '3302740',
        '3302',
        'PURWOKERTO UTARA'
    ), ('3303010', '3303', 'KEMANGKON'), ('3303020', '3303', 'BUKATEJA'), ('3303030', '3303', 'KEJOBONG'), (
        '3303040',
        '3303',
        'PENGADEGAN'
    ), (
        '3303050',
        '3303',
        'KALIGONDANG'
    ), (
        '3303060',
        '3303',
        'PURBALINGGA'
    ), ('3303070', '3303', 'KALIMANAH'), ('3303080', '3303', 'PADAMARA'), ('3303090', '3303', 'KUTASARI'), (
        '3303100',
        '3303',
        'BOJONGSARI'
    ), ('3303110', '3303', 'MREBET'), ('3303120', '3303', 'BOBOTSARI'), (
        '3303130',
        '3303',
        'KARANGREJA'
    ), (
        '3303131',
        '3303',
        'KARANGJAMBU'
    ), (
        '3303140',
        '3303',
        'KARANGANYAR'
    ), (
        '3303141',
        '3303',
        'KERTANEGARA'
    ), (
        '3303150',
        '3303',
        'KARANGMONCOL'
    ), ('3303160', '3303', 'REMBANG'), ('3304010', '3304', 'SUSUKAN'), (
        '3304020',
        '3304',
        'PURWAREJA KLAMPOK'
    ), ('3304030', '3304', 'MANDIRAJA'), (
        '3304040',
        '3304',
        'PURWANEGARA'
    ), ('3304050', '3304', 'BAWANG'), (
        '3304060',
        '3304',
        'BANJARNEGARA'
    ), (
        '3304061',
        '3304',
        'PAGEDONGAN'
    ), ('3304070', '3304', 'SIGALUH'), ('3304080', '3304', 'MADUKARA'), (
        '3304090',
        '3304',
        'BANJARMANGU'
    ), ('3304100', '3304', 'WANADADI'), ('3304110', '3304', 'RAKIT'), ('3304120', '3304', 'PUNGGELAN'), (
        '3304130',
        '3304',
        'KARANGKOBAR'
    ), ('3304140', '3304', 'PAGENTAN'), ('3304150', '3304', 'PEJAWARAN'), ('3304160', '3304', 'BATUR'), ('3304170', '3304', 'WANAYASA'), (
        '3304180',
        '3304',
        'KALIBENING'
    ), (
        '3304181',
        '3304',
        'PANDANARUM'
    ), ('3305010', '3305', 'AYAH'), ('3305020', '3305', 'BUAYAN'), ('3305030', '3305', 'PURING'), ('3305040', '3305', 'PETANAHAN'), ('3305050', '3305', 'KLIRONG'), (
        '3305060',
        '3305',
        'BULUSPESANTREN'
    ), ('3305070', '3305', 'AMBAL'), ('3305080', '3305', 'MIRIT'), ('3305081', '3305', 'BONOROWO'), ('3305090', '3305', 'PREMBUN'), ('3305091', '3305', 'PADURESO'), (
        '3305100',
        '3305',
        'KUTOWINANGUN'
    ), ('3305110', '3305', 'ALIAN'), (
        '3305111',
        '3305',
        'PONCOWARNO'
    ), ('3305120', '3305', 'KEBUMEN'), ('3305130', '3305', 'PEJAGOAN'), ('3305140', '3305', 'SRUWENG'), ('3305150', '3305', 'ADIMULYO'), ('3305160', '3305', 'KUWARASAN'), ('3305170', '3305', 'ROWOKELE'), ('3305180', '3305', 'SEMPOR'), ('3305190', '3305', 'GOMBONG'), (
        '3305200',
        '3305',
        'KARANGANYAR'
    ), (
        '3305210',
        '3305',
        'KARANGGAYAM'
    ), ('3305220', '3305', 'SADANG'), (
        '3305221',
        '3305',
        'KARANGSAMBUNG'
    ), ('3306010', '3306', 'GRABAG'), ('3306020', '3306', 'NGOMBOL'), ('3306030', '3306', 'PURWODADI'), ('3306040', '3306', 'BAGELEN'), (
        '3306050',
        '3306',
        'KALIGESING'
    ), ('3306060', '3306', 'PURWOREJO'), (
        '3306070',
        '3306',
        'BANYU URIP'
    ), ('3306080', '3306', 'BAYAN'), ('3306090', '3306', 'KUTOARJO'), ('3306100', '3306', 'BUTUH'), ('3306110', '3306', 'PITURUH'), ('3306120', '3306', 'KEMIRI'), ('3306130', '3306', 'BRUNO'), ('3306140', '3306', 'GEBANG'), ('3306150', '3306', 'LOANO'), ('3306160', '3306', 'BENER'), (
        '3307010',
        '3307',
        'WADASLINTANG'
    ), ('3307020', '3307', 'KEPIL'), ('3307030', '3307', 'SAPURAN'), (
        '3307031',
        '3307',
        'KALIBAWANG'
    ), ('3307040', '3307', 'KALIWIRO'), ('3307050', '3307', 'LEKSONO'), ('3307051', '3307', 'SUKOHARJO'), ('3307060', '3307', 'SELOMERTO'), ('3307070', '3307', 'KALIKAJAR'), ('3307080', '3307', 'KERTEK'), ('3307090', '3307', 'WONOSOBO'), (
        '3307100',
        '3307',
        'WATUMALANG'
    ), (
        '3307110',
        '3307',
        'MOJOTENGAH'
    ), ('3307120', '3307', 'GARUNG'), ('3307130', '3307', 'KEJAJAR'), ('3308010', '3308', 'SALAMAN'), ('3308020', '3308', 'BOROBUDUR'), ('3308030', '3308', 'NGLUWAR'), ('3308040', '3308', 'SALAM'), ('3308050', '3308', 'SRUMBUNG'), ('3308060', '3308', 'DUKUN'), ('3308070', '3308', 'MUNTILAN'), ('3308080', '3308', 'MUNGKID'), ('3308090', '3308', 'SAWANGAN'), (
        '3308100',
        '3308',
        'CANDIMULYO'
    ), (
        '3308110',
        '3308',
        'MERTOYUDAN'
    ), ('3308120', '3308', 'TEMPURAN'), ('3308130', '3308', 'KAJORAN'), (
        '3308140',
        '3308',
        'KALIANGKRIK'
    ), ('3308150', '3308', 'BANDONGAN'), ('3308160', '3308', 'WINDUSARI'), ('3308170', '3308', 'SECANG'), ('3308180', '3308', 'TEGALREJO'), ('3308190', '3308', 'PAKIS'), ('3308200', '3308', 'GRABAG'), ('3308210', '3308', 'NGABLAK'), ('3309010', '3309', 'SELO'), ('3309020', '3309', 'AMPEL'), ('3309030', '3309', 'CEPOGO'), ('3309040', '3309', 'MUSUK'), ('3309050', '3309', 'BOYOLALI'), ('3309060', '3309', 'MOJOSONGO'), ('3309070', '3309', 'TERAS'), ('3309080', '3309', 'SAWIT'), ('3309090', '3309', 'BANYUDONO'), ('3309100', '3309', 'SAMBI'), ('3309110', '3309', 'NGEMPLAK'), ('3309120', '3309', 'NOGOSARI'), ('3309130', '3309', 'SIMO'), (
        '3309140',
        '3309',
        'KARANGGEDE'
    ), ('3309150', '3309', 'KLEGO'), ('3309160', '3309', 'ANDONG'), ('3309170', '3309', 'KEMUSU'), (
        '3309180',
        '3309',
        'WONOSEGORO'
    ), ('3309190', '3309', 'JUWANGI'), ('3310010', '3310', 'PRAMBANAN'), (
        '3310020',
        '3310',
        'GANTIWARNO'
    ), ('3310030', '3310', 'WEDI'), ('3310040', '3310', 'BAYAT'), ('3310050', '3310', 'CAWAS'), ('3310060', '3310', 'TRUCUK'), ('3310070', '3310', 'KALIKOTES'), ('3310080', '3310', 'KEBONARUM'), ('3310090', '3310', 'JOGONALAN'), (
        '3310100',
        '3310',
        'MANISRENGGO'
    ), (
        '3310110',
        '3310',
        'KARANGNONGKO'
    ), ('3310120', '3310', 'NGAWEN'), ('3310130', '3310', 'CEPER'), ('3310140', '3310', 'PEDAN'), (
        '3310150',
        '3310',
        'KARANGDOWO'
    ), ('3310160', '3310', 'JUWIRING'), ('3310170', '3310', 'WONOSARI'), ('3310180', '3310', 'DELANGGU'), (
        '3310190',
        '3310',
        'POLANHARJO'
    ), (
        '3310200',
        '3310',
        'KARANGANOM'
    ), ('3310210', '3310', 'TULUNG'), ('3310220', '3310', 'JATINOM'), ('3310230', '3310', 'KEMALANG'), (
        '3310710',
        '3310',
        'KLATEN SELATAN'
    ), (
        '3310720',
        '3310',
        'KLATEN TENGAH'
    ), (
        '3310730',
        '3310',
        'KLATEN UTARA'
    ), ('3311010', '3311', 'WERU'), ('3311020', '3311', 'BULU'), (
        '3311030',
        '3311',
        'TAWANGSARI'
    ), ('3311040', '3311', 'SUKOHARJO'), ('3311050', '3311', 'NGUTER'), ('3311060', '3311', 'BENDOSARI'), ('3311070', '3311', 'POLOKARTO'), ('3311080', '3311', 'MOJOLABAN'), ('3311090', '3311', 'GROGOL'), ('3311100', '3311', 'BAKI'), ('3311110', '3311', 'GATAK'), ('3311120', '3311', 'KARTASURA'), (
        '3312010',
        '3312',
        'PRACIMANTORO'
    ), (
        '3312020',
        '3312',
        'PARANGGUPITO'
    ), (
        '3312030',
        '3312',
        'GIRITONTRO'
    ), ('3312040', '3312', 'GIRIWOYO'), ('3312050', '3312', 'BATUWARNO'), (
        '3312060',
        '3312',
        'KARANGTENGAH'
    ), ('3312070', '3312', 'TIRTOMOYO'), (
        '3312080',
        '3312',
        'NGUNTORONADI'
    ), ('3312090', '3312', 'BATURETNO'), ('3312100', '3312', 'EROMOKO'), (
        '3312110',
        '3312',
        'WURYANTORO'
    ), ('3312120', '3312', 'MANYARAN'), ('3312130', '3312', 'SELOGIRI'), ('3312140', '3312', 'WONOGIRI'), ('3312150', '3312', 'NGADIROJO'), ('3312160', '3312', 'SIDOHARJO'), ('3312170', '3312', 'JATIROTO'), (
        '3312180',
        '3312',
        'KISMANTORO'
    ), (
        '3312190',
        '3312',
        'PURWANTORO'
    ), ('3312200', '3312', 'BULUKERTO'), ('3312201', '3312', 'PUHPELEM'), ('3312210', '3312', 'SLOGOHIMO'), ('3312220', '3312', 'JATISRONO'), ('3312230', '3312', 'JATIPURNO'), ('3312240', '3312', 'GIRIMARTO'), ('3313010', '3313', 'JATIPURO'), ('3313020', '3313', 'JATIYOSO'), ('3313030', '3313', 'JUMAPOLO'), ('3313040', '3313', 'JUMANTONO'), ('3313050', '3313', 'MATESIH'), (
        '3313060',
        '3313',
        'TAWANGMANGU'
    ), (
        '3313070',
        '3313',
        'NGARGOYOSO'
    ), (
        '3313080',
        '3313',
        'KARANGPANDAN'
    ), (
        '3313090',
        '3313',
        'KARANGANYAR'
    ), ('3313100', '3313', 'TASIKMADU'), ('3313110', '3313', 'JATEN'), ('3313120', '3313', 'COLOMADU'), (
        '3313130',
        '3313',
        'GONDANGREJO'
    ), (
        '3313140',
        '3313',
        'KEBAKKRAMAT'
    ), (
        '3313150',
        '3313',
        'MOJOGEDANG'
    ), ('3313160', '3313', 'KERJO'), ('3313170', '3313', 'JENAWI'), ('3314010', '3314', 'KALIJAMBE'), ('3314020', '3314', 'PLUPUH'), ('3314030', '3314', 'MASARAN'), ('3314040', '3314', 'KEDAWUNG'), ('3314050', '3314', 'SAMBIREJO'), ('3314060', '3314', 'GONDANG'), (
        '3314070',
        '3314',
        'SAMBUNG MACAN'
    ), ('3314080', '3314', 'NGRAMPAL'), (
        '3314090',
        '3314',
        'KARANGMALANG'
    ), ('3314100', '3314', 'SRAGEN'), ('3314110', '3314', 'SIDOHARJO'), ('3314120', '3314', 'TANON'), ('3314130', '3314', 'GEMOLONG'), ('3314140', '3314', 'MIRI'), (
        '3314150',
        '3314',
        'SUMBERLAWANG'
    ), ('3314160', '3314', 'MONDOKAN'), ('3314170', '3314', 'SUKODONO'), ('3314180', '3314', 'GESI'), ('3314190', '3314', 'TANGEN'), ('3314200', '3314', 'JENAR'), (
        '3315010',
        '3315',
        'KEDUNGJATI'
    ), (
        '3315020',
        '3315',
        'KARANGRAYUNG'
    ), (
        '3315030',
        '3315',
        'PENAWANGAN'
    ), ('3315040', '3315', 'TOROH'), ('3315050', '3315', 'GEYER'), ('3315060', '3315', 'PULOKULON'), ('3315070', '3315', 'KRADENAN'), ('3315080', '3315', 'GABUS'), ('3315090', '3315', 'NGARINGAN'), ('3315100', '3315', 'WIROSARI'), (
        '3315110',
        '3315',
        'TAWANGHARJO'
    ), ('3315120', '3315', 'GROBOGAN'), ('3315130', '3315', 'PURWODADI'), ('3315140', '3315', 'BRATI'), ('3315150', '3315', 'KLAMBU'), ('3315160', '3315', 'GODONG'), ('3315170', '3315', 'GUBUG'), ('3315180', '3315', 'TEGOWANU'), (
        '3315190',
        '3315',
        'TANGGUNGHARJO'
    ), ('3316010', '3316', 'JATI'), (
        '3316020',
        '3316',
        'RANDUBLATUNG'
    ), ('3316030', '3316', 'KRADENAN'), (
        '3316040',
        '3316',
        'KEDUNGTUBAN'
    ), ('3316050', '3316', 'CEPU'), ('3316060', '3316', 'SAMBONG'), ('3316070', '3316', 'JIKEN'), ('3316080', '3316', 'BOGOREJO'), ('3316090', '3316', 'JEPON'), (
        '3316100',
        '3316',
        'KOTA BLORA'
    ), ('3316110', '3316', 'BANJAREJO'), ('3316120', '3316', 'TUNJUNGAN'), ('3316130', '3316', 'JAPAH'), ('3316140', '3316', 'NGAWEN'), ('3316150', '3316', 'KUNDURAN'), ('3316160', '3316', 'TODANAN'), ('3317010', '3317', 'SUMBER'), ('3317020', '3317', 'BULU'), ('3317030', '3317', 'GUNEM'), ('3317040', '3317', 'SALE'), ('3317050', '3317', 'SARANG'), ('3317060', '3317', 'SEDAN'), ('3317070', '3317', 'PAMOTAN'), ('3317080', '3317', 'SULANG'), ('3317090', '3317', 'KALIORI'), ('3317100', '3317', 'REMBANG'), ('3317110', '3317', 'PANCUR'), ('3317120', '3317', 'KRAGAN'), ('3317130', '3317', 'SLUKE'), ('3317140', '3317', 'LASEM'), ('3318010', '3318', 'SUKOLILO'), ('3318020', '3318', 'KAYEN'), (
        '3318030',
        '3318',
        'TAMBAKROMO'
    ), ('3318040', '3318', 'WINONG'), (
        '3318050',
        '3318',
        'PUCAKWANGI'
    ), ('3318060', '3318', 'JAKEN'), ('3318070', '3318', 'BATANGAN'), ('3318080', '3318', 'JUWANA'), ('3318090', '3318', 'JAKENAN'), ('3318100', '3318', 'PATI'), ('3318110', '3318', 'GABUS'), ('3318120', '3318', 'MARGOREJO'), ('3318130', '3318', 'GEMBONG'), (
        '3318140',
        '3318',
        'TLOGOWUNGU'
    ), (
        '3318150',
        '3318',
        'WEDARIJAKSA'
    ), ('3318160', '3318', 'TRANGKIL'), ('3318170', '3318', 'MARGOYOSO'), (
        '3318180',
        '3318',
        'GUNUNG WUNGKAL'
    ), ('3318190', '3318', 'CLUWAK'), ('3318200', '3318', 'TAYU'), ('3318210', '3318', 'DUKUHSETI'), ('3319010', '3319', 'KALIWUNGU'), (
        '3319020',
        '3319',
        'KOTA KUDUS'
    ), ('3319030', '3319', 'JATI'), ('3319040', '3319', 'UNDAAN'), ('3319050', '3319', 'MEJOBO'), ('3319060', '3319', 'JEKULO'), ('3319070', '3319', 'BAE'), ('3319080', '3319', 'GEBOG'), ('3319090', '3319', 'DAWE'), ('3320010', '3320', 'KEDUNG'), ('3320020', '3320', 'PECANGAAN'), (
        '3320021',
        '3320',
        'KALINYAMATAN'
    ), ('3320030', '3320', 'WELAHAN'), ('3320040', '3320', 'MAYONG'), ('3320050', '3320', 'NALUMSARI'), ('3320060', '3320', 'BATEALIT'), ('3320070', '3320', 'TAHUNAN'), ('3320080', '3320', 'JEPARA'), ('3320090', '3320', 'MLONGGO'), ('3320091', '3320', 'PAKIS AJI'), ('3320100', '3320', 'BANGSRI'), ('3320101', '3320', 'KEMBANG'), ('3320110', '3320', 'KELING'), ('3320111', '3320', 'DONOROJO'), (
        '3320120',
        '3320',
        'KARIMUNJAWA'
    ), ('3321010', '3321', 'MRANGGEN'), (
        '3321020',
        '3321',
        'KARANGAWEN'
    ), ('3321030', '3321', 'GUNTUR'), ('3321040', '3321', 'SAYUNG'), (
        '3321050',
        '3321',
        'KARANG TENGAH'
    ), ('3321060', '3321', 'BONANG'), ('3321070', '3321', 'DEMAK'), ('3321080', '3321', 'WONOSALAM'), ('3321090', '3321', 'DEMPET'), (
        '3321091',
        '3321',
        'KEBONAGUNG'
    ), ('3321100', '3321', 'GAJAH'), (
        '3321110',
        '3321',
        'KARANGANYAR'
    ), ('3321120', '3321', 'MIJEN'), ('3321130', '3321', 'WEDUNG'), ('3322010', '3322', 'GETASAN'), ('3322020', '3322', 'TENGARAN'), ('3322030', '3322', 'SUSUKAN'), ('3322031', '3322', 'KALIWUNGU'), ('3322040', '3322', 'SURUH'), ('3322050', '3322', 'PABELAN'), ('3322060', '3322', 'TUNTANG'), ('3322070', '3322', 'BANYUBIRU'), ('3322080', '3322', 'JAMBU'), ('3322090', '3322', 'SUMOWONO'), ('3322100', '3322', 'AMBARAWA'), ('3322101', '3322', 'BANDUNGAN'), ('3322110', '3322', 'BAWEN'), ('3322120', '3322', 'BRINGIN'), ('3322121', '3322', 'BANCAK'), ('3322130', '3322', 'PRINGAPUS'), ('3322140', '3322', 'BERGAS'), (
        '3322151',
        '3322',
        'UNGARAN BARAT'
    ), (
        '3322152',
        '3322',
        'UNGARAN TIMUR'
    ), ('3323010', '3323', 'PARAKAN'), ('3323011', '3323', 'KLEDUNG'), ('3323012', '3323', 'BANSARI'), ('3323020', '3323', 'BULU'), (
        '3323030',
        '3323',
        'TEMANGGUNG'
    ), (
        '3323031',
        '3323',
        'TLOGOMULYO'
    );

INSERT INTO
    `tbl_kecamatan` (
        `id_kecamatan`,
        `id_kabupaten`,
        `nama_kecamatan`
    )
VALUES ('3323040', '3323', 'TEMBARAK'), (
        '3323041',
        '3323',
        'SELOPAMPANG'
    ), ('3323050', '3323', 'KRANGGAN'), (
        '3323060',
        '3323',
        'PRINGSURAT'
    ), ('3323070', '3323', 'KALORAN'), ('3323080', '3323', 'KANDANGAN'), ('3323090', '3323', 'KEDU'), ('3323100', '3323', 'NGADIREJO'), ('3323110', '3323', 'JUMO'), ('3323111', '3323', 'GEMAWANG'), ('3323120', '3323', 'CANDIROTO'), ('3323121', '3323', 'BEJEN'), ('3323130', '3323', 'TRETEP'), ('3323131', '3323', 'WONOBOYO'), (
        '3324010',
        '3324',
        'PLANTUNGAN'
    ), ('3324020', '3324', 'SUKOREJO'), (
        '3324030',
        '3324',
        'PAGERRUYUNG'
    ), ('3324040', '3324', 'PATEAN'), ('3324050', '3324', 'SINGOROJO'), ('3324060', '3324', 'LIMBANGAN'), ('3324070', '3324', 'BOJA'), ('3324080', '3324', 'KALIWUNGU'), (
        '3324081',
        '3324',
        'KALIWUNGU SELATAN'
    ), ('3324090', '3324', 'BRANGSONG'), ('3324100', '3324', 'PEGANDON'), ('3324101', '3324', 'NGAMPEL'), ('3324110', '3324', 'GEMUH'), (
        '3324111',
        '3324',
        'RINGINARUM'
    ), ('3324120', '3324', 'WELERI'), ('3324130', '3324', 'ROWOSARI'), ('3324140', '3324', 'KANGKUNG'), ('3324150', '3324', 'CEPIRING'), ('3324160', '3324', 'PATEBON'), (
        '3324170',
        '3324',
        'KOTA KENDAL'
    ), (
        '3325010',
        '3325',
        'WONOTUNGGAL'
    ), ('3325020', '3325', 'BANDAR'), ('3325030', '3325', 'BLADO'), ('3325040', '3325', 'REBAN'), ('3325050', '3325', 'BAWANG'), ('3325060', '3325', 'TERSONO'), ('3325070', '3325', 'GRINGSING'), ('3325080', '3325', 'LIMPUNG'), (
        '3325081',
        '3325',
        'BANYUPUTIH'
    ), ('3325090', '3325', 'SUBAH'), (
        '3325091',
        '3325',
        'PECALUNGAN'
    ), ('3325100', '3325', 'TULIS'), ('3325101', '3325', 'KANDEMAN'), ('3325110', '3325', 'BATANG'), (
        '3325120',
        '3325',
        'WARUNG ASEM'
    ), (
        '3326010',
        '3326',
        'KANDANGSERANG'
    ), (
        '3326020',
        '3326',
        'PANINGGARAN'
    ), (
        '3326030',
        '3326',
        'LEBAKBARANG'
    ), (
        '3326040',
        '3326',
        'PETUNGKRIONO'
    ), ('3326050', '3326', 'TALUN'), ('3326060', '3326', 'DORO'), (
        '3326070',
        '3326',
        'KARANGANYAR'
    ), ('3326080', '3326', 'KAJEN'), ('3326090', '3326', 'KESESI'), ('3326100', '3326', 'SRAGI'), ('3326101', '3326', 'SIWALAN'), ('3326110', '3326', 'BOJONG'), (
        '3326120',
        '3326',
        'WONOPRINGGO'
    ), (
        '3326130',
        '3326',
        'KEDUNGWUNI'
    ), (
        '3326131',
        '3326',
        'KARANGDADAP'
    ), ('3326140', '3326', 'BUARAN'), ('3326150', '3326', 'TIRTO'), ('3326160', '3326', 'WIRADESA'), ('3326161', '3326', 'WONOKERTO'), ('3327010', '3327', 'MOGA'), (
        '3327011',
        '3327',
        'WARUNGPRING'
    ), ('3327020', '3327', 'PULOSARI'), ('3327030', '3327', 'BELIK'), (
        '3327040',
        '3327',
        'WATUKUMPUL'
    ), ('3327050', '3327', 'BODEH'), (
        '3327060',
        '3327',
        'BANTARBOLANG'
    ), (
        '3327070',
        '3327',
        'RANDUDONGKAL'
    ), ('3327080', '3327', 'PEMALANG'), ('3327090', '3327', 'TAMAN'), ('3327100', '3327', 'PETARUKAN'), (
        '3327110',
        '3327',
        'AMPELGADING'
    ), ('3327120', '3327', 'COMAL'), ('3327130', '3327', 'ULUJAMI'), ('3328010', '3328', 'MARGASARI'), ('3328020', '3328', 'BUMIJAWA'), ('3328030', '3328', 'BOJONG'), (
        '3328040',
        '3328',
        'BALAPULANG'
    ), (
        '3328050',
        '3328',
        'PAGERBARANG'
    ), ('3328060', '3328', 'LEBAKSIU'), (
        '3328070',
        '3328',
        'JATINEGARA'
    ), (
        '3328080',
        '3328',
        'KEDUNG BANTENG'
    ), ('3328090', '3328', 'PANGKAH'), ('3328100', '3328', 'SLAWI'), ('3328110', '3328', 'DUKUHWARU'), ('3328120', '3328', 'ADIWERNA'), ('3328130', '3328', 'DUKUHTURI'), ('3328140', '3328', 'TALANG'), ('3328150', '3328', 'TARUB'), ('3328160', '3328', 'KRAMAT'), ('3328170', '3328', 'SURADADI'), ('3328180', '3328', 'WARUREJA'), ('3329010', '3329', 'SALEM'), (
        '3329020',
        '3329',
        'BANTARKAWUNG'
    ), ('3329030', '3329', 'BUMIAYU'), (
        '3329040',
        '3329',
        'PAGUYANGAN'
    ), ('3329050', '3329', 'SIRAMPOG'), ('3329060', '3329', 'TONJONG'), ('3329070', '3329', 'LARANGAN'), (
        '3329080',
        '3329',
        'KETANGGUNGAN'
    ), (
        '3329090',
        '3329',
        'BANJARHARJO'
    ), ('3329100', '3329', 'LOSARI'), ('3329110', '3329', 'TANJUNG'), ('3329120', '3329', 'KERSANA'), ('3329130', '3329', 'BULAKAMBA'), ('3329140', '3329', 'WANASARI'), ('3329150', '3329', 'SONGGOM'), (
        '3329160',
        '3329',
        'JATIBARANG'
    ), ('3329170', '3329', 'BREBES'), (
        '3371010',
        '3371',
        'MAGELANG SELATAN'
    ), (
        '3371011',
        '3371',
        'MAGELANG TENGAH'
    ), (
        '3371020',
        '3371',
        'MAGELANG UTARA'
    ), ('3372010', '3372', 'LAWEYAN'), ('3372020', '3372', 'SERENGAN'), (
        '3372030',
        '3372',
        'PASAR KLIWON'
    ), ('3372040', '3372', 'JEBRES'), (
        '3372050',
        '3372',
        'BANJARSARI'
    ), ('3373010', '3373', 'ARGOMULYO'), ('3373020', '3373', 'TINGKIR'), ('3373030', '3373', 'SIDOMUKTI'), ('3373040', '3373', 'SIDOREJO'), ('3374010', '3374', 'MIJEN'), (
        '3374020',
        '3374',
        'GUNUNG PATI'
    ), (
        '3374030',
        '3374',
        'BANYUMANIK'
    ), (
        '3374040',
        '3374',
        'GAJAH MUNGKUR'
    ), (
        '3374050',
        '3374',
        'SEMARANG SELATAN'
    ), ('3374060', '3374', 'CANDISARI'), ('3374070', '3374', 'TEMBALANG'), (
        '3374080',
        '3374',
        'PEDURUNGAN'
    ), ('3374090', '3374', 'GENUK'), ('3374100', '3374', 'GAYAMSARI'), (
        '3374110',
        '3374',
        'SEMARANG TIMUR'
    ), (
        '3374120',
        '3374',
        'SEMARANG UTARA'
    ), (
        '3374130',
        '3374',
        'SEMARANG TENGAH'
    ), (
        '3374140',
        '3374',
        'SEMARANG BARAT'
    ), ('3374150', '3374', 'TUGU'), ('3374160', '3374', 'NGALIYAN'), (
        '3375010',
        '3375',
        'PEKALONGAN BARAT'
    ), (
        '3375020',
        '3375',
        'PEKALONGAN TIMUR'
    ), (
        '3375030',
        '3375',
        'PEKALONGAN SELATAN'
    ), (
        '3375040',
        '3375',
        'PEKALONGAN UTARA'
    ), (
        '3376010',
        '3376',
        'TEGAL SELATAN'
    ), (
        '3376020',
        '3376',
        'TEGAL TIMUR'
    ), (
        '3376030',
        '3376',
        'TEGAL BARAT'
    ), ('3376040', '3376', 'MARGADANA'), ('3401010', '3401', 'TEMON'), ('3401020', '3401', 'WATES'), ('3401030', '3401', 'PANJATAN'), ('3401040', '3401', 'GALUR'), ('3401050', '3401', 'LENDAH'), ('3401060', '3401', 'SENTOLO'), ('3401070', '3401', 'PENGASIH'), ('3401080', '3401', 'KOKAP'), ('3401090', '3401', 'GIRIMULYO'), ('3401100', '3401', 'NANGGULAN'), (
        '3401110',
        '3401',
        'KALIBAWANG'
    ), ('3401120', '3401', 'SAMIGALUH'), ('3402010', '3402', 'SRANDAKAN'), ('3402020', '3402', 'SANDEN'), ('3402030', '3402', 'KRETEK'), ('3402040', '3402', 'PUNDONG'), (
        '3402050',
        '3402',
        'BAMBANG LIPURO'
    ), ('3402060', '3402', 'PANDAK'), ('3402070', '3402', 'BANTUL'), ('3402080', '3402', 'JETIS'), ('3402090', '3402', 'IMOGIRI'), ('3402100', '3402', 'DLINGO'), ('3402110', '3402', 'PLERET'), ('3402120', '3402', 'PIYUNGAN'), (
        '3402130',
        '3402',
        'BANGUNTAPAN'
    ), ('3402140', '3402', 'SEWON'), ('3402150', '3402', 'KASIHAN'), ('3402160', '3402', 'PAJANGAN'), ('3402170', '3402', 'SEDAYU'), ('3403010', '3403', 'PANGGANG'), ('3403011', '3403', 'PURWOSARI'), ('3403020', '3403', 'PALIYAN'), (
        '3403030',
        '3403',
        'SAPTO SARI'
    ), ('3403040', '3403', 'TEPUS'), (
        '3403041',
        '3403',
        'TANJUNGSARI'
    ), ('3403050', '3403', 'RONGKOP'), ('3403051', '3403', 'GIRISUBO'), ('3403060', '3403', 'SEMANU'), ('3403070', '3403', 'PONJONG'), (
        '3403080',
        '3403',
        'KARANGMOJO'
    ), ('3403090', '3403', 'WONOSARI'), ('3403100', '3403', 'PLAYEN'), ('3403110', '3403', 'PATUK'), (
        '3403120',
        '3403',
        'GEDANG SARI'
    ), ('3403130', '3403', 'NGLIPAR'), ('3403140', '3403', 'NGAWEN'), ('3403150', '3403', 'SEMIN'), ('3404010', '3404', 'MOYUDAN'), ('3404020', '3404', 'MINGGIR'), ('3404030', '3404', 'SEYEGAN'), ('3404040', '3404', 'GODEAN'), ('3404050', '3404', 'GAMPING'), ('3404060', '3404', 'MLATI'), ('3404070', '3404', 'DEPOK'), ('3404080', '3404', 'BERBAH'), ('3404090', '3404', 'PRAMBANAN'), ('3404100', '3404', 'KALASAN'), ('3404110', '3404', 'NGEMPLAK'), ('3404120', '3404', 'NGAGLIK'), ('3404130', '3404', 'SLEMAN'), ('3404140', '3404', 'TEMPEL'), ('3404150', '3404', 'TURI'), ('3404160', '3404', 'PAKEM'), (
        '3404170',
        '3404',
        'CANGKRINGAN'
    ), (
        '3471010',
        '3471',
        'MANTRIJERON'
    ), ('3471020', '3471', 'KRATON'), (
        '3471030',
        '3471',
        'MERGANGSAN'
    ), (
        '3471040',
        '3471',
        'UMBULHARJO'
    ), ('3471050', '3471', 'KOTAGEDE'), (
        '3471060',
        '3471',
        'GONDOKUSUMAN'
    ), ('3471070', '3471', 'DANUREJAN'), (
        '3471080',
        '3471',
        'PAKUALAMAN'
    ), (
        '3471090',
        '3471',
        'GONDOMANAN'
    ), ('3471100', '3471', 'NGAMPILAN'), (
        '3471110',
        '3471',
        'WIROBRAJAN'
    ), (
        '3471120',
        '3471',
        'GEDONG TENGEN'
    ), ('3471130', '3471', 'JETIS'), ('3471140', '3471', 'TEGALREJO'), ('3501010', '3501', 'DONOROJO'), ('3501020', '3501', 'PUNUNG'), ('3501030', '3501', 'PRINGKUKU'), ('3501040', '3501', 'PACITAN'), (
        '3501050',
        '3501',
        'KEBONAGUNG'
    ), ('3501060', '3501', 'ARJOSARI'), ('3501070', '3501', 'NAWANGAN'), ('3501080', '3501', 'BANDAR'), ('3501090', '3501', 'TEGALOMBO'), ('3501100', '3501', 'TULAKAN'), ('3501110', '3501', 'NGADIROJO'), ('3501120', '3501', 'SUDIMORO'), ('3502010', '3502', 'NGRAYUN'), ('3502020', '3502', 'SLAHUNG'), ('3502030', '3502', 'BUNGKAL'), ('3502040', '3502', 'SAMBIT'), ('3502050', '3502', 'SAWOO'), ('3502060', '3502', 'SOOKO'), ('3502061', '3502', 'PUDAK'), ('3502070', '3502', 'PULUNG'), ('3502080', '3502', 'MLARAK'), ('3502090', '3502', 'SIMAN'), ('3502100', '3502', 'JETIS'), ('3502110', '3502', 'BALONG'), ('3502120', '3502', 'KAUMAN'), ('3502130', '3502', 'JAMBON'), ('3502140', '3502', 'BADEGAN'), ('3502150', '3502', 'SAMPUNG'), ('3502160', '3502', 'SUKOREJO'), ('3502170', '3502', 'PONOROGO'), ('3502180', '3502', 'BABADAN'), ('3502190', '3502', 'JENANGAN'), ('3502200', '3502', 'NGEBEL'), ('3503010', '3503', 'PANGGUL'), ('3503020', '3503', 'MUNJUNGAN'), ('3503030', '3503', 'WATULIMO'), ('3503040', '3503', 'KAMPAK'), ('3503050', '3503', 'DONGKO'), ('3503060', '3503', 'PULE'), ('3503070', '3503', 'KARANGAN'), ('3503071', '3503', 'SURUH'), ('3503080', '3503', 'GANDUSARI'), ('3503090', '3503', 'DURENAN'), ('3503100', '3503', 'POGALAN'), (
        '3503110',
        '3503',
        'TRENGGALEK'
    ), ('3503120', '3503', 'TUGU'), ('3503130', '3503', 'BENDUNGAN'), ('3504010', '3504', 'BESUKI'), ('3504020', '3504', 'BANDUNG'), ('3504030', '3504', 'PAKEL'), (
        '3504040',
        '3504',
        'CAMPUR DARAT'
    ), (
        '3504050',
        '3504',
        'TANGGUNG GUNUNG'
    ), ('3504060', '3504', 'KALIDAWIR'), (
        '3504070',
        '3504',
        'PUCANG LABAN'
    ), (
        '3504080',
        '3504',
        'REJOTANGAN'
    ), ('3504090', '3504', 'NGUNUT'), (
        '3504100',
        '3504',
        'SUMBERGEMPOL'
    ), ('3504110', '3504', 'BOYOLANGU'), (
        '3504120',
        '3504',
        'TULUNGAGUNG'
    ), (
        '3504130',
        '3504',
        'KEDUNGWARU'
    ), ('3504140', '3504', 'NGANTRU'), (
        '3504150',
        '3504',
        'KARANGREJO'
    ), ('3504160', '3504', 'KAUMAN'), ('3504170', '3504', 'GONDANG'), (
        '3504180',
        '3504',
        'PAGER WOJO'
    ), ('3504190', '3504', 'SENDANG'), ('3505010', '3505', 'BAKUNG'), ('3505020', '3505', 'WONOTIRTO'), (
        '3505030',
        '3505',
        'PANGGUNGREJO'
    ), ('3505040', '3505', 'WATES'), ('3505050', '3505', 'BINANGUN'), ('3505060', '3505', 'SUTOJAYAN'), (
        '3505070',
        '3505',
        'KADEMANGAN'
    ), ('3505080', '3505', 'KANIGORO'), ('3505090', '3505', 'TALUN'), ('3505100', '3505', 'SELOPURO'), ('3505110', '3505', 'KESAMBEN'), ('3505120', '3505', 'SELOREJO'), ('3505130', '3505', 'DOKO'), ('3505140', '3505', 'WLINGI'), ('3505150', '3505', 'GANDUSARI'), ('3505160', '3505', 'GARUM'), ('3505170', '3505', 'NGLEGOK'), (
        '3505180',
        '3505',
        'SANANKULON'
    ), ('3505190', '3505', 'PONGGOK'), ('3505200', '3505', 'SRENGAT'), ('3505210', '3505', 'WONODADI'), ('3505220', '3505', 'UDANAWU'), ('3506010', '3506', 'MOJO'), ('3506020', '3506', 'SEMEN'), (
        '3506030',
        '3506',
        'NGADILUWIH'
    ), ('3506040', '3506', 'KRAS'), (
        '3506050',
        '3506',
        'RINGINREJO'
    ), ('3506060', '3506', 'KANDAT'), ('3506070', '3506', 'WATES'), ('3506080', '3506', 'NGANCAR'), (
        '3506090',
        '3506',
        'PLOSOKLATEN'
    ), ('3506100', '3506', 'GURAH'), ('3506110', '3506', 'PUNCU'), ('3506120', '3506', 'KEPUNG'), ('3506130', '3506', 'KANDANGAN'), ('3506140', '3506', 'PARE'), ('3506141', '3506', 'BADAS'), ('3506150', '3506', 'KUNJANG'), ('3506160', '3506', 'PLEMAHAN'), ('3506170', '3506', 'PURWOASRI'), ('3506180', '3506', 'PAPAR'), ('3506190', '3506', 'PAGU'), (
        '3506191',
        '3506',
        'KAYEN KIDUL'
    ), (
        '3506200',
        '3506',
        'GAMPENGREJO'
    ), ('3506201', '3506', 'NGASEM'), ('3506210', '3506', 'BANYAKAN'), ('3506220', '3506', 'GROGOL'), ('3506230', '3506', 'TAROKAN'), ('3507010', '3507', 'DONOMULYO'), ('3507020', '3507', 'KALIPARE'), ('3507030', '3507', 'PAGAK'), ('3507040', '3507', 'BANTUR'), ('3507050', '3507', 'GEDANGAN'), (
        '3507060',
        '3507',
        'SUMBERMANJING'
    ), ('3507070', '3507', 'DAMPIT'), (
        '3507080',
        '3507',
        'TIRTO YUDO'
    ), (
        '3507090',
        '3507',
        'AMPELGADING'
    ), (
        '3507100',
        '3507',
        'PONCOKUSUMO'
    ), ('3507110', '3507', 'WAJAK'), ('3507120', '3507', 'TUREN'), (
        '3507130',
        '3507',
        'BULULAWANG'
    ), (
        '3507140',
        '3507',
        'GONDANGLEGI'
    ), ('3507150', '3507', 'PAGELARAN'), ('3507160', '3507', 'KEPANJEN'), (
        '3507170',
        '3507',
        'SUMBER PUCUNG'
    ), ('3507180', '3507', 'KROMENGAN'), ('3507190', '3507', 'NGAJUM'), ('3507200', '3507', 'WONOSARI'), ('3507210', '3507', 'WAGIR'), ('3507220', '3507', 'PAKISAJI'), ('3507230', '3507', 'TAJINAN'), ('3507240', '3507', 'TUMPANG'), ('3507250', '3507', 'PAKIS'), ('3507260', '3507', 'JABUNG'), ('3507270', '3507', 'LAWANG'), ('3507280', '3507', 'SINGOSARI'), (
        '3507290',
        '3507',
        'KARANGPLOSO'
    ), ('3507300', '3507', 'DAU'), ('3507310', '3507', 'PUJON'), ('3507320', '3507', 'NGANTANG'), ('3507330', '3507', 'KASEMBON'), (
        '3508010',
        '3508',
        'TEMPURSARI'
    ), ('3508020', '3508', 'PRONOJIWO'), ('3508030', '3508', 'CANDIPURO'), ('3508040', '3508', 'PASIRIAN'), ('3508050', '3508', 'TEMPEH'), ('3508060', '3508', 'LUMAJANG'), (
        '3508061',
        '3508',
        'SUMBERSUKO'
    ), ('3508070', '3508', 'TEKUNG'), ('3508080', '3508', 'KUNIR'), (
        '3508090',
        '3508',
        'YOSOWILANGUN'
    ), (
        '3508100',
        '3508',
        'ROWOKANGKUNG'
    ), ('3508110', '3508', 'JATIROTO'), (
        '3508120',
        '3508',
        'RANDUAGUNG'
    ), ('3508130', '3508', 'SUKODONO'), ('3508140', '3508', 'PADANG'), (
        '3508150',
        '3508',
        'PASRUJAMBE'
    ), ('3508160', '3508', 'SENDURO'), ('3508170', '3508', 'GUCIALIT'), (
        '3508180',
        '3508',
        'KEDUNGJAJANG'
    ), ('3508190', '3508', 'KLAKAH'), ('3508200', '3508', 'RANUYOSO'), ('3509010', '3509', 'KENCONG'), ('3509020', '3509', 'GUMUK MAS'), ('3509030', '3509', 'PUGER'), ('3509040', '3509', 'WULUHAN'), ('3509050', '3509', 'AMBULU'), ('3509060', '3509', 'TEMPUREJO'), ('3509070', '3509', 'SILO'), ('3509080', '3509', 'MAYANG'), (
        '3509090',
        '3509',
        'MUMBULSARI'
    ), ('3509100', '3509', 'JENGGAWAH'), ('3509110', '3509', 'AJUNG'), ('3509120', '3509', 'RAMBIPUJI'), ('3509130', '3509', 'BALUNG'), ('3509140', '3509', 'UMBULSARI'), ('3509150', '3509', 'SEMBORO'), ('3509160', '3509', 'JOMBANG'), (
        '3509170',
        '3509',
        'SUMBER BARU'
    ), ('3509180', '3509', 'TANGGUL'), (
        '3509190',
        '3509',
        'BANGSALSARI'
    ), ('3509200', '3509', 'PANTI'), ('3509210', '3509', 'SUKORAMBI'), ('3509220', '3509', 'ARJASA'), ('3509230', '3509', 'PAKUSARI'), ('3509240', '3509', 'KALISAT'), ('3509250', '3509', 'LEDOKOMBO'), (
        '3509260',
        '3509',
        'SUMBERJAMBE'
    ), ('3509270', '3509', 'SUKOWONO'), ('3509280', '3509', 'JELBUK'), ('3509710', '3509', 'KALIWATES'), (
        '3509720',
        '3509',
        'SUMBERSARI'
    ), ('3509730', '3509', 'PATRANG'), (
        '3510010',
        '3510',
        'PESANGGARAN'
    ), (
        '3510011',
        '3510',
        'SILIRAGUNG'
    ), ('3510020', '3510', 'BANGOREJO'), (
        '3510030',
        '3510',
        'PURWOHARJO'
    ), (
        '3510040',
        '3510',
        'TEGALDLIMO'
    ), ('3510050', '3510', 'MUNCAR'), ('3510060', '3510', 'CLURING'), ('3510070', '3510', 'GAMBIRAN'), ('3510071', '3510', 'TEGALSARI'), ('3510080', '3510', 'GLENMORE'), ('3510090', '3510', 'KALIBARU'), ('3510100', '3510', 'GENTENG'), ('3510110', '3510', 'SRONO'), ('3510120', '3510', 'ROGOJAMPI'), ('3510130', '3510', 'KABAT'), (
        '3510140',
        '3510',
        'SINGOJURUH'
    ), ('3510150', '3510', 'SEMPU'), ('3510160', '3510', 'SONGGON'), ('3510170', '3510', 'GLAGAH'), ('3510171', '3510', 'LICIN'), (
        '3510180',
        '3510',
        'BANYUWANGI'
    ), ('3510190', '3510', 'GIRI'), ('3510200', '3510', 'KALIPURO'), (
        '3510210',
        '3510',
        'WONGSOREJO'
    ), ('3511010', '3511', 'MAESAN'), ('3511020', '3511', 'GRUJUGAN'), ('3511030', '3511', 'TAMANAN'), (
        '3511031',
        '3511',
        'JAMBESARI DARUS SHOLAH'
    ), ('3511040', '3511', 'PUJER'), ('3511050', '3511', 'TLOGOSARI'), ('3511060', '3511', 'SUKOSARI'), (
        '3511061',
        '3511',
        'SUMBER WRINGIN'
    ), ('3511070', '3511', 'TAPEN'), ('3511080', '3511', 'WONOSARI'), (
        '3511090',
        '3511',
        'TENGGARANG'
    ), ('3511100', '3511', 'BONDOWOSO'), (
        '3511110',
        '3511',
        'CURAH DAMI'
    ), ('3511111', '3511', 'BINAKAL'), ('3511120', '3511', 'PAKEM'), ('3511130', '3511', 'WRINGIN'), (
        '3511140',
        '3511',
        'TEGALAMPEL'
    ), (
        '3511141',
        '3511',
        'TAMAN KROCOK'
    ), ('3511150', '3511', 'KLABANG'), ('3511151', '3511', 'SEMPOL'), (
        '3511152',
        '3511',
        'BOTOLINGGO'
    ), ('3511160', '3511', 'PRAJEKAN'), ('3511170', '3511', 'CERMEE'), (
        '3512010',
        '3512',
        'SUMBERMALANG'
    ), (
        '3512020',
        '3512',
        'JATIBANTENG'
    ), (
        '3512030',
        '3512',
        'BANYUGLUGUR'
    ), ('3512040', '3512', 'BESUKI'), ('3512050', '3512', 'SUBOH'), (
        '3512060',
        '3512',
        'MLANDINGAN'
    ), ('3512070', '3512', 'BUNGATAN'), ('3512080', '3512', 'KENDIT'), ('3512090', '3512', 'PANARUKAN'), ('3512100', '3512', 'SITUBONDO'), ('3512110', '3512', 'MANGARAN'), ('3512120', '3512', 'PANJI'), ('3512130', '3512', 'KAPONGAN'), ('3512140', '3512', 'ARJASA'), ('3512150', '3512', 'JANGKAR'), ('3512160', '3512', 'ASEMBAGUS'), (
        '3512170',
        '3512',
        'BANYUPUTIH'
    ), ('3513010', '3513', 'SUKAPURA'), ('3513020', '3513', 'SUMBER'), ('3513030', '3513', 'KURIPAN'), ('3513040', '3513', 'BANTARAN'), ('3513050', '3513', 'LECES'), (
        '3513060',
        '3513',
        'TEGALSIWALAN'
    ), (
        '3513070',
        '3513',
        'BANYUANYAR'
    ), ('3513080', '3513', 'TIRIS'), ('3513090', '3513', 'KRUCIL'), ('3513100', '3513', 'GADING'), ('3513110', '3513', 'PAKUNIRAN'), ('3513120', '3513', 'KOTAANYAR'), ('3513130', '3513', 'PAITON'), ('3513140', '3513', 'BESUK'), ('3513150', '3513', 'KRAKSAAN'), ('3513160', '3513', 'KREJENGAN'), ('3513170', '3513', 'PAJARAKAN'), ('3513180', '3513', 'MARON'), ('3513190', '3513', 'GENDING'), ('3513200', '3513', 'DRINGU'), ('3513210', '3513', 'WONOMERTO'), ('3513220', '3513', 'LUMBANG'), ('3513230', '3513', 'TONGAS'), (
        '3513240',
        '3513',
        'SUMBERASIH'
    ), ('3514010', '3514', 'PURWODADI'), ('3514020', '3514', 'TUTUR'), ('3514030', '3514', 'PUSPO'), ('3514040', '3514', 'TOSARI'), ('3514050', '3514', 'LUMBANG'), ('3514060', '3514', 'PASREPAN'), ('3514070', '3514', 'KEJAYAN'), ('3514080', '3514', 'WONOREJO'), ('3514090', '3514', 'PURWOSARI'), ('3514100', '3514', 'PRIGEN'), ('3514110', '3514', 'SUKOREJO'), ('3514120', '3514', 'PANDAAN'), ('3514130', '3514', 'GEMPOL'), ('3514140', '3514', 'BEJI'), ('3514150', '3514', 'BANGIL'), ('3514160', '3514', 'REMBANG'), ('3514170', '3514', 'KRATON'), (
        '3514180',
        '3514',
        'POHJENTREK'
    ), (
        '3514190',
        '3514',
        'GONDANG WETAN'
    ), ('3514200', '3514', 'REJOSO'), ('3514210', '3514', 'WINONGAN'), ('3514220', '3514', 'GRATI'), ('3514230', '3514', 'LEKOK'), ('3514240', '3514', 'NGULING'), ('3515010', '3515', 'TARIK'), ('3515020', '3515', 'PRAMBON'), ('3515030', '3515', 'KREMBUNG'), ('3515040', '3515', 'PORONG'), ('3515050', '3515', 'JABON'), (
        '3515060',
        '3515',
        'TANGGULANGIN'
    ), ('3515070', '3515', 'CANDI'), ('3515080', '3515', 'TULANGAN'), ('3515090', '3515', 'WONOAYU'), ('3515100', '3515', 'SUKODONO'), ('3515110', '3515', 'SIDOARJO'), ('3515120', '3515', 'BUDURAN'), ('3515130', '3515', 'SEDATI'), ('3515140', '3515', 'WARU'), ('3515150', '3515', 'GEDANGAN'), ('3515160', '3515', 'TAMAN'), ('3515170', '3515', 'KRIAN'), (
        '3515180',
        '3515',
        'BALONG BENDO'
    ), ('3516010', '3516', 'JATIREJO'), ('3516020', '3516', 'GONDANG'), ('3516030', '3516', 'PACET'), ('3516040', '3516', 'TRAWAS'), ('3516050', '3516', 'NGORO'), ('3516060', '3516', 'PUNGGING'), ('3516070', '3516', 'KUTOREJO'), ('3516080', '3516', 'MOJOSARI'), ('3516090', '3516', 'BANGSAL'), ('3516091', '3516', 'MOJOANYAR'), ('3516100', '3516', 'DLANGGU'), ('3516110', '3516', 'PURI'), ('3516120', '3516', 'TROWULAN'), ('3516130', '3516', 'SOOKO'), ('3516140', '3516', 'GEDEK'), ('3516150', '3516', 'KEMLAGI'), ('3516160', '3516', 'JETIS'), (
        '3516170',
        '3516',
        'DAWAR BLANDONG'
    ), (
        '3517010',
        '3517',
        'BANDAR KEDUNG MULYO'
    ), ('3517020', '3517', 'PERAK'), ('3517030', '3517', 'GUDO'), ('3517040', '3517', 'DIWEK'), ('3517050', '3517', 'NGORO'), ('3517060', '3517', 'MOJOWARNO'), ('3517070', '3517', 'BARENG'), ('3517080', '3517', 'WONOSALAM'), ('3517090', '3517', 'MOJOAGUNG'), ('3517100', '3517', 'SUMOBITO'), ('3517110', '3517', 'JOGO ROTO'), (
        '3517120',
        '3517',
        'PETERONGAN'
    ), ('3517130', '3517', 'JOMBANG'), ('3517140', '3517', 'MEGALUH'), ('3517150', '3517', 'TEMBELANG'), ('3517160', '3517', 'KESAMBEN'), ('3517170', '3517', 'KUDU'), ('3517171', '3517', 'NGUSIKAN'), ('3517180', '3517', 'PLOSO'), ('3517190', '3517', 'KABUH'), ('3517200', '3517', 'PLANDAAN'), ('3518010', '3518', 'SAWAHAN'), ('3518020', '3518', 'NGETOS'), ('3518030', '3518', 'BERBEK'), ('3518040', '3518', 'LOCERET'), ('3518050', '3518', 'PACE'), (
        '3518060',
        '3518',
        'TANJUNGANOM'
    ), ('3518070', '3518', 'PRAMBON'), ('3518080', '3518', 'NGRONGGOT'), ('3518090', '3518', 'KERTOSONO'), (
        '3518100',
        '3518',
        'PATIANROWO'
    ), ('3518110', '3518', 'BARON'), ('3518120', '3518', 'GONDANG'), ('3518130', '3518', 'SUKOMORO'), ('3518140', '3518', 'NGANJUK'), ('3518150', '3518', 'BAGOR'), ('3518160', '3518', 'WILANGAN'), ('3518170', '3518', 'REJOSO'), ('3518180', '3518', 'NGLUYU'), ('3518190', '3518', 'LENGKONG'), ('3518200', '3518', 'JATIKALEN'), ('3519010', '3519', 'KEBONSARI'), ('3519020', '3519', 'GEGER'), ('3519030', '3519', 'DOLOPO'), ('3519040', '3519', 'DAGANGAN'), ('3519050', '3519', 'WUNGU'), ('3519060', '3519', 'KARE'), ('3519070', '3519', 'GEMARANG'), ('3519080', '3519', 'SARADAN'), (
        '3519090',
        '3519',
        'PILANGKENCENG'
    ), ('3519100', '3519', 'MEJAYAN'), ('3519110', '3519', 'WONOASRI'), ('3519120', '3519', 'BALEREJO'), ('3519130', '3519', 'MADIUN'), ('3519140', '3519', 'SAWAHAN'), ('3519150', '3519', 'JIWAN'), ('3520010', '3520', 'PONCOL'), ('3520020', '3520', 'PARANG'), ('3520030', '3520', 'LEMBEYAN'), ('3520040', '3520', 'TAKERAN'), (
        '3520041',
        '3520',
        'NGUNTORONADI'
    ), ('3520050', '3520', 'KAWEDANAN'), ('3520060', '3520', 'MAGETAN'), ('3520061', '3520', 'NGARIBOYO'), ('3520070', '3520', 'PLAOSAN'), ('3520071', '3520', 'SIDOREJO'), ('3520080', '3520', 'PANEKAN'), ('3520090', '3520', 'SUKOMORO'), ('3520100', '3520', 'BENDO'), ('3520110', '3520', 'MAOSPATI'), (
        '3520120',
        '3520',
        'KARANGREJO'
    ), ('3520121', '3520', 'KARAS'), ('3520130', '3520', 'BARAT'), (
        '3520131',
        '3520',
        'KARTOHARJO'
    ), ('3521010', '3521', 'SINE'), ('3521020', '3521', 'NGRAMBE'), ('3521030', '3521', 'JOGOROGO'), ('3521040', '3521', 'KENDAL'), ('3521050', '3521', 'GENENG'), ('3521051', '3521', 'GERIH'), ('3521060', '3521', 'KWADUNGAN'), ('3521070', '3521', 'PANGKUR'), (
        '3521080',
        '3521',
        'KARANGJATI'
    ), ('3521090', '3521', 'BRINGIN'), ('3521100', '3521', 'PADAS'), ('3521101', '3521', 'KASREMAN'), ('3521110', '3521', 'NGAWI'), ('3521120', '3521', 'PARON'), (
        '3521130',
        '3521',
        'KEDUNGGALAR'
    ), ('3521140', '3521', 'PITU'), ('3521150', '3521', 'WIDODAREN'), ('3521160', '3521', 'MANTINGAN'), (
        '3521170',
        '3521',
        'KARANGANYAR'
    ), (
        '3522010',
        '3522',
        'MARGOMULYO'
    ), ('3522020', '3522', 'NGRAHO'), (
        '3522030',
        '3522',
        'TAMBAKREJO'
    ), ('3522040', '3522', 'NGAMBON'), ('3522041', '3522', 'SEKAR'), ('3522050', '3522', 'BUBULAN'), ('3522051', '3522', 'GONDANG'), ('3522060', '3522', 'TEMAYANG'), (
        '3522070',
        '3522',
        'SUGIHWARAS'
    ), (
        '3522080',
        '3522',
        'KEDUNGADEM'
    ), (
        '3522090',
        '3522',
        'KEPOH BARU'
    ), ('3522100', '3522', 'BAURENO'), ('3522110', '3522', 'KANOR'), ('3522120', '3522', 'SUMBEREJO'), ('3522130', '3522', 'BALEN'), ('3522140', '3522', 'SUKOSEWU'), ('3522150', '3522', 'KAPAS'), (
        '3522160',
        '3522',
        'BOJONEGORO'
    ), ('3522170', '3522', 'TRUCUK'), ('3522180', '3522', 'DANDER'), ('3522190', '3522', 'NGASEM'), ('3522191', '3522', 'GAYAM'), ('3522200', '3522', 'KALITIDU'), ('3522210', '3522', 'MALO'), ('3522220', '3522', 'PURWOSARI'), ('3522230', '3522', 'PADANGAN'), ('3522240', '3522', 'KASIMAN'), ('3522241', '3522', 'KEDEWAN'), ('3523010', '3523', 'KENDURUAN'), ('3523020', '3523', 'BANGILAN'), ('3523030', '3523', 'SENORI'), ('3523040', '3523', 'SINGGAHAN'), ('3523050', '3523', 'MONTONG'), ('3523060', '3523', 'PARENGAN'), ('3523070', '3523', 'SOKO'), ('3523080', '3523', 'RENGEL'), ('3523081', '3523', 'GRABAGAN'), ('3523090', '3523', 'PLUMPANG'), ('3523100', '3523', 'WIDANG'), ('3523110', '3523', 'PALANG'), ('3523120', '3523', 'SEMANDING'), ('3523130', '3523', 'TUBAN'), ('3523140', '3523', 'JENU'), ('3523150', '3523', 'MERAKURAK'), ('3523160', '3523', 'KEREK'), (
        '3523170',
        '3523',
        'TAMBAKBOYO'
    ), ('3523180', '3523', 'JATIROGO'), ('3523190', '3523', 'BANCAR'), ('3524010', '3524', 'SUKORAME'), ('3524020', '3524', 'BLULUK'), ('3524030', '3524', 'NGIMBANG'), ('3524040', '3524', 'SAMBENG'), ('3524050', '3524', 'MANTUP'), (
        '3524060',
        '3524',
        'KEMBANGBAHU'
    ), ('3524070', '3524', 'SUGIO'), (
        '3524080',
        '3524',
        'KEDUNGPRING'
    ), ('3524090', '3524', 'MODO'), ('3524100', '3524', 'BABAT'), ('3524110', '3524', 'PUCUK'), ('3524120', '3524', 'SUKODADI'), ('3524130', '3524', 'LAMONGAN'), ('3524140', '3524', 'TIKUNG'), ('3524141', '3524', 'SARIREJO'), ('3524150', '3524', 'DEKET'), ('3524160', '3524', 'GLAGAH'), (
        '3524170',
        '3524',
        'KARANGBINANGUN'
    ), ('3524180', '3524', 'TURI'), (
        '3524190',
        '3524',
        'KALITENGAH'
    ), (
        '3524200',
        '3524',
        'KARANG GENENG'
    ), ('3524210', '3524', 'SEKARAN'), ('3524220', '3524', 'MADURAN'), ('3524230', '3524', 'LAREN'), ('3524240', '3524', 'SOLOKURO'), ('3524250', '3524', 'PACIRAN'), ('3524260', '3524', 'BRONDONG'), (
        '3525010',
        '3525',
        'WRINGINANOM'
    ), ('3525020', '3525', 'DRIYOREJO'), ('3525030', '3525', 'KEDAMEAN'), ('3525040', '3525', 'MENGANTI'), ('3525050', '3525', 'CERME'), ('3525060', '3525', 'BENJENG'), (
        '3525070',
        '3525',
        'BALONGPANGGANG'
    ), (
        '3525080',
        '3525',
        'DUDUKSAMPEYAN'
    ), ('3525090', '3525', 'KEBOMAS'), ('3525100', '3525', 'GRESIK'), ('3525110', '3525', 'MANYAR'), ('3525120', '3525', 'BUNGAH'), ('3525130', '3525', 'SIDAYU'), ('3525140', '3525', 'DUKUN'), ('3525150', '3525', 'PANCENG'), (
        '3525160',
        '3525',
        'UJUNGPANGKAH'
    ), (
        '3525170',
        '3525',
        'SANGKAPURA'
    ), ('3525180', '3525', 'TAMBAK'), ('3526010', '3526', 'KAMAL'), ('3526020', '3526', 'LABANG'), ('3526030', '3526', 'KWANYAR'), ('3526040', '3526', 'MODUNG'), ('3526050', '3526', 'BLEGA'), ('3526060', '3526', 'KONANG'), ('3526070', '3526', 'GALIS'), (
        '3526080',
        '3526',
        'TANAH MERAH'
    ), ('3526090', '3526', 'TRAGAH'), ('3526100', '3526', 'SOCAH'), ('3526110', '3526', 'BANGKALAN'), ('3526120', '3526', 'BURNEH'), ('3526130', '3526', 'AROSBAYA'), ('3526140', '3526', 'GEGER'), ('3526150', '3526', 'KOKOP'), (
        '3526160',
        '3526',
        'TANJUNGBUMI'
    ), ('3526170', '3526', 'SEPULU'), ('3526180', '3526', 'KLAMPIS'), ('3527010', '3527', 'SRESEH'), ('3527020', '3527', 'TORJUN'), (
        '3527021',
        '3527',
        'PANGARENGAN'
    ), ('3527030', '3527', 'SAMPANG'), ('3527040', '3527', 'CAMPLONG'), ('3527050', '3527', 'OMBEN'), (
        '3527060',
        '3527',
        'KEDUNGDUNG'
    ), ('3527070', '3527', 'JRENGIK'), (
        '3527080',
        '3527',
        'TAMBELANGAN'
    ), ('3527090', '3527', 'BANYUATES'), ('3527100', '3527', 'ROBATAL'), (
        '3527101',
        '3527',
        'KARANG PENANG'
    ), ('3527110', '3527', 'KETAPANG'), ('3527120', '3527', 'SOKOBANAH'), ('3528010', '3528', 'TLANAKAN'), ('3528020', '3528', 'PADEMAWU'), ('3528030', '3528', 'GALIS'), ('3528040', '3528', 'LARANGAN'), ('3528050', '3528', 'PAMEKASAN'), ('3528060', '3528', 'PROPPO'), ('3528070', '3528', 'PALENGAAN'), (
        '3528080',
        '3528',
        'PEGANTENAN'
    ), ('3528090', '3528', 'KADUR'), ('3528100', '3528', 'PAKONG'), ('3528110', '3528', 'WARU'), (
        '3528120',
        '3528',
        'BATU MARMAR'
    ), ('3528130', '3528', 'PASEAN'), ('3529010', '3529', 'PRAGAAN'), ('3529020', '3529', 'BLUTO'), ('3529030', '3529', 'SARONGGI'), (
        '3529040',
        '3529',
        'GILIGENTENG'
    ), ('3529050', '3529', 'TALANGO'), ('3529060', '3529', 'KALIANGET'), (
        '3529070',
        '3529',
        'KOTA SUMENEP'
    ), ('3529071', '3529', 'BATUAN'), ('3529080', '3529', 'LENTENG'), ('3529090', '3529', 'GANDING'), (
        '3529100',
        '3529',
        'GULUK GULUK'
    ), (
        '3529110',
        '3529',
        'PASONGSONGAN'
    ), ('3529120', '3529', 'AMBUNTEN'), ('3529130', '3529', 'RUBARU'), ('3529140', '3529', 'DASUK'), ('3529150', '3529', 'MANDING'), ('3529160', '3529', 'BATUPUTIH'), ('3529170', '3529', 'GAPURA'), (
        '3529180',
        '3529',
        'BATANG BATANG'
    ), ('3529190', '3529', 'DUNGKEK'), (
        '3529200',
        '3529',
        'NONGGUNONG'
    ), ('3529210', '3529', 'GAYAM'), ('3529220', '3529', 'RAAS'), ('3529230', '3529', 'SAPEKEN'), ('3529240', '3529', 'ARJASA'), ('3529241', '3529', 'KANGAYAN'), ('3529250', '3529', 'MASALEMBU'), ('3571010', '3571', 'MOJOROTO'), (
        '3571020',
        '3571',
        'KOTA KEDIRI'
    ), ('3571030', '3571', 'PESANTREN'), ('3572010', '3572', 'SUKOREJO'), (
        '3572020',
        '3572',
        'KEPANJENKIDUL'
    ), (
        '3572030',
        '3572',
        'SANANWETAN'
    ), (
        '3573010',
        '3573',
        'KEDUNGKANDANG'
    ), ('3573020', '3573', 'SUKUN'), ('3573030', '3573', 'KLOJEN'), ('3573040', '3573', 'BLIMBING'), ('3573050', '3573', 'LOWOKWARU'), (
        '3574010',
        '3574',
        'KADEMANGAN'
    ), ('3574011', '3574', 'KEDOPOK'), ('3574020', '3574', 'WONOASIH'), ('3574030', '3574', 'MAYANGAN'), ('3574031', '3574', 'KANIGARAN'), (
        '3575010',
        '3575',
        'GADINGREJO'
    ), ('3575020', '3575', 'PURWOREJO'), (
        '3575030',
        '3575',
        'BUGULKIDUL'
    ), (
        '3575031',
        '3575',
        'PANGGUNGREJO'
    ), (
        '3576010',
        '3576',
        'PRAJURIT KULON'
    ), ('3576020', '3576', 'MAGERSARI'), (
        '3577010',
        '3577',
        'MANGU HARJO'
    ), ('3577020', '3577', 'TAMAN'), (
        '3577030',
        '3577',
        'KARTOHARJO'
    ), (
        '3578010',
        '3578',
        'KARANG PILANG'
    ), ('3578020', '3578', 'JAMBANGAN'), ('3578030', '3578', 'GAYUNGAN'), ('3578040', '3578', 'WONOCOLO'), (
        '3578050',
        '3578',
        'TENGGILIS MEJOYO'
    ), (
        '3578060',
        '3578',
        'GUNUNG ANYAR'
    ), ('3578070', '3578', 'RUNGKUT'), ('3578080', '3578', 'SUKOLILO'), ('3578090', '3578', 'MULYOREJO'), ('3578100', '3578', 'GUBENG'), ('3578110', '3578', 'WONOKROMO'), (
        '3578120',
        '3578',
        'DUKUH PAKIS'
    ), ('3578130', '3578', 'WIYUNG'), (
        '3578140',
        '3578',
        'LAKARSANTRI'
    ), (
        '3578141',
        '3578',
        'SAMBIKEREP'
    ), ('3578150', '3578', 'TANDES'), (
        '3578160',
        '3578',
        'SUKO MANUNGGAL'
    ), ('3578170', '3578', 'SAWAHAN'), ('3578180', '3578', 'TEGALSARI'), ('3578190', '3578', 'GENTENG'), (
        '3578200',
        '3578',
        'TAMBAKSARI'
    ), ('3578210', '3578', 'KENJERAN'), ('3578211', '3578', 'BULAK'), ('3578220', '3578', 'SIMOKERTO'), ('3578230', '3578', 'SEMAMPIR'), (
        '3578240',
        '3578',
        'PABEAN CANTIAN'
    ), ('3578250', '3578', 'BUBUTAN'), (
        '3578260',
        '3578',
        'KREMBANGAN'
    ), ('3578270', '3578', 'ASEMROWO'), ('3578280', '3578', 'BENOWO'), ('3578281', '3578', 'PAKAL'), ('3579010', '3579', 'BATU'), ('3579020', '3579', 'JUNREJO'), ('3579030', '3579', 'BUMIAJI'), ('3601010', '3601', 'SUMUR'), ('3601020', '3601', 'CIMANGGU'), ('3601030', '3601', 'CIBALIUNG'), ('3601031', '3601', 'CIBITUNG'), ('3601040', '3601', 'CIKEUSIK'), ('3601050', '3601', 'CIGEULIS'), ('3601060', '3601', 'PANIMBANG'), ('3601061', '3601', 'SOBANG'), ('3601070', '3601', 'MUNJUL'), ('3601071', '3601', 'ANGSANA'), (
        '3601072',
        '3601',
        'SINDANGRESMI'
    ), ('3601080', '3601', 'PICUNG'), ('3601090', '3601', 'BOJONG'), ('3601100', '3601', 'SAKETI'), ('3601101', '3601', 'CISATA'), ('3601110', '3601', 'PAGELARAN'), ('3601111', '3601', 'PATIA'), ('3601112', '3601', 'SUKARESMI'), ('3601120', '3601', 'LABUAN'), ('3601121', '3601', 'CARITA'), ('3601130', '3601', 'JIPUT'), ('3601131', '3601', 'CIKEDAL'), ('3601140', '3601', 'MENES'), ('3601141', '3601', 'PULOSARI'), (
        '3601150',
        '3601',
        'MANDALAWANGI'
    ), ('3601160', '3601', 'CIMANUK'), ('3601161', '3601', 'CIPEUCANG'), ('3601170', '3601', 'BANJAR'), ('3601171', '3601', 'KADUHEJO'), ('3601172', '3601', 'MEKARJAYA'), (
        '3601180',
        '3601',
        'PANDEGLANG'
    ), ('3601181', '3601', 'MAJASARI'), ('3601190', '3601', 'CADASARI'), (
        '3601191',
        '3601',
        'KARANGTANJUNG'
    ), ('3601192', '3601', 'KORONCONG'), (
        '3602010',
        '3602',
        'MALINGPING'
    ), ('3602011', '3602', 'WANASALAM'), (
        '3602020',
        '3602',
        'PANGGARANGAN'
    ), ('3602021', '3602', 'CIHARA'), ('3602030', '3602', 'BAYAH'), ('3602031', '3602', 'CILOGRANG'), ('3602040', '3602', 'CIBEBER'), ('3602050', '3602', 'CIJAKU'), (
        '3602051',
        '3602',
        'CIGEMBLONG'
    ), (
        '3602060',
        '3602',
        'BANJARSARI'
    ), ('3602070', '3602', 'CILELES'), (
        '3602080',
        '3602',
        'GUNUNG KENCANA'
    ), (
        '3602090',
        '3602',
        'BOJONGMANIK'
    ), ('3602091', '3602', 'CIRINTEN'), (
        '3602100',
        '3602',
        'LEUWIDAMAR'
    ), ('3602110', '3602', 'MUNCANG'), ('3602111', '3602', 'SOBANG'), ('3602120', '3602', 'CIPANAS'), (
        '3602121',
        '3602',
        'LEBAKGEDONG'
    ), ('3602130', '3602', 'SAJIRA'), ('3602140', '3602', 'CIMARGA'), ('3602150', '3602', 'CIKULUR'), (
        '3602160',
        '3602',
        'WARUNGGUNUNG'
    ), ('3602170', '3602', 'CIBADAK'), (
        '3602180',
        '3602',
        'RANGKASBITUNG'
    ), (
        '3602181',
        '3602',
        'KALANGANYAR'
    ), ('3602190', '3602', 'MAJA'), (
        '3602191',
        '3602',
        'CURUGBITUNG'
    ), ('3603010', '3603', 'CISOKA'), ('3603011', '3603', 'SOLEAR'), ('3603020', '3603', 'TIGARAKSA'), ('3603021', '3603', 'JAMBE'), ('3603030', '3603', 'CIKUPA'), ('3603040', '3603', 'PANONGAN'), ('3603050', '3603', 'CURUG'), (
        '3603051',
        '3603',
        'KELAPA DUA'
    ), ('3603060', '3603', 'LEGOK'), (
        '3603070',
        '3603',
        'PAGEDANGAN'
    ), ('3603081', '3603', 'CISAUK'), (
        '3603120',
        '3603',
        'PASARKEMIS'
    ), (
        '3603121',
        '3603',
        'SINDANG JAYA'
    ), ('3603130', '3603', 'BALARAJA'), ('3603131', '3603', 'JAYANTI'), ('3603132', '3603', 'SUKAMULYA'), ('3603140', '3603', 'KRESEK'), (
        '3603141',
        '3603',
        'GUNUNG KALER'
    ), ('3603150', '3603', 'KRONJO'), (
        '3603151',
        '3603',
        'MEKAR BARU'
    ), ('3603160', '3603', 'MAUK'), ('3603161', '3603', 'KEMIRI'), ('3603162', '3603', 'SUKADIRI'), ('3603170', '3603', 'RAJEG'), ('3603180', '3603', 'SEPATAN'), (
        '3603181',
        '3603',
        'SEPATAN TIMUR'
    ), ('3603190', '3603', 'PAKUHAJI'), ('3603200', '3603', 'TELUKNAGA'), ('3603210', '3603', 'KOSAMBI'), ('3604010', '3604', 'CINANGKA'), (
        '3604020',
        '3604',
        'PADARINCANG'
    ), ('3604030', '3604', 'CIOMAS'), ('3604040', '3604', 'PABUARAN'), (
        '3604041',
        '3604',
        'GUNUNG SARI'
    ), ('3604050', '3604', 'BAROS'), ('3604060', '3604', 'PETIR'), (
        '3604061',
        '3604',
        'TUNJUNG TEJA'
    ), ('3604080', '3604', 'CIKEUSAL'), ('3604090', '3604', 'PAMARAYAN'), ('3604091', '3604', 'BANDUNG'), ('3604100', '3604', 'JAWILAN'), ('3604110', '3604', 'KOPO'), ('3604120', '3604', 'CIKANDE'), ('3604121', '3604', 'KIBIN'), ('3604130', '3604', 'KRAGILAN'), (
        '3604180',
        '3604',
        'WARINGINKURUNG'
    ), ('3604190', '3604', 'MANCAK'), ('3604200', '3604', 'ANYAR'), (
        '3604210',
        '3604',
        'BOJONEGARA'
    ), (
        '3604211',
        '3604',
        'PULO AMPEL'
    ), (
        '3604220',
        '3604',
        'KRAMATWATU'
    ), ('3604240', '3604', 'CIRUAS'), ('3604250', '3604', 'PONTANG'), (
        '3604251',
        '3604',
        'LEBAK WANGI'
    ), ('3604260', '3604', 'CARENANG'), ('3604261', '3604', 'BINUANG'), ('3604270', '3604', 'TIRTAYASA'), ('3604271', '3604', 'TANARA'), ('3671010', '3671', 'CILEDUG'), ('3671011', '3671', 'LARANGAN'), (
        '3671012',
        '3671',
        'KARANG TENGAH'
    ), ('3671020', '3671', 'CIPONDOH'), ('3671021', '3671', 'PINANG'), ('3671030', '3671', 'TANGERANG'), ('3671031', '3671', 'KARAWACI'), (
        '3671040',
        '3671',
        'JATI UWUNG'
    ), ('3671041', '3671', 'CIBODAS'), ('3671042', '3671', 'PERIUK'), ('3671050', '3671', 'BATUCEPER'), ('3671051', '3671', 'NEGLASARI'), ('3671060', '3671', 'BENDA'), ('3672010', '3672', 'CIWANDAN'), ('3672011', '3672', 'CITANGKIL'), ('3672020', '3672', 'PULOMERAK'), (
        '3672021',
        '3672',
        'PURWAKARTA'
    ), ('3672022', '3672', 'GROGOL'), ('3672030', '3672', 'CILEGON'), ('3672031', '3672', 'JOMBANG'), ('3672040', '3672', 'CIBEBER'), ('3673010', '3673', 'CURUG'), ('3673020', '3673', 'WALANTAKA'), (
        '3673030',
        '3673',
        'CIPOCOK JAYA'
    ), ('3673040', '3673', 'SERANG'), ('3673050', '3673', 'TAKTAKAN'), ('3673060', '3673', 'KASEMEN'), ('3674010', '3674', 'SETU'), ('3674020', '3674', 'SERPONG'), ('3674030', '3674', 'PAMULANG'), ('3674040', '3674', 'CIPUTAT'), (
        '3674050',
        '3674',
        'CIPUTAT TIMUR'
    ), (
        '3674060',
        '3674',
        'PONDOK AREN'
    ), (
        '3674070',
        '3674',
        'SERPONG UTARA'
    ), ('5101010', '5101', 'MELAYA'), ('5101020', '5101', 'NEGARA'), ('5101021', '5101', 'JEMBRANA'), ('5101030', '5101', 'MENDOYO'), ('5101040', '5101', 'PEKUTATAN'), ('5102010', '5102', 'SELEMADEG'), (
        '5102011',
        '5102',
        'SELEMADEG TIMUR'
    ), (
        '5102012',
        '5102',
        'SELEMADEG BARAT'
    ), (
        '5102020',
        '5102',
        'KERAMBITAN'
    ), ('5102030', '5102', 'TABANAN'), ('5102040', '5102', 'KEDIRI'), ('5102050', '5102', 'MARGA'), ('5102060', '5102', 'BATURITI'), ('5102070', '5102', 'PENEBEL'), ('5102080', '5102', 'PUPUAN'), (
        '5103010',
        '5103',
        'KUTA SELATAN'
    ), ('5103020', '5103', 'KUTA'), (
        '5103030',
        '5103',
        'KUTA UTARA'
    ), ('5103040', '5103', 'MENGWI'), (
        '5103050',
        '5103',
        'ABIANSEMAL'
    ), ('5103060', '5103', 'PETANG'), ('5104010', '5104', 'SUKAWATI'), ('5104020', '5104', 'BLAHBATUH'), ('5104030', '5104', 'GIANYAR'), (
        '5104040',
        '5104',
        'TAMPAKSIRING'
    ), ('5104050', '5104', 'UBUD'), (
        '5104060',
        '5104',
        'TEGALLALANG'
    ), ('5104070', '5104', 'PAYANGAN'), (
        '5105010',
        '5105',
        'NUSAPENIDA'
    ), (
        '5105020',
        '5105',
        'BANJARANGKAN'
    ), ('5105030', '5105', 'KLUNGKUNG'), ('5105040', '5105', 'DAWAN'), ('5106010', '5106', 'SUSUT'), ('5106020', '5106', 'BANGLI'), ('5106030', '5106', 'TEMBUKU'), ('5106040', '5106', 'KINTAMANI'), ('5107010', '5107', 'RENDANG'), ('5107020', '5107', 'SIDEMEN'), ('5107030', '5107', 'MANGGIS'), (
        '5107040',
        '5107',
        'KARANGASEM'
    ), ('5107050', '5107', 'ABANG'), ('5107060', '5107', 'BEBANDEM'), ('5107070', '5107', 'SELAT'), ('5107080', '5107', 'KUBU'), ('5108010', '5108', 'GEROKGAK'), ('5108020', '5108', 'SERIRIT'), ('5108030', '5108', 'BUSUNGBIU'), ('5108040', '5108', 'BANJAR'), ('5108050', '5108', 'SUKASADA'), ('5108060', '5108', 'BULELENG'), ('5108070', '5108', 'SAWAN'), (
        '5108080',
        '5108',
        'KUBUTAMBAHAN'
    ), ('5108090', '5108', 'TEJAKULA'), (
        '5171010',
        '5171',
        'DENPASAR SELATAN'
    ), (
        '5171020',
        '5171',
        'DENPASAR TIMUR'
    ), (
        '5171030',
        '5171',
        'DENPASAR BARAT'
    ), (
        '5171031',
        '5171',
        'DENPASAR UTARA'
    ), ('5201010', '5201', 'SEKOTONG'), ('5201011', '5201', 'LEMBAR'), ('5201020', '5201', 'GERUNG'), ('5201030', '5201', 'LABU API'), ('5201040', '5201', 'KEDIRI'), ('5201041', '5201', 'KURIPAN'), ('5201050', '5201', 'NARMADA'), ('5201051', '5201', 'LINGSAR'), (
        '5201060',
        '5201',
        'GUNUNG SARI'
    ), (
        '5201061',
        '5201',
        'BATU LAYAR'
    ), (
        '5202010',
        '5202',
        'PRAYA BARAT'
    ), (
        '5202011',
        '5202',
        'PRAYA BARAT DAYA'
    ), ('5202020', '5202', 'PUJUT'), (
        '5202030',
        '5202',
        'PRAYA TIMUR'
    ), ('5202040', '5202', 'JANAPRIA'), ('5202050', '5202', 'KOPANG'), ('5202060', '5202', 'PRAYA'), (
        '5202061',
        '5202',
        'PRAYA TENGAH'
    ), ('5202070', '5202', 'JONGGAT'), (
        '5202080',
        '5202',
        'PRINGGARATA'
    ), (
        '5202090',
        '5202',
        'BATUKLIANG'
    ), (
        '5202091',
        '5202',
        'BATUKLIANG UTARA'
    ), ('5203010', '5203', 'KERUAK'), ('5203011', '5203', 'JEROWARU'), ('5203020', '5203', 'SAKRA'), (
        '5203021',
        '5203',
        'SAKRA BARAT'
    ), (
        '5203022',
        '5203',
        'SAKRA TIMUR'
    ), ('5203030', '5203', 'TERARA'), (
        '5203031',
        '5203',
        'MONTONG GADING'
    ), ('5203040', '5203', 'SIKUR'), ('5203050', '5203', 'MASBAGIK'), (
        '5203051',
        '5203',
        'PRINGGASELA'
    ), ('5203060', '5203', 'SUKAMULIA'), ('5203061', '5203', 'SURALAGA'), ('5203070', '5203', 'SELONG'), (
        '5203071',
        '5203',
        'LABUHAN HAJI'
    ), (
        '5203080',
        '5203',
        'PRINGGABAYA'
    ), ('5203081', '5203', 'SUELA'), ('5203090', '5203', 'AIKMEL'), ('5203091', '5203', 'WANASABA'), ('5203092', '5203', 'SEMBALUN'), ('5203100', '5203', 'SAMBELIA'), ('5204020', '5204', 'LUNYUK'), (
        '5204021',
        '5204',
        'ORONG TELU'
    ), ('5204050', '5204', 'ALAS'), (
        '5204051',
        '5204',
        'ALAS BARAT'
    ), ('5204052', '5204', 'BUER'), ('5204061', '5204', 'UTAN'), ('5204062', '5204', 'RHEE'), (
        '5204070',
        '5204',
        'BATULANTEH'
    ), ('5204080', '5204', 'SUMBAWA'), (
        '5204081',
        '5204',
        'LABUHAN BADAS'
    ), (
        '5204082',
        '5204',
        'UNTER IWES'
    ), ('5204090', '5204', 'MOYOHILIR'), (
        '5204091',
        '5204',
        'MOYO UTARA'
    ), ('5204100', '5204', 'MOYOHULU'), ('5204110', '5204', 'ROPANG'), (
        '5204111',
        '5204',
        'LENANGGUAR'
    ), ('5204112', '5204', 'LANTUNG'), ('5204121', '5204', 'LAPE'), ('5204122', '5204', 'LOPOK'), ('5204130', '5204', 'PLAMPANG'), ('5204131', '5204', 'LABANGKA'), ('5204132', '5204', 'MARONGE'), ('5204140', '5204', 'EMPANG'), ('5204141', '5204', 'TARANO'), ('5205010', '5205', 'HU\'U'), ('5205011', '5205', 'PAJO'), ('5205020', '5205', 'DOMPU'), ('5205030', '5205', 'WOJA'), ('5205040', '5205', 'KILO'), ('5205050', '5205', 'KEMPO'), (
        '5205051',
        '5205',
        'MANGGALEWA'
    ), ('5205060', '5205', 'PEKAT'), ('5206010', '5206', 'MONTA'), ('5206011', '5206', 'PARADO'), ('5206020', '5206', 'BOLO'), (
        '5206021',
        '5206',
        'MADA PANGGA'
    ), ('5206030', '5206', 'WOHA'), ('5206040', '5206', 'BELO'), ('5206041', '5206', 'PALIBELO'), ('5206050', '5206', 'WAWO'), ('5206051', '5206', 'LANGGUDU'), ('5206052', '5206', 'LAMBITU'), ('5206060', '5206', 'SAPE'), ('5206061', '5206', 'LAMBU'), ('5206070', '5206', 'WERA'), ('5206071', '5206', 'AMBALAWI'), ('5206080', '5206', 'DONGGO'), ('5206081', '5206', 'SOROMANDI'), ('5206090', '5206', 'SANGGAR'), ('5206091', '5206', 'TAMBORA'), (
        '5207010',
        '5207',
        'SEKONGKANG'
    ), ('5207020', '5207', 'JEREWEH'), ('5207021', '5207', 'MALUK'), ('5207030', '5207', 'TALIWANG'), ('5207031', '5207', 'BRANG ENE'), ('5207040', '5207', 'BRANG REA'), ('5207050', '5207', 'SETELUK'), ('5207051', '5207', 'POTO TANO'), ('5208010', '5208', 'PEMENANG'), ('5208020', '5208', 'TANJUNG'), ('5208030', '5208', 'GANGGA'), ('5208040', '5208', 'KAYANGAN'), ('5208050', '5208', 'BAYAN'), ('5271010', '5271', 'AMPENAN'), ('5271011', '5271', 'SEKARBELA'), ('5271020', '5271', 'MATARAM'), (
        '5271021',
        '5271',
        'SELAPARANG'
    ), (
        '5271030',
        '5271',
        'CAKRANEGARA'
    ), ('5271031', '5271', 'SANDUBAYA'), (
        '5272010',
        '5272',
        'RASANAE BARAT'
    ), ('5272011', '5272', 'MPUNDA'), (
        '5272020',
        '5272',
        'RASANAE TIMUR'
    ), ('5272021', '5272', 'RABA'), ('5272030', '5272', 'ASAKOTA'), ('5301021', '5301', 'LAMBOYA'), ('5301022', '5301', 'WANOKAKA'), (
        '5301023',
        '5301',
        'LABOYA BARAT'
    ), ('5301050', '5301', 'LOLI'), (
        '5301060',
        '5301',
        'KOTA WAIKABUBAK'
    ), (
        '5301072',
        '5301',
        'TANA RIGHU'
    ), ('5302010', '5302', 'LEWA'), (
        '5302011',
        '5302',
        'NGGAHA ORIANGU'
    ), (
        '5302012',
        '5302',
        'LEWA TIDAHU'
    ), (
        '5302013',
        '5302',
        'KATALA HAMU LINGU'
    ), ('5302020', '5302', 'TABUNDUNG'), ('5302021', '5302', 'PINUPAHAR'), ('5302030', '5302', 'PABERIWAI'), ('5302031', '5302', 'KARERA'), (
        '5302032',
        '5302',
        'MATAWAI LA PAWU'
    ), (
        '5302033',
        '5302',
        'KAHAUNGU ETI'
    ), ('5302034', '5302', 'MAHU'), (
        '5302035',
        '5302',
        'NGADU NGALA'
    ), (
        '5302040',
        '5302',
        'PAHUNGA LODU'
    ), (
        '5302041',
        '5302',
        'WULA WAIJELU'
    ), ('5302051', '5302', 'RINDI'), ('5302052', '5302', 'UMALULU'), ('5302060', '5302', 'PANDAWAI'), (
        '5302061',
        '5302',
        'KAMBATA MAPAMBUHANG'
    ), (
        '5302070',
        '5302',
        'KOTA WAINGAPU'
    ), ('5302071', '5302', 'KAMBERA'), ('5302080', '5302', 'HAHARU'), ('5302081', '5302', 'KANATANG'), ('5303100', '5303', 'SEMAU'), (
        '5303101',
        '5303',
        'SEMAU SELATAN'
    ), (
        '5303110',
        '5303',
        'KUPANG BARAT'
    ), ('5303111', '5303', 'NEKAMESE'), (
        '5303120',
        '5303',
        'KUPANG TENGAH'
    ), ('5303121', '5303', 'TAEBENU'), ('5303130', '5303', 'AMARASI'), (
        '5303131',
        '5303',
        'AMARASI BARAT'
    ), (
        '5303132',
        '5303',
        'AMARASI SELATAN'
    ), (
        '5303133',
        '5303',
        'AMARASI TIMUR'
    ), (
        '5303140',
        '5303',
        'KUPANG TIMUR'
    ), (
        '5303141',
        '5303',
        'AMABI OEFETO TIMUR'
    ), (
        '5303142',
        '5303',
        'AMABI OEFETO'
    ), ('5303150', '5303', 'SULAMU'), ('5303160', '5303', 'FATULEU'), (
        '5303161',
        '5303',
        'FATULEU TENGAH'
    ), (
        '5303162',
        '5303',
        'FATULEU BARAT'
    ), ('5303170', '5303', 'TAKARI'), (
        '5303180',
        '5303',
        'AMFOANG SELATAN'
    ), (
        '5303181',
        '5303',
        'AMFOANG BARAT DAYA'
    ), (
        '5303182',
        '5303',
        'AMFOANG TENGAH'
    ), (
        '5303190',
        '5303',
        'AMFOANG UTARA'
    ), (
        '5303191',
        '5303',
        'AMFOANG BARAT LAUT'
    ), (
        '5303192',
        '5303',
        'AMFOANG TIMUR'
    ), (
        '5304010',
        '5304',
        'MOLLO UTARA'
    ), ('5304011', '5304', 'FATUMNASI'), ('5304012', '5304', 'TOBU'), ('5304013', '5304', 'NUNBENA'), (
        '5304020',
        '5304',
        'MOLLO SELATAN'
    ), ('5304021', '5304', 'POLEN'), (
        '5304022',
        '5304',
        'MOLLO BARAT'
    ), (
        '5304023',
        '5304',
        'MOLLO TENGAH'
    ), ('5304030', '5304', 'KOTA SOE'), (
        '5304040',
        '5304',
        'AMANUBAN BARAT'
    ), (
        '5304041',
        '5304',
        'BATU PUTIH'
    ), ('5304042', '5304', 'KUATNANA'), (
        '5304050',
        '5304',
        'AMANUBAN SELATAN'
    ), ('5304051', '5304', 'NOEBEBA'), ('5304060', '5304', 'KUAN FATU'), ('5304061', '5304', 'KUALIN'), (
        '5304070',
        '5304',
        'AMANUBAN TENGAH'
    ), ('5304071', '5304', 'KOLBANO'), ('5304072', '5304', 'OENINO'), (
        '5304080',
        '5304',
        'AMANUBAN TIMUR'
    ), ('5304081', '5304', 'FAUTMOLO'), ('5304082', '5304', 'FATUKOPA'), ('5304090', '5304', 'KIE'), ('5304091', '5304', 'KOT\'OLIN'), (
        '5304100',
        '5304',
        'AMANATUN SELATAN'
    ), ('5304101', '5304', 'BOKING'), ('5304102', '5304', 'NUNKOLO'), ('5304103', '5304', 'NOEBANA'), ('5304104', '5304', 'SANTIAN'), (
        '5304110',
        '5304',
        'AMANATUN UTARA'
    ), ('5304111', '5304', 'TOIANAS'), ('5304112', '5304', 'KOKBAUN'), (
        '5305010',
        '5305',
        'MIOMAFFO BARAT'
    ), (
        '5305011',
        '5305',
        'MIOMAFFO TENGAH'
    ), ('5305012', '5305', 'MUSI'), ('5305013', '5305', 'MUTIS'), (
        '5305020',
        '5305',
        'MIOMAFFO TIMUR'
    ), ('5305021', '5305', 'NOEMUTI'), (
        '5305022',
        '5305',
        'BIKOMI SELATAN'
    ), (
        '5305023',
        '5305',
        'BIKOMI TENGAH'
    ), (
        '5305024',
        '5305',
        'BIKOMI NILULAT'
    ), (
        '5305025',
        '5305',
        'BIKOMI UTARA'
    ), ('5305026', '5305', 'NAIBENU'),
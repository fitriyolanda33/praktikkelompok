-- phpMyAdmin SQL Dump
-- version 2.11.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 07, 2016 at 11:09 PM
-- Server version: 5.0.67
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbpkl`
--

-- --------------------------------------------------------

--
-- Table structure for table `acount`
--

CREATE TABLE IF NOT EXISTS `acount` (
  `id_acount` int(10) NOT NULL auto_increment,
  `nm_depan` varchar(25) collate latin1_general_ci NOT NULL,
  `nm_belakang` varchar(25) collate latin1_general_ci NOT NULL,
  `email` varchar(25) collate latin1_general_ci NOT NULL,
  `password` varchar(100) collate latin1_general_ci NOT NULL,
  `jk` varchar(15) collate latin1_general_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `foto` varchar(45) collate latin1_general_ci NOT NULL,
  `aktif` enum('1','0') collate latin1_general_ci NOT NULL default '0',
  PRIMARY KEY  (`id_acount`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=33 ;

--
-- Dumping data for table `acount`
--

INSERT INTO `acount` (`id_acount`, `nm_depan`, `nm_belakang`, `email`, `password`, `jk`, `tgl_lahir`, `foto`, `aktif`) VALUES
(31, 'Ragil', 'Ahmad', 'ragil@gmail.com', '12345', 'Laki-Laki', '2005-07-11', '', '0'),
(28, 'ulan', 'liak', 'ulan@gmail.com', '12345', 'Laki-Laki', '1994-06-14', 'f.png', '1'),
(30, 'asd', 'asd', 'suhudsatu@gmail.com', '12345', 'Laki-Laki', '2002-02-15', '', '0'),
(26, 'ranti', 'eka', 'ranti@gmail.com', '12345', 'Laki-Laki', '2003-09-15', '', '1'),
(32, 'Ferri', 'Achmad', 'vendry@gmail.com', '12345', 'Laki-Laki', '2003-09-18', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(10) NOT NULL auto_increment,
  `username` varchar(100) collate latin1_general_ci NOT NULL,
  `password` varchar(100) collate latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) collate latin1_general_ci NOT NULL,
  `email` varchar(100) collate latin1_general_ci NOT NULL,
  `no_telp` varchar(20) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=17 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `nama_lengkap`, `email`, `no_telp`) VALUES
(13, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'admin@gmail.com', '123123'),
(16, 'guru', '77e69c137812518e359196bb2f5e9bb9', 'Bambang Sutejo', 'bambang@gmail.com', '082170214495');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE IF NOT EXISTS `download` (
  `id_download` int(5) NOT NULL auto_increment,
  `judul` varchar(100) collate latin1_general_ci NOT NULL,
  `nama_file` varchar(100) collate latin1_general_ci NOT NULL,
  `format_file` varchar(20) collate latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `hits` int(3) NOT NULL,
  PRIMARY KEY  (`id_download`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id_download`, `judul`, `nama_file`, `format_file`, `tgl_posting`, `hits`) VALUES
(10, 'Pertemuan 2', 'surat.docx', 'DOC', '2015-10-25', 0),
(9, 'Pertemuan 1', '911.doc', 'DOC', '2015-10-25', 2);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `kd_kategori` varchar(8) NOT NULL,
  `nm_kategori` varchar(25) NOT NULL,
  `ket` varchar(255) NOT NULL,
  PRIMARY KEY  (`kd_kategori`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kd_kategori`, `nm_kategori`, `ket`) VALUES
('KT-0001', 'KIMIA', 'Disini Tempat Berdiskusi Tentang Pelajaran Kimia');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE IF NOT EXISTS `komentar` (
  `idkomen` int(11) NOT NULL auto_increment,
  `id_post` varchar(8) NOT NULL,
  `id_acount` varchar(45) NOT NULL,
  `isi` varchar(255) NOT NULL,
  `waktu_komen` datetime NOT NULL,
  PRIMARY KEY  (`idkomen`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`idkomen`, `id_post`, `id_acount`, `isi`, `waktu_komen`) VALUES
(1, '1', 'gebby@yahoo.com', 'tugas ini dikumpulkan minggu depan ttd guru yang mengajar', '2014-12-05 09:33:45'),
(2, '1', 'diga@yahoo.com', 'dibuat dimana???', '2014-12-05 09:34:54'),
(3, '1', 'gebby@yahoo.com', 'dikerjakan di double folio', '2014-12-05 09:35:48'),
(4, '1', 'nilla@yahoo.com', 'okee ^-^', '2014-12-05 09:36:40'),
(5, '1', 'gebby@yahoo.com', 'okeeee', '2014-12-10 10:18:40'),
(6, '1', 'ulan@gmail.com', 'Wakwaw', '2015-06-08 11:35:37'),
(7, '3', 'ulan@gmail.com', 'Apa tugas Teman', '2015-06-10 13:02:17'),
(8, '4', 'ulan@gmail.com', 'Apa ulangan besok', '2015-06-10 13:03:21'),
(9, '6', 'ulan@gmail.com', 'Ondeh ndk tau wk do kawan', '2015-10-28 12:54:14'),
(10, '6', 'ragil@gmail.com', 'sia yang tau???', '2015-10-28 12:55:26');

-- --------------------------------------------------------

--
-- Table structure for table `posting`
--

CREATE TABLE IF NOT EXISTS `posting` (
  `id_post` int(8) NOT NULL auto_increment,
  `kd_subk` varchar(8) NOT NULL,
  `id_acount` varchar(45) NOT NULL,
  `judul` varchar(45) NOT NULL,
  `isi` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `waktu_post` datetime NOT NULL,
  PRIMARY KEY  (`id_post`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `posting`
--

INSERT INTO `posting` (`id_post`, `kd_subk`, `id_acount`, `judul`, `isi`, `file`, `waktu_post`) VALUES
(1, 'SK-0001', 'gebby@yahoo.com', 'tugas biologi', 'tugas biologi pertemuan terakhir', 'tugas ipa ringkasan bab 6.docx', '2014-12-05 09:32:08'),
(2, 'SK-0007', 'vendry7@gmail.com', 'kaka', 'sari boco', 'download (1).jpg', '2015-04-02 13:42:06'),
(3, 'SK-0004', 'ulan@gmail.com', 'Tugas ', 'Seputar Tugas ', '', '2015-06-08 11:34:52'),
(4, 'SK-0005', 'ulan@gmail.com', 'Ulangan', 'Ulangan Geografi tanggal sekian', '', '2015-06-10 13:02:49'),
(5, 'SK-0005', 'ulan@gmail.com', 'Tugas Hari Senin ', 'Teman-teman Ada yang ngerti gak tugas kemaren', '', '2015-10-25 20:24:56'),
(6, 'SK-0004', 'ragil@gmail.com', 'Tugas Kimia Senin', 'Tau Tugas Kawan???', '', '2015-10-28 12:53:04');

-- --------------------------------------------------------

--
-- Table structure for table `sub_kategori`
--

CREATE TABLE IF NOT EXISTS `sub_kategori` (
  `kd_subk` varchar(8) NOT NULL,
  `nm_subk` varchar(25) NOT NULL,
  `kd_kategori` varchar(8) NOT NULL,
  `ket` varchar(255) NOT NULL,
  PRIMARY KEY  (`kd_subk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sub_kategori`
--

INSERT INTO `sub_kategori` (`kd_subk`, `nm_subk`, `kd_kategori`, `ket`) VALUES
('SK-0001', 'Biologi', 'KT-0002', 'Tempat Siswa Membahas dan Berdiskusi Tentang Pelajaran Biologi'),
('SK-0002', 'Fisika ', 'KT-0002', 'Tempat Siswa Membahas dan Berdiskusi Tentang Pelajaran Fisika'),
('SK-0003', 'Kimia', 'KT-0002', 'Tempat Siswa Membahas dan Berdiskusi Tentang Pelajaran Kimia'),
('SK-0004', 'Tugas Sekolah (PR)', 'KT-0001', 'Tempat Siswa Membahas dan Berdiskusi Tentang Tugas Sekolah'),
('SK-0005', 'Latihan', 'KT-0001', 'Tempat Siswa Membahas dan Berdiskusi Tentang Latihan Kimia'),
('SK-0006', 'Ujian', 'KT-0001', 'Tempat Siswa Membahas dan Berdiskusi Tentang Ujian Kimia'),
('SK-0007', 'Bahasa Indonesia', 'KT-0003', 'Tempat Siswa Membahas dan Berdiskusi Tentang Pelajaran Bahasa Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `tkelas`
--

CREATE TABLE IF NOT EXISTS `tkelas` (
  `IdKelas` varchar(30) NOT NULL,
  `Kelas` varchar(30) NOT NULL,
  PRIMARY KEY  (`IdKelas`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tkelas`
--

INSERT INTO `tkelas` (`IdKelas`, `Kelas`) VALUES
('1', 'VII'),
('2', 'VIII'),
('3', 'IX');

-- --------------------------------------------------------

--
-- Table structure for table `tmatpel`
--

CREATE TABLE IF NOT EXISTS `tmatpel` (
  `IdMatPel` varchar(50) NOT NULL,
  `Matpel` varchar(50) NOT NULL,
  `IdKelas` varchar(30) NOT NULL,
  PRIMARY KEY  (`IdMatPel`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tmatpel`
--

INSERT INTO `tmatpel` (`IdMatPel`, `Matpel`, `IdKelas`) VALUES
('125', 'KIMIA', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tnilai`
--

CREATE TABLE IF NOT EXISTS `tnilai` (
  `IdNilai` int(5) NOT NULL auto_increment,
  `tanggal_ujian` varchar(20) NOT NULL,
  `IdMatPel` varchar(50) NOT NULL,
  `Nilai` int(3) default NULL,
  `NIS` varchar(50) NOT NULL,
  PRIMARY KEY  (`IdNilai`),
  KEY `NIS` (`NIS`),
  KEY `IdMatPel` (`IdMatPel`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tnilai`
--

INSERT INTO `tnilai` (`IdNilai`, `tanggal_ujian`, `IdMatPel`, `Nilai`, `NIS`) VALUES
(1, '24-12-2010', '125', 15, '123123'),
(2, '01-05-2015', '125', 80, '123'),
(3, '14-05-2015', '125', 0, '645'),
(4, '29-05-2015', '127', 90, '123'),
(5, '01-06-2015', '127', 85, '12345565'),
(6, '25-10-2015', '125', 30, '11101152630213'),
(7, '28-10-2015', '125', 50, '12345');

-- --------------------------------------------------------

--
-- Table structure for table `tsoal`
--

CREATE TABLE IF NOT EXISTS `tsoal` (
  `IdSoal` int(11) NOT NULL auto_increment,
  `IdMatPel` varchar(50) NOT NULL,
  `nip` varchar(10) NOT NULL,
  `Pertanyaan` varchar(100) NOT NULL,
  `JawabanA` varchar(100) NOT NULL,
  `JawabanB` varchar(100) NOT NULL,
  `JawabanC` varchar(100) NOT NULL,
  `JawabanD` varchar(100) NOT NULL,
  `Jawaban` varchar(100) NOT NULL,
  PRIMARY KEY  (`IdSoal`),
  KEY `IdMatPel` (`IdMatPel`),
  KEY `nip` (`nip`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=125780614 ;

--
-- Dumping data for table `tsoal`
--

INSERT INTO `tsoal` (`IdSoal`, `IdMatPel`, `nip`, `Pertanyaan`, `JawabanA`, `JawabanB`, `JawabanC`, `JawabanD`, `Jawaban`) VALUES
(125780613, '125', '123', 'Uji biuret yang merupakan uji bagi zat yang mengandung ikatan peptida. Uji ini positif jika hasil pe', 'Warna merah bata', 'Warna biru', 'Warna ungu', 'Warna jingga', 'C'),
(125780611, '125', '', 'Oksidasi alkohol primer dengan aldehida menggunakan oksidator dan dalam lingkungan asam dapat mengha', 'Keton', 'Ester', 'Asam alkanoat', 'Eter', 'C'),
(125780612, '125', '123', 'PVC (Polivinil Klorida) merupakan polimer yang terbentuk melalui proses polimerisasi adisi dari mono', 'Kloroetana', 'Viniletana', 'Polietana', 'Polikloro etana', 'A'),
(125780609, '125', '123', 'Reaksi penggabungan inti-inti atom ringan menjadi inti atom yang lebih berat dinamakan reaksi...', 'Reaksi fusi', 'Reaksi subtitusi', 'Reaksi eliminasi', 'Reaksi adisi', 'A'),
(125780610, '125', '', 'Reaksi alkohol dengan asam karboksilat disebut dengan reaksi...', 'Saponifikasi', 'Hidrasi', 'Esterifikasi', 'Eliminasi', 'C'),
(125780606, '125', '123', 'Unsur periode ketiga yang bersifat metaloid adalah...', 'Natrium', 'Silika', 'Klorin', 'Magnesium', 'B'),
(125780607, '125', '123', 'Alasan yang tepat terhadap kemampuan unsur transisi periode keempat dapat membentuk senyawa dengan w', 'Karena unsur tersebut merupakan unsur logam', 'Karena subkulit 3d tidak terisi penuh', 'Karena ikatan unsur transisi dengan unsur lain sangat kuat', 'Tidak ada jawaban yang tepat', 'B'),
(125780608, '125', '123', 'Logam transisi yang keberadaannya paling melimpah di alam adalah...', 'Mangan', 'Nikel', 'Zink', 'Ferrum', 'D'),
(125780602, '125', '123', 'Sel yang membutuhkan energi listrik agar reaksi dapat berlangsung adalah...', 'Sel volta', 'Sel elektrolisis', 'Sel galvani', 'Sel elektrokimia', 'B'),
(125780603, '125', '123', 'Unsur gas mulia yang bersifat radioaktif sehingga sinar yang dipancarkan dapat digunakan dalam terap', 'Xenon', 'Neon', 'Argon', 'Radon', 'D'),
(125780604, '125', '123', 'Dibawah ini merupakan kegunaan senyawa yang mengandung unsur Klorin, kecuali...', 'Sebagai bahan pengawet kayu', 'Sebagai elektrolit pengisi baterai', 'Sebagai pupuk untuk tanaman', 'Sebagai bahan pemutih (bleaching agent)', 'A'),
(125780600, '125', '123', 'Tekanan pada saat uap dan komponen larutan yang tidak menguap dan berada dalam kesetimbangan disebut', 'Tekanan uap larutan', 'Tekanan uap jenuh larutan', 'Tekanan parsial', 'Tekanan osmotik', 'B'),
(125780601, '125', '123', 'Larutan yang mengandung 3 gram zat non elektrolit dalam 100 gram air (Kf air = 1,86Â°C/m) membeku pa', '200', '95', '300', '100', 'A');

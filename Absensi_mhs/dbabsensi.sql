-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Mar 2023 pada 11.33
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbabsensi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nrp` varchar(20) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `jurusan` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_hp` varchar(25) NOT NULL,
  `asal_sma` varchar(255) NOT NULL,
  `matkul` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nrp`, `nama`, `jenis_kelamin`, `jurusan`, `email`, `alamat`, `no_hp`, `asal_sma`, `matkul`) VALUES
('3122500001', 'Ade Hafis Rabbani', 'Laki-laki', 'Teknik Informatika', 'hafis@it.student.pens.ac.id', 'Perum Cerme Indah RT 11 RW 03', '085830556606', 'SMKN 1 Cerme', 'Basis Data'),
('3122500002', 'Nadila Aulya Salsabila Mirdianti', 'Perempuan', 'Teknik Informatika', 'nadila@it.student.pens.ac.id', 'Jalan Jambu, RT 03 RW 03, Desa Dawuhan, Kecamatan Purwoasri', '082335995643', 'SMAN 1 Patianrowo', 'Workshop Pemrograman Web'),
('3122500003', 'Denti Widayati', 'Perempuan', 'Teknik Informatika', 'denti@it.student.pens.ac.id', 'Wedoro utara 37Rt03, Rw02, Waru', '089523304487', 'SMAN 3 Taruna Angkasa Madiun ', 'Algoritma Struktur Data'),
('3122500004', 'Zahrotul Hidayah', 'Perempuan', 'Teknik Informatika', 'zahro@it.student.pens.ac.id', 'Dusun Kandeyan RT 01 RW 01, Lamongan', '085790342735', 'SMAN 1 Babat', 'Agama Islam'),
('3122500005', 'Gede Hari Yoga Nanda', 'Laki-laki', 'Teknik Informatika', 'gede@it.student.pens.ac.id', 'Gebang kidul', '083135368657', 'SMAN 1 Boyolangu', 'Agama Islam'),
('3122500006', 'Virgiawan Ivada Raksi Sekar Wibana', 'Laki-laki', 'Teknik Informatika', 'ivada@it.student.pens.ac.id', 'Jalan Rondokuning No.205 RT 1 RW 6 Bangilan', '085236113808', 'SMA Jatirogo', 'Kewarganegaraan'),
('3122500007', 'Irfan Akmal Ardianto', 'Laki-laki', 'Teknik Informatika', 'irfan@it.student.pens.ac.id', 'Lr. Sekolah Gg. Arwana No.1158 RT.020 RW 009, Palembang', '081274340490', 'SMA Plus Negeri 17 Palembang', 'Algoritma Struktur Data'),
('3122500008', 'Arsyita Devanaya Arianto', 'Perempuan', 'Teknik Informatika', 'naya@it.student.pens.ac.id', 'Jl. Gunung Anyar Tengah Sekolahan', '085171620044', 'SMAN 17 Surabaya', 'Matematika'),
('3122500009', 'Mirta Chadhirotin Nachlah', 'Perempuan', 'Teknik Informatika', 'mirtha@it.student.pens.ac.id', 'Jl. Kyai Sahlan X/2 Manyarejo, Gresik', '089603443665', 'SMAN 1 Manyar', 'Algoritma Struktur Data'),
('3122500010', 'Leody Zelvon Herliansa', 'Laki-laki', 'Teknik Informatika', 'leody@it.student.pens.ac.id', 'Perum Dinas PT. Semen gresik', '081331571335', 'SMAN 2 Tuban', 'Workshop Pemrograman Web'),
('3122500011', 'Ali Azhar Pradana Braveian', 'Laki-laki', 'Teknik Informatika', 'ali@it.student.pens.ac.id', 'Dk. Sumberrejo makmur', '0895360141561', 'SMAN 12 Surabaya', 'Agama Islam'),
('3122500012', 'Awal Raya', 'Laki-laki', 'Teknik Informatika', 'awal@it.student.pens.ac.id', 'Jl. Gebang Wetan, Gebang Putih', '081359200521', 'SMAN 1 Kediri', 'Matematika'),
('3122500013', 'Mahendra Khibrah Rabbani Sayyid', 'Laki-laki', 'Teknik Informatika', 'khibrah@it.student.pens.ac.id', 'Jl. PATUA NO. 10, Surabaya', '08817934297', 'SMAN 5 Surabaya', 'Algoritma Struktur Data'),
('3122500014', 'Muhammad Iqbal Rahmatullah', 'Laki-laki', 'Teknik Informatika', 'iqbal@it.student.pens.ac.id', 'Perum Jalagriya JII/9, Candi, Sidoarjo', '081231685459', 'SMA Muhammadiyah 3 Tulangan', 'Algoritma Struktur Data'),
('3122500015', 'Mayada Azizah', 'Perempuan', 'Teknik Informatika', 'mayada@it.student.pens.ac.id', 'Dusun Lumbang Krajan, Pasuruan', '081359049794', 'SMAN 1 Pandaan', 'Algoritma Struktur Data'),
('3122500016', 'Gandi Rukmaning Ayu', 'Perempuan', 'Teknik Informatika', 'gandi@it.student.pens.ac.id', 'Jalan Mahakam 153, Lumajang', '083857864688', 'SMAN 3 Lumajang', 'Workshop Pemrograman Web'),
('3122500017', 'Handaru Dwiki Yuntara', 'Laki-laki', 'Teknik Informatika', 'yuntara@it.student.pens.ac.id', 'Jl. Gebang wetan', '083848439262', 'SMAN 1 Trenggalek', 'Algoritma Struktur Data'),
('3122500018', 'Adam Rasyid Nurmuhammad', 'Laki-laki', 'Teknik Informatika', 'adam@it.student.pens.ac.id', 'Jl.Mojo Kidul 65 C, Surabaya', '08996086746', 'SMAN 1 Surabaya', 'Workshop Pemrograman Web'),
('3122500019', 'Akmal Zidani Fikri', 'Laki-laki', 'Teknik Informatika', 'akmal@it.student.pens.ac.id', 'Jl. Kalibutuh 132 A Surabaya ', '087703133145', 'SMAN 2 Surabaya', 'Algoritma Struktur Data'),
('3122500020', 'Adinda Zahra Qariru', 'Perempuan', 'Teknik Informatika', 'adinda@it.student.pens.ac.id', 'Jl. Atletik Perum Green View Regency Blok G 1', '081297901397', 'SMA Thursina IIBS', 'Agama Islam'),
('3122500021', 'Mohammad Ilham Ramadani', 'Laki-laki', 'Teknik Informatika', 'ilham@it.student.pens.ac.id', 'Jl. Wonocolo Gg 2, Surabaya', '089699609041', 'SMAN 10 Surabaya', 'Algoritma Struktur Data'),
('3122500022', 'Virginia Faiqoh', 'Perempuan', 'Teknik Informatika', 'virginia@it.student.pens.ac.id', 'Jl. Klotok, Sidoarjo', '089515888419', 'SMKN 2 Buduran ', 'Workshop Pemrograman Web'),
('3122500023', 'Masyitha Fahra Nabila', 'Perempuan', 'Teknik Informatika', 'masyita@it.student.pens.ac.id', 'Jl. Langsep No. 14, Perum. Perbon Permai', '081216756463', 'SMAN 1 Tuban', 'Basis Data'),
('3122500024', 'Muhamad Reza Muktasib', 'Laki-laki', 'Teknik Informatika', 'reza@it.student.pens.ac.id', 'Jl Tanjung Pinang No 6, Surabaya', '085649915406', 'SMAN 8 Surabaya', 'Algoritma Struktur Data'),
('3122500025', 'Adira Callysta', 'Perempuan', 'Teknik Informatika', 'adira@it.student.pens.ac.id', 'Jl. Jambu No.3 Magersari', '085716039986', 'SMAN 3 Mojokerto', 'Workshop Pemrograman Web'),
('3122500026', 'Shofira Izza Nurrohmah', 'Perempuan', 'Teknik Informatika', 'sofira@it.student.pens.ac.id', 'Dusun Gambyak, Ngawi', '085608295984', 'MAN 2 Madiun', 'Algoritma Struktur Data'),
('3122500027', 'Rifqi Rayita Dhiyaulhaq', 'Laki-laki', 'Teknik Informatika', 'rifki@it.student.pens.ac.id', 'Jl. Brigjen Katamso, Ponorogo', '085746335238', 'SMAN 1 PONOROGO ', 'Workshop Pemrograman Web'),
('3122500028', 'Bagus Bimo Prakoso', 'Laki-laki', 'Teknik Informatika', 'bimo@it.student.pens.ac.id', 'Dusun. Krajan, Tulungagung', '085645494404', 'SMAN 1 Boyolangu', 'Agama Islam'),
('3122500030', 'Muhammad Syahrul Ramadhan ', 'Laki-laki', 'Teknik Informatika', 'sahrul@it.student.pens.ac.id', 'Perumahan Tanggulangin', '08986367472', 'SMA Muhammadiyah 3 Tulangan ', 'Algoritma Struktur Data');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD UNIQUE KEY `nrp` (`nrp`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

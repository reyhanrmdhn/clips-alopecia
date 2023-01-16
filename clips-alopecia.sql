-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Jan 2023 pada 12.33
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clips-alopecia`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_gejala`
--

CREATE TABLE `tbl_gejala` (
  `kode_gejala` varchar(128) NOT NULL,
  `gejala` text NOT NULL,
  `pertanyaan_gejala` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_gejala`
--

INSERT INTO `tbl_gejala` (`kode_gejala`, `gejala`, `pertanyaan_gejala`) VALUES
('G1', 'Bentuk kebotakan berupa bulatan', ''),
('G10', 'Mengidap penyakit lain yang bisa menyebabkan kebotakan', 'Apakah kamu mengidap penyakit lain yang dapat menyebabkan kebotakan? (contoh :autoimun)'),
('G11', 'Menjalani kemoterapi', ''),
('G12', 'Sehabis melahirkan', ''),
('G13', 'Kerontokan rambut karena sering mencabut rambut sendiri', 'Apakah kerontokan yang kamu derita terjadi karena sering mencabut rambut sendiri?'),
('G14', 'Sering melakukan catok rambut', ''),
('G15', 'Sering merubah gaya rambut', 'Apakah kamu sering merubah gaya rambut?'),
('G16', 'Memiliki penyakit autoimun', 'Apakah kamu mengidap penyakit autoimun?'),
('G17', 'Kebotakan terjadi pada puncak kepala', 'Apakah kebotakan terjadi pada puncak kepala?'),
('G18', 'Kebotakan terjadi hanya pada satu tempat', 'Apakah kebotakan yang kamu derita hanya terjadi pada satu tempat?'),
('G19', 'Kebotakan terjadi pada beberapa tempat', 'Apakah kebotakan yang kamu derita terjadi pada beberapa tempat?'),
('G2', 'Mengalami kerontokan rambut', ''),
('G20', 'Kebotakan terjadi pada dahi', 'Apakah kebotakan yang kamu derita terjadi pada dahi?'),
('G21', 'Kebotakan menyebar dari puncak kepala kearah luar', 'Apakah kebotakan menyebar dari puncak kepala kearah luar?'),
('G22', 'Mengalami kerontokan pada alis', 'Apakah kamu mengalami kebotakan pada alis?'),
('G23', 'Mengalami kerontokan rambut pada tubuh', 'Apakah kamu mengalami kerontokan pada rambut tubuh?'),
('G3', 'Mengalami kerontokan rambut akut', ''),
('G4', 'Memiliki koreng pada area kulit kepala', ''),
('G5', 'Mengalami radang pada area kepala', ''),
('G6', 'Mengalami kerontokan rambut permanen', 'Apakah kamu mengalami kebotakan permanen?'),
('G7', 'Memiliki bekas luka atau jaringan parut pada area kulit kepala', 'Apakah kamu memiliki bekas luka atau jaringan parut pada area kulit kepala?'),
('G8', 'Kebotakan menyebar secara sentrifugal', 'Mengalami kebotakan yang menyebar secara sentrifugal?'),
('G9', 'Anggota keluarga mengalami kebotakan yang sama', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_penyakit`
--

CREATE TABLE `tbl_penyakit` (
  `no_kode` varchar(11) NOT NULL,
  `kode_penyakit` varchar(128) NOT NULL,
  `nama_penyakit` varchar(128) NOT NULL,
  `ringkasan_penyakit` text NOT NULL,
  `ringkasan2_penyakit` text NOT NULL,
  `ringkasan3_penyakit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_penyakit`
--

INSERT INTO `tbl_penyakit` (`no_kode`, `kode_penyakit`, `nama_penyakit`, `ringkasan_penyakit`, `ringkasan2_penyakit`, `ringkasan3_penyakit`) VALUES
('P2', 'alopeciaAreata', 'Alopecia Areata', 'Alopecia areata adalah kebotakan disebabkan oleh penyakit autoimun. Pada alopecia areata, sistem imun menyerang dan merusak akar rambut sehingga menyebabkan kerontokan dan kebotakan. Kulit kepala yang botak dengan bentuk pitak adalah salah satu tanda dari kondisi ini.', 'Alopecia Areata dapat diobati dengan cara memperbaiki kondisi autoimun. Metode pengobatan yang dapat dicoba adalah dengan meminum obat immunospresan, baik topikal maupun sistemik atau oral. Berikan pula supplement untuk menutrisi rambut atau akar rambut.', 'Alopecia Areata adalah penyakit autoimun, sehingga penyakit ini tidak dapat dicegah, namun bisa dikurangi tingkat keparahannya, dengan memberikan treatment yang tepat secepatnya, sehingga tidak menjalar lebih jauh. Perlu dilakukan pemeriksaan lebih lanjut untuk mendetekski apakah terdapat penyakit autoimun yang lain.'),
('P10', 'alopeciaUniversalis', 'Alopecia Universalis', 'Penyakit yang kamu derita adalah Alopecia Areata Universalis atau yang biasa disebut Alopecia Universalis. Penyakit ini adalah salah satu jenis penyakit autoimun yang memiliki gejala unik, dimana penderitanya mengalami kebotakan rambut diseluruh tubuh, termasuk alis, bulu mata dan bulu hidung. Penyakit ini bisa menjangkit balita hingga dewasa, dan dapat aktif secara mendadak. ', 'Sejauh ini belum ada metode pengobatan yang 100% efektif untuk penyakit Alopecia Universalis. Beberapa metode pengobatan yang dapat dicoba oleh penderitanya adalah dengan meminum obat immunospresan untuk memperbaiki kondisi autoimun, baik secara topikal maupun sistemik dan oral. Selain itu, suplemen untuk menutrisi rambut dapat membantu.', 'Sama dengan Alopecia Areata, Alopecia Universalis tidak dapat dicegah, namun dapat dikurangi tingkat keparahannya. Dengan memberikan perawatan yang tepat dan cepat, Alopecia Universalis dapat dicegah agar tidak menyebar lebih parah pada penderitanya. Penderita Alopecia Universalis juga disarankan untuk melakukan pemeriksaan lebih lanjut, agar daapt dideteksi apakah mereka menderita penyakit autoimun yang lain.'),
('P4', 'anagenEffluvium', 'Anagen Effluvium', 'Anagen Effluvium sendiri adalah penyakit yang menyebabkan penderitanya mengalami kerontokan rambut secara abnormal, yang terjadi pada fase anagen dalam siklus pertumbuhan rambut. Umumnya Anagen Effluvium disebabkan oleh obat yang digunakan untuk mengobati kanker, ataupun karena paparan terhadap senyawa kimia tertentu. Rambut baru yang tumbuh setelah sembuh dari jenis Alopecia ini dapat berubah secara warna maupun tekstur.', 'Untuk mengobati Anagen Effluvium, penderita harus menjauh dari sumber penyebabnya. Penyebab utama seperti obat kanker harus diselesaikan hingga pasien pulih dari kanker, kemudian rambut akan tumbuh secara alami. Jika penyebabnya adalah paparan terhadap senyawa kimia tertentu, maka penderita harus mengeleminasi atau meminimalisir paparan terhadap senyawa kimia tersebut. Suplemen untuk penutrisi penumbuh rambut serta obat topikal juga dapat dikonsumsi untuk mempercepat pertumbuhan rambut.', 'Penderita harus mencegah kontak dengan sumber mutasi siklus pertumbuhan rambut. Penderita juga harus memperbaiki nutrisi serta kondisi umum mereka. Metode pencegahan lain yang dapat dicoba adalah dengan mengobati kerontokkan dengan jenis terapi yang tepat.'),
('P1', 'androgeneticAlopecia', 'Androgenetic Alopecia', 'Jenis Alopecia ini bersifat hereditary atau keturunan. Penyakit ini perbedaan yang tergantung pada jenis kelamin penderitanya, dimana setiap gender memiliki pola kerontokan rambut yang berbeda. Androgenetic Alopecia umumnya terjadi pada pria usia 35 tahun keatas', 'Terdapat beberapa metode yang dapat dicoba untuk mengobati Androgenetic Alopecia, seperti menggunakan treatment hormonal, finasteride dan minoxidil, baik secara topikal maupun oles. Perawatan dengan memberikan stem cell dan suplemen untuk memberikan nutrisi pada rambut. Tujuan utama dari obat-obat ini adalah untuk mencegah progresivitas kerontokan rambut pada penderitanya', 'Merupakan penyakit yang bersifat diturunkan, dan karena kondisi genetika, maka jenis Alopecia susah untuk dicegah. Hal yang bisa dilakukan adalah memperbaiki pola hidup, dengan tidak merokok dan tidak tidur larut malam. Hal - hal tersebut bila dilakukan akan mengurangi resiko terjangkit Androgenetic Alopecia.'),
('P9', 'centralCentrifugalCicatricialAlopecia', 'Central Centrifugal Cicatricial Alopecia', 'Penyakit ini menyebabkan penderitanya mengalami kehilangan rambut secara permanen, dimulai dari puncak kepala yang kemudian menyebar secara sentrifugal kearah luar kepala. Umumnya terjadi pada ras Afrika-Amerika.', 'Metode pengobatan yang dapat dilakukan oleh penderita Central Centrifugal Cicatricial Alopecia adalah dengan memberikan suplemen untuk penutrisi rambut serta obat topikal. Selain itu, penderita dapat mengkonsumsi steroid dengan dosis tertentu. Steroid yang digunakan dapat berupa steroid topikal atau steroid intralesional.', 'Central Centrifugal Cicatricial Alopecia ini umumnya dialami oleh wanita dari ras Afrika-Amerika yang menggunakan atribut rambut, dimana atribut rambut tersebut memberikan beban berlebihan pada akar rambut. Oleh karena itu, metode pencegahan yang paling tepat adalah dengan tidak menggunakan aksesoris rambut yang berlebihan.'),
('P7', 'chronicCutaneousLupus', 'Chronic Cutaneous Lupus Erythematosus', 'Penyakit ini adalah cabang dari penyakit lupus, dimana penderitanya mengalami gejala kerontokan rambut pada area kepala, disertai dengan dasar kotor pada kulit kepala dengan adanya krusta. Gejala dari penyakit ini dapat menyebar pada area wajah hingga tubuh.', 'Metode pengobatan yang dapat dicoba oleh pasien Chronic Cutaneous Lupus Erythematosus adalah dengan meminum obat immunospresan yang berfungsi untuk memperbaiki kondisi autoimun SLE. Obat immunospresan tersebut dapat berupa topikal, maupun sistemik dan oral. Berikan pula suplemen untuk menutrisi pertumbuhan rambut dan memperkuat akar rambut. Obat oles steroid seperti fluocinolone acetonide atau hydrocortisone btyrate dapat meredakan inflamasi dan mengurangi pembengkakkan.', 'Guna mencegah kambuhnya gejala, penderita dianjurkan untuk menghindari sinar matahari langsung, serta menggunakan krim tabir surya. Krim tabir surya yang digunakan harus memiliki tingkat SPF minimal 30. Gunakan tabir surya secara berkala setiap 4 jam. Penderita juga dapat melakukan pengobatan ataupun perawatan sistemil lupus yang diderita.'),
('P8', 'Lichen Planopilaris', 'lichenPlanopilaris', 'Lichen Planopilaris atau Lichen Planus adalah peradangan di kulit, kuku, atau selaput lendir (mukosa), disebkan oleh kelainan pada sistem kekebalan tubuh. Lichen Planopilaris tidak menular layaknya infeksi, tetapi bisa dialami oleh semua orang dari segala golongan usia.', 'Beberapa metode pengobatan yang dapat dilakukan untuk menangani Lichen Planopilaris antara lain menggunakan obat antihistamin (baik oral atau oles), menggunakan obat kortikosteroid dalam bentuk salep, tablet atau injeksi pemberian obat immunosupresan dalam bentuk krim atau salep, serta fototerapi atau sinar ultraviolet.', 'Lichen Planopilaris dapat dicegah dengan mengurangi atau menghentikan kebiasaan merokok dan mengkonsumsi minuman beralkohol, serta menghindari konsumsi makanan yang terlalu asin, asam atau pedas.'),
('P3', 'telogenEffluvium', 'Telogen Effluvium', 'Telogen Effluvium adalah kerontokan rambut yang terjadi secara mendadak, namun tidak permanen. Umumnya, penyakit ini diderita oleh wanita sehat usia 30 hingga 60 tahun setelah melewati proses melahirkan. Dapat juga terjadi karena stress. Kondisi ini biasanya terjadi ketika ada perubahan jumlah folikel rambut yang bertugas untuk menumbuhkan rambut.', 'Karena Telogen Effluvium merupakan jenis Alopecia yang umum terjadi, metode pengobatan yang dapat dilakukan pun mudah dan tidak beresiko. Penanganan yang tepat adalah dengan memberikan suplemen untuk menutrisi rambut, serta dengan memberikan obat topikal. Selain itu, penderita dapat menggunakan obat oles minoksidil untuk merangsang pertumbuhan rambut, sembari menjaga pola makan dengan diet yang seimbang.', 'Untuk mencegah agar Telogen Effluvium tidak kambuh, penderitanya dapat mengkonsumsi obat yang berfungsi untuk menstabilkan hormon. Agar penyakit tidak kambuh dengan tingkat yang lebih parah, pola makan serta gaya hidup yang sehat harus dipertahankan oleh penderitanya. Metode lain yang dapat dilakukan juga adalah dengan menjaga kesehatan mental, serta menjaga kondisi pikiran agar tidak stress.'),
('P6', 'tractionAlopecia', 'Traction Alopecia', 'Traction Alopecia adalah jenis Alopecia yang disebabkan oleh penarikan berulang kali. Salah satu contoh penarikan berkali - kali adalah saat terlalu sering melakukan catok rambut serta berbagai tindakan untuk merubah model atau gaya rambut. Traction Alopecia juga bisa disebabkan oleh penggunaan ekstensi rambut yang berlebihan.', 'Pengobatan utama untuk Traction Alopecia yaitu dengan mengubah gaya rambut menjadi gaya rambut yang tidak membebani akar rambut. Potong rambut jika rambut sudah sangat panjang. Konsumsi suplemen yang berguna untuk menutrisi pertumbuhan rambut serta obat topikal juga disarankan bagi penderita Traction Alopecia. Gunakan steroid topikal untuk menurunkan radang pada area kulit kepala.', 'Terdapat beberapa metode yang dapat dilakukan untuk mencegah terjadinya Traction Alopecia, seperti tidak terlalu sering menggunakan gaya rambut yang membebani akar rambut. Hindari menguncir rambut menggunakan karet, karena bahan tersebut dapat mencabut rambut dari akarnya. Hindari pula penggunaan ekstensi rambut secara berlebihan, serta melakukan tindakan pada rambut, seperti blow ataupun catok rambut. Tidak menggunakan rol rambut saat tidur juga dapat membantu mencegah Traction Alopecia.'),
('P5', 'trichotillomania', 'Trichotillomania', 'Penyakit ini merupakan jenis alopecia yang disebabkan oleh gangguan kejiwaan, dimana penderitanya memiliki tendensi untuk mencabut rambut mereka sendiri. Penyakit ini biasanya disebabkan oleh tekanan eksternal ataupun stress. Trichotillomania biasanya disertai dengan gangguan mental lainnya, seperti OCD, gangguan kecemasan (anxiety) ataupun depresi.', 'Metode pengobatan yang paling efektif adalah dengan memperbaiki kondisi kejiwaan atau psikis penderitanya. Selain itu, suplemen untuk menumbuhkan dan menutrisi rambut disertai dengan obat topikal dapat memperbaiki kondisi Alopecia penderitanya. Pengobatan dapat disertai dengan obat-obatan antidepresan untuk meredakan gejala trichotillomania.', 'Cara mencegah trichotillomania adalah dengan mengalihkan perhatian penderitanya pada hal lain, seperti meremas stress ball ataupun benda sejenisnya, memainkan alat seperti fidget spinner, mandi ataupun berendam dalam suasana yang menenangkan untuk meredakan rasa gelisah atau kecemasan yang muncul, serta mempelajari teknik pernapasan untuk menenangkan dan meredakan gejala.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_rule`
--

CREATE TABLE `tbl_rule` (
  `id_rule` int(11) NOT NULL,
  `kode_penyakit` varchar(128) NOT NULL,
  `rule` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `tbl_rule`
--

INSERT INTO `tbl_rule` (`id_rule`, `kode_penyakit`, `rule`) VALUES
(1, 'androgeneticAlopecia', 'G9-G17-G18-G20'),
(2, 'alopeciaAreata', 'G2-G1-G10-G18-G19'),
(3, 'telogenEffluvium', 'G2-G3-G12-G18-G19'),
(4, 'anagenEffluvium', 'G2-G11-G19'),
(5, 'trichotillomania', 'G10-G13-G19'),
(6, 'tractionAlopecia', 'G2-G14-G15'),
(7, 'chronicCutaneousLupus', 'G2-G4-G10-G7-G17'),
(8, 'lichenPlanopilaris', 'G2-G3-G5-G6'),
(9, 'centralCentrifugalCicatricialAlopecia', 'G2-G3-G7-G8-G17-G21'),
(10, 'alopeciaUniversalis', 'G2-G3-G10-G16-G19-G22-G23');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_gejala`
--
ALTER TABLE `tbl_gejala`
  ADD PRIMARY KEY (`kode_gejala`);

--
-- Indeks untuk tabel `tbl_penyakit`
--
ALTER TABLE `tbl_penyakit`
  ADD PRIMARY KEY (`kode_penyakit`);

--
-- Indeks untuk tabel `tbl_rule`
--
ALTER TABLE `tbl_rule`
  ADD PRIMARY KEY (`id_rule`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

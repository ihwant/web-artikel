-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2022 at 08:54 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portalinfo`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `kode_artikel` char(10) NOT NULL,
  `judul_artikel` varchar(100) NOT NULL,
  `isi_artikel` text NOT NULL,
  `gambar` varchar(100) NOT NULL DEFAULT 'gambar_default.png',
  `tanggal` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `id_pengguna` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `kode_artikel`, `judul_artikel`, `isi_artikel`, `gambar`, `tanggal`, `status`, `id_kategori`, `id_pengguna`) VALUES
(1, 'A0001', 'Manfaat Konsumsi Buah', 'Buah-buahan adalah salah satu sumber serat makanan yang sangat baik bagi tubuh. Manfaat makan buah setiap hari dapat membantu menjaga kesehatan usus, mencegah sembelit, dan masalah pencernaan lainnya. Kebiasaan makan asupan tinggi serat juga dapat mengurangi risiko kanker usus.\r\n\r\nBuah-buahan merupakan asupan vitamin dan mineral yang banyak. Beberapa nutrisi penting dari buah-buahan diantaranya folat, vitamin A, B, B1, B6, C, dan kalium. Kandungan vitamin dan mineral pada buah-buahan berbeda-beda. Namun, semuanya sama-sama memberikan nutrisi yang baik bagi tubuh. Sebagian vitamin dan mineral yang terkandung dalam buah juga mengandung antioksidan. Zat ini penting untuk melawan radikal bebas dan menjaga sistem daya tahan tubuh agar tetap prima.', 'buah1.jpg', '2022-05-09 06:16:15', 1, 2, 0),
(2, 'A0002', 'Manfaat Konsumsi Sayur', 'Manfaat pertama dari makan sayur adalah memberikan jumlah serat yang tepat untuk tubuh. Serat adalah komponen penting untuk menjaga saluran pencernaan tetap sehat dan mencegah konstipasi atau gangguan pencernaan lainnya. Selain itu, sayur juga bisa menurunkan risiko terkena kanker usus besar. Jadi, jangan pernah lupa untuk menjaga kondisi pencernaan agar tetap bekerja maksimal dengan memakan sayur secara teratur.\r\nStres menjadi salah satu kondisi yang lazim muncul untuk menyerang tubuh dan pikiran kita. Untungnya, sayur mampu meredakan stres secara alami karena membantu memperbaiki suasana hati. Mengonsumsi sayur secara konsisten juga membuat badan kamu tetap sehat dan segar. Jadi, sudah terlihat kalau sayur tidak hanya menyehatkan fisik, tetapi juga pikiran dan jiwa.', 'sayur.png', '2022-05-09 06:15:57', 1, 2, 0),
(10, 'A0010', 'Cloudflare dan Apple membuat Protokol DNS Baru untuk Lindungi Data dari ISP', 'Cloudflare mengusulkan standar DNS baru yang dikembangkannya bersama Apple. Standar protokol DNS yang baru ini dirancang untuk membantu menutup blind spot dalam privasi di internet. Protokol tersebut disebut Oblivious DNS over HTTPS (ODoH). Fungsinya? untuk membantu menganonimkan informasi yang dikirim bahkan sebelum Anda masuk ke suatu situs web. Apakah hal ini akan membantu Anda secara keseluruhan? Untuk memahaminya, kami akan memaparkan cara kerja DNS â€œbiasaâ€, baru kemudian akan terlihat seperti apa DNS yang diusulkan oleh Cloudflare.\r\n\r\nPada dasarnya, DNS (Domain Name Server) memungkinkan kita mengakses sebuah website tanpa harus mengingat Alamat IP (Internet Protocol Address) setiap situs yang ingin kita kunjungi. Meskipun kita manusia dapat dengan mudah memahami nama-nama seperti â€œteknologi.infoâ€œ, atau â€œwikipedia.comâ€, komputer menggunakan alamat IP (misalnya 207.240.222.1) untuk mengarahkan permintaan di internet. Di sinilah DNS masuk: saat Anda mengetik nama situs web, komputer Anda meminta server DNS (biasanya dijalankan oleh ISP Anda) untuk menerjemahkan nama seperti â€œteknologi.infoâ€ ke IP situs yang sebenarnya. Server DNS akan mengirimkannya kembali, dan komputer Anda dapat membuka situs tersebut. Secara singkat seperti inilah proses kerja DNS. Masih panjang sebenarnya alur prosesnya, tapi sudah cukup untuk nanti kita memahami ODoH.\r\n\r\nJika Anda termasuk yang â€œmengkhawatirkanâ€ tentang privasi data, Anda mungkin menyadari bahwa sistem ini memungkinkan siapa pun yang menjalankan server DNS mengetahui (dan melacak) setiap situs web yang Anda kunjungi. Biasanya, ISP (Internet Service Provider) Anda yang menjalankan server itu, dan tidak ada yang bisa â€œmenghentikanâ€ mereka untuk â€œmenjualâ€ data tersebut kepada pengiklan. Ini adalah masalah yang ingin diselesaikan oleh Cloudflare dengan hadirnya ODoH. Protokol bekerja dengan memanfaatkan server proxy antara Anda dan server DNS. Proxy bertindak sebagai perantara, mengirim permintaan Anda ke server DNS, dan mengirimkan tanggapannya kembali tanpa pernah memberi tahu â€œsiapaâ€ yang meminta data.\r\n\r\nNamun, menggunakan server proxy hanya akan â€œmenambahâ€ masalah seperti:\r\njika server proxy memiliki request/permintaan, dan juga tahu bahwa Anda lah yang meminta, apa yang membuat server proxy tidak membuat log sendiri dari situs yang Anda kunjungi? Di situlah bagian â€œDNS over HTTPSâ€ (DoH) dari ODoH mengambil peran. DoH adalah standar yang telah ada selama ini, meskipun tidak terlalu luas. DoH menggunakan enkripsi untuk memastikan bahwa hanya server DNS yang dapat membaca permintaan Anda. Dengan menggunakan DoH, lalu merutekannya melalui server proxy, Anda akan mendapatkan server proxy yang tidak bisa membaca request/permintaan, dan server DNS tentu saja tidak akan dapat mengetahui dari mana asalnya.', 'dns.PNG', '2022-05-09 06:21:31', 1, 1, 0),
(11, 'A0011', 'Google Hadirkan Opsi Baru Menghapus Informasi Pribadi dari Hasil Pencarian', 'Melalui sebuah tulisan dari Blog Google, Michelle Chang selaku Global Policy Lead for Search Google menuliskan bahwa privasi dan keamanan online harus berjalan beriringan. Sehingga, ketika Anda berselancar di ranah maya, sangat penting kiranya untuk memiliki kontrol kendali atas bagaimana informasi sensitif seperti data identitas pribadi Anda bisa muncul di sebuah pencarian.\r\n\r\n\r\nDi Penelusuran milik Google, Google telah memiliki serangkaian kebijakan yang memungkinkan orang meminta penghapusan konten tertentu dari Hasil Penelusuran (Search Result), dengan fokus pada konten yang sensitif atau sangat pribadi -yang jika bersifat publik- dapat menyebabkan kerugian bagi orang yang tersebar datanya. Hanya saja, internet saat ini sudah cukup pesat perkembanganya dengan informasi yang bisa saja muncul di tempat yang tidak pernah kita duga, sehingga Google juga merasa harus memperbaharui kebijakan dan perlindungan terhadap pengguna.\r\n\r\nSelama bertahun-tahun, pengguna bisa meminta penghapusan informasi sensitif tertentu yang dapat diidentifikasi secara pribadi dari Penelusuran â€” misalnya, dalam kasus doxxing, atau informasi seperti nomor rekening bank atau kartu kredit yang dapat digunakan untuk penipuan keuangan.\r\n\r\nDi bawah perluasan kebijakan baru ini, user kini dapat meminta penghapusan jenis informasi tambahan saat mereka menemukannya di hasil Penelusuran, termasuk informasi kontak pribadi seperti nomor telepon, alamat email, atau alamat rumah. Kebijakan ini juga memungkinkan penghapusan informasi tambahan yang dapat menimbulkan risiko pencurian identitas, seperti data kredensial login saat muncul di hasil Penelusuran.\r\nKetersediaan informasi kontak pribadi secara online dapat mengganggu â€” dan dapat disalahgunakan oleh orang-orang yang tidak bertanggung jawab. Para pengguna rupa-rupanya sudah memberi feedback kepada Google bahwa mereka -dalam beberapa kasus- menginginkan kendali untuk menghapus jenis informasi ini dari Penelusuran.\r\n\r\nSaat Google menerima permintaan penghapusan, Google akan mengevaluasi semua konten di halaman web untuk memastikan bahwa Google tidak membatasi ketersediaan informasi lain yang berguna secara luas, misalnya dalam artikel berita. Google juga akan mengevaluasi apakah konten tersebut muncul sebagai bagian dari catatan publik di situs pemerintah atau sumber resmi. Dalam kasus seperti ini, Google tidak akan melakukan penghapusan.\r\n\r\nPenting untuk diingat bahwa menghapus konten dari Google Penelusuran tidak akan menghapusnya dari internet, itulah sebabnya Anda bisa menghubungi situs terkait yang memuat informasi Anda secara langsung untuk menghapusnya.\r\n\r\nGoogle selalu mencari cara baru untuk memastikan kebijakan dan perlindungan mereka mencerminkan kebutuhan pengguna yang terus berkembang dan mudah digunakan. Misalnya, selain pembaruan ini, Google baru-baru ini meluncurkan kebijakan baru untuk memungkinkan orang di bawah usia 18 tahun (atau orang tua atau wali mereka) untuk meminta penghapusan gambar mereka dari hasil Google Penelusuran (Google Image).\r\n\r\nMemaksimalkan akses ke informasi sambil memberikan kendali kepada pengguna informasi sensitif mereka yang dapat diidentifikasi secara pribadi merupakan kebijakan yang bagus menurut kami. Kami percaya pembaruan ini merupakan langkah penting untuk mencapai perlindungan keamanan dan privasi yang lebih baik.', 'google.PNG', '2022-05-09 06:17:52', 1, 1, 0),
(12, 'A0012', 'Microsoft, Salesforce, dan Oracle sedang Membuat Riwayat Vaksinasi Digital', 'Perusahaan kesehatan dan teknologi yang meliputi Microsoft, Salesforce, dan Oracle sedang mengerjakan digital records untuk data vaksinasi agar memudahkan orang mengakses riwayat vaksinasi COVID-19 secara digital. Saat orang-orang mulai mendapatkan vaksinasi COVID-19, mereka mungkin perlu membuktikan bahwa mereka telah divaksinasi sehingga mereka dapat kembali bekerja, sekolah, atau bepergian. Nah, memiliki catatan vaksinasi digital yang mudah diakses dapat membantu untuk itu. Kolaborasi tersebut menyebut dirinya sebagai Vaccination Credential Initiative (VCI).\r\n\r\nJika Anda tidak ingin menggunakan ponsel cerdas, Anda dapat menerima dokumen dengan bentuk QR-Code yang berisi kredensial serupa yang dapat diverifikasi. VCI mengatakan sedang bekerja untuk membuat kredensial menggunakan spesifikasi SMART Health Cards, yang dirancang untuk memungkinkan orang menyimpan hasil imunisasi atau lab dalam dompet digital. (Informasi lebih lanjut tentang spesifikasi juga tersedia di GitHub.).\r\n\r\nNamun siaran pers VCI tidak memberikan garis waktu kapan organisasi yang mengelola vaksin COVID-19 dapat membuat catatan ini, jadi tidak jelas kapan Anda benar-benar dapat menambahkannya ke dompet digital, terlebih untuk Indonesia di mana data masih simpang siur. Rencana mereka tahap awa memang baru untuk Amerika Serikat.\r\nRintangan lain yang mungkin bisa membuat pusat kesehatan lain â€œenganâ€ berpartisipasi, karena beberapa penyedia mungkin memiliki lebih banyak sumber daya atau data untuk memasukkan kredensial ini ke dalam proses vaksinasi daripada yang lain. Dan ada juga pertanyaan etis tentang apakah seseorang yang dapat membuktikan bahwa mereka divaksinasi seharusnya memiliki lebih banyak kebebasan daripada seseorang yang tidak.', 'digital.PNG', '2022-05-09 06:22:01', 1, 1, 0),
(20, 'A0020', 'Pantai', 'Pantai atau pesisir adalah sebuah bentuk geografis yang terdiri dari pasir, dan terdapat di daerah pesisir laut. Daerah pantai menjadi batas antara daratan dan perairan laut. Kawasan pantai berbeda dengan pesisir walaupun antara keduanya saling berkaitan. Panjang garis pantai ini diukur mengeliling seluruh pantai yang merupakan daerah teritorial suatu negara.\r\n\r\nMenurut koreksi PBB tahun 2008, Indonesia merupakan negara dengan garis Pantai terpanjang keempat di dunia setelah Amerika Serikat (USA), Kanada dan Rusia. Panjang garis pantai Indonesia tercatat sebesar 95.181 km.', 'pantai.jpg', '2022-05-09 06:14:22', 1, 3, 0),
(21, 'A0021', 'Pegunungan', 'Pegunungan atau disebut juga Banjaran dan Barisan merupakan suatu area geografis berupa rentetan dari beberapa gunung-gunung atau bukit yang terkait secara geologis yang membentuk suatu deret atau bentangan. Pegunungan yang dibatasi oleh dataran tinggi atau terpisah dari pegunungan lain dengan melewati punggung gunung atau lembah. Di Bumi, pegunungan biasanya terbentuk dari pergerakan lempeng tektonik melalui sederetan proses. Pegunungan juga ditemukan di Planet selain Bumi di Tata Surya dan merupakan bentang alam yang umum dijumpai pada Planet kebumian. 10 Gunung tertinggi di Indonesia, diantaranya: Gunung Puncak Jaya, Gunung Puncak Mandala, Gunung Puncak Trikora, Gunung Ngga Pilimsit, Gunung Kerinci, Gunung Rinjani, Gunung Semeru, Gunung Sanggar, Gunung Latimojong, Gunung Slamet.', 'gunung.jpg', '2022-05-09 06:13:30', 1, 3, 0),
(3, 'A0003', 'Manfaat Berolahraga', 'Olahraga teratur bisa membantu kamu mengontrol berat badan. Berat badan akan meningkat ketika kalori yang dikonsumsi lebih banyak ketimbang yang dibakar. Penting untuk menyeimbangkan kalori dengan cara melakukan olahraga teratur, seperti lari, berenang, yoga, atau sekadar membersihkan rumah.\r\nSeiring bertambahnya usia, penting untuk melindungi tulang, persendian, dan otot yang berfungsi menopang dan membantu tubuh bergerak. Menjaga kesehatan tulang, sendi, dan otot tetap sehat dapat membuat kamu tetap aktif. Nah, olahraga aerobik dapat menguatkan otot dan tulang, sehingga memperlambat hilangnya kepadatan tulang yang terjadi seiring bertambahnya usia.', 'olahraga.jpg', '2022-05-09 06:15:39', 1, 2, 0),
(13, 'A0013', 'WhatsApp di Empat Perangkat Sekaligus Bahkan tanpa Telepon Aktif?', 'Sampai saat ini, menggunakan web WhatsApp (WA) di komputer desktop atau PC ataupun perangkat lainnya memerlukan ponsel yang aktif atau terhubung ke internet. Namun, dalam pengujian versi beta baru-baru ini, WhatsApp mengatakan bahwa nantinya, bisa terhubung ke beberapa perangkat bahkan tanpa memerlukan ponsel dalam prosesnya. Melalui posting blog mereka hari ini menjelaskan lebih lanjut tentang apa yang telah mereka ujicoba dan bagaimana keamanan enskripsi WA tetap bisa terpenuhi sekaligus pengumuman peluncuran uji beta publik terbatas untuk kemampuan multi-perangkat WhatsApp yang baru.\r\n&lt;br&gt;\r\n&lt;br&gt;\r\nSelama bertahun-tahun, sudah banyak orang-orang yang meminta pengembang WA untuk menghadirkan fitur multi-device yang memungkinkan orang menggunakan WhatsApp di perangkat lain tanpa memerlukan koneksi smartphone.\r\n\r\n\r\n \r\nDengan kemampuan baru ini, para pengguna WA nantinya bisa menggunakan WhatsApp di ponsel dan empat perangkat nonponsel lainnya secara bersamaan â€” bahkan jika semisal ponsel Anda mati. Setiap perangkat pendamping akan terhubung ke WhatsApp Anda secara independen dan tetap mempertahankan tingkat privasi dan keamanan yang sama melalui enkripsi end-to-end yang sama dengan sebelum multi-perangkat diterapkan. Pihak WhatsApp telah mengembangkan teknologi baru untuk mempertahankan enkripsi keamanan sambil tetap mengelola sinkronisasi data Anda â€” seperti nama kontak, arsip obrolan, pesan berbintang, dan banyak lagi â€” di seluruh perangkat yang digunakan.\r\n \r\nPihak WA juga memberikan gambaran bagaimana alur keamanan versi terdahulu dengan versi multi-device ini:\r\n\r\nWhatsApp Multi Device versi Lama\r\nVersi yang sekarang digunakan\r\nWhatsApp Multi Device versi Baru\r\nVersi BETA yang saat ini sedang diujicoba agar bisa multi device.\r\nSeperti yang coba dijelaskan oleh gambar yang membandingkan sistem lama dan baru (di atas), sebelumnya, ponsel pengguna mengelola â€œkunciâ€ yang menentukan identitas dan kemampuan mereka untuk mengenkripsi/mendekripsi pesan. Sinkronisasi terenkripsi juga berlaku untuk riwayat pesan, nama kontak, dan data lainnya, dengan kunci dipertahankan pada perangkat individual. Nah, di versi beta yang memiliki kemampuan multi-perangkat baru, perangkat pendamping nonponsel lainnya dapat terhubung ke WhatsApp secara independen sambil tetap mempertahankan tingkat privasi dan keamanan yang sama.\r\n\r\nVersi beta ini hanya akan diberikan kepada sekelompok penguji terbatas yang sudah berada dalam program beta WhatsApp, tim WA juga mengatakan sedang berupaya meningkatkan kinerja dan menambahkan lebih banyak fitur.', 'WApp.PNG', '2022-05-09 11:03:55', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `gambar_kategori` varchar(200) NOT NULL DEFAULT 'gambar_default.png'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `gambar_kategori`) VALUES
(1, 'Teknologi', 'teknologi.png'),
(2, 'Kesehatan', 'kesehatan.png'),
(3, 'Wisata', 'wisata.png');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(11) NOT NULL,
  `id_artikel` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `isi_komentar` text NOT NULL,
  `status_komentar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_artikel`, `nama`, `email`, `isi_komentar`, `status_komentar`) VALUES
(8, 121, 'user', 'user@x.x', 'Informasi yang sangat berguna', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `kode_pengguna` char(9) NOT NULL,
  `nama_pengguna` varchar(50) NOT NULL,
  `email` varchar(35) NOT NULL,
  `no_telp` char(14) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `kode_pengguna`, `nama_pengguna`, `email`, `no_telp`, `username`, `password`, `status`) VALUES
(21, 'U020', 'sa', 'sa@sa.com', '08111111', 'sa', '21232f297a57a5a743894a0e4a801fc3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE `profil` (
  `nama_website` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profil`
--

INSERT INTO `profil` (`nama_website`) VALUES
('Portal Informasi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`),
  ADD UNIQUE KEY `judul_artikel` (`judul_artikel`),
  ADD KEY `id_kategori` (`id_kategori`),
  ADD KEY `id_artikel` (`id_artikel`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

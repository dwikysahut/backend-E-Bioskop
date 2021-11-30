-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 30 Nov 2021 pada 12.16
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-bioskop`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `movie`
--

CREATE TABLE `movie` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `date` varchar(50) NOT NULL,
  `rating` varchar(5) NOT NULL,
  `genre` varchar(100) NOT NULL,
  `image` varchar(500) NOT NULL,
  `showtime` varchar(50) NOT NULL DEFAULT 'TBD',
  `stock` int(10) NOT NULL DEFAULT 20
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `movie`
--

INSERT INTO `movie` (`id`, `title`, `description`, `date`, `rating`, `genre`, `image`, `showtime`, `stock`) VALUES
(1, 'Mortal Kombat', 'Washed-up MMA fighter Cole Young, unaware of his heritage, and hunted by Emperor Shang Tsung', '20-07-2021', '8.8', 'Action, Fantasy, Adventure', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/nkayOAUBUu4mMvyNf9iHSUiPjF1.jpg', '20:00 - 21:00', 22),
(2, 'Tom Clancys Without Remorse', 'An elite Navy SEAL uncovers an international conspiracy while seeking justice for the murder of his pregnant wife', '21-08-2021', '8.1', 'Action, Adventure, Thriller', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/oRFMWkP33VY1tpPMRqK4oDmZunI.jpg', '13:00 - 15:00', 20),
(3, 'Avengers: Age of Ultrons', 'Saat Tony Stark (Robert Downey Jr) memutuskan untuk membuat program perdamaian. Tony menciptakan robot cerdas Ultron untuk menggantikan peran Iron Man, Captain America, Thor, The Incredible Hulk, Black Widow dan Hawkeye. Tapi Ternyata Ultron mampu berfikir dan memiliki niat jahat yang sangat mengerikan. Ultron kini menjadi musuh bersama tim Avengers. Tidak mudah bagi tim untuk membasmi Ultron disaat mereka terancam tercerai berai karena berbeda pendapat. Tim Avengers harus bisa menghentikan rencana jahat Ultron dan membangun kekuatan bersama untuk menyelamatkan bumi dari kehancuran.\r\n', '13-07-2021', '7.3', 'Adventure, Action,Fiction', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/dsZUpJ6ml5dQpI7vBdscveCv4aB.jpg', '19.00 - 20.15', 9),
(4, 'Avengers: Infinity War', 'Karena Avengers dan sekutunya terus melindungi dunia dari ancaman yang terlalu besar untuk ditangani oleh seorang pahlawan, bahaya baru telah muncul dari bayangan kosmik: Thanos. Seorang lalim penghujatan intergalaksi, tujuannya adalah untuk mengumpulkan semua enam Batu Infinity, artefak kekuatan yang tak terbayangkan, dan menggunakannya untuk menimbulkan kehendak memutar pada semua realitas. Segala sesuatu yang telah diperjuangkan oleh Avengers telah berkembang hingga saat ini - nasib Bumi dan keberadaannya sendiri tidak pernah lebih pasti.', '09-07-2021', '8.3', 'Adventure, Action,Fiction', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/7WsyChQLEftFiDOVTGkv3hFpyyt.jpg', '21:00 - 23:10', 15),
(15, 'Start-Up (2020)', 'Young entrepreneurs aspiring to launch virtual dreams into reality compete for success and love in the cutthroat world of Korea\'s high-tech industry.\r\n', '29-07-2021', '8.4', 'ini edit fillmku', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hxJQ3A2wtreuWDnVBbzzXI3YlOE.jpg', '14:15 - 15:15', 9),
(32, 'F9 (2021)', 'Dominic Toretto and his crew battle the most skilled assassin and high-performance driver they\'ve ever encountered: his forsaken brother.\r\n', '10-07-2021', '8.2', 'Action, Adventure, Crime', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/TX1T3c3CDBN0y8iDNvlQbtiA5Z.jpg', '21:00 - 23:00', 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_ticket`
--

CREATE TABLE `order_ticket` (
  `id` int(11) NOT NULL,
  `id_movie` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `jumlah` varchar(3) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `kode` varchar(15) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `order_ticket`
--

INSERT INTO `order_ticket` (`id`, `id_movie`, `id_user`, `jumlah`, `status`, `kode`, `date_added`, `date_updated`) VALUES
(1, 4, 9, '2', 2, 'ASDASD12312AD2Y', '2021-06-22 19:11:20', '2021-07-04 00:06:37'),
(2, 1, 9, '1', 2, 'AFD456FDWER34R5', '2021-06-22 20:21:50', '2021-07-04 00:16:56'),
(3, 2, 2, '3', 2, 'AAAAASSSSS22233', '2021-06-22 21:19:08', '2021-07-04 00:17:15'),
(25, 15, 9, '3', 2, 'kEjtavv191U8FJ5', '2021-06-27 20:45:59', '2021-07-04 00:17:25'),
(26, 15, 9, '3', 2, 'HuD3yhMFg1h3Q11', '2021-06-27 20:47:50', '2021-07-04 00:17:29'),
(27, 4, 9, '3', 2, 'D336mSsdHNw60kl', '2021-06-27 20:50:41', '2021-07-04 00:17:50'),
(28, 4, 12, '3', 2, '4RlcNFcdnRlc8W5', '2021-06-27 23:39:19', '2021-07-04 00:17:54'),
(46, 1, 9, '1', 2, '5pMjUg8kfkVsEX5', '2021-07-08 17:55:10', '2021-07-08 17:55:46'),
(83, 3, 29, '3', 2, 'vvmRROu5X0lK0Cm', '2021-07-08 22:05:29', '2021-07-08 22:12:25'),
(84, 3, 31, '3', 2, 'gRRNt1yA0wMtVpR', '2021-07-09 16:34:21', '2021-07-09 16:35:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id` int(3) NOT NULL,
  `name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `status`
--

INSERT INTO `status` (`id`, `status`) VALUES
(1, 'Waiting'),
(2, 'Complete');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `role` int(3) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `nama`, `gender`, `role`) VALUES
(1, 'dwiky', 'ac2e14f2653d79ea7d33bcc28cbe437c', 'dwikysahut@gmail.com', 'dwiky s', 'Laki-Laki', 1),
(2, 'aku', 'aku', 'aku@gmail.com', 'aku nih', 'Laki-laki', 2),
(6, 'dwikysh', '222', 'dwikysahut@gmail.comm', '22222', 'Laki-laki', 2),
(7, 'dwikys', '53b3921fdacff46b202e8a5abeed8258', 'dwikysahut@gmail.csz', 'sjsjs', 'Laki-laki', 2),
(8, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@gmail.com', 'admin', 'Laki-laki', 1),
(9, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'user@gmail.com', 'user 1', 'Laki-laki', 2),
(10, 'user2', '7e58d63b60197ceb55a1c487989a3720', 'user2@gmail.com', 'user 2', 'Laki-laki', 2),
(11, 'user3', '92877af70a45fd6a2ed7fe81e1236b78', 'user3@gmail.com', 'user 3 dwiky', 'Laki-laki', 2),
(12, 'user6', 'affec3b64cf90492377a8114c86fc093', 'user6@gmail.com', 'user 6', 'Laki-laki', 2),
(13, 'user10', '990d67a9f94696b1abe2dccf06900322', 'user10@gmail.com', 'user 10 nih', 'Laki-laki', 2),
(14, 'user11', '03aa1a0b0375b0461c1b8f35b234e67a', 'user11@gmail.com', 'user 11', 'Laki-laki', 2),
(16, 'user12', '03aa1a0b0375b0461c1b8f35b234e67a', 'user12@gmail.com', 'user 12', 'Laki-laki', 2),
(28, 'hutama', 'd1728fe8cc0fc6e7049953542afe8377', 'hutama@gmail.com', 'hutama tama', 'Laki-laki', 2),
(29, 'aku2', 'eb9e538e56ed4ca9070962b00ff5b67b', 'aku2@gmail.com', 'aku nih', 'Laki-laki', 2),
(30, 'kkk', 'c08ac56ae1145566f2ce54cbbea35fa3', 'kkk@gmail.com', 'kkkkkk', 'Laki-laki', 2),
(31, 'user111', '0c534ed3fff7d2bfd32ee19d84644e3f', 'user111@gmail.com', 'user 111 nih', 'Laki-laki', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `order_ticket`
--
ALTER TABLE `order_ticket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_movie` (`id_movie`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `status` (`status`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `order_ticket`
--
ALTER TABLE `order_ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT untuk tabel `role`
--
ALTER TABLE `role`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `order_ticket`
--
ALTER TABLE `order_ticket`
  ADD CONSTRAINT `order_ticket_ibfk_1` FOREIGN KEY (`id_movie`) REFERENCES `movie` (`id`),
  ADD CONSTRAINT `order_ticket_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `order_ticket_ibfk_3` FOREIGN KEY (`status`) REFERENCES `status` (`id`);

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

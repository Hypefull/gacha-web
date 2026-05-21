-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2026 at 07:43 PM
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
-- Database: `gacha`
--

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

CREATE TABLE `characters` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `characters`
--

INSERT INTO `characters` (`id`, `name`, `image`) VALUES
(1, 'Akaashi Keiji', 'AkaashiKeiji.jpg'),
(2, 'Anaxagoras HSR', 'AnaxagorasHSR.jpg'),
(3, 'Ayanokoji Kiyotaka', 'AyanokojiKiyotaka.jpg'),
(4, 'Bakugo Katsuki', 'BakugoKatsuki.jpg'),
(5, 'Gray Fullbuster', 'GrayFullbuster.jpg'),
(6, 'Hisoka', 'Hisoka.jpg'),
(7, 'Jonathan Joestar', 'JonathanJoestar.jpg'),
(8, 'Kaito Vocaloid', 'KaitoVocaloid.jpg'),
(9, 'Oikawa Tooru', 'OikawaTooru.jpg'),
(10, 'Pico', 'Pico.jpg'),
(11, 'Ritsu Sakuma', 'RitsuSakuma.jpg'),
(12, 'Sunday HSR', 'SundayHSR.jpg'),
(13, 'Tsukishima Kei', 'TsukishimaKei.jpg'),
(14, 'Yuji Itadori', 'YujiItadori.jpg'),
(15, 'Aki Hayakawa', 'AkiHayakawa.jpg'),
(16, 'Arataka Reigen', 'AratakaReigen.jpg'),
(17, 'Dazai Osamu', 'DazaiOsamu.jpg'),
(18, 'Hiromi Higuruma', 'HiromiHiguruma.jpg'),
(19, 'Hua Cheng', 'HuaCheng.jpg'),
(20, 'Joker Persona', 'JokerPersona.jpg'),
(21, 'Kaedehara Kazuha', 'KaedeharaKazuha.jpg'),
(22, 'Killua Zoldyck', 'KilluaZoldyck.jpg'),
(23, 'Lighter ZZZ', 'LighterZZZ.jpg'),
(24, 'Saiki Kusuo', 'SaikiKusuo.jpg'),
(25, 'Shadow the Hedgehog', 'ShadowTheHedgehog.jpg'),
(26, 'Yoichi Nagumo', 'YoichiNagumo.jpg'),
(27, 'Chuuya Nakahara', 'ChuuyaNakahara.jpg'),
(28, 'Gojo Satoru', 'GojoSatoru.jpg'),
(29, 'Kambe Daisuke', 'KambeDaisuke.jpg'),
(30, 'Nanami Kento', 'NanamiKento.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `gems` int(11) NOT NULL DEFAULT 1000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `gems`) VALUES
(1, 'hype', 'hype@gmail.com', '34393b55098ba242deac56c14196656c35e9b8994d20eb4427dab9b3f8b14524', 600),
(2, 'sixsevens', 'sixseven@gmail.com', 'ed227bb0d191d168545bec592e8b9c1199ef4ffa122a7395ededa0cf888dc09f', 1000),
(3, 'glen', 'glensky@gmail.com', '3910920cef851c80b65e079866fe1956a18959d9a6b7cf6b7fd8b0d5e18a761b', 600),
(4, 'epstein', 'epstein@gmail.com', '351fbf03448ba638c97ab7990d132e3590b4395b50b07b30e99d96e77a9697a4', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `user_characters`
--

CREATE TABLE `user_characters` (
  `user_id` int(11) NOT NULL,
  `character_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_characters`
--

INSERT INTO `user_characters` (`user_id`, `character_id`) VALUES
(1, 11),
(1, 13),
(1, 14),
(1, 16),
(1, 17),
(1, 19),
(1, 21),
(1, 29),
(3, 25),
(3, 27);

-- --------------------------------------------------------

--
-- Table structure for table `user_waifu`
--

CREATE TABLE `user_waifu` (
  `user_id` int(11) NOT NULL,
  `waifu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_waifu`
--

INSERT INTO `user_waifu` (`user_id`, `waifu_id`) VALUES
(3, 1),
(3, 3),
(3, 11),
(3, 19);

-- --------------------------------------------------------

--
-- Table structure for table `waifu`
--

CREATE TABLE `waifu` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `waifu`
--

INSERT INTO `waifu` (`id`, `name`, `image`) VALUES
(1, 'Haiba Alisa', 'HaibaAlisa.jpg'),
(2, 'Himiko Toga', 'HimikoToga.jpg'),
(3, 'Kusanagi Nene', 'KusanagiNene.jpg'),
(4, 'Marin Kitagawa', 'MarinKitagawa.jpg'),
(5, 'Megumin', 'Megumin.jpg'),
(6, 'Mizuki Akiyama', 'MizukiAkiyama.jpg'),
(7, 'Momo Ayase', 'MomoAyase.jpg'),
(8, 'Ocacho Uraraka', 'OcachoUraraka.jpg'),
(9, 'Raiden Shogun', 'RaidenShogun.jpg'),
(10, 'Reze', 'Reze.jpg'),
(11, 'Shoko Ieiri', 'ShokoIeiri.jpg'),
(12, 'Utahime Iori', 'UtahimeIori.jpg'),
(13, 'Yae Miko', 'YaeMiko.jpg'),
(14, 'Yosano Akiko', 'YosanoAkiko.jpg'),
(15, 'Aglaea HSR', 'AglaeaHSR.jpg'),
(16, 'Albedo', 'Albedo.jpg'),
(17, 'Asa Mitaka', 'AsaMitaka.jpg'),
(18, 'Firefly', 'Firefly.jpg'),
(19, 'Jane Doe', 'JaneDoe.jpg'),
(20, 'Nico Robin', 'NicoRobin.jpg'),
(21, 'Osaragi', 'Osaragi.jpg'),
(22, 'Power CSM', 'PowerCSM.jpg'),
(23, 'Saber Fate', 'SaberFate.jpg'),
(24, 'Silver Wolf', 'SilverWolf.jpg'),
(25, 'Vladilena Milize', 'VladilenaMilize.jpg'),
(26, 'Zero Two', 'ZeroTwo.jpg'),
(27, 'Argenti HSR', 'ArgentiHSR.jpg'),
(28, 'Judy Hopps', 'JudyHopps.jpg'),
(29, 'Kiana Kaslana', 'KianaKaslana.jpg'),
(30, 'Raiden Mei', 'RaidenMei.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_characters`
--
ALTER TABLE `user_characters`
  ADD PRIMARY KEY (`user_id`,`character_id`);

--
-- Indexes for table `user_waifu`
--
ALTER TABLE `user_waifu`
  ADD PRIMARY KEY (`user_id`,`waifu_id`);

--
-- Indexes for table `waifu`
--
ALTER TABLE `waifu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `waifu`
--
ALTER TABLE `waifu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

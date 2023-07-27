-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2023-07-27 15:44:29
-- サーバのバージョン： 10.4.28-MariaDB
-- PHP のバージョン: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_d13_14`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `like_table`
--

CREATE TABLE `like_table` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `todo_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- テーブルのデータのダンプ `like_table`
--

INSERT INTO `like_table` (`id`, `user_id`, `todo_id`, `created_at`) VALUES
(20, 5, 3, '2023-07-19 23:26:01'),
(21, 5, 4, '2023-07-19 23:26:02'),
(22, 5, 13, '2023-07-19 23:26:03'),
(23, 5, 14, '2023-07-19 23:26:03'),
(24, 2, 7, '2023-07-19 23:26:25'),
(25, 2, 3, '2023-07-19 23:26:25'),
(26, 2, 14, '2023-07-19 23:26:26'),
(29, 2, 4, '2023-07-19 23:44:18'),
(30, 2, 11, '2023-07-19 23:44:19'),
(31, 2, 13, '2023-07-19 23:44:20'),
(32, 2, 16, '2023-07-19 23:44:21'),
(33, 2, 17, '2023-07-19 23:44:21'),
(70, 1, 16, '2023-07-27 22:03:38'),
(71, 1, 11, '2023-07-27 22:07:01'),
(72, 1, 3, '2023-07-27 22:07:02'),
(73, 1, 4, '2023-07-27 22:07:03');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `like_table`
--
ALTER TABLE `like_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `like_table`
--
ALTER TABLE `like_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

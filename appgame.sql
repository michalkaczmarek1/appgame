-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 04 Lip 2019, 14:20
-- Wersja serwera: 10.1.28-MariaDB
-- Wersja PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `appgame`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `games`
--

CREATE TABLE `games` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `choice_user` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `choice_computer` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `who_won` enum('computer','user','draw') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `games`
--

INSERT INTO `games` (`id`, `choice_user`, `choice_computer`, `who_won`, `created_at`, `updated_at`) VALUES
(1, 'papier', 'papier', 'draw', '2019-07-03 15:59:49', '2019-07-03 15:59:49'),
(2, 'papier', 'papier', 'draw', '2019-07-03 16:00:01', '2019-07-03 16:00:01'),
(3, 'papier', 'kamień', 'user', '2019-07-03 16:00:04', '2019-07-03 16:00:04'),
(4, 'papier', 'nożyczki', 'computer', '2019-07-03 16:01:17', '2019-07-03 16:01:17'),
(5, 'papier', 'nożyczki', 'computer', '2019-07-03 16:01:20', '2019-07-03 16:01:20'),
(6, 'papier', 'papier', 'draw', '2019-07-03 16:01:22', '2019-07-03 16:01:22'),
(7, 'papier', 'nożyczki', 'computer', '2019-07-03 17:29:49', '2019-07-03 17:29:49'),
(8, 'nożyczki', 'kamień', 'computer', '2019-07-03 17:37:10', '2019-07-03 17:37:10'),
(9, 'papier', 'papier', 'draw', '2019-07-04 09:47:38', '2019-07-04 09:47:38'),
(10, 'papier', 'nożyczki', 'computer', '2019-07-04 09:48:08', '2019-07-04 09:48:08'),
(11, 'papier', 'papier', 'draw', '2019-07-04 09:48:52', '2019-07-04 09:48:52'),
(12, 'papier', 'nożyczki', 'computer', '2019-07-04 09:49:30', '2019-07-04 09:49:30'),
(13, 'papier', 'nożyczki', 'computer', '2019-07-04 10:12:13', '2019-07-04 10:12:13'),
(14, 'kamień', 'papier', 'computer', '2019-07-04 10:12:38', '2019-07-04 10:12:38');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_07_02_184702_create_games_table', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `games`
--
ALTER TABLE `games`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT dla tabeli `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

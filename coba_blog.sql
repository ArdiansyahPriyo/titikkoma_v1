-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Okt 2021 pada 04.03
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coba_blog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Programming', 'programming', '2021-10-11 21:24:53', '2021-10-11 21:24:53'),
(2, 'Web Design', 'web-design', '2021-10-11 21:28:48', '2021-10-11 21:28:48'),
(3, 'Personal', 'personal', '2021-10-11 21:29:26', '2021-10-11 21:29:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_10_11_040757_create_posts_table', 1),
(6, '2021_10_12_041831_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `title`, `category_id`, `slug`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 'Judul Pertama', 1, 'judul-pertama', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident, ut?', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Facere dolores aliquam, modi eligendi aperiam labore quaerat maiores ea qui rerum reprehenderit autem, voluptas unde repellendus itaque? Magnam blanditiis iusto dolor unde dolorem dicta eveniet, tenetur magni nemo sunt laborum totam et ipsa id nihil minus cum eligendi ullam non? Corporis illum repudiandae nam sed! Voluptatem aliquam, amet facilis laboriosam harum neque, voluptate animi repudiandae excepturi pariatur sint distinctio quos inventore beatae totam! Illo ut sapiente quod possimus dolore, adipisci officia, hic fugit maiores eum dolorem, harum quos dolorum. </p><p>Nisi voluptas ex iusto sequi dolores eveniet aliquam nihil earum quam incidunt at dolorum unde voluptatem quod est delectus provident eaque nobis facere, soluta tempora, totam omnis repudiandae ratione! Ex, soluta optio! Lorem ipsum dolor sit amet consectetur adipisicing elit. Quas similique odio quaerat ad deserunt voluptates eum id excepturi reiciendis fuga doloribus inventore perferendis ipsum dolor quis, eveniet temporibus qui aliquam.</p><p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatum perferendis facilis, deserunt quis magni magnam minima sapiente corrupti cum praesentium fugiat, nam voluptatibus pariatur, odit dolor quia temporibus repudiandae neque vel illo obcaecati commodi eum adipisci consectetur! Vero optio eaque, corrupti, ipsa quas rerum veniam ipsam unde praesentium eos illo? Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eius quasi consequatur beatae earum, non enim eos, assumenda eum alias mollitia illo? Nemo maiores voluptatum dolor deleniti commodi porro omnis magni officia ipsa nesciunt, maxime nobis quia explicabo voluptate repudiandae adipisci.</p>', NULL, '2021-10-11 21:35:56', '2021-10-11 21:35:56'),
(2, 'Judul Kedua', 1, 'judul-ke-dua', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident, ut?', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Facere dolores aliquam, modi eligendi aperiam labore quaerat maiores ea qui rerum reprehenderit autem, voluptas unde repellendus itaque? Magnam blanditiis iusto dolor unde dolorem dicta eveniet, tenetur magni nemo sunt laborum totam et ipsa id nihil minus cum eligendi ullam non? Corporis illum repudiandae nam sed! Voluptatem aliquam, amet facilis laboriosam harum neque, voluptate animi repudiandae excepturi pariatur sint distinctio quos inventore beatae totam! Illo ut sapiente quod possimus dolore, adipisci officia, hic fugit maiores eum dolorem, harum quos dolorum. </p><p>Nisi voluptas ex iusto sequi dolores eveniet aliquam nihil earum quam incidunt at dolorum unde voluptatem quod est delectus provident eaque nobis facere, soluta tempora, totam omnis repudiandae ratione! Ex, soluta optio! Lorem ipsum dolor sit amet consectetur adipisicing elit. Quas similique odio quaerat ad deserunt voluptates eum id excepturi reiciendis fuga doloribus inventore perferendis ipsum dolor quis, eveniet temporibus qui aliquam.</p><p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatum perferendis facilis, deserunt quis magni magnam minima sapiente corrupti cum praesentium fugiat, nam voluptatibus pariatur, odit dolor quia temporibus repudiandae neque vel illo obcaecati commodi eum adipisci consectetur! Vero optio eaque, corrupti, ipsa quas rerum veniam ipsam unde praesentium eos illo? Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eius quasi consequatur beatae earum, non enim eos, assumenda eum alias mollitia illo? Nemo maiores voluptatum dolor deleniti commodi porro omnis magni officia ipsa nesciunt, maxime nobis quia explicabo voluptate repudiandae adipisci.</p>', NULL, '2021-10-11 21:36:43', '2021-10-11 21:36:43'),
(3, 'Judul Ketiga', 3, 'judul-ke-tiga', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident, ut?', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Facere dolores aliquam, modi eligendi aperiam labore quaerat maiores ea qui rerum reprehenderit autem, voluptas unde repellendus itaque? Magnam blanditiis iusto dolor unde dolorem dicta eveniet, tenetur magni nemo sunt laborum totam et ipsa id nihil minus cum eligendi ullam non? Corporis illum repudiandae nam sed! Voluptatem aliquam, amet facilis laboriosam harum neque, voluptate animi repudiandae excepturi pariatur sint distinctio quos inventore beatae totam! Illo ut sapiente quod possimus dolore, adipisci officia, hic fugit maiores eum dolorem, harum quos dolorum. </p><p>Nisi voluptas ex iusto sequi dolores eveniet aliquam nihil earum quam incidunt at dolorum unde voluptatem quod est delectus provident eaque nobis facere, soluta tempora, totam omnis repudiandae ratione! Ex, soluta optio! Lorem ipsum dolor sit amet consectetur adipisicing elit. Quas similique odio quaerat ad deserunt voluptates eum id excepturi reiciendis fuga doloribus inventore perferendis ipsum dolor quis, eveniet temporibus qui aliquam.</p><p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatum perferendis facilis, deserunt quis magni magnam minima sapiente corrupti cum praesentium fugiat, nam voluptatibus pariatur, odit dolor quia temporibus repudiandae neque vel illo obcaecati commodi eum adipisci consectetur! Vero optio eaque, corrupti, ipsa quas rerum veniam ipsam unde praesentium eos illo? Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eius quasi consequatur beatae earum, non enim eos, assumenda eum alias mollitia illo? Nemo maiores voluptatum dolor deleniti commodi porro omnis magni officia ipsa nesciunt, maxime nobis quia explicabo voluptate repudiandae adipisci.</p>', NULL, '2021-10-11 21:37:19', '2021-10-11 21:37:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 27 2017 г., 04:58
-- Версия сервера: 5.7.16
-- Версия PHP: 7.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `future`
--
CREATE DATABASE IF NOT EXISTS `future` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `future`;

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `name`, `comment`, `date`, `time`) VALUES
(263, 'Борис', 'Собака не любила девушки, рвала ей чулки, рычала на нее и скалилась', '2017-06-27', '04:51:26'),
(264, 'Фёдор', 'Рим был толкучкою заимствованных богов и завоеванных народов', '2017-06-27', '04:51:49'),
(265, 'Алексей', 'Людмила Капитоновна была красивая женщина с высокой грудью и низким голосом', '2017-06-27', '04:52:16'),
(266, 'Агния', 'Женщины были нежно привязаны друг к другу и без конца друг на друга ворчали.', '2017-06-27', '04:52:48'),
(267, 'Герасим', 'Люди в городах были беспомощны, как дети перед лицом близящейся неизвестности,', '2017-06-27', '04:53:09'),
(268, 'Анатолий', 'Городской затворник, крепким черным кофе или табаком подхлестывающий ', '2017-06-27', '04:53:37'),
(269, 'Дмитрий', 'Человек рождается жить, а не готовиться к жизни.', '2017-06-27', '04:53:56'),
(270, 'Владимир', 'По-моему философия должна быть скупою приправой к искусству и жизни. ', '2017-06-27', '04:54:17'),
(271, 'Дональд', 'Make America great again', '2017-06-27', '04:56:16');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;--
-- База данных: `larablog`
--
CREATE DATABASE IF NOT EXISTS `larablog` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `larablog`;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_06_24_064331_create_posts_table', 1),
(4, '2017_06_25_065423_add_user_id_to_posts', 2),
(5, '2017_06_25_090233_add_cover_image_to_posts', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`, `user_id`, `cover_image`) VALUES
(9, 'Post', '<p>this is post&nbsp;</p>', '2017-06-25 06:54:16', '2017-06-25 06:54:16', 1, 'noimage.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'batyr pashyev', 'bat@mail.bu', '$2y$10$N7QNQsKUN4ZWnvPz2WnlbO2Y4HDd7g3YaTSjqF6hyRVEtXNgDWksO', 'BZLKB7HTYfZR7isF3RgAP5UZtGiTdyGjRWpQW6v5AgWBtTXzUCQFPFaghP8W', '2017-06-24 11:34:17', '2017-06-24 11:34:17');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;--
-- База данных: `reestr`
--
CREATE DATABASE IF NOT EXISTS `reestr` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `reestr`;

-- --------------------------------------------------------

--
-- Структура таблицы `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `birthday` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `staff`
--

INSERT INTO `staff` (`id`, `firstname`, `lastname`, `middlename`, `birthday`, `sex`, `image`) VALUES
(42, 'Ирина', 'Попова', 'Максимовна', '1982-12-15', 'Жен', '320975861images.jpg'),
(43, 'Дмитрий', 'Борисов', 'Николаевич', '1972-08-15', 'Муж', '1471252155imagvvvvvvvvvvvves.jpg'),
(44, 'Батька', 'Мохно', 'Валерьевич', '1965-05-05', 'Муж', '2098523010imagrrgrgges.jpg'),
(45, 'Константин', 'Чапаев', 'Альбертович', '1955-06-04', 'Муж', '1296857781imqsqsqages.jpg'),
(46, 'Василий', 'Приходько', 'Уходько', '1948-12-03', 'Муж', '666817390index.jpg'),
(47, 'Александр', 'Чернышев', 'Петрович', '1936-08-12', 'Муж', '1195387970imagfffffes.jpg'),
(48, 'Чен', 'Ким', 'Ли', '1922-11-25', 'Жен', '1490734754images.jpg'),
(49, 'Глеб', 'Андреев', 'Дмитриевич', '1977-08-08', 'Муж', '907132204insssdex.jpg'),
(50, 'Анна', 'Корешкова', 'Александровна', '1982-11-19', 'Жен', '2125578736insssdex.jpg'),
(51, 'Хуршида', 'Алиева', 'Маммедовна', '1992-12-10', 'Жен', '297841071images.jpg'),
(52, 'Дональд', 'Трамп', 'Ахмедович', '1951-11-15', 'Жен', '58181585imsqqsqsqsages.jpg'),
(53, 'Тайип', 'Эрдоган', 'Реджепович', '1963-06-10', 'Муж', '917827714inssssex.jpg'),
(54, 'Башар', 'Эсад', 'Королевич', '1975-08-08', 'Муж', '206697460imargrgrgges.jpg'),
(55, 'фф', 'ффф', '', '2017-06-02', 'Муж', '1678956261images.jpg'),
(57, 'aaa', 'aaaa', '', '2017-06-16', 'Муж', '1709412182'),
(58, 'sss', 'sss', '', '2017-06-15', 'Муж', '1126987355');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

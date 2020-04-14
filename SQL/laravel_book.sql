-- phpMyAdmin SQL Dump
    -- version 4.9.0.1
    -- https://www.phpmyadmin.net/
    --

    -- Máy chủ: 127.0.0.1
    -- Thời gian đã tạo: Th4 07, 2020 lúc 11:14 AM
    -- Phiên bản máy phục vụ: 10.4.6-MariaDB
    -- Phiên bản PHP: 7.1.32
SET
    SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET
    AUTOCOMMIT = 0;
START TRANSACTION
    ;
SET
    time_zone = "+00:00";
    /*!40101
SET
    @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
    /*!40101
SET
    @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
    /*!40101
SET
    @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
    /*!40101
SET NAMES
    utf8mb4 */;
    --

    -- Cơ sở dữ liệu: `laravel_book`
    --

    -- --------------------------------------------------------
    --

    -- Cấu trúc bảng cho bảng `books`
    --

CREATE TABLE `books`(
    `id` BIGINT(20) UNSIGNED NOT NULL,
    `name` VARCHAR(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `author` VARCHAR(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `category` VARCHAR(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `desc` VARCHAR(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP NULL DEFAULT NULL,
    `updated_at` TIMESTAMP NULL DEFAULT NULL
) ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
-- --------------------------------------------------------
--

-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories`(
    `id` BIGINT(20) UNSIGNED NOT NULL,
    `name` VARCHAR(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP NULL DEFAULT NULL,
    `updated_at` TIMESTAMP NULL DEFAULT NULL
) ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
--

-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories`(
    `id`,
    `name`,
    `created_at`,
    `updated_at`
)
VALUES(1, 'Test', NULL, NULL);
-- --------------------------------------------------------
--

-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs`(
    `id` BIGINT(20) UNSIGNED NOT NULL,
    `connection` TEXT COLLATE utf8mb4_unicode_ci NOT NULL,
    `queue` TEXT COLLATE utf8mb4_unicode_ci NOT NULL,
    `payload` LONGTEXT COLLATE utf8mb4_unicode_ci NOT NULL,
    `exception` LONGTEXT COLLATE utf8mb4_unicode_ci NOT NULL,
    `failed_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP()) ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
    -- --------------------------------------------------------
    --

    -- Cấu trúc bảng cho bảng `issues`
    --

    CREATE TABLE `issues`(
        `id` BIGINT(20) UNSIGNED NOT NULL,
        `name` VARCHAR(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `book` VARCHAR(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `due_date` DATE NOT NULL,
        `created_at` TIMESTAMP NULL DEFAULT NULL,
        `updated_at` TIMESTAMP NULL DEFAULT NULL
    ) ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
    -- --------------------------------------------------------
    --

    -- Cấu trúc bảng cho bảng `migrations`
    --

    CREATE TABLE `migrations`(
        `id` INT(10) UNSIGNED NOT NULL,
        `migration` VARCHAR(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `batch` INT(11) NOT NULL
    ) ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
    --

    -- Đang đổ dữ liệu cho bảng `migrations`
    --

    INSERT INTO `migrations`(`id`, `migration`, `batch`)
VALUES(
    1,
    '2014_10_12_000000_create_users_table',
    1
),
(
    2,
    '2014_10_12_100000_create_password_resets_table',
    1
),
(
    3,
    '2019_05_03_000001_create_customer_columns',
    1
),
(
    4,
    '2019_05_03_000002_create_subscriptions_table',
    1
),
(
    5,
    '2019_08_19_000000_create_failed_jobs_table',
    1
),
(
    6,
    '2020_03_03_134420_create_roles_table',
    1
),
(
    7,
    '2020_03_03_134718_create_role_user_table',
    1
),
(
    8,
    '2020_03_11_005659_create_plans_table',
    1
),
(
    9,
    '2020_03_11_010920_plan_user',
    1
),
(
    10,
    '2020_03_18_015902_create_bissues_table',
    1
),
(11, '2020_03_30_172254_books', 1),
(
    12,
    '2020_03_30_172435_categories',
    1
);
-- --------------------------------------------------------
--

-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets`(
    `email` VARCHAR(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `token` VARCHAR(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP NULL DEFAULT NULL
) ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
-- --------------------------------------------------------
--

-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles`(
    `id` BIGINT(20) UNSIGNED NOT NULL,
    `name` VARCHAR(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` TIMESTAMP NULL DEFAULT NULL,
    `updated_at` TIMESTAMP NULL DEFAULT NULL
) ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
--

-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles`(
    `id`,
    `name`,
    `created_at`,
    `updated_at`
)
VALUES(
    1,
    'admin',
    '2020-04-07 00:28:32',
    '2020-04-07 00:28:32'
),
(
    2,
    'staff',
    '2020-04-07 00:28:32',
    '2020-04-07 00:28:32'
);
-- --------------------------------------------------------
--

-- Cấu trúc bảng cho bảng `role_user`
--

CREATE TABLE `role_user`(
    `id` BIGINT(20) UNSIGNED NOT NULL,
    `role_id` INT(10) UNSIGNED NOT NULL,
    `user_id` INT(10) UNSIGNED NOT NULL,
    `created_at` TIMESTAMP NULL DEFAULT NULL,
    `updated_at` TIMESTAMP NULL DEFAULT NULL
) ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
--

-- Đang đổ dữ liệu cho bảng `role_user`
--

INSERT INTO `role_user`(
    `id`,
    `role_id`,
    `user_id`,
    `created_at`,
    `updated_at`
)
VALUES(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL);
-- --------------------------------------------------------
--

-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users`(
    `id` BIGINT(20) UNSIGNED NOT NULL,
    `name` VARCHAR(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `email` VARCHAR(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `email_verified_at` TIMESTAMP NULL DEFAULT NULL,
    `password` VARCHAR(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `remember_token` VARCHAR(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `created_at` TIMESTAMP NULL DEFAULT NULL,
    `updated_at` TIMESTAMP NULL DEFAULT NULL,
    `stripe_id` VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `card_brand` VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `card_last_four` VARCHAR(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `trial_ends_at` TIMESTAMP NULL DEFAULT NULL
) ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
--

-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users`(
    `id`,
    `name`,
    `email`,
    `email_verified_at`,
    `password`,
    `remember_token`,
    `created_at`,
    `updated_at`,
    `stripe_id`,
    `card_brand`,
    `card_last_four`,
    `trial_ends_at`
)
VALUES(
    1,
    'admin',
    'admin@gmail.com',
    '2020-04-07 00:32:52',
    '$2y$10$LeZJQZkybwi8jG.KeIK0tuM9bg.9ukIx7Hu/N8z3JtSetYatJGzJW',
    'nvHrr0kdQj4PDG78FRvRIS1QVL2Uhap680P00EmTUIjXqbP8OqzkW9c2sjzk',
    '2020-04-07 00:28:30',
    '2020-04-07 00:32:52',
    NULL,
    NULL,
    NULL,
    NULL
),
(
    2,
    'Test',
    'test@gmail.com',
    NULL,
    '$2y$10$dfqjQjfsnpPY3O3CGFwrKuTx4ijOMY7jXbnyB1ibbBOEtPqchCtt6',
    NULL,
    '2020-04-07 02:00:04',
    '2020-04-07 02:00:04',
    NULL,
    NULL,
    NULL,
    NULL
);
--

-- Chỉ mục cho các bảng đã đổ
--

--

-- Chỉ mục cho bảng `books`
--

ALTER TABLE
    `books` ADD PRIMARY KEY(`id`);
    --

    -- Chỉ mục cho bảng `categories`
    --

ALTER TABLE
    `categories` ADD PRIMARY KEY(`id`);
    --

    -- Chỉ mục cho bảng `failed_jobs`
    --

ALTER TABLE
    `failed_jobs` ADD PRIMARY KEY(`id`);
    --

    -- Chỉ mục cho bảng `issues`
    --

ALTER TABLE
    `issues` ADD PRIMARY KEY(`id`);
    --

    -- Chỉ mục cho bảng `migrations`
    --

ALTER TABLE
    `migrations` ADD PRIMARY KEY(`id`);
    --

    -- Chỉ mục cho bảng `password_resets`
    --

ALTER TABLE
    `password_resets` ADD KEY `password_resets_email_index`(`email`);
    --

    -- Chỉ mục cho bảng `roles`
    --

ALTER TABLE
    `roles` ADD PRIMARY KEY(`id`);
    --

    -- Chỉ mục cho bảng `role_user`
    --

ALTER TABLE
    `role_user` ADD PRIMARY KEY(`id`);
    --

    -- Chỉ mục cho bảng `users`
    --

ALTER TABLE
    `users` ADD PRIMARY KEY(`id`),
    ADD UNIQUE KEY `users_email_unique`(`email`),
    ADD KEY `users_stripe_id_index`(`stripe_id`);
    --

    -- AUTO_INCREMENT cho các bảng đã đổ
    --

    --

    -- AUTO_INCREMENT cho bảng `books`
    --

ALTER TABLE
    `books` MODIFY `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 2;
    --

    -- AUTO_INCREMENT cho bảng `categories`
    --

ALTER TABLE
    `categories` MODIFY `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 2;
    --

    -- AUTO_INCREMENT cho bảng `failed_jobs`
    --

ALTER TABLE
    `failed_jobs` MODIFY `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT;
    --

    -- AUTO_INCREMENT cho bảng `issues`
    --

ALTER TABLE
    `issues` MODIFY `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT;
    --

    -- AUTO_INCREMENT cho bảng `migrations`
    --

ALTER TABLE
    `migrations` MODIFY `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 13;
    --

    -- AUTO_INCREMENT cho bảng `roles`
    --

ALTER TABLE
    `roles` MODIFY `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 3;
    --

    -- AUTO_INCREMENT cho bảng `role_user`
    --

ALTER TABLE
    `role_user` MODIFY `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 3;
    --

    -- AUTO_INCREMENT cho bảng `users`
    --

ALTER TABLE
    `users` MODIFY `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 3;
COMMIT
    ;
    /*!40101
SET
    CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
    /*!40101
SET
    CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
    /*!40101
SET
    COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
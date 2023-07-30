-- phpMyAdmin SQL Dump
-- version 5.1.4deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 30, 2023 at 04:26 PM
-- Server version: 8.0.33-0ubuntu0.22.10.2
-- PHP Version: 8.1.7-1ubuntu3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fashion_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int UNSIGNED NOT NULL,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Gucci', 'gucci', NULL, '2023-03-27 15:09:04', '2023-03-27 15:09:04'),
(2, 'Louis Vuitton', 'louis-vuitton', NULL, '2023-03-27 15:09:04', '2023-03-27 15:09:04'),
(3, 'Hermes', 'hermes', NULL, '2023-03-27 15:09:04', '2023-03-27 15:09:04'),
(4, 'Prada', 'prada', NULL, '2023-03-27 15:09:04', '2023-03-27 15:09:04'),
(5, 'Chanel', 'chanel', NULL, '2023-03-27 15:09:04', '2023-03-27 15:09:04'),
(6, 'Burberry', 'burberry', NULL, '2023-03-27 15:09:04', '2023-03-27 15:09:04'),
(7, 'Fendi', 'fendi', NULL, '2023-03-27 15:09:04', '2023-03-27 15:09:04'),
(8, 'Givenchy', 'givenchy', NULL, '2023-03-27 15:09:04', '2023-03-27 15:09:04'),
(9, 'Dior', 'dior', NULL, '2023-03-27 15:09:04', '2023-03-27 15:09:04'),
(10, 'Palido', 'palido', NULL, '2023-03-27 15:09:04', '2023-03-27 15:09:04');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Đỗ Hoàng Minh Anh', 'voicoixinhgai271297@gmail.com', '1111', '2023-03-27 21:38:50', '2023-03-27 21:38:50');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `birthday` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `gender` tinyint NOT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `score_awards` double(8,2) NOT NULL DEFAULT '0.00',
  `money_payment_transactions` double(8,2) NOT NULL DEFAULT '0.00',
  `remember_token` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `birthday`, `gender`, `phone_number`, `address`, `password`, `score_awards`, `money_payment_transactions`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Lê Thị Hương', '2001-01-01', 0, '0987654321', 'số 11a Ngõ 282 Nguyễn Huy Tưởng', '$2a$12$HhaN2zpWSBMIX/s7lwwEg.M5hm7C97K0iBhjeFi.hRD/Cq8JXEBd.', 18.00, 908.00, 'iOwOnapM2tu5G13MT7x4etmomu3L17vtU5IsW5mxBMWDoUs4XQixMqCSy2Yy', 1, '2021-03-13 02:13:26', '2021-12-18 16:06:29');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `price` double(8,2) NOT NULL,
  `price_sale` double(8,2) NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `product_id`, `name`, `slug`, `code`, `quantity`, `price`, `price_sale`, `status`, `created_at`, `updated_at`) VALUES
(211, 'ORD20230328220154RIY', 514, 'ÁO PHAO CỔ MŨ VIỀN LÔNG', 'ao-phao-co-mu-vien-long', 'SKUP04376', 2, 790.00, 790.00, 0, '2023-03-28 22:01:54', '2023-03-28 22:01:54'),
(212, 'ORD20230328220409S2U', 513, 'ÁO SƠ MI PHỐI NƠ BẢN LỚN', 'ao-so-mi-phoi-no-ban-lon', 'SKUP14460', 1, 1190.00, 440.30, 0, '2023-03-28 22:04:09', '2023-03-28 22:04:09'),
(213, 'ORD202307301143466IA', 512, 'Áo sơ mi ngắn tay', 'ao-so-mi-ngan-tay', 'SKUP12810', 6, 990.00, 495.00, 0, '2023-07-30 11:43:46', '2023-07-30 11:43:46');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int UNSIGNED NOT NULL,
  `name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `product_category_id` int UNSIGNED NOT NULL,
  `brand_id` int UNSIGNED NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `price_sale` double(8,2) NOT NULL,
  `quantity` int NOT NULL,
  `bought` int NOT NULL DEFAULT '0',
  `view_count` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `code`, `product_category_id`, `brand_id`, `description`, `image`, `price`, `price_sale`, `quantity`, `bought`, `view_count`, `status`, `created_at`, `updated_at`) VALUES
(512, 'Áo sơ mi ngắn tay', 'ao-so-mi-ngan-tay', 'SKUP12810', 1, 10, '<p>\n<style type=\"text/css\"><!--td {border: 1px solid #cccccc;}br {mso-data-placement:same-cell;}-->\n</style>\nFORM DÁNG: Perfect Fit<br>\nTHIẾT KẾ:<br>\n- Áo sơ mi ngắn tay phom Perfect Fit suông rộng mặc thả ngoài mà vẫn đảm bảo độ lịch sự chỉn chu cho người mặc.<br>\n- Thiết kế basic với tà bằng thoải mái. Cổ áo đứng lịch sự cùng túi ngực tiện lợi.Màu trắng dệt jacquard tuy đơn giản nhưng lịch lãm, thời thượng tạo nên dấu ấn thanh lịch cho quý ông.<br>\n<br>\nCHẤT LIỆU:<br>\n- 50% Bamboo từ sợi tre thiên nhiên mang đến sự thoáng mát, thấm hút tốt và tạo cảm giác thoải mái.<br>\n- 50% Polyester giúp áo mỏng nhẹ, có độ trơn trượt, màu sắc nét và giữ màu tốt theo thời gian.<br>\n<br>\nMÀU SẮC: Trắng dệt jacquard<br>\n<br>\nSIZE: 38/39/40/41/42/43<br>\n&nbsp;</p>', '160664977120201129183611mBTNMXhoRAohYGJNDaLuexRpnv5MYw0FgVDU7DB8.jpeg', 990.00, 495.00, 98, 6, 104, 1, '2023-07-30 00:00:00', '2023-07-30 11:22:53'),
(513, 'Áo polo nam ngắn tay', 'ao-polo-nam-ngan-tay', 'SKUP14460', 1, 4, '<p>\n<style type=\"text/css\"><!--td {border: 1px solid #cccccc;}br {mso-data-placement:same-cell;}-->\n</style>\nFORM DÁNG: Regular Fit<br>\n<br>\nTHIẾT KẾ:<br>\n- Áo Polo phom dáng Regular fit suông nhẹ nhưng vẫn vừa vặn, tôn dáng tối đa khi mặc<br>\n- Thiết kế basic với cổ dệt jacquard phối màu nổi bật, chỉn chu, tay áo bo rib trẻ trung, tạo nên dấu ấn thanh lịch, thời thượng cho quý ông.<br>\n<br>\nCHẤT LIỆU:<br>\n- 95% Cotton Organic thoáng khí, thấm mồ hôi vượt trội và thân thiện với làn da<br>\n- 5% Spandex đem đến độ co giãn nhẹ<br>\n<br>\nMÀU SẮC: Xanh tím than 24; Be 78; Trắng&nbsp;6; Đỏ booc đô 6<br>\n<br>\nSIZE: S/M/L/XL/XXL</p>', '160664994820201129183908tXPyOD112p0bDto0aWkA5bic9F76wOPw7O0J9E79.jpeg', 1190.00, 440.30, 99, 1, 100, 1, '2023-07-30 00:00:00', '2023-07-30 00:00:00'),
(514, 'Áo polo nam có cổ ngắn tay', 'ao-polo-nam-co-co-ngan-tay', 'SKUP04376', 1, 1, '<p>\n<style type=\"text/css\"><!--td {border: 1px solid #cccccc;}br {mso-data-placement:same-cell;}-->\n</style>\nFORM DÁNG: Slim Fit<br>\n<br>\nTHIẾT KẾ:<br>\n- Áo polo phom dáng Slim Fit ôm nhẹ vừa vặn mà vẫn thoải mái linh hoạt khi vận động.<br>\n- Thiết kế basic với cổ dệt lịch sự với họa tiết thêu chữ ký Aristino tinh tế. Áo in họa tiết kẻ khỏe khoắn mang đến diện mạo thu hút cho người mặc.<br>\n<br>\nCHẤT LIỆU:<br>\n- 57% Cotton mềm mịn, thoáng khí, thấm mồ hôi vượt trội và thân thiện với làn da<br>\n- 38% Polyester giúp áo bền màu, sắc nét và độ trơn trượt, mỏng nhẹ.<br>\n- 5% Spandex giúp áo co giãn thoải mái<br>\n<br>\nMÀU SẮC: Trắng 6 in, Xanh biển 19 in, Xanh tím than 35 in<br>\n<br>\nSIZE: S/M/L/XL/XXL</p>', '160665032920201129184529GxAfhCg9nwrNfzT7y2PORt4XfVjmNJxqhliJGlcx.jpeg', 790.00, 790.00, 100, 20, 7, 1, '2023-07-30 00:00:00', '2023-07-30 00:00:00'),
(515, 'Áo tanktop', 'ao-tanktop', 'SKUP15932', 1, 3, '<p>\n<style type=\"text/css\"><!--td {border: 1px solid #cccccc;}br {mso-data-placement:same-cell;}-->\n</style>\nFORM DÁNG:&nbsp;Tanktop<br>\nTHIẾT KẾ:<br>\n- Áo Tanktop (ba lỗ) thiết kế khỏe khoắn, màu sắc cơ bản mà đa dạng, giúp người mặc thoải mái trong mọi vận động bất kể thời tiết mùa nào..<br>\n- Cổ áo vẫn là dạng cổ tròn quen thuộc, trước ngực in thêm chi tiết nhỏ tạo điểm nhấn.<br>\n<br>\nCHẤT LIỆU:<br>\n- 57% Cotton mềm mịn, thoáng khí, thấm mồ hôi vượt trội và thân thiện với làn da<br>\n- 38% Polyester giúp áo bền màu, sắc nét và độ trơn trượt, mỏng nhẹ<br>\n- 5% Spandex tạo độ co giãn nhẹ<br>\n<br>\nMÀU SẮC: Trắng 6; Xám 61; Xanh Biển 40; Đen 9 MF<br>\n<br>\nSIZE: S, M, L, XL, XXL</p>', '160665072920201129185209vV8js3v0NLXj7eVYmubrimZQWFYZEJKbuc8MAWuh.jpeg', 990.00, 990.00, 100, 0, 0, 1, '2023-07-30 00:00:00', '2023-07-30 00:00:00'),
(516, 'Áo blazer', 'ao-blazer', 'SKUP18059', 1, 2, '<p>\n<style type=\"text/css\"><!--td {border: 1px solid #cccccc;}br {mso-data-placement:same-cell;}-->\n</style>\nForm dáng: Premio<br>\n<br>\nThiết kế:<br>\n- Áo Blazer nam phom Premio phù hợp mọi dáng người, luôn giữ được phần ve áo ổn định ngay cả khi mở cúc, và tạo được phần thắt eo tôn dáng người mặc.<br>\n- Áo thiết kế lịch lãm với 1 khuy cài, 4 khuy tay áo, 2 đường xẻ tà truyền thống nhưng vẫn trẻ trung. Gam màu trung tính cùng họa tiết kẻ lịch lãm tạo điểm nhấn nổi bật và thời thượng cho quý ông.<br>\n<br>\nChất liệu:<br>\n- 87% Polyester giúp áo bền màu, sắc nét và độ trơn trượt, mỏng nhẹ<br>\n- 10% Nylon cho bề mặt vải độ mịn mượt, mỏng nhẹ<br>\n- 3% Spandex tạo độ co giãn nhẹ<br>\n<br>\nMàu sắc: Xanh tím than 139 Kẻ nhỏ, Be 132 Kẻ nhỏ<br>\n<br>\nSize: S/M/L/XL/XXL</p>', '160665211420201129191514y1nBexQZaKEpcVku0a6Lg5AkNJ2j4H6FBc7NRVDt.jpeg', 1090.00, 1090.00, 100, 5, 1, 1, '2023-07-30 00:00:00', '2023-07-30 00:00:00'),
(517, 'Áo sơ mi nam ngắn tay', '\nao-so-mi-nam-ngan-tay', 'SKUP14466', 1, 1, '<div class=\"box_infomation_product__content\">\n                    <p><strong>Kiểu dáng</strong>:&nbsp;Slim Fit</p>\n\n<p><strong>Thiết kế</strong>:<br>\n<style type=\"text/css\"><!--td {border: 1px solid #cccccc;}br {mso-data-placement:same-cell;}-->\n</style>\n- Áo sơ mi ngắn tay phom Slim Fit ôm nhẹ vừa vặn mà vẫn thoải mái vận động.<br>\n- Thiết kế chỉn chu đến từng chi tiết với tà lượn, không có túi ngực. Họa tiết kẻ in trên nền trắng tạo hiệu ứng nổi bật, mang đến phong cách thời thượng và lịch lãm cho các quý ông.</p>\n\n<p><strong>Chất liệu</strong>:<br>\n<style type=\"text/css\"><!--td {border: 1px solid #cccccc;}br {mso-data-placement:same-cell;}-->\n</style>\n- 48.5% Bamboo từ sợi tre thiên nhiên mang đến sự thoáng mát, thấm hút tốt và tạo cảm giác thoải mái.<br>\n- 48.5% Polyester giúp áo mỏng nhẹ, có độ trơn trượt, màu sắc nét và giữ màu tốt theo thời gian.<br>\n- 3% Spandex giữ độ co giãn tốt, tạo sự thoải mái.</p>\n\n<p><strong>Màu sắc</strong>:&nbsp;Trắng in họa tiết kẻ</p>\n\n<p><strong>Size</strong>:&nbsp;38/39/40/41/42/43</p>\n\n                </div>', '160665286520201129192745rYZNBSffyvmiz3f4fsDBJxQkyKU4eZmpecCdyt6y.jpeg', 890.00, 890.00, 100, 0, 0, 1, '2023-07-30 00:00:00', '2023-07-30 00:00:00'),
(518, 'Áo thun dài tay', 'ao-thun-dai-tay', 'SKUP11288', 1, 7, '<div class=\"box_infomation_product__content\">\n                    <p>Kiểu dáng:&nbsp;Regular fit</p>\n\n<p>Thiết kế:<br>\n<style type=\"text/css\"><!--td {border: 1px solid #cccccc;}br {mso-data-placement:same-cell;}-->\n</style>\n- Áo thun dài tay phom Regular fit suông vừa, thoải mái tuyệt đối khi mặc.<br>\n- Áo thiết kế đơn giản với gam màu tối hiện đại, cùng họa tiết in ngực trái đem đến diện mạo thời thượng cho người mặc.</p>\n\n<p>Chất liệu:&nbsp;<br>\n<style type=\"text/css\"><!--td {border: 1px solid #cccccc;}br {mso-data-placement:same-cell;}-->\n</style>\n- 57% Cotton giúp áo mềm mại, xốp nhẹ và thoáng khí.<br>\n- 38% Polyester cho bề mặt vải bóng mịn, sắc nét, ít nhăn nhàu.<br>\n- 5% Spandex tạo độ co giãn nhẹ.</p>\n\n<p>Màu sắc:Đen 9, Xám 196</p>\n\n<p>Size: S, M, L ,XL, XXL</p>\n<style type=\"text/css\"><!--td {border: 1px solid #cccccc;}br {mso-data-placement:same-cell;}-->\n</style>\n\n                </div>', '160665301420201129193014tjSBxzRDCl8HgZ1wWyhKen1jWUA3XHVZXk1cVBbO.jpeg', 2850.00, 1197.00, 100, 0, 0, 1, '2023-07-30 00:00:00', '2023-07-30 00:00:00'),
(538, 'Quần lót nam boxer', 'quan-lot-nam-boxer', 'SKUP10376', 3, 10, '<div class=\"box_infomation_product__content\">\n                    <p><strong>KIỂU DÁNG:&nbsp;</strong>BOXER</p>\n\n<p><strong>CHI TIẾT:</strong></p>\n\n<p>\n<style type=\"text/css\"><!--td {border: 1px solid #cccccc;}br {mso-data-placement:same-cell;}-->\n</style>\n<style type=\"text/css\"><!--td {border: 1px solid #cccccc;}br {mso-data-placement:same-cell;}-->\n</style>\n- Quần boxer nam thiết kế không đường may đầy tinh tế, kiểu dáng đơn giản và ôm sát, nâng đỡ và bảo vệ tối đa, mang lại cảm giác tự tin thỏa mái theo từng cử động cơ thể<br>\n- Cạp chun dày dặn tạo cảm giác chắc chắn và mạnh mẽ. Màu sắc tinh tế, giúp quý ông dễ dàng lựa chọn trang phục phù hợp.</p>\n\n<p><strong>CHẤT LIỆU:</strong></p>\n\n<p>\n<style type=\"text/css\"><!--td {border: 1px solid #cccccc;}br {mso-data-placement:same-cell;}-->\n</style>\n- 90% Modal từ sợi sồi thiên nhiên cho bề mặt vải mềm mại, nhẹ và thoáng và thấm hút tuyệt vời.<br>\n- 10% Spandex giúp quần co giãn tốt, thoải mái tối đa, có độ trơn trượt và mỏng nhẹ</p>\n\n<p><strong>MÀU SẮC:&nbsp;</strong>Không phân màu</p>\n\n<p><strong>SIZE:</strong>&nbsp;S,M,L,XL,XXL</p>\n\n                </div>', '160666167920201129215439uOMU5zreapKf6JWMNzApM7rSYap3AM6lFGBqXMCz.jpeg', 1190.00, 499.80, 100, 0, 0, 1, '2023-07-30 00:00:00', '2023-07-30 00:00:00'),
(539, 'Quần lót nam', 'quan-lot-nam', 'SKUP13468', 3, 2, '<div class=\"box_infomation_product__content\">\n                    <p data-mce-style=\"text-align: justify;\"><strong>KIỂU DÁNG:</strong>&nbsp;Briefs</p>\n\n<p data-mce-style=\"text-align: justify;\"><strong>CHI TIẾT:</strong></p>\n\n<p data-mce-style=\"text-align: justify;\">- Quần lót briefs kiểu dáng đơn giản, phù hợp với mọi vóc dáng của phái mạnh.</p>\n\n<p data-mce-style=\"text-align: justify;\">- Sản phẩm thiết kế với cạp chun cao cấp, không bai dão trong quá trình sử dụng.</p>\n\n<p data-mce-style=\"text-align: justify;\">- Logo thương hiệu Aristino được in trên cạp quần cùng các đường kẻ ngang dứt khoát và đầy mạnh mẽ.</p>\n\n<p data-mce-style=\"text-align: justify;\"><strong>CHẤT LIỆU:</strong></p>\n\n<p data-mce-style=\"text-align: justify;\">- Chất liệu sợi Bamboo siêu việt giúp cho sản phẩm có độ mỏng nhẹ chỉ bằng 75% so với sợi cotton. Bề mặt vải cho cảm giác mềm mượt, bóng mịn cùng với khả năng kháng khuẩn tự nhiên và thấm mồ hôi vượt trội giúp thoáng khí và cân bằng độ ẩm cho da.</p>\n\n<p data-mce-style=\"text-align: justify;\"><strong>SIZE:</strong>&nbsp;S - M - L - XL - XXL</p>\n\n                </div>', '160666465220201129224412stCgjkN0hnbtxf3lAaBHRUD96gbqiMpHDQdECUgm.jpeg', 541.80, 541.80, 100, 12, 57, 1, '2023-07-30 00:00:00', '2023-07-30 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int UNSIGNED NOT NULL,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Áo', 'ao', '2023-07-30 00:00:00', '2023-07-30 00:00:00'),
(2, 'Quần', 'quan', '2023-07-30 00:00:00', '2023-07-30 00:00:00'),
(3, 'Đồ lót', 'do-lot', '2023-07-30 00:00:00', '2023-07-30 00:00:00'),
(4, 'Đồ bộ', 'do-bo', '2023-07-30 00:00:00', '2023-07-30 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `customer_id` int UNSIGNED DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `customer_notes` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `notes` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `amount` double(8,2) NOT NULL,
  `score_awards` double(8,2) NOT NULL DEFAULT '0.00',
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`,`phone_number`),
  ADD UNIQUE KEY `customers_phone_number_unique` (`phone_number`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_ibfk_1` (`product_category_id`),
  ADD KEY `products_ibfk_2` (`brand_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_id_unique` (`order_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `wishlists_ibfk_1` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=555;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`product_category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `transactions_ibfk_6` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wishlists_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

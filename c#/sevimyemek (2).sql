-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 02 Oca 2023, 15:30:27
-- Sunucu sürümü: 10.4.27-MariaDB
-- PHP Sürümü: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `sevimyemek`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `categorieId` int(12) NOT NULL,
  `categorieName` varchar(255) NOT NULL,
  `categorieDesc` text NOT NULL,
  `categorieCreateDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`categorieId`, `categorieName`, `categorieDesc`, `categorieCreateDate`) VALUES
(1, 'VEG PIZZA', 'A delight for veggie lovers! Choose from our wide range of delicious vegetarian pizzas, it\'s softer and tastier', '2021-03-17 18:16:28'),
(2, 'NON-VEG PIZZA', 'Choose your favourite non-veg pizzas from the Domino\'s Pizza menu. Get fresh non-veg pizza with your choice of crusts & toppings', '2021-03-17 18:17:14'),
(3, 'PIZZA MANIA', 'Indulge into mouth-watering taste of Pizza mania range, perfect answer to all your food cravings', '2021-03-17 18:17:43'),
(4, 'SIDES ORDERS', 'Complement your pizza with wide range of sides available at Domino\'s Pizza India', '2021-03-17 18:19:10'),
(5, 'BEVERAGES', 'Complement your pizza with wide range of beverages available at Domino\'s Pizza India', '2021-03-17 21:58:58'),
(6, 'CHOICE OF CRUSTS', 'Fresh Pan Pizza Tastiest Pan Pizza. ... Domino\'s freshly made pan-baked pizza; deliciously soft ,buttery,extra cheesy and delightfully crunchy.', '2021-03-18 07:55:28'),
(7, 'BURGER PIZZA', 'Domino’s Pizza Introducing all new Burger Pizza with the tag line looks like a burger, tastes like a pizza. Burger Pizza is burger sized but comes in a small pizza box. It is come with pizza toppings such as herbs, vegetables, tomato sauce and mozzarella,', '2021-03-18 08:06:30'),
(8, 'CHOICE OF TOPPINGS', 'CHOICE OF TOPPINGS', '2021-03-18 08:13:47');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contact`
--

CREATE TABLE `contact` (
  `contactId` int(21) NOT NULL,
  `userId` int(21) NOT NULL,
  `email` varchar(35) NOT NULL,
  `phoneNo` bigint(21) NOT NULL,
  `orderId` int(21) NOT NULL DEFAULT 0 COMMENT 'If problem is not related to the order then order id = 0',
  `message` text NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contactreply`
--

CREATE TABLE `contactreply` (
  `id` int(21) NOT NULL,
  `contactId` int(21) NOT NULL,
  `userId` int(23) NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `danilo`
--

CREATE TABLE `danilo` (
  `id` int(11) NOT NULL,
  `sehir` varchar(50) NOT NULL,
  `odul` varchar(50) NOT NULL,
  `restorant` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `danilo`
--

INSERT INTO `danilo` (`id`, `sehir`, `odul`, `restorant`) VALUES
(1, 'italya ', 'en iyi italyan şef ', 'danilost');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `deliverydetails`
--

CREATE TABLE `deliverydetails` (
  `id` int(21) NOT NULL,
  `orderId` int(21) NOT NULL,
  `deliveryBoyName` varchar(35) NOT NULL,
  `deliveryBoyPhoneNo` bigint(25) NOT NULL,
  `deliveryTime` int(200) NOT NULL COMMENT 'Time in minutes',
  `dateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gmtarif`
--

CREATE TABLE `gmtarif` (
  `id` int(11) NOT NULL,
  `corba` varchar(500) NOT NULL,
  `anayemek` varchar(500) NOT NULL,
  `tatli` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `gmtarif`
--

INSERT INTO `gmtarif` (`id`, `corba`, `anayemek`, `tatli`) VALUES
(1, '2 su bardağı kırmızı mercimek\r\n1 adet soğan\r\n2 yemek kaşığı un\r\n1 adet havuç\r\nYarım yemek kaşığı biber ya da  domates salçası (rengi kırmızı olsun isterseniz artırabilir ya da hiç kullanmayabilirsiniz)\r\n1 tatlı kaşığı tuz\r\nYarım çay kaşığı karabiber\r\n1 çay kaşığı kimyon (isteğe bağlı)\r\n2 litre sıcak su\r\n5 yemek kaşığı sıvı yağ', '4 adet orta boy patlıcan\r\n350g kıyma\r\n3 adet çarliston biber ya da köy biberi\r\n2 adet domates (rendelenmiş ya da küçük doğranmış)\r\n1 adet orta boy soğan\r\n1 su bardağı sıcak su\r\n2 diş sarımsak\r\n3 yemek kaşığı zeytinyağı\r\nTuz, karabiber, pul biber, kimyon\r\n1 yemek kaşığı salça\r\n1 çay bardağı sıcak su', '1 litre süt\r\n1 su bardağı şeker\r\n1 adet yumurta sarısı\r\n1 paket vanilya\r\n1 çay bardağı badem tozu\r\n1 çay bardağı Hindistan cevizi\r\n1 yemek kaşığı pirinç unu\r\n2 yemek kaşığı nişasta');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gununmenu`
--

CREATE TABLE `gununmenu` (
  `id` int(11) NOT NULL,
  `corba` varchar(50) NOT NULL,
  `anayemek` varchar(50) NOT NULL,
  `tatli` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `gununmenu`
--

INSERT INTO `gununmenu` (`id`, `corba`, `anayemek`, `tatli`) VALUES
(1, 'mercimek', 'musakka', 'keşkül');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mehmet`
--

CREATE TABLE `mehmet` (
  `id` int(11) NOT NULL,
  `sehir` varchar(11) NOT NULL,
  `odul` varchar(50) NOT NULL,
  `restorant` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `mehmet`
--

INSERT INTO `mehmet` (`id`, `sehir`, `odul`, `restorant`) VALUES
(1, 'Ordu', 'masterchef en iyi sunucu ödülü', 'bestrest');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oner`
--

CREATE TABLE `oner` (
  `id` int(11) NOT NULL,
  `adsoyad` varchar(50) NOT NULL,
  `eposta` varchar(50) NOT NULL,
  `oneriler` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `oner`
--

INSERT INTO `oner` (`id`, `adsoyad`, `eposta`, `oneriler`) VALUES
(1, 'uhgr', 'hre', 'ryt');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `orderitems`
--

CREATE TABLE `orderitems` (
  `id` int(21) NOT NULL,
  `orderId` int(21) NOT NULL,
  `pizzaId` int(21) NOT NULL,
  `itemQuantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `orders`
--

CREATE TABLE `orders` (
  `orderId` int(21) NOT NULL,
  `userId` int(21) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipCode` int(21) NOT NULL,
  `phoneNo` bigint(21) NOT NULL,
  `amount` int(200) NOT NULL,
  `paymentMode` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=cash on delivery, \r\n1=online ',
  `orderStatus` enum('0','1','2','3','4','5','6') NOT NULL DEFAULT '0' COMMENT '0=Order Placed.\r\n1=Order Confirmed.\r\n2=Preparing your Order.\r\n3=Your order is on the way!\r\n4=Order Delivered.\r\n5=Order Denied.\r\n6=Order Cancelled.',
  `orderDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pizza`
--

CREATE TABLE `pizza` (
  `pizzaId` int(12) NOT NULL,
  `pizzaName` varchar(255) NOT NULL,
  `pizzaPrice` int(12) NOT NULL,
  `pizzaDesc` text NOT NULL,
  `pizzaCategorieId` int(12) NOT NULL,
  `pizzaPubDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `pizza`
--

INSERT INTO `pizza` (`pizzaId`, `pizzaName`, `pizzaPrice`, `pizzaDesc`, `pizzaCategorieId`, `pizzaPubDate`) VALUES
(1, 'Margherita', 99, 'A hugely popular margherita, with a deliciously tangy single cheese topping\r\n\r\n', 1, '2021-03-17 21:03:26'),
(2, 'Double Cheese Margherita', 199, 'The ever-popular Margherita - loaded with extra cheese... oodies of it', 1, '2021-03-17 21:20:58'),
(3, 'Farm House\r\n', 149, 'A pizza that goes ballistic on veggies! Check out this mouth watering overload of crunchy, crisp capsicum, succulent mushrooms and fresh tomatoes\r\n\r\n', 1, '2021-03-17 21:22:07'),
(4, 'Peppy Paneer', 249, 'Chunky paneer with crisp capsicum and spicy red pepper - quite a mouthful!\r\n\r\n', 1, '2021-03-17 21:23:05'),
(5, 'Mexican Green Wave\r\n', 149, 'A pizza loaded with crunchy onions, crisp capsicum, juicy tomatoes and jalapeno with a liberal sprinkling of exotic Mexican herbs.\r\n\r\n', 1, '2021-03-17 21:23:48'),
(6, 'Deluxe Veggie\r\n', 319, 'For a vegetarian looking for a BIG treat that goes easy on the spices, this one\'s got it all.. The onions, the capsicum, those delectable mushrooms - with paneer and golden corn to top it all.\r\n\r\n', 1, '2021-03-17 21:24:38'),
(7, 'Veg Extravaganza\r\n', 299, 'A pizza that decidedly staggers under an overload of golden corn, exotic black olives, crunchy onions, crisp capsicum, succulent mushrooms, juicyfresh tomatoes and jalapeno - with extra cheese to go all around.\r\n\r\n', 1, '2021-03-17 21:25:42'),
(8, 'Cheese N Corn\r\n', 199, 'Cheese I Golden Corn', 1, '2021-03-17 21:26:31'),
(9, 'PANEER MAKHANI\r\n', 219, 'Paneer and Capsicum on Makhani Sauce', 1, '2021-03-17 21:27:21'),
(10, 'VEGGIE PARADISE\r\n', 299, 'Goldern Corn, Black Olives, Capsicum & Red Paprika\r\n\r\n', 1, '2021-03-17 21:28:06'),
(11, 'FRESH VEGGIE', 149, 'Onion I Capsicum', 1, '2021-03-17 21:28:49'),
(12, 'Indi Tandoori Paneer\r\n', 349, 'It is hot. It is spicy. It is oh-so-Indian. Tandoori paneer with capsicum I red paprika I mint mayo\r\n\r\n', 1, '2021-03-17 21:29:41'),
(13, 'PEPPER BARBECUE CHICKEN', 199, 'Pepper Barbecue Chicken I Cheese', 2, '2021-03-17 21:34:37'),
(14, 'CHICKEN SAUSAGE', 249, 'Chicken Sausage I Cheese', 2, '2021-03-17 21:35:31'),
(15, 'Chicken Golden Delight\r\n', 249, 'Mmm! Barbeque chicken with a topping of golden corn loaded with extra cheese. Worth its weight in gold!\r\n\r\n', 2, '2021-03-17 21:36:36'),
(16, 'Non Veg Supreme\r\n', 399, 'Bite into supreme delight of Black Olives, Onions, Grilled Mushrooms, Pepper BBQ Chicken, Peri-Peri Chicken, Grilled Chicken Rashers\r\n\r\n', 2, '2021-03-17 21:37:21'),
(17, 'Chicken Dominator', 319, 'Treat your taste buds with Double Pepper Barbecue Chicken, Peri-Peri Chicken, Chicken Tikka & Grilled Chicken Rashers', 2, '2021-03-17 21:38:13'),
(18, 'PEPPER BARBECUE & ONION\r\n', 249, 'Pepper Barbecue Chicken I Onion', 2, '2021-03-17 21:39:49'),
(19, 'CHICKEN FIESTA', 199, 'Grilled Chicken Rashers I Peri-Peri Chicken I Onion I Capsicum', 2, '2021-03-17 21:40:58'),
(20, 'Indi Chicken Tikka', 349, 'The wholesome flavour of tandoori masala with Chicken tikka I onion I red paprika I mint mayo', 2, '2021-03-17 21:41:49'),
(21, 'TOMATO', 99, 'Juicy tomato in a flavourful combination with cheese I tangy sauce', 3, '2021-03-17 21:44:44'),
(22, 'VEG LOADED', 149, 'Tomato | Grilled Mushroom |Jalapeno |Golden Corn | Beans in a fresh pan crust', 3, '2021-03-17 21:45:34'),
(23, 'CHEESY', 99, 'Orange Cheddar Cheese I Mozzarella', 3, '2021-03-17 21:46:21'),
(24, 'CAPSICUM', 99, 'Capsicum', 3, '2021-03-17 21:47:07'),
(25, 'ONION', 99, 'onion', 3, '2021-03-17 21:47:51'),
(26, 'GOLDEN CORN', 139, 'Golden Corn', 3, '2021-03-17 21:48:44'),
(27, 'PANEER & ONION', 149, 'Creamy Paneer | Onion', 3, '2021-03-17 21:49:36'),
(28, 'CHEESE N TOMATO', 149, 'A delectable combination of cheese and juicy tomato', 3, '2021-03-17 21:50:20'),
(29, 'Garlic Breadsticks', 99, 'The endearing tang of garlic in breadstics baked to perfection.', 4, '2021-03-17 22:01:33'),
(30, 'Stuffed Garlic Bread', 99, 'Freshly Baked Garlic Bread stuffed with mozzarella cheese, sweet corns & tangy and spicy jalapeños', 4, '2021-03-17 22:02:50'),
(31, 'Veg Pasta Italiano White', 99, 'Penne Pasta tossed with extra virgin olive oil, exotic herbs & a generous helping of new flavoured sauce.', 4, '2021-03-17 22:03:44'),
(32, 'Non Veg Pasta Italiano White', 99, 'Penne Pasta tossed with extra virgin olive oil, exotic herbs & a generous helping of new flavoured sauce.', 4, '2021-03-17 22:05:08'),
(33, 'Cheese Jalapeno Dip', 35, 'A soft creamy cheese dip spiced with jalapeno.', 4, '2021-03-17 22:06:06'),
(34, 'Cheese Dip', 35, 'A dreamy creamy cheese dip to add that extra tang to your snack.', 4, '2021-03-17 22:06:59'),
(35, 'Lava Cake', 99, 'Filled with delecious molten chocolate inside.', 4, '2021-03-17 22:08:13'),
(36, 'Butterscotch Mousse Cake', 149, 'A Creamy & Chocolaty indulgence with layers of rich, fluffy Butterscotch Cream and delicious Dark Chocolate Cake, topped with crunchy Dark Chocolate morsels - for a perfect dessert treat!', 4, '2021-03-17 22:08:58'),
(37, 'Lipton Ice Tea', 25, ' 250ml', 5, '2021-03-17 22:12:53'),
(38, 'Mirinda', 35, '500ml', 5, '2021-03-17 22:13:38'),
(39, 'PEPSI BLACK CAN', 45, 'PEPSI BLACK CAN', 5, '2021-03-17 22:14:24'),
(40, 'Pepsi\r\n', 52, '500ml', 5, '2021-03-17 22:16:29'),
(41, '7Up', 52, '500ml', 5, '2021-03-17 22:17:08'),
(42, 'Cheese Burst', 249, 'Crust with oodles of yummy liquid cheese filled inside.', 6, '2021-03-18 07:57:27'),
(43, 'Classic Hand Tossed', 249, 'Dominos traditional hand stretched crust, crisp on outside, soft & light inside.', 6, '2021-03-18 07:59:52'),
(44, 'Wheat Thin Crust', 299, 'Presenting the light healthier and delicious light wheat thin crust from Dominos.', 6, '2021-03-18 08:00:39'),
(45, 'Fresh Pan Pizza', 299, 'Tastiest Pan Pizza.Ever.\r\nDomino’s freshly made pan-baked pizza; deliciously soft ,buttery,extra cheesy and delightfully crunchy.', 6, '2021-03-18 08:01:29'),
(46, 'New Hand Tossed', 299, 'Classic Domino\'s crust. Fresh, hand stretched.', 6, '2021-03-18 08:03:17'),
(47, 'BURGER PIZZA- CLASSIC VEG', 129, 'Bite into delight! Witness the epic combination of pizza and burger with our classic Burger Pizza, that looks good and tastes great!', 7, '2021-03-18 08:09:17'),
(48, 'BURGER PIZZA- PREMIUM VEG', 139, 'The good just got better! Treat yourself to the premium taste of the Burger Pizza, that looks good and tastes great with paneer and red paprika.', 7, '2021-03-18 08:09:59'),
(49, 'BURGER PIZZA- CLASSIC NON VEG', 149, 'For all the meat cravers, try the classic non-veg Burger Pizza loaded with the goodness of burger and the greatness of pizza.', 7, '2021-03-18 08:10:37'),
(50, 'Extra Cheese', 35, 'Extra Cheese', 8, '2021-03-18 08:14:52'),
(51, 'veg toppings', 55, 'Black Olives, Crisp Capsicum, Paneer, Mushroom, Golden Corn, Fresh Tomato, Jalapeno, Red Pepper & Babycorn.', 8, '2021-03-18 08:15:36'),
(52, 'Non Veg Toppings', 55, 'Barbeque Chicken, Hot \'n\' Spicy Chicken,Chunky Chicken and Chicken Salami.', 8, '2021-03-18 08:16:29'),
(53, 'Packaged Drinking Water', 20, 'Drinking Water	', 5, '2021-03-18 08:20:40');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sitedetail`
--

CREATE TABLE `sitedetail` (
  `tempId` int(11) NOT NULL,
  `systemName` varchar(21) NOT NULL,
  `email` varchar(35) NOT NULL,
  `contact1` bigint(21) NOT NULL,
  `contact2` bigint(21) DEFAULT NULL COMMENT 'Optional',
  `address` text NOT NULL,
  `dateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `sitedetail`
--

INSERT INTO `sitedetail` (`tempId`, `systemName`, `email`, `contact1`, `contact2`, `address`, `dateTime`) VALUES
(1, 'Pizza World', 'darshanparmar263@gmail.com', 2515469442, 6304468851, '601 Sherwood Ave.<br> San Bernandino', '2021-03-23 19:56:25');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `somer`
--

CREATE TABLE `somer` (
  `id` int(11) NOT NULL,
  `sehir` varchar(100) NOT NULL,
  `odul` varchar(100) NOT NULL,
  `restorant` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `somer`
--

INSERT INTO `somer` (`id`, `sehir`, `odul`, `restorant`) VALUES
(1, 'Bolu ', 'En iyi aşçı ödülü ', 'mackeat restorant');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(21) NOT NULL,
  `username` varchar(21) NOT NULL,
  `firstName` varchar(21) NOT NULL,
  `lastName` varchar(21) NOT NULL,
  `email` varchar(35) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `userType` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=user\r\n1=admin',
  `password` varchar(255) NOT NULL,
  `joinDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `phone`, `userType`, `password`, `joinDate`) VALUES
(1, 'admin', 'admin', 'admin', 'admin@gmail.com', 1111111111, '1', '$2y$10$AAfxRFOYbl7FdN17rN3fgeiPu/xQrx6MnvRGzqjVHlGqHAM4d9T1i', '2021-04-11 11:40:58');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uyelertablo`
--

CREATE TABLE `uyelertablo` (
  `id` int(11) NOT NULL,
  `kullanici_adi` varchar(50) NOT NULL,
  `sifre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `uyelertablo`
--

INSERT INTO `uyelertablo` (`id`, `kullanici_adi`, `sifre`) VALUES
(1, 'admin', 'a'),
(3, '1', '1'),
(5, '1212', '1212');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `viewcart`
--

CREATE TABLE `viewcart` (
  `cartItemId` int(11) NOT NULL,
  `pizzaId` int(11) NOT NULL,
  `itemQuantity` int(100) NOT NULL,
  `userId` int(11) NOT NULL,
  `addedDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categorieId`);
ALTER TABLE `categories` ADD FULLTEXT KEY `categorieName` (`categorieName`,`categorieDesc`);

--
-- Tablo için indeksler `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contactId`);

--
-- Tablo için indeksler `contactreply`
--
ALTER TABLE `contactreply`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `danilo`
--
ALTER TABLE `danilo`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `deliverydetails`
--
ALTER TABLE `deliverydetails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orderId` (`orderId`);

--
-- Tablo için indeksler `gmtarif`
--
ALTER TABLE `gmtarif`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `gununmenu`
--
ALTER TABLE `gununmenu`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `mehmet`
--
ALTER TABLE `mehmet`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `oner`
--
ALTER TABLE `oner`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderId`);

--
-- Tablo için indeksler `pizza`
--
ALTER TABLE `pizza`
  ADD PRIMARY KEY (`pizzaId`);
ALTER TABLE `pizza` ADD FULLTEXT KEY `pizzaName` (`pizzaName`,`pizzaDesc`);

--
-- Tablo için indeksler `sitedetail`
--
ALTER TABLE `sitedetail`
  ADD PRIMARY KEY (`tempId`);

--
-- Tablo için indeksler `somer`
--
ALTER TABLE `somer`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `username` (`username`);

--
-- Tablo için indeksler `uyelertablo`
--
ALTER TABLE `uyelertablo`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `viewcart`
--
ALTER TABLE `viewcart`
  ADD PRIMARY KEY (`cartItemId`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `categorieId` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Tablo için AUTO_INCREMENT değeri `contact`
--
ALTER TABLE `contact`
  MODIFY `contactId` int(21) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `contactreply`
--
ALTER TABLE `contactreply`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `danilo`
--
ALTER TABLE `danilo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `deliverydetails`
--
ALTER TABLE `deliverydetails`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `gmtarif`
--
ALTER TABLE `gmtarif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `gununmenu`
--
ALTER TABLE `gununmenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `mehmet`
--
ALTER TABLE `mehmet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `oner`
--
ALTER TABLE `oner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `orders`
--
ALTER TABLE `orders`
  MODIFY `orderId` int(21) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `pizza`
--
ALTER TABLE `pizza`
  MODIFY `pizzaId` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- Tablo için AUTO_INCREMENT değeri `sitedetail`
--
ALTER TABLE `sitedetail`
  MODIFY `tempId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `somer`
--
ALTER TABLE `somer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `uyelertablo`
--
ALTER TABLE `uyelertablo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `viewcart`
--
ALTER TABLE `viewcart`
  MODIFY `cartItemId` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

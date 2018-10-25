-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-10-2018 a las 07:51:02
-- Versión del servidor: 10.1.25-MariaDB
-- Versión de PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pcinnovations`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carousel`
--

CREATE TABLE `carousel` (
  `productid` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `idphoto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `carousel`
--

INSERT INTO `carousel` (`productid`, `photo`, `idphoto`) VALUES
(41, 'upload/101-BLACK_1526361234.jpg', 39),
(49, 'upload/1070_1528093400.jpg', 92),
(20, 'upload/13-145-005-V02_1524339054.jpg', 18),
(36, 'upload/1456512265938-30574483_9866_1526359083.jpg', 34),
(13, 'upload/19-113-43420front-1_1524298140.jpg', 11),
(76, 'upload/19-117-826-Z01_1536809684.jpg', 1394),
(33, 'upload/1_1526051709.jpg', 31),
(69, 'upload/1_500_1530760511.jpg', 833),
(32, 'upload/20-228-164-03_1526051429.jpg', 30),
(14, 'upload/20151106104621_big_1524298381.png', 12),
(25, 'upload/20160721193143_big_1525834284.png', 23),
(61, 'upload/20160721193143_big_1529996596.png', 271),
(18, 'upload/2017032815061595_m_1524338405.png', 16),
(26, 'upload/2017041717160472_big_1525838439.png', 24),
(35, 'upload/2017042718050455_big_1526358969.png', 33),
(17, 'upload/2017092017344513_big_1524431913.png', 15),
(42, 'upload/26306417_4593791187_1526361404.jpg', 40),
(31, 'upload/2686873-a_1526050996.jpg', 29),
(15, 'upload/71cHYy6qaCL._SL1000__1524298597.jpg', 13),
(6, 'upload/8100_1523915901.jpg', 4),
(74, 'upload/81a2aBCgDML._SX425__1536809068.jpg', 1249),
(66, 'upload/81aPq2ihg2L._SX425__1530758799.jpg', 638),
(9, 'upload/86002_1524297142.jpg', 7),
(2, 'upload/86002_1526239950.jpg', 1),
(48, 'upload/8700k_1528091988.png', 91),
(71, 'upload/915voJ1XLHL._SX425__1536560074.jpg', 969),
(89, 'upload/aerocool-cylon-rgb.jpg', 1480),
(90, 'upload/aerocool-quartz-rgb.jpg', 1481),
(12, 'upload/AMD-RYZEN-5-1600-3.4-GHz-Socket-AM4-Processor-with-Wraith-Stealth-65W-cooler_1524297919.jpg', 10),
(64, 'upload/aoc-g2460pqu_1530758290.jpg', 451),
(106, 'upload/asus-prime-a320m-k.jpg', 1497),
(108, 'upload/asus-prime-b450m-a.jpg', 1499),
(117, 'upload/asus-prime-z370-a.jpg', 1508),
(120, 'upload/asus-rog-crosshair-vii-hero-wi-fi.jpg', 1511),
(110, 'upload/asus-rog-strix-b360-i.jpg', 1501),
(109, 'upload/asus-rog-strix-b450-f', 1500),
(115, 'upload/asus-rog-strix-b450-i.jpg', 1506),
(70, 'upload/asus-rog-strix-geforce-gtx-1060-oc-6gb-gddr5_1536559740.jpg', 901),
(111, 'upload/asus-rog-strix-h370-f.jpg', 1502),
(119, 'upload/asus-rog-strix-x470-f.jpg', 1510),
(116, 'upload/asus-rog-strix-x470-pro.jpg', 1507),
(19, 'upload/asus-rog-strix-z370-e_1524431955.jpg', 17),
(118, 'upload/asus-rog-strix-z370-i.jpg', 1509),
(112, 'upload/asus-rog-strix-z370-p.jpg', 1503),
(107, 'upload/asus-tuf-b360m-e-gaming.jpg', 1498),
(113, 'upload/asus-tuf-x470-plus-gaming.jpg', 1504),
(114, 'upload/asus-tuf-z370-pro-gaming.jpg', 1505),
(45, 'upload/azza-korpus-inferno-310-window-must_1526361799.jpg', 43),
(39, 'upload/azza-photios-250-3-x-usb20-1-x-usb30_1526360635.jpg', 37),
(52, 'upload/azza-photios-250-3-x-usb20-1-x-usb30_1528668552.jpg', 94),
(40, 'upload/CJCIN303WHITE_00001_1526361019.jpg', 38),
(7, 'upload/core-i5-7500_1523916373.jpg', 5),
(79, 'upload/corsair-carbide-275r-blanco.jpg', 1470),
(80, 'upload/corsair-carbide-275r-negro.jpg', 1471),
(78, 'upload/corsair-carbide-spec-04-rojo-vidrio-temperado.jpg', 1469),
(82, 'upload/corsair-carbide-spec-omega-blanco.jpg', 1473),
(83, 'upload/corsair-carbide-spec-omega-negro.jpg', 1474),
(81, 'upload/corsair-carbide-spec-omega-rojo.jpg', 1472),
(137, 'upload/corsair-combo.jpg', 1527),
(58, 'upload/corsair-cooling-hydro-series-h100i-gtx-4_1528676428.jpg', 100),
(85, 'upload/corsair-crystal-460x-rgb-blanco.jpg', 1476),
(84, 'upload/corsair-crystal-460x-rgb.jpg', 1475),
(88, 'upload/corsair-crystal-570x-rgb-mirror.jpg', 1479),
(87, 'upload/corsair-crystal-570x-rgb.jpg', 1478),
(135, 'upload/corsair-dark-core-rgb.jpg', 1525),
(132, 'upload/corsair-glaive-rgb.jpg', 1522),
(129, 'upload/corsair-harpoon-rgb.jpg', 1519),
(140, 'upload/corsair-hs50-azul.jpg', 1530),
(139, 'upload/corsair-hs50-verde.jpg', 1529),
(138, 'upload/corsair-hs50.jpg', 1528),
(136, 'upload/corsair-k55-harpoon-rgb.jpg', 1526),
(122, 'upload/corsair-k55-rgb.jpg', 1512),
(126, 'upload/corsair-k70-rgb-mk2-rapidfire.jpg', 1516),
(127, 'upload/corsair-k70-rgb-mk2-se.jpg', 1517),
(125, 'upload/corsair-k70-rgb-mk2.jpg', 1515),
(128, 'upload/corsair-k95-rgb-platinum-cherry-mx-speed.jpg', 1518),
(130, 'upload/corsair-m65-pro-rgb-blanco.jpg', 1520),
(131, 'upload/corsair-m65-pro-rgb.jpg', 1521),
(149, 'upload/corsair-mm1000.jpg', 1539),
(147, 'upload/corsair-mm300-extended.jpg', 1537),
(148, 'upload/corsair-mm800-rgb.jpg', 1538),
(86, 'upload/corsair-obsidian-500d.jpg', 1477),
(133, 'upload/corsair-scimitar-rgb-negro.jpg', 1523),
(134, 'upload/corsair-scimitar-rgb.jpg', 1524),
(141, 'upload/corsair-st100-rgb.jpg', 1531),
(123, 'upload/corsair-strafe-rgb-mk2-cherry-mx-red.jpg', 1513),
(124, 'upload/corsair-strafe-rgb-mk2-cherry-mx-silent.jpg', 1514),
(143, 'upload/corsair-void-pro-rgb-usb-blanco.jpg', 1533),
(144, 'upload/corsair-void-pro-rgb-usb-negro.jpg', 1534),
(142, 'upload/corsair-void-pro-rgb-usb-rojo.jpg', 1532),
(145, 'upload/corsair-void-pro-rgb-wireless-blanco.jpg', 1535),
(146, 'upload/corsair-void-rgb-wireless.jpg', 1536),
(37, 'upload/corsair-vs650-650w-vs-series-80-plus_1526360061.jpg', 35),
(98, 'upload/cougar-conquer.jpg', 1489),
(97, 'upload/cougar-panzer-evo.jpg', 1488),
(95, 'upload/cougar-panzer-g.jpg', 1486),
(96, 'upload/cougar-panzer-max.jpg', 1487),
(94, 'upload/cougar-panzer-s.jpg', 1485),
(93, 'upload/cougar-panzer.jpg', 1484),
(11, 'upload/CP-AMD-YD2400C5FBBOX-1_1524297764.jpg', 9),
(65, 'upload/es-curved-cf390-lc27f390fhuxen-018-dynamic-black_1530758531.jpg', 513),
(5, 'upload/g4560_1523915668.jpg', 3),
(77, 'upload/gczt-080_gczt_080_1g_800x800_1536809918.jpg', 1468),
(60, 'upload/gczt-087_gczt_087_1g_800x800_1529996425.jpg', 213),
(59, 'upload/gczt-088_gczt_088_1g_800x800_1529996144.jpg', 156),
(62, 'upload/gigabyte-radeon-rx-480-g1-gaming-D_NQ_NP_634406-MPE27536858467_062018-F_1529996782.jpg', 330),
(23, 'upload/GX315EA_166346_800x800_1525766359.jpg', 21),
(24, 'upload/GX40SAS_158723_800x800_1525766852.jpg', 22),
(34, 'upload/HS038CS_176348_800x800_1526052007.jpg', 32),
(8, 'upload/I5-8400_1523916888.jpg', 6),
(10, 'upload/i7-7700k_04_1524297459.jpg', 8),
(47, 'upload/in-win-303c-rgb-negro_1526362205.jpg', 45),
(53, 'upload/in-win-303c-rgb-negro_1528671832.jpg', 95),
(73, 'upload/index_1536560547.jpg', 1108),
(67, 'upload/kit1_1530760008.png', 702),
(68, 'upload/kit2_1530760090.png', 767),
(57, 'upload/large_c6637a7493d26889_1528676276.png', 99),
(43, 'upload/large_c9e6ed04b5d1b066_1526361482.png', 41),
(3, 'upload/lg-2k.jpg', 2),
(38, 'upload/main850_1526360419.jpg', 36),
(56, 'upload/NZXT-Kraken-X42_1528676116.png', 98),
(46, 'upload/phanteks-eclipse-p400-tg-blanco_1526362142.jpg', 44),
(44, 'upload/pic5_1526361649.png', 42),
(63, 'upload/placa-asus-rog-strix-z270i-gaming-lga-1151_1529996971.jpg', 390),
(16, 'upload/P_setting_fff_1_90_end_500.png_1524298775.jpg', 14),
(50, 'upload/RX 580_1528094194.jpg', 93),
(75, 'upload/ryzen7_1536809471.jpg', 1321),
(28, 'upload/s-l1000_1525887707.jpg', 26),
(54, 'upload/s340 elite rojo_1528674076.jpg', 96),
(29, 'upload/team-group-l5-lite-3d-240gb-25-sata3-disco-ssd-001_1526050334.jpg', 27),
(30, 'upload/TeamGroup-T253TD480G3C101-Hard-drives-82300_1526050706.png', 28),
(99, 'upload/thermaltake-core-p1-vidrio-temperado.jpg', 1490),
(100, 'upload/thermaltake-core-p3-vidrio-temperado-snow.jpg', 1491),
(101, 'upload/thermaltake-core-p3-vidrio-temperado.jpg', 1492),
(103, 'upload/thermaltake-core-p90.jpg', 1494),
(102, 'upload/thermaltake-core-x71-vidrio-temperado.jpg', 1493),
(105, 'upload/thermaltake-view-71-rgb.jpg', 1496),
(104, 'upload/thermaltake-view-71.jpg', 1495),
(55, 'upload/titan Z_1528675311.jpg', 97),
(27, 'upload/toshiba_1525887199.jpg', 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart`
--

CREATE TABLE `cart` (
  `cartid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `qty` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cart`
--

INSERT INTO `cart` (`cartid`, `userid`, `productid`, `qty`) VALUES
(1, 2, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `categoryid` int(11) NOT NULL,
  `category_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`categoryid`, `category_name`) VALUES
(1, 'Mobo'),
(2, 'cpu-intel'),
(3, 'cpu-amd'),
(4, 'monitores'),
(5, 'ram'),
(6, 'gpu'),
(7, 'kits'),
(8, 'PCGAMER'),
(9, 'psu'),
(10, 'case'),
(11, 'hogar'),
(12, 'laptops'),
(13, 'HDD'),
(14, 'cooler'),
(15, 'ventiladores'),
(16, 'Teclados'),
(17, 'Mouse'),
(18, 'combo teclado y mouse'),
(19, 'Headset'),
(20, 'Mousepad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customer`
--

CREATE TABLE `customer` (
  `userid` int(11) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `customer`
--

INSERT INTO `customer` (`userid`, `customer_name`, `address`, `contact`) VALUES
(2, 'Jose Molina Cascante', 'Nicoya Costa Rica', '+50661372755');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventory`
--

CREATE TABLE `inventory` (
  `inventoryid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `action` varchar(50) NOT NULL,
  `productid` int(11) NOT NULL,
  `quantity` double NOT NULL,
  `inventory_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `inventory`
--

INSERT INTO `inventory` (`inventoryid`, `userid`, `action`, `productid`, `quantity`, `inventory_date`) VALUES
(1, 2, 'Purchase', 4, 10, '2017-09-18 09:32:01'),
(2, 2, 'Purchase', 20, 10, '2017-09-18 09:32:01'),
(3, 2, 'Purchase', 1, 99, '2017-09-18 09:32:01'),
(4, 2, 'Purchase', 2, 20, '2017-09-18 09:32:01'),
(5, 2, 'Purchase', 2, 10, '2017-09-18 09:34:29'),
(6, 2, 'Purchase', 2, 10, '2017-09-18 11:09:21'),
(7, 2, 'Purchase', 3, 12, '2017-09-18 11:09:22'),
(8, 2, 'Purchase', 4, 8, '2017-09-18 11:09:22'),
(9, 1, 'Add Product', 27, 10, '2017-09-18 13:59:25'),
(10, 1, 'Update quantity', 27, 20, '2017-09-18 14:04:32'),
(11, 1, 'Add Product', 23, 10, '2017-11-19 17:44:44'),
(12, 2, 'Purchase', 23, 1, '2017-11-19 17:45:58'),
(13, 1, 'Add Product', 24, 20, '2017-11-22 19:34:56'),
(14, 1, 'Purchase', 24, 1, '2017-11-22 19:47:29'),
(15, 1, 'Add Product', 25, 0, '2017-12-01 22:12:09'),
(16, 1, 'Update Quantity', 25, 0, '2017-12-01 22:12:58'),
(17, 1, 'Add Product', 26, 0, '2017-12-01 22:13:30'),
(18, 1, 'Add Product', 27, 10, '2017-12-01 22:18:30'),
(19, 1, 'Purchase', 23, 1, '2017-12-04 21:16:56'),
(20, 1, 'Purchase', 27, 2, '2017-12-04 21:17:25'),
(21, 1, 'Add Product', 28, 0, '2017-12-05 17:46:36'),
(22, 1, 'Update Quantity', 28, 10, '2017-12-06 17:39:28'),
(23, 1, 'Add Product', 35, 20, '2018-01-19 11:53:07'),
(24, 1, 'Add Product', 36, 20, '2018-01-19 11:55:09'),
(25, 1, 'Add Product', 37, 10, '2018-01-19 12:01:02'),
(26, 1, 'Add Product', 38, 10, '2018-01-19 12:08:32'),
(27, 1, 'Add Product', 39, 20, '2018-01-19 15:00:27'),
(28, 1, 'Add Product', 40, 10, '2018-01-19 15:11:58'),
(29, 1, 'Add Product', 41, 2, '2018-01-28 11:00:12'),
(30, 1, 'Add Product', 42, 10, '2018-01-28 14:42:31'),
(31, 1, 'Add Product', 43, 10, '2018-01-28 14:48:40'),
(32, 1, 'Add Product', 44, 10, '2018-01-28 14:53:25'),
(33, 1, 'Add Product', 45, 10, '2018-01-28 14:55:16'),
(34, 1, 'Update Quantity', 34, 1, '2018-01-28 15:21:32'),
(35, 1, 'Update Quantity', 28, 1, '2018-01-28 15:22:08'),
(36, 1, 'Add Product', 46, 10, '2018-01-28 15:27:04'),
(37, 1, 'Add Product', 47, 10, '2018-01-28 15:29:46'),
(38, 1, 'Add Product', 48, 10, '2018-01-28 15:30:36'),
(39, 1, 'Add Product', 49, 10, '2018-01-28 15:31:21'),
(40, 1, 'Add Product', 50, 10, '2018-01-28 16:05:41'),
(41, 1, 'Add Product', 5, 10, '2018-04-16 15:48:07'),
(42, 1, 'Add Product', 6, 10, '2018-04-16 15:58:21'),
(43, 1, 'Add Product', 0, 10, '2018-04-16 16:05:51'),
(44, 1, 'Add Product', 7, 10, '2018-04-16 16:06:13'),
(45, 1, 'Add Product', 8, 10, '2018-04-16 16:14:48'),
(46, 1, 'Add Product', 9, 10, '2018-04-21 01:52:22'),
(47, 1, 'Add Product', 10, 10, '2018-04-21 01:56:28'),
(48, 1, 'Add Product', 11, 10, '2018-04-21 02:01:28'),
(49, 1, 'Add Product', 12, 10, '2018-04-21 02:04:41'),
(50, 1, 'Add Product', 13, 10, '2018-04-21 02:07:59'),
(51, 1, 'Add Product', 14, 10, '2018-04-21 02:13:01'),
(52, 1, 'Add Product', 15, 10, '2018-04-21 02:16:37'),
(53, 1, 'Add Product', 16, 10, '2018-04-21 02:19:35'),
(54, 1, 'Add Product', 17, 10, '2018-04-21 13:15:01'),
(55, 1, 'Add Product', 18, 10, '2018-04-21 13:20:06'),
(56, 1, 'Add Product', 19, 10, '2018-04-21 13:25:12'),
(57, 1, 'Add Product', 20, 10, '2018-04-21 13:27:13'),
(58, 1, 'Add Product', 21, 10, '2018-04-21 13:35:02'),
(59, 1, 'Add Product', 22, 0, '2018-04-21 13:37:50'),
(60, 1, 'Add Product', 23, 10, '2018-05-08 00:59:19'),
(61, 1, 'Add Product', 24, 10, '2018-05-08 01:07:32'),
(62, 1, 'Add Product', 0, 10, '2018-05-08 19:50:53'),
(63, 1, 'Add Product', 25, 10, '2018-05-08 19:51:24'),
(64, 1, 'Add Product', 26, 10, '2018-05-08 21:00:39'),
(65, 1, 'Add Product', 27, 10, '2018-05-09 10:33:19'),
(66, 1, 'Add Product', 28, 10, '2018-05-09 10:39:50'),
(67, 1, 'Add Product', 29, 10, '2018-05-11 07:52:14'),
(68, 1, 'Add Product', 0, 10, '2018-05-11 07:56:34'),
(69, 1, 'Add Product', 30, 10, '2018-05-11 07:58:26'),
(70, 1, 'Add Product', 31, 10, '2018-05-11 08:03:16'),
(71, 1, 'Add Product', 32, 10, '2018-05-11 08:10:29'),
(72, 1, 'Add Product', 33, 10, '2018-05-11 08:15:09'),
(73, 1, 'Add Product', 34, 10, '2018-05-11 08:20:07'),
(74, 1, 'Add Product', 35, 10, '2018-05-14 21:36:09'),
(75, 1, 'Add Product', 36, 10, '2018-05-14 21:38:03'),
(76, 1, 'Add Product', 37, 10, '2018-05-14 21:54:21'),
(77, 1, 'Add Product', 0, 10, '2018-05-14 21:59:42'),
(78, 1, 'Add Product', 38, 10, '2018-05-14 22:00:19'),
(79, 1, 'Add Product', 0, 10, '2018-05-14 22:03:27'),
(80, 1, 'Add Product', 39, 10, '2018-05-14 22:03:55'),
(81, 1, 'Add Product', 40, 10, '2018-05-14 22:10:19'),
(82, 1, 'Add Product', 41, 10, '2018-05-14 22:13:54'),
(83, 1, 'Add Product', 42, 10, '2018-05-14 22:16:44'),
(84, 1, 'Add Product', 43, 10, '2018-05-14 22:18:02'),
(85, 1, 'Add Product', 44, 10, '2018-05-14 22:20:49'),
(86, 1, 'Add Product', 45, 10, '2018-05-14 22:23:05'),
(87, 1, 'Add Product', 0, 10, '2018-05-14 22:27:21'),
(88, 1, 'Add Product', 46, 10, '2018-05-14 22:29:02'),
(89, 1, 'Add Product', 47, 10, '2018-05-14 22:30:05'),
(90, 1, 'Add Product', 48, 10, '2018-06-03 22:59:11'),
(91, 1, 'Add Product', 49, 10, '2018-06-03 23:23:20'),
(92, 1, 'Add Product', 0, 10, '2018-06-03 23:35:31'),
(93, 1, 'Add Product', 0, 10, '2018-06-03 23:36:00'),
(94, 1, 'Add Product', 50, 10, '2018-06-03 23:36:34'),
(95, 1, 'Add Product', 51, 10, '2018-06-10 14:05:00'),
(96, 1, 'Add Product', 52, 10, '2018-06-10 14:06:01'),
(97, 1, 'Add Product', 53, 10, '2018-06-10 16:03:52'),
(98, 1, 'Add Product', 54, 10, '2018-06-10 16:41:16'),
(99, 1, 'Add Product', 55, 10, '2018-06-10 17:01:51'),
(100, 1, 'Add Product', 56, 10, '2018-06-10 17:15:16'),
(101, 1, 'Add Product', 57, 10, '2018-06-10 17:17:56'),
(102, 1, 'Add Product', 58, 10, '2018-06-10 17:20:28'),
(103, 1, 'Update Quantity', 20, 3, '2018-06-22 19:17:25'),
(104, 1, 'Update Quantity', 23, 0, '2018-06-22 19:19:05'),
(105, 1, 'Update Quantity', 55, 0, '2018-06-22 19:24:38'),
(106, 1, 'Update Quantity', 53, 2, '2018-06-22 19:32:07'),
(107, 1, 'Update Quantity', 54, 3, '2018-06-22 19:39:20'),
(108, 1, 'Update Quantity', 26, 2, '2018-06-24 13:52:57'),
(109, 1, 'Update Quantity', 49, 0, '2018-06-25 18:05:33'),
(110, 1, 'Add Product', 59, 10, '2018-06-25 23:55:44'),
(111, 1, 'Add Product', 60, 10, '2018-06-26 00:00:25'),
(112, 1, 'Add Product', 61, 10, '2018-06-26 00:03:16'),
(113, 1, 'Add Product', 62, 10, '2018-06-26 00:06:22'),
(114, 1, 'Add Product', 63, 10, '2018-06-26 00:09:31'),
(115, 1, 'Update Quantity', 25, 3, '2018-06-30 17:38:35'),
(116, 1, 'Update Quantity', 58, 3, '2018-06-30 17:40:43'),
(117, 1, 'Update Quantity', 56, 2, '2018-06-30 17:41:06'),
(118, 1, 'Update Quantity', 57, 2, '2018-06-30 17:41:41'),
(119, 1, 'Update Quantity', 6, 3, '2018-06-30 17:42:40'),
(120, 1, 'Update Quantity', 10, 2, '2018-06-30 17:43:24'),
(121, 1, 'Update Quantity', 48, 0, '2018-06-30 17:43:44'),
(122, 1, 'Update Quantity', 9, 0, '2018-06-30 17:44:26'),
(123, 1, 'Update Quantity', 7, 4, '2018-06-30 17:44:56'),
(124, 1, 'Update Quantity', 53, 3, '2018-06-30 17:45:38'),
(125, 1, 'Update Quantity', 52, 104, '2018-06-30 17:45:52'),
(126, 1, 'Update Quantity', 12, 5, '2018-06-30 17:46:37'),
(127, 1, 'Update Quantity', 13, 3, '2018-06-30 17:47:06'),
(128, 1, 'Update Quantity', 11, 3, '2018-06-30 17:47:26'),
(129, 1, 'Update Quantity', 18, 0, '2018-06-30 17:53:59'),
(130, 1, 'Update Quantity', 31, 102, '2018-06-30 17:55:35'),
(131, 1, 'Update Quantity', 32, 1, '2018-06-30 17:55:53'),
(132, 1, 'Update Quantity', 31, 2, '2018-06-30 17:56:10'),
(133, 1, 'Update Quantity', 3, 0, '2018-06-30 17:57:30'),
(134, 1, 'Add Product', 64, 10, '2018-07-04 19:38:10'),
(135, 1, 'Add Product', 65, 10, '2018-07-04 19:42:11'),
(136, 1, 'Add Product', 0, 10, '2018-07-04 19:46:00'),
(137, 1, 'Add Product', 66, 10, '2018-07-04 19:46:39'),
(138, 1, 'Add Product', 67, 10, '2018-07-04 20:06:48'),
(139, 1, 'Add Product', 68, 10, '2018-07-04 20:08:10'),
(140, 1, 'Add Product', 69, 10, '2018-07-04 20:15:11'),
(141, 1, 'Update Quantity', 52, 3, '2018-07-23 18:36:07'),
(142, 1, 'Add Product', 70, 10, '2018-09-09 23:09:00'),
(143, 1, 'Add Product', 71, 10, '2018-09-09 23:14:34'),
(144, 1, 'Add Product', 72, 10, '2018-09-09 23:19:42'),
(145, 1, 'Add Product', 73, 10, '2018-09-09 23:22:27'),
(146, 1, 'Update Quantity', 7, 0, '2018-09-12 16:18:55'),
(147, 1, 'Add Product', 0, 10, '2018-09-12 20:23:05'),
(148, 1, 'Add Product', 74, 10, '2018-09-12 20:24:28'),
(149, 1, 'Add Product', 75, 10, '2018-09-12 20:31:11'),
(150, 1, 'Add Product', 76, 10, '2018-09-12 20:34:44'),
(151, 1, 'Add Product', 77, 10, '2018-09-12 20:38:38'),
(152, 1, 'Update Quantity', 2, 0, '2018-10-15 14:08:41'),
(153, 1, 'Update Quantity', 20, 0, '2018-10-15 14:09:01'),
(154, 1, 'Update Quantity', 63, 0, '2018-10-15 14:09:17'),
(155, 1, 'Update Quantity', 76, 2, '2018-10-15 14:10:10'),
(156, 1, 'Update Quantity', 69, 0, '2018-10-15 14:10:39'),
(157, 1, 'Update Quantity', 65, 0, '2018-10-15 14:13:13'),
(158, 1, 'Update Quantity', 24, 0, '2018-10-15 14:13:43'),
(159, 1, 'Update Quantity', 50, 3, '2018-10-15 14:15:03'),
(160, 1, 'Update Quantity', 59, 100, '2018-10-15 14:15:20'),
(161, 1, 'Update Quantity', 49, 2, '2018-10-15 14:34:31'),
(162, 1, 'Update Quantity', 61, 0, '2018-10-15 14:34:53'),
(163, 1, 'Update Quantity', 62, 0, '2018-10-15 14:35:11'),
(164, 1, 'Update Quantity', 70, 0, '2018-10-15 14:35:38'),
(165, 1, 'Update Quantity', 59, 3, '2018-10-15 14:54:35'),
(166, 1, 'Update Quantity', 71, 0, '2018-10-15 14:54:57'),
(167, 1, 'Update Quantity', 72, 100, '2018-10-15 14:55:14'),
(168, 1, 'Update Quantity', 72, 0, '2018-10-15 14:55:27'),
(169, 1, 'Update Quantity', 77, 0, '2018-10-15 14:55:51'),
(170, 1, 'Update Quantity', 73, 0, '2018-10-15 14:56:10'),
(171, 1, 'Update Quantity', 74, 0, '2018-10-15 14:56:22'),
(172, 1, 'Update Quantity', 36, 0, '2018-10-15 15:01:07'),
(173, 1, 'Update Quantity', 39, 0, '2018-10-15 15:02:08'),
(174, 1, 'Update Quantity', 40, 100, '2018-10-15 15:02:36'),
(175, 1, 'Update Quantity', 40, 0, '2018-10-15 15:02:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `productid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `product_name` varchar(150) NOT NULL,
  `product_price` double NOT NULL,
  `product_qty` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `supplierid` int(11) NOT NULL,
  `description` varchar(3000) NOT NULL,
  `tech` varchar(1000) NOT NULL,
  `video` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`productid`, `categoryid`, `product_name`, `product_price`, `product_qty`, `photo`, `supplierid`, `description`, `tech`, `video`) VALUES
(2, 2, 'Intel Core I5 8600k', 190000, 0, 'upload/86002_1526239950.jpg', 8, 'Disfrute de una potencia y una capacidad de respuesta sin precedentes\r\n\r\nAhora las tareas informÃ¡ticas diarias se pueden realizar de manera mÃ¡s rÃ¡pida. Edite fotos y videos sin inconvenientes. Cambie entre programas y ventanas de manera rÃ¡pida. Realice mÃºltiples tareas sin esfuerzo. Lo que es aÃºn mejor es que todo el desempeÃ±o se combina con una duraciÃ³n de la baterÃ­a de hasta 10 horas1 2, por lo que puede llevar su computadora a donde quiera que vaya sin preocuparse de los cables ni los enchufes.\r\n\r\n\r\nConvierta su computadora en un centro de entretenimiento\r\n\r\nDisfrute de un centro de entretenimiento sorprendente, en el cual puede transmitir videos 4K UHD, utilizar la potencia para realidad virtual y reproducir los videojuegos mÃ¡s exigentes. Debido a que tiene cuatro veces mÃ¡s pÃ­xeles que la resoluciÃ³n HD tradicional, puede disfrutar de imÃ¡genes realistas y nÃ­tidas, degradaciÃ³n compleja y frecuencias rÃ¡pidas de cuadros; todo de manera virtual sin interrupciones, sin almacenamiento en memoria intermedia ni retrasos. PrepÃ¡rese para las experiencias revolucionarias envolventes del futuro.\r\n\r\n\r\nFÃ¡cil de usar, difÃ­cil de penetrar\r\n\r\nLa seguridad incorporada agrega una capa crÃ­tica de protecciÃ³n para que pueda iniciar sesiÃ³n, navegar y realizar pagos en lÃ­nea de manera sencilla y segura3. Puede iniciar sesiÃ³n con su mirada, su voz o sus huellas dactilares para una seguridad sÃ³lida, rÃ¡pida y sin complicaciones. Almacene contraseÃ±as, informaciÃ³n personal e informaciÃ³n automÃ¡tica con solo una contraseÃ±a maestra. AdemÃ¡s, los comandos de voz y de pantalla tÃ¡ctil y las opciones de lÃ¡piz Ã³ptico ofrecen interacciones naturales e intuitivas.\r\n', 'Marca:	Intel\r\nSeries:	Core i5-8600K\r\nPeso del producto:	18,1 g\r\nDimensiones del producto:	11,6 x 4,4 x 10,1 cm\r\nNÃºmero de modelo del producto:	BX80684I58600K\r\nColor:	Metalico\r\nVelocidad del procesador:	3.6 GHz\r\nToma del procesador:	LGA 1151 (Socket H4)\r\nNÃºmero de procesadores:	6\r\nTipo de memoria del ordenador:	DDR4 SDRAM\r\nMemoria mÃ¡xima compatible:	65536 MB\r\nDescripciÃ¡n de la tarjeta grÃ¡fica:	Intel UHD Graphics 630\r\nPotencia elÃ©ctrica:	95', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/BGNwPP8MBS4\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(3, 4, '29UM68-P', 210000, 0, 'upload/lg-2k.jpg', 8, '    La mejor experiencia ultrapanorï¿½mica para tus juegos\r\n    Campo de visiï¿½n envolvente gracias al formato 21:9\r\n    Estabilizador de negros , que permite dar mï¿½s brillo y contraste a las escenas oscuras\r\n    Mayor fluidez de la imï¿½genes gracias a FreeSync\r\n    Software de configuraciï¿½n del monitor con sï¿½lo unos clics del ratï¿½n\r\n    Mayor cobertura de espectro de color +99% sRGB\r\n', 'General\r\n\r\nTamaï¿½o: (CM / pulgadas) 	72 CM / 29 pulgadas\r\nPantalla IPS: 	Sï¿½\r\nFormato: 	21:9\r\nResoluciï¿½n: 	2560 x 1080\r\nBrillo (cd/m2): 	250\r\nRatio Contraste: 	1000:1\r\nTiempo Respuesta (ms): 	5\r\nï¿½ngulo Visiï¿½n (ï¿½): 	178ï¿½ / 178ï¿½\r\n\r\nConexiones\r\n\r\nHDMI:	Sï¿½ (2)\r\nSalida auriculares: 	Sï¿½\r\nDisplay Port: 	Sï¿½\r\n\r\nCaracterï¿½sticas Especiales\r\n\r\n Sincronizaciï¿½n (Freesync) 	Sï¿½\r\nCalibraciï¿½n del Color 	Sï¿½\r\nPicture Mode 	Sï¿½\r\nOriginal Ratio 	Sï¿½\r\nPIP / Intelligent Auto 	Sï¿½\r\nSuper Energy Saving 	Sï¿½\r\nDDC / CI 	Sï¿½\r\nHDCP 	Sï¿½\r\nIntelligent Auto 	Sï¿½\r\nModo Lectura 	Sï¿½\r\nKey lock 	Sï¿½\r\nDual Link-up 	Sï¿½\r\nSix Axis Control 	Sï¿½\r\nOn Screen Control 	Sï¿½\r\nFlicker safe 	Sï¿½\r\nResponse Time Control 	Sï¿½\r\nAutomatic Standby 	Sï¿½\r\n\r\n', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/PS0eqOU1fNE\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(5, 2, 'Intel Pentium G4560', 40000, 10, 'upload/g4560_1523915668.jpg', 8, 'Socket LGA 1151\r\nIntel 200/1001 Series Chipset Compatibility (1. Excludes Intel Optane Technology support)\r\nIntel HD Graphics 610\r\n7th Generation (Kaby Lake) ', 'Processor: 	3.5 GHz Pentium \r\nBrand Name: 	Intel\r\nItem model number: 	BX80677G4560\r\nItem Weight: 	9.6 ounces\r\nProduct Dimensions: 	14.5 x 5.1 x 4.9 inches\r\nItem Dimensions L x W x H: 	14.48 x 5.07 x 4.92 inches\r\nProcessor Brand: 	Intel\r\nProcessor Count: 	2 \r\n', ''),
(6, 2, 'Intel Core I3 8100', 88000, 3, 'upload/8100_1523915901.jpg', 8, 'CaracterÃ­sticas: Solo compatible con la placa madre serie Intel 300, frecuencia base del procesador de 3.6 GHz, grÃ¡ficos Intel UHD 630, soporte DDR4, toma de corriente LGA 1151 (serie 300), ventilador y refrigerador incluidos. ', 'Marca	Intel\r\nSeries	Pentium Core i3-8100\r\nPeso del producto	268 g\r\nDimensiones del producto	10,2 x 11,4 x 7 cm\r\nNÃºmero de modelo del producto	BX80684I38100\r\nColor	Gris\r\nFabricante del procesador	Intel\r\nVelocidad del procesador	3.6 GHz\r\nToma del procesador	Intel 1151\r\nNÃºmero de procesadores	4\r\nTipo de memoria del ordenador	DDR4 SDRAM\r\nMemoria mÃ¡xima compatible	65536 MB\r\nDescripciÃ³n de la tarjeta grÃ¡fica	Intel UHD Graphics 630\r\nPotencia elÃ©ctrica	65', ''),
(7, 2, 'Intel Core I5 7500 OEM', 0, 0, 'upload/core-i5-7500_1523916373.jpg', 8, ' Socket LGA 1151\r\nIntel 200/100 Series Chipset Compatibility (1. Excludes Intel Octane Technology support)\r\nIntel HD Graphics 630\r\nIntel Turbo Boost 2.0 Technology ', 'Processor:	3.4 GHz Intel Core i5\r\nBrand Name: 	Intel\r\nItem model number: 	BX80677I57500\r\nItem Weight: 	9.6 ounces\r\nProduct Dimensions: 	2.9 x 3.9 x 4.7 inches\r\nItem Dimensions L x W x H: 	2.9 x 3.9 x 4.7 inches\r\nProcessor Brand: 	Intel\r\nProcessor Count: 	4\r\nComputer Memory Type 	DDR4 SDRAM ', ''),
(8, 2, 'Intel Core I5 8400', 139500, 10, 'upload/I5-8400_1523916888.jpg', 8, 'Outstanding gaming experiences extend beyond personal gameplay to your entire gaming community. Share those experiences by live-streaming or recording, editing, and posting your epic highlights. ', 'Processor: 	2.8 GHz Intel Core i5 \r\nBrand Name: 	Intel\r\nItem model number: 	BX80684I58400\r\nItem Weight: 	9.6 ounces\r\nProduct Dimensions: 	5 x 3 x 4 inches\r\nItem Dimensions L x W x H:	5 x 3 x 4 inches\r\nProcessor Brand: 	Intel\r\nProcessor Count: 	6\r\nComputer Memory Type 	DDR4 SDRAM ', ''),
(9, 2, 'Intel Core I5 8600', 160000, 0, 'upload/86002_1524297142.jpg', 8, 'No stock\r\n 6 Cores / 6 Threads\r\nUp to 4.3 GHz (Max Turbo Frequency)\r\nCompatible with Intel 300 series chipset based motherboards\r\nSupports Intel vPro\r\nSupports Intel Optane Memory\r\n\r\n\r\nGreat Gaming\r\n\r\nOutstanding gaming experiences extend beyond personal gameplay to your entire gaming community. Share those experiences by live-streaming or recording, editing, and posting your epic highlights. To perform at your best, get a great gaming PC powered by an 8th Gen Intel Core processor that lets you liveâ€”and shareâ€”the ultimate gaming experience.\r\n \r\n\r\nUltra HD Entertainment\r\n\r\nTo play premium movie streams in stunning 4K UHD, get an advanced platform that supports the latest media technologies and entertainment. Bring premium, high-quality content to your desktop, with smooth streaming of premium 4K UHD entertainment, including 4K video creation and sharing and 360-degree viewing.\r\n', 'Processor: 	3.1 GHz Intel Core i5\r\nRAM: 	DDR4 \r\nBrand Name: 	Intel\r\nItem model number: 	BX80684I58600\r\nItem Weight: 	9.4 ounces\r\nProduct Dimensions: 	4.6 x 2.8 x 4 inches\r\nItem Dimensions L x W x H: 	4.57 x 2.76 x 3.98 inches\r\nProcessor Brand: 	intel\r\nProcessor Count: 	6\r\nComputer Memory Type: 	DDR4 SDRAM ', ''),
(10, 2, 'Inte Core I7 7700k', 190000, 2, 'upload/i7-7700k_04_1524297459.jpg', 8, ' Socket LGA 1151\r\nIntel 200/1001 Series Chipset Compatibility (1. Excludes Intel Optane Technology support)\r\nIntel HD Graphics 630\r\nIntel Turbo Boost 2.0 Technology\r\nIntel Hyper-Threading Technology1 ', 'Processor:	4.2 GHz Intel Core i7 \r\nBrand Name: 	Intel\r\nItem model number: 	BX80677I77700K\r\nItem Weight: 	2.4 ounces\r\nProduct Dimensions: 	1.9 x 4.1 x 4.6 inches\r\nItem Dimensions L x W x H: 	1.9 x 4.1 x 4.6 inches\r\nProcessor Brand: 	Intel\r\nProcessor Count: 	4\r\nComputer Memory Type: 	DDR4 SDRAM ', ''),
(11, 3, 'Ryzen 5 2400g', 110000, 3, 'upload/CP-AMD-YD2400C5FBBOX-1_1524297764.jpg', 8, ' Built-In Radeon Vega RX 11 Graphics\r\n4 Cores/8 Threads UNLOCKED\r\nFrequency: 3.9 GHz Max Boost\r\nSocket Type: AM4. Default TDP / TDP: 65W\r\nThermal Solution: Wraith Stealth Cooler ', 'Processor 	3.9 GHz AMD R Series\r\nBrand Name 	AMD\r\nItem model number 	YD2400C5FBBOX\r\nHardware Platform 	PC\r\nOperating System 	Windows 10\r\nItem Weight 	1.6 ounces\r\nProduct Dimensions 	1.6 x 1.6 x 0.3 inches\r\nItem Dimensions L x W x H 	1.6 x 1.6 x 0.3 inches\r\nProcessor Brand 	AMD\r\nProcessor Count 	4\r\nComputer Memory Type 	DDR4 SDRAM\r\nHard Drive Interface 	Serial ATA-600 ', ''),
(12, 3, 'Ryzen 5 1600', 120000, 5, 'upload/AMD-RYZEN-5-1600-3.4-GHz-Socket-AM4-Processor-with-Wraith-Stealth-65W-cooler_1524297919.jpg', 8, ' Frequency: 3.6 ghz precision boost\r\n6 cores/12 threads unlocked\r\nCache: 3 mb/16 mb (l2/l3)\r\nSocket type: Am4\r\nThermal solution: Wraith spire cooler \r\n\r\n\r\nFootnotes:\r\n\r\n1. Overclocking AMD processors, including without limitation, altering clock frequencies / multipliers or memory timing / voltage, to operate beyond their stock specifications will void any applicable AMD product warranty, even when such overclocking is enabled via AMD hardware and/or software. This may also void warranties offered by the system manufacturer or retailer. Users assume all risks and liabilities that may arise out of overclocking AMD processors, including, without limitation, failure of or damage to hardware, reduced system performance and/or data loss, corruption or vulnerability. RZN-6.\r\n\r\n2. AMD Ryzen VR Ready Premium processors are select AMD Ryzen processors that meet or exceed the Oculus Rift or HTC Vive recommended specifications for processors. Other hardware (including graphics cards) and system requirements recommended by Oculus Rift or HTC Vive should also be met in order to operate the applicable HMDs as intended. As VR technology, HMDs and other VR hardware and software evolve and/or become available, these criteria may change without notice. Check with your PC or system manufacturer to confirm VR capabilities. GD-11.\r\n\r\n*Video Encoding: Compared to the Ryzen 5 1600, the Core i5-7600 achieved 66% (Average of 372/954=63%, 791/1144=69%) the video encoding performance in Handbrake and 65% (171.4/263.0=65%) the performance in Adobe Premiere CC, for an average video encoding performance of 60% relative to the Ryzen 5 1600. Content Creation: Compared to the Ryzen 5 1600, the Core i5-7600 achieved 68% (1618.1/2371.9 =68%) the performance in POVRay, and 57% (651.8/1144.1=57%) the performance in Cinebench, for an average content creation performance of 63% relative to the Ryzen 5 1600. 1080p gaming: Compared to the Ryzen 5 1600, the Core i5-7600 achieved 102% the performance in The Division, 135% the performance in Alien: Isolation, 103% the performance in Battlefield 1, 104% the performance in Ashes of the Singularity, 92% the performance in Civilization 6, 103% the performance in Doom, 121% the performance in Deus Ex: Mankind Divided, 102% the performance in Overwatch, 105% the performance in Mafia 3, 94% the performance in F1 2016, and 105% the performance in Watch Dogs 2, and 118% the performance in Sniper Elite 4, for an average 1080p game performance of 107% relative to the Ryzen 5 1600. VR Performance: Both the Ryzen 5 1600 and Core i5-7600 dropped less than 1% of frames in the Price of Freedom, Serious Sam, and Raw Data game benchmark tests. RZN-57.\r\n\r\n** This information represents the views of third parties at https://www.vortez.net/articles_pages/amd_ryzen_5_1400_1600_review,7.html for secure data encryption and VR performance. These third party results have not been verified by AMD. AMD has no obligation to update third party information and will unde', 'Processor 	3.6 GHz None\r\nRAM 	DDR4 \r\nBrand Name 	AMD\r\nItem model number 	YD1600BBAEBOX\r\nItem Weight 	1.6 ounces\r\nProduct Dimensions 	1.6 x 0.3 x 1.6 inches\r\nItem Dimensions L x W x H 	1.6 x 0.3 x 1.6 inches\r\nColor 	silver\r\nProcessor Brand 	AMD\r\nProcessor Count 	6 ', ''),
(13, 3, 'Ryzen 5 2600', 135000, 3, 'upload/19-113-43420front-1_1524298140.jpg', 8, ' 6 Cores/12 Threads UNLOCKED\r\nFrequency: 3.9 GHz Max Boost\r\nIncludes Wraith Stealth Cooler\r\n19MB of Combined Cache\r\nSocket AM4 Motherboard Required ', 'Processor 	3.9 GHz None\r\nRAM 	DDR4 \r\nBrand Name 	AMD\r\nItem model number 	YD2600BBAFBOX\r\nItem Weight 	1.6 ounces\r\nProduct Dimensions 	1.6 x 1.6 x 0.3 inches\r\nItem Dimensions L x W x H 	1.6 x 1.6 x 0.3 inches\r\nProcessor Brand 	AMD\r\nProcessor Count 	6\r\nComputer Memory Type 	DDR4 SDRAM ', ''),
(14, 1, 'Gigabyte H110M-H', 32000, 10, 'upload/20151106104621_big_1524298381.png', 8, ' Get to Know the GIGABYTE GA-H110M-A LGA1151\r\nIntel H110 Micro ATX DDR4 Motherboard\r\n\r\nGIGABYTE 100 series motherboards support the latest 6th/7th Generation Intel Core processors, a 14nm desktop CPU which features improved performance, power efficiency and support for DDR4 memory, bringing cutting edge features and ultimate performance to your next PC build. All new GIGABYTE APP Center, simple and easy use. Audio Noise Guard with High Quality Audio Capacitors. Great for first time builders and gaming systems.    \r\n\r\n LGA1151, Supports 7th/ 6th Generation Intel Core Processors\r\n    Dual Channel DDR4, 2 DIMMs\r\n    Audio Noise Guard with High Quality Audio Capacitors\r\n    HDMI 1.4 port for Full HD contents playback\r\n    Realtek GbE LAN with cFos Speed Internet Accelerator Software\r\n    All new GIGABYTE APP Center, simple and easy use. Support intel small business basics\r\n', 'RAM 	DDR4\r\nNumber of USB 2.0 Ports 	2 \r\nBrand Name 	Gigabyte\r\nSeries 	GA-H110M-A\r\nItem model number 	GA-H110M-A\r\nItem Weight 	2.08 ounces\r\nProduct Dimensions 	11 x 10 x 2 inches\r\nItem Dimensions L x W x H 	11 x 10 x 2 inches \r\n\r\nSupports 7th/ 6th Generation Intel Core Processors Realtek ALC887 codec Audio Noise Guard with High Quality Audio Capacitors Integrated Graphics Processor - Intel HD Graphics support for Q-Flash Use of licensed AMI UEFI BIOS App Center including Easy Tune and Cloud Station utilities Safer design around screw mounting holes. Micro ATX Form Factor; 22.6cm x 17.4cm ', ''),
(15, 1, 'GIGABYTE H310M S2H', 40000, 10, 'upload/71cHYy6qaCL._SL1000__1524298597.jpg', 8, 'Intel H310 Ultra Durable motherboard with GIGABYTE 8118 Gaming LAN, PCIe Gen2 x2 M.2, HDMI 1.4, DVI-D, D-Sub Ports for Multiple Display, Anti-Sulfur Resistor, Smart Fan 5, CEC 2019 ready. Supports 8th Gen Intel Core Processors. Dual Channel Non-ECC Unbuffered DDR4. 8-Channel HD Audio with High Quality Audio Capacitors. Ultra-Fast M.2 with PCIe Gen2 X2 & SATA interface. GIGABYTE Exclusive 8118 Gaming LAN with Bandwidth Management. HDMI 1.4, DVI-D, D-Sub Ports for Multiple Display. CEC 2019 Ready, Save Power With a Simple Click. Smart Fan 5 features Multiple Temperature Sensors and Hybrid Fan Headers with FAN STOP. All new GIGABYTE APP Center, simple and easy use. Anti-Sulfur Resistors Design. \r\n\r\n Dual Channel Non-ECC Unbuffered DDR4\r\n8-Channel HD Audio with High Quality Audio Capacitors\r\nUltra-Fast M.2 with PCIe Gen2 X2 & SATA interface\r\nGIGABYTE Exclusive 8118 Gaming LAN with Bandwidth Management\r\nHDMI 1.4, DVI-D, D-Sub Ports for Multiple Display ', 'RAM 	DDR4\r\nWireless Type 	Bluetooth \r\nBrand Name 	Gigabyte\r\nItem model number 	H310M S2H\r\nItem Weight 	1.8 pounds\r\nProduct Dimensions 	22.3 x 11.1 x 10.2 inches\r\nItem Dimensions L x W x H 	22.3 x 11.1 x 10.2 inches', ''),
(16, 1, 'Asus Prime A320M-K', 38000, 10, 'upload/P_setting_fff_1_90_end_500.png_1524298775.jpg', 8, ' Powered by AMDÂ® Ryzenâ„¢ AM4, 7th generation Athlonâ„¢ and HD 2000 series processors to maximize connectivity and speed with NVMe M.2, support for 32GB of DDR4, USB 3.0 and Gigabit LAN\r\n5X Protection III Hardware-level safeguards provide component longevity and reliability\r\nPatent-pending SafeSlot Core fortified PCIe slot prevents damage from heavyweight GPUs\r\nFan Xpert delivers advanced fan controls for optimized cooling\r\nIndustry-leading 8-channel HD audio driven by Japanese capacitors features an onboard LED-illuminated design ', 'Powered by AMD Ryzen AM4 processors, the ASUS Prime A320M-K packs performance and reliability into a microATX form-factor. Access next-generation connectivity and speeds with NVMe M.2, USB 3.1, Gigabit LAN and support for 32GB DDR4. 5X Protection III ensures component longevity and reliability while SafeSlot Core adds PCIe slot protection. \r\n\r\nRAM 	DDR4\r\nNumber of USB 2.0 Ports 	2 \r\nBrand Name 	Asus\r\nSeries 	PRIME A320M-K\r\nItem model number 	PRIME A320M-K\r\nItem Weight 	1.5 pounds\r\nProduct Dimensions 	8.9 x 1 x 8.7 inches\r\nItem Dimensions L x W x H 	8.9 x 1 x 8.7 inches\r\nBatteries 	1 Lithium Metal batteries required. ', ''),
(17, 1, 'Gigabyte Z370-HD3', 77000, 10, 'upload/2017092017344513_big_1524431913.png', 8, '  Intel Z370 Ultra Durable motherboard with CrossFire support, Intel GbE LAN with 25KV protection, M.2, RGB Fusion, Smart Fan 5, Anti-Sulfur Resistors\r\n    Supports 8th Gen IntelÂ® Coreâ„¢ Processors\r\n    DDR4 Dual Channel Non-ECC Unbuffered , 4 DIMMs\r\n    Memoria IntelÂ® Optaneâ„¢\r\n    Soporta 2-way CrossFireâ„¢\r\n    M.2 ultra rÃ¡pida con PCIe Gen3 x4 y interfaz SATA\r\n    Capacitadores de audio de alta calidad y con protecciÃ³n de ruido con separaciÃ³n de audio led\r\n    IntelÂ® Gigabit LAN with cFosSpeed Internet Accelerator Software\r\n    APP Center, que incluye las utilidades EasyTuneâ„¢ y Cloud Stationâ„¢\r\n    Smart Fan 5 con sensores de mÃºltiple temperatura y cabezales de ventilaciÃ³n hÃ­brida con FAN STOP\r\n    Ultra Durableâ„¢ 25KV ESD y protecciÃ³n contra la sobretensiÃ³n\r\n    Anti-Sulfur Resistors Design\r\n    RGB FUSION supports RGB LED strips in 7 colors\r\n', '  Procesador\r\n\r\n    Support for 8th Generation IntelÂ® Coreâ„¢ i7 processors/IntelÂ® Coreâ„¢ i5 processors/IntelÂ® Coreâ„¢ i3 processors in the LGA1151 package\r\n    CachÃ© L3 varÃ­a segÃºn la CPU\r\n\r\nChipset\r\n\r\n    IntelÂ® Z370 Express Chipset\r\n\r\nMemoria\r\n\r\n    4 x sockets DDR4 DIMM con soporte de hasta 64 GB de memoria del sistema\r\n    Arquitectura de memoria Dual Channel\r\n    Support for DDR4 4000(O.C.) / 3866(O.C.) / 3800(O.C.) / 3733(O.C.) / 3666(O.C.) / 3600(O.C.) / 3466(O.C.) / 3400(O.C.) / 3333(O.C.) / 3300(O.C.) / 3200(O.C.) / 3000(O.C.) / 2800(O.C.) / 2666 / 2400 / 2133 MHz memory modules\r\n    Soporte para mÃ³dulos de memoria ECC Un-buffered UDIMM 1Rx8/2Rx8 (operando en modo no-ECC)\r\n    Soporte para mÃ³dulos de memoria non-ECC Un-buffered DIMM 1Rx8/2Rx8\r\n    Soporte para mÃ³dulos de memoria Extreme Memory Profile (XMP)\r\n\r\nGrÃ¡fica Integrada\r\nProcesador grÃ¡fico integrado â€“ Soporte IntelÂ® HD Graphics:\r\n\r\n    1 x HDMI port, supporting a maximum resolution of 4096x2160@30 Hz\r\n', ''),
(18, 1, 'GA-AX370-Gaming', 85000, 0, 'upload/2017032815061595_m_1524338405.png', 8, 'NO stock\r\nSupports AMD Ryzenâ„¢ & 7th Generation A-series / Athlonâ„¢ Processors\r\nDual Channel Non-ECC Unbuffered DDR4, 4 DIMMs\r\nTurbo B-Clock, Built-in Advanced Performance Tuning IC\r\nFast 2 USB 3.1 Gen 2 with USB Type-A\r\n2-Way CrossFireâ„¢ Multi-Graphics Support with Ultra Durableâ„¢ Metal Shielding over PCIe Slot\r\nUltra-Fast PCIe Gen3 x4 M.2 with PCIe NVMe & SATA mode support\r\nHigh Quality Audio Capacitors and Audio Noise Guard with LED Trace Path Lighting\r\nRealtekÂ® Gigabit LAN with cFosSpeed Internet Accelerator Software\r\nSmart Fan 5 features 6 Temperature Sensors and 4 Hybrid Fan Headers\r\nGIGABYTEâ„¢ UEFI DualBIOSâ„¢\r\nAPP Center Including EasyTuneâ„¢ and Cloud Stationâ„¢ Utilities', 'CPU\r\nAM4 Socket:\r\n\r\n    AMD Ryzenâ„¢ processor\r\n    AMD 7th Generation A-series/ Athlonâ„¢ processor\r\n\r\n(Please refer \"CPU Support List\" for more information.)\r\nChipset\r\n\r\n    AMD X370\r\n\r\nMemory\r\n\r\n    4 x DDR4 DIMM sockets supporting up to 64 GB of system memory\r\n    Dual channel memory architecture\r\n    Support for DDR4 3200(O.C.) / 2933(O.C.) / 2667* / 2400 / 2133 MHz memory modules\r\n    * Support for higher than DDR4 2667 MHz may vary by CPU.\r\n    Support for ECC Un-buffered DIMM 1Rx8/2Rx8 memory modules (operate in non-ECC mode)\r\n    Support for non-ECC Un-buffered DIMM 1Rx8/2Rx8/1Rx16 memory modules\r\n    Support for Extreme Memory Profile (XMP) memory modules\r\n\r\n(Please refer \"Memory Support List\" for more information.)\r\nOnboard Graphics\r\nIntegrated Graphics Processor:\r\n\r\n    1 x HDMI port, supporting a maximum resolution of 4096x2160@24 Hz\r\n    * Support for HDMI 1.4 version.\r\n    Maximum shared memory of 2 GB\r\n\r\n* Actual support may vary by CPU.\r\nAudio\r\n\r\n    RealtekÂ® ALC892', ''),
(19, 1, 'Asus Rog Strix Z370-E', 138000, 10, 'upload/asus-rog-strix-z370-e_1524431955.jpg', 8, 'Tarjeta madre para juegos Intel Z370 ATX con iluminaciÃ³n LED Aura Sync RGB, 802.11ac Wi-Fi, soporte DDR4 4000MHz, M.2 dual, SATA 6Gbps y panel frontal con USB 3.1 Gen 2.\r\n\r\n\r\n    Socket LGA1151 para la 8a generaciÃ³n de procesadores de escritorio IntelÂ® Coreâ„¢.\r\n    Aura Sync RGB: Sincroniza iluminaciÃ³n LED con un vasto portafolio de dispositivos compatibles, incluyendo tiras RGB direccionables.\r\n    Disipador M.2 integrado: Enria tu dispositivo M.2, ofreciendo rendimiento de almacenamiento constante y confiabilidad mejorada.\r\n    OptimizaciÃ³n de 5 vÃ­as: Mejora automÃ¡tica de sistema, que ofrece perfiles de enfriamiento y overclokeo personalizados para tu equipo.\r\n    Audio para juegos: SupremeFX S1220A se alÃ­a con Sonic Studio III para crear el ambiente perfecto que te lleva dentro de la acciÃ³n.\r\n    Conectividad para juegos: M.2 dual y entradas USB 3.1 Gen 2 Tipo-A y Tipo-C.\r\n    Redes para juegos: Intel Gigabit Ethernet, LANGuard, GameFirst y 2x2 802.11ac Wi-Fi con soporte MU-MIMO.\r\n    Gamerâ€™s Guardian: ASUS SafeSlot y componentes premium para mayor duraciÃ³n.\r\n', 'CPU\r\nIntelÂ® Socket 1151 for 8th Generation Coreâ„¢ Processors\r\nSupports IntelÂ® 14 nm CPU\r\nSupports IntelÂ® Turbo Boost Technology 2.0\r\n* The IntelÂ® Turbo Boost Technology 2.0 support depends on the CPU types.\r\n* Refer to www.asus.com for CPU support list\r\nChipset\r\nIntelÂ® Z370\r\nMemoria\r\n4 x DIMM, Max. 64GB, DDR4 4000(O.C.)/3866(O.C.)/3733(O.C.)/3600(O.C.)/3466(O.C.)/3400(O.C.)/3333(O.C.)/3300(O.C.)/3200(O.C.)/3000(O.C.)/2800(O.C.)/2666/2400/2133 MHz Non-ECC, Un-buffered Memory\r\nDual Channel Memory Architecture\r\nSupports IntelÂ® Extreme Memory Profile (XMP)\r\n* Hyper DIMM support is subject to the physical characteristics of individual CPUs. \r\n* Refer to www.asus.com for the Memory QVL (Qualified Vendors Lists).\r\nGrÃ¡ficos\r\nIntegrated Graphics Processor- IntelÂ® HD Graphics support\r\nMulti-VGA output support : HDMI/DVI-D/DisplayPort ports\r\n- Supports HDMI with max. resolution 4096 x 2160 @ 24 Hz\r\n- Supports DVI-D with max. resolution 1920 x 1200 @ 60 Hz\r\n- Supports DisplayPort with max', ''),
(20, 1, 'Gigabyte Z270x-Designare Promocion', 140000, 0, 'upload/13-145-005-V02_1524339054.jpg', 8, '    Supports 7th/ 6th Generation IntelÂ® Coreâ„¢ Processors\r\n    Dual Channel Non-ECC Unbuffered DDR4, 4 DIMMs\r\n    Front USB 3.1 Gen 2 Header\r\n    Fast USB 3.1 Gen 2 with USB Type-Câ„¢ and Type-A\r\n    3-Way Graphics Support with Dual Armor and Ultra Durableâ„¢ Design\r\n    Dual NVMe PCIe SSDs in RAID 0 Support\r\n    NVMe PCIe Gen3 x4 U.2 Connector\r\n    Ultra-Fast M.2 with PCIe Gen3 x4 & SATA interface\r\n    IntelÂ® Optaneâ„¢ Memory Ready\r\n    ALC1220 120dB SNR HD Audio with Smart Headphone Amp\r\n    IntelÂ® GbE LAN with cFosSpeed Internet Accelerator Software\r\n    USB DAC-UP 2 with Adjustable Voltage\r\n    RGB FUSION LED Light Show Design\r\n    Swappable Overlay for Accent LED\r\n    Smart Fan 5 features Multiple Temperature Sensors and Hybrid Fan Headers\r\n    Silver Alloy Coated PCB Design\r\n    GIGABYTE UEFI DualBIOSâ„¢\r\n    APP Center Including EasyTuneâ„¢ and Cloud Stationâ„¢ Utilities\r\n', 'CPU\r\n\r\n    Support for 7th and 6th generation IntelÂ® Coreâ„¢ i7 processors/ IntelÂ® Coreâ„¢ i5 processors/IntelÂ® Coreâ„¢ i3 processors/ IntelÂ® PentiumÂ® processors/IntelÂ® CeleronÂ® processors in the LGA1151 package\r\n    L3 cache varies with CPU\r\n\r\n(Please refer \"CPU Support List\" for more information.)\r\nChipset\r\n\r\n    IntelÂ® Z270 Express Chipset\r\n\r\nMemory\r\n\r\n    4 x DDR4 DIMM sockets supporting up to 64 GB of system memory\r\n    * Due to a Windows 32-bit operating system limitation, when more than 4 GB of physical memory is installed, the actual memory size displayed will be less than the size of the physical memory installed.\r\n    Dual channel memory architecture\r\n    Support for DDR4 3866(O.C.) / 3800(O.C.) / 3733(O.C.) / 3666(O.C.) / 3600(O.C.) / 3466(O.C.) / 3400(O.C.) / 3333(O.C.) / 3300(O.C.) / 3200(O.C.) / 3000(O.C.) / 2800(O.C.) / 2666(O.C.) / 2400 / 2133 MHz memory modules\r\n    Support for ECC Un-buffered DIMM 1Rx8/2Rx8 memory modules (operate in non-ECC mode)\r\n', ''),
(23, 6, 'EVGA Geforce Gt 1030 Sc 2gb', 65000, 0, 'upload/GX315EA_166346_800x800_1525766359.jpg', 8, 'NO HAY EN STOCK!\r\n\r\nEntra en las hermosas Graficas de PC \r\nEVGAÂ® GeForceÂ® GT 1030\r\n\r\nAcelera toda tu experiencia con tu PC con la rÃ¡pida y poderosa Tarjeta de Video EVGAÂ® GeForceÂ® GT 1030. Con su premiada arquitectura NVIDIA Pascalâ„¢, poderoso motor grafico y tecnologÃ­as de punta que le dan la mejora de rendimiento que necesitas para correr las aplicaciones mas demandantes de PC.\r\n\r\nDesata tu creatividad con impresionante video HD, ediciÃ³n de imÃ¡genes y disfruta increÃ­ble gaming. Ahora, tu puedes hacer esto hasta 2X mas rÃ¡pido que con las graficas integradas de un IntelÂ® Coreâ„¢ i5*. ObtÃ©n actualizaciones de drivers mas sencillas, y optimizaciÃ³n con un solo botÃ³n con GeForce Experience.â„¢.', 'Core:\r\n  \r\n    - 384 NÃºcleos CUDA\r\n    - Reloj bÃ¡sico: 1290 MHz\r\n    - Reloj de aceleraciÃ³n: 1544 MHz\r\n    - Bus: PCI-E 3.01\r\n\r\nMemory:\r\n     \r\n   - Detalles de la memoria: 2048 MB GDDR5\r\n   - Ancho de bits de la memoria: 64 Bit\r\n   - Reloj de la memoria: 6008 MHz\r\n   - Velocidad de la memoria: 0.28 ns\r\n   - Ancho de banda de la memoria: 48.06 GB/s\r\n\r\n\r\nKey Features:\r\n\r\n   - NVIDIA GameWorks Technology\r\n   - OpenGL 4.6 Support\r\n   - NVIDIA GPU Boost 3.0\r\n   - Microsoft DirectX 12 API\r\n   - Vulkan API\r\n   - PCI Express 3.0\r\n   - Built for EVGA Precision XOC\r\n   - 2x Single-Link DVI-D\r\n\r\n', ''),
(24, 6, 'Asus Geforce GTX 1050ti Phoenix', 135000, 0, 'upload/GX40SAS_158723_800x800_1525766852.jpg', 8, 'ASUS Phoenix GeForceÂ® GTX 1050 Ti 4GB GDDR5 es la mejor PC compacta para juegos jamÃ¡s creada \r\n\r\nVentilador de doble balero reduce la fricciÃ³n de giro para una vida Ãºtil 2 veces mayor y mejor eficiencia de enfriamiento.\r\nJuego fÃ¡cil, sÃ³lo conecta y juega sin necesidad de fuente de poder adicional.\r\nTecnologÃ­a Ãºnica en la industria Auto-Extreme con Super Alloy Power II entrega calidad premium y la mejor confiabilidad.\r\nGPU Tweak II con XSplit Gamecaster provee un ajuste de rendimiento intuitivo y transmisiones en tiempo real.\r\nNVIDIA ANSEL para una nueva y revolucionaria forma de capturar screenshots del juego.\r\nNVIDIA GameWorksâ„¢ provee una experiencia interactiva y cinemÃ¡tica, asÃ­ como un modo de juego suave.', 'Motor grÃ¡fico: NVIDIA GeForce GTX 1050 TI\r\nBus Standard: PCI Express 3.0 \r\nOpenGL: OpenGLÂ®4.5\r\nVideo Memory: GDDR5 4GB\r\nEngine Clock: GPU Boost Clock : 1392 MHz\r\nGPU Base Clock : 1290 MHz\r\nCUDA Core: 768\r\nMemory Clock: 7008 MHz\r\nMemory Interface: 128-bit\r\nResoluciÃ³n: Digital Max Resolution:7680x4320\r\n\r\nInterfaz:\r\nDVI Output : Yes x 1 (Native) (DVI-D)\r\nHDMI Output : Yes x 1 (Native) (HDMI 2.0)\r\nDisplay Port : Yes x 1 (Native) (Regular DP)\r\nHDCP Support : Yes\r\n\r\nSoftware: ASUS GPU Tweak II & Driver\r\n\r\nDimensiones: \r\n7.6 \" x 4.4 \" x 1.5 \" Inch\r\n19.2 x 11.1 x3.7 Centimeter', ''),
(25, 6, 'Gigabyte Geforce Gtx 1060 6gb Windforce OC', 190000, 3, 'upload/20160721193143_big_1525834284.png', 8, 'Las GTX 1060 tambiÃ©n disfrutan de la arquitectura Pascal:\r\nEn las Gigabyte GTX 1060 encontramos la misma estructura en los silicio de estos modelos, hablamos de Pascal, lo Ãºltimo en cuanto a computaciÃ³n grÃ¡fica que estÃ¡ arrojando resultados espectaculares.\r\n\r\nBajo el nombre Pascal se encuentra una nueva arquitectura, una forma en la que se construyen los procesadores grÃ¡ficos de Nvidia, la evoluciÃ³n de Maxwell. Este nuevo diseÃ±o ha conseguido triplicar los resultados en realidad virtual. Ante este escenario podemos asegurar que la serie 10 de Nvidia es la reina absoluta de las tarjetas grÃ¡ficas en estos momentos por potencia, rendimiento y eficiencia.\r\n\r\nFabricadas en 16 nanÃ³metros con la tecnologÃ­a FinFET, las GPU de las Nvidia GTX 1060 han demostrado que pueden alcanzar velocidades mucho mÃ¡s altas sin repercutir en el consumo, reduciÃ©ndolo incluso, llegando a integrar 17.000 millones de transistores, la unidades bÃ¡sicas de las que se compone un procesador\r\n\r\nCompatible con DirectX 12:\r\nLos Ãºltimos avances grÃ¡ficos se encuentran bajo DirectX 12 y  la Gigabyte GeForce GTX 1060 es compatible con las APIS mÃ¡s avanzadas como la mencionada DirectX u Open GL, asegurando un rendimiento sin igual en videojuegos.\r\n\r\n6GB GDDR5 dedicados:\r\nEl triple de memoria que su homÃ³loga de la generaciÃ³n anterior. Los 6036 MB de RAM de esta tarjeta de vÃ­deo te harÃ¡n enmudecer.\r\n\r\nLas memorias GDDR5 son la evoluciÃ³n de la memoria RAM DDR convencional. Ante el avance de los requisitos grÃ¡ficos de videojuegos y aplicaciones, los canales tradicionales de memoria se veÃ­an colapsados debido a su propia arquitectura centrada en ofrecer bajas latencias. Este sistema ha funcionado durante aÃ±os hasta que las necesidades de datos ha visto superadas las necesidades de una baja latencia en pos de canales mucho mÃ¡s anchos por los que transmitir informaciÃ³n, es ese el momento en el que se hizo patente que hacÃ­a falta una nueva arquitectura, un nuevo sistema para proporcionar toda la informaciÃ³n que las GPU solicitaban sin caer en cuellos de botella, asÃ­ naciÃ³ la tecnologÃ­a GDDR.', 'Gigabyte GeForce GTX 1060 Windforce OC especificaciones\r\n\r\n    Motor GrÃ¡fico NVIDIA GeForce GTX 1060\r\n    Bus PCI Express 3.0\r\n    OpenGL OpenGLÂ®4.5\r\n    Memoria de Video GDDR5 6GB\r\n    Frecuencia del Reloj\r\n        Frecuencia de la GPU OC: 1797 MHz\r\n        Frecuencia de la GPU por defecto: 1582 MHz\r\n    Frecuencia de la Memoria 8008 MHz\r\n    Interfaz de Memoria 192 bits\r\n    ResoluciÃ³n Max. resoluciÃ³n digital: 7680 x 4320\r\n    Tasa de refresco 60Hz\r\n    Ventiladores Windforce 2x\r\n    AlimentaciÃ³n 1x6 pin\r\n    Interfaz\r\n        Salida DVI: SÃ­ x 2 (DVI-D)\r\n        Salida HDMI: SÃ­ x 1 (HDMI 2.0)\r\n        DisplayPort : SÃ­ x 1\r\n    Dimensiones H=39 L=223 W=121 mm\r\n    Notas\r\n\r\nMÃ¡s informaciÃ³n en la web del fabricante:\r\n\r\nhttp://www.gigabyte.com/products/product-page.aspx?pid=5978#kf', ''),
(26, 6, 'Gigabyte Aorus Radeon Rx 580 8gb', 180000, 2, 'upload/2017041717160472_big_1525838439.png', 8, ' Features\r\nPowered by Radeon â„¢ RX 580\r\nWINDFORCE 2X with 90mm Blade Fan Design\r\nAdvanced Copper Back Plate Cooling\r\nRGB fusion â€“ 16.7M customizable color lighting\r\nStylish Metal Back Plate\r\nIntuitive AORUS Graphics Engine\r\n\r\nCore Clock\r\nOC mode: 1380MHz\r\nGaming mode: 1365MHz\r\n(Reference card : 1340 MHz)', 'Memory Speed 	8000 MHz\r\nCard Description 	Radeon RX 580\r\nGraphics Card Ram Size 	8 GB \r\nBrand Name 	Gigabyte\r\nSeries 	Gigabyte AORUS Radeon RX 580\r\nItem model number 	GV-RX580AORUS-8GD\r\nItem Weight 	2.2 pounds\r\nProduct Dimensions 	9.1 x 4.8 x 1.4 inches\r\nItem Dimensions L x W x H 	9.1 x 4.8 x 1.4 inches ', ''),
(27, 13, 'Toshiba 1TB 7200 rpm', 28000, 10, 'upload/toshiba_1525887199.jpg', 8, 'NÃºmero de parte: DT01ACA100                \r\nModelo: DT01ACA100 TOSHIBA\r\nDisco Duro Para PC\r\nCapacidad 1TB\r\n7200RPM\r\nGarantÃ­a: 1 AÃ±o', '', ''),
(28, 13, 'Teamgroup L5 Lite 3d 120gb ', 20000, 10, 'upload/s-l1000_1525887707.jpg', 8, 'Team Group L5 LITE-3D Series es una nueva serie de discos SSD que llegan con un tradicional formato SATA III de 2,5â€³ y 7 mm por lo que podrÃ¡n ser instalados en todo tipo de dispositivos. Su tecnologÃ­a de memoria 3D NAND proporciona unos mayores niveles de fiabilidad y eficiencia energÃ©tica en comparaciÃ³n con la anterior 2D NAND. Team group L5 LITE-3D se ofrece en capacidades de 120 GB, 240 GB y 480 GB para tratar de adaptarse a las necesidades y las posibilidades de todos los usuarios.\r\n\r\n', '', ''),
(29, 13, 'Teamgroup L5 Lite 3d 240gb', 35000, 10, 'upload/team-group-l5-lite-3d-240gb-25-sata3-disco-ssd-001_1526050334.jpg', 8, 'Welcome to the new era of 3D NAND\r\n\r\nThe latest generation of 3D NAND flash memory has overcome the technical barrier of 2D NAND and has enhanced the overall capacity, performance, and reliability. Unlike the 2D planar flash memory, 3D NAND increases storage capacity by stacking up cells in the vertical direction. It not only provides a better performance and endurance but also breaks through the technical limitation of planar chips.\r\n\r\n4 times of speed improvement\r\n\r\nThe L5 LITE 3D solid state drive is 4 times faster* than the traditional hard drive. Its excellent performance and read/write speed not only allow fast boot/shutdown time but also speed up the response time of all applications, so consumers can enjoy the high-speed performance immediately after the upgrade. The lightweight and zero hassle advantage make it the best product to replace the traditional hard drive.\r\n\r\n\r\nLightweight and compact with various capacities for selection\r\n\r\nThe L5 LITE 3D solid state drive has an industry-standard 2.5-inch. With the only 7mm in height, it is best suited for Ultrabooks on the market. Whether it is for laptop or desktop, the upgrade can be done quickly. It is using SATA III 6Gbps specification and capacities available in 120GB, 240GB, 480GB, 1TB, etc. With read speed up to 470 MB/s*, it not only improves the computer performance, but it is also the best bargain available.\r\n', '    3D NAND â€“ excellent choice for upgrade\r\n    Read/write speed is 4 times faster than traditional hard drive â€“ breathe new life into old system\r\n    Smooth read/write speed â€“ up to 470 MB/s of reading speed is able to enhance the speed and performance of the overall system\r\n    Ultra lightweight and slim - 2.5-inch hard drive with just 7.0 mm thickness, it can be installed on laptop or any other system\r\n    Support S.M.A.R.T. technology - monitoring hard drive status efficiently\r\n    Support TRIM - bring out its best performance on the compatible operating system\r\n    Three years product warranty with free technical support service\r\n', ''),
(30, 13, 'Teamgroup L5 Lite 3d 480gb', 75000, 10, 'upload/TeamGroup-T253TD480G3C101-Hard-drives-82300_1526050706.png', 8, 'Welcome to the new era of 3D NAND\r\n\r\nThe latest generation of 3D NAND flash memory has overcome the technical barrier of 2D NAND and has enhanced the overall capacity, performance, and reliability. Unlike the 2D planar flash memory, 3D NAND increases storage capacity by stacking up cells in the vertical direction. It not only provides a better performance and endurance but also breaks through the technical limitation of planar chips.\r\n\r\n4 times of speed improvement\r\n\r\nThe L5 LITE 3D solid state drive is 4 times faster* than the traditional hard drive. Its excellent performance and read/write speed not only allow fast boot/shutdown time but also speed up the response time of all applications, so consumers can enjoy the high-speed performance immediately after the upgrade. The lightweight and zero hassle advantage make it the best product to replace the traditional hard drive.\r\n\r\n\r\nLightweight and compact with various capacities for selection\r\n\r\nThe L5 LITE 3D solid state drive has an industry-standard 2.5-inch. With the only 7mm in height, it is best suited for Ultrabooks on the market. Whether it is for laptop or desktop, the upgrade can be done quickly. It is using SATA III 6Gbps specification and capacities available in 120GB, 240GB, 480GB, 1TB, etc. With read speed up to 470 MB/s*, it not only improves the computer performance, but it is also the best bargain available.\r\n', '    3D NAND â€“ excellent choice for upgrade\r\n    Read/write speed is 4 times faster than traditional hard drive â€“ breathe new life into old system\r\n    Smooth read/write speed â€“ up to 470 MB/s of reading speed is able to enhance the speed and performance of the overall system\r\n    Ultra lightweight and slim - 2.5-inch hard drive with just 7.0 mm thickness, it can be installed on laptop or any other system\r\n    Support S.M.A.R.T. technology - monitoring hard drive status efficiently\r\n    Support TRIM - bring out its best performance on the compatible operating system\r\n    Three years product warranty with free technical support service\r\n', ''),
(31, 13, 'Samsung/Toshiba 256gb m.2 ', 40000, 2, 'upload/2686873-a_1526050996.jpg', 8, 'M.2\r\n\r\nUsed in various equipment and systems,\r\nit is recognized for its excellent performance and stability', 'Density 	128 / 256 / 512GB\r\nForm Factor 	M.2 2280\r\nCell type 	MLC\r\nSequential Performance\r\n(128KB, Typical) 	Read : Up to 530MB/s(128/256/512GB)\r\nWrite : Up to 190MB/s(128GB), 370MB/s(256GB),\r\n470MB/s(512GB)\r\nRandom Performance\r\n(4KB, Typical) 	Read : Up to 85K IOPS(128GB), 95K IOPS(256/512GB)\r\nWrite : Up to 50K IOPS(128GB), 85K IOPS(256/512GB)\r\nTemperature Range\r\nOperating 	0â„ƒ to 70â„ƒ\r\nTemperature Sensor (SMART Attribute ID 194)\r\nPower Consumption\r\n(Typical) 	Active : 0.06W | ldle : 0.045W\r\nDevslp : < 0.003W\r\nLatency 	Read : 135ãŽ² (Typical)\r\nWrite : 55ãŽ² (Typical)\r\nShock 	Operating : 1500G, duration 0.5ms\r\nNon-Operating : 1500G, duration 0.5ms\r\nVibration 	Operating : 20G, 10~2KHz (Frequency)\r\nNon-Operating : 20G, 10~2KHz (Frequency)\r\nReliability 	MTBF : 1.2M | BER : 1 error in 1015 bits Transferred\r\nDimension 	(22.00Â±0.15) x (80.00Â±0.15) x (Max. 2.23) mm\r\nWeight 	Max. 7g\r\nVoltage 	3.3VÂ±5%', ''),
(32, 13, 'Toshiba M.2 PCIe 3 Genx4', 130000, 1, 'upload/20-228-164-03_1526051429.jpg', 8, 'Introducing a new breed of enthusiast storage, the OCZ RD400 NVM ExpressÂ® M.2 solid state drive series, designed to propel high-end computing into a new realm of possibility. The OCZ RD400 PCIe Gen3 x4 outperforms SATA SSDs by over 4.5 times in sequential read (up to 2,600 MB/s), and over 3 times in sequential write performance (up to 1,600 MB/s) so your system wonâ€™t be deprived of the storage bandwidth your data-intensive workload requires.* The OCZ RD400â€™s next generation NVMe interface provides a more responsive PC experience with shorter storage latency than that of todayâ€™s traditional hard disk drives and SATA SSDs. Along with high performance, the OCZ RD400 is designed for mobile, desktop, or workstation applications.\r\n\r\n', 'Performance\r\n\r\n    Sequential Read/Write:\r\n\r\n    128GB: Up to 2,200/620 MB/s\r\n\r\n    256GB: Up to 2,600/1,150 MB/s\r\n\r\n    512GB: Up to 2,600/1,600 MB/s\r\n\r\n    1024GB: Up to 2,600/1,550 MB/s\r\n\r\n    Random Read/Write (4KiB, QD32):\r\n\r\n    128GB: Up to 170,000/110,0000 IOPS\r\n\r\n    256GB: Up to 210,000/140,0000 IOPS\r\n\r\n    512GB: Up to 190,000/120,0000 IOPS\r\n\r\n    1024GB: Up to 210,000/130,0000 IOPS\r\n\r\nEndurance:\r\n\r\nTBW (Total Bytes Written)\r\n\r\n128GB: 74 TB\r\n\r\n256GB: 148 TB\r\n\r\n512GB: 296 TB\r\n\r\n1024GB: 592 TB\r\n\r\n\r\nDaily Usage Guideline4\r\n\r\n128GB: 40 GB/day\r\n\r\n256GB: 81 GB/day\r\n\r\n512GB: 162 GB/day\r\n\r\n1024GB: 324 GB/day\r\n', ''),
(33, 14, 'Corsair h45', 32000, 10, 'upload/1_1526051709.jpg', 8, 'El sistema Hydro Series H45 permite un funcionamiento mÃ¡s frÃ­o y silencioso del PC al reemplazar el disipador tÃ©rmico de la CPU. Los componentes compactos y los tubos flexibles del sistema Hydro Series H45 facilitan su instalaciÃ³n incluso en espacios reducidos. PodrÃ¡s mejorar la eficiencia de refrigeraciÃ³n de la CPU, incluso en los chasis mÃ¡s compactos. Casi con total seguridad, el modelo H45 se adapta a todo aquel chasis que disponga de un soporte para ventilador de 120 mm prÃ³ximo a la CPU. El sistema H45 viene precargado y no es necesario purgarlo.\r\n\r\nCaracterÃ­sticas:\r\n     Radiador de 120 mm: mÃ¡s superficie para un rendimiento de refrigeraciÃ³n superior\r\n    DiseÃ±o mejorado de la placa refrigerante y de la bomba\r\n    Avanzado diseÃ±o de ventiladores PWM SP120L: mejor suministro de aire y velocidad personalizable\r\n\r\n', 'Especificaciones\r\n\r\n    Peso y dimensiones\r\n        DiÃ¡metro de ventilador: 12 cm\r\n        Altura de radiador: 12 cm\r\n        Ancho del paquete: 270 mm\r\n        Profundidad del paquete: 215 mm\r\n        Altura del paquete: 135 mm\r\n        Peso del paquete: 796 g\r\n\r\n    Detalles tÃ©cnicos\r\n        Utilizar con: Procesador\r\n        Ventilador: Si\r\n        Radiador: Si\r\n        Compatible con modulaciÃ³n por ancho de pulsos (PWM): Si\r\n        Sockets de procesador soportados: Socket AM2, Socket AM3, Socket B (LGA 1366), Socket FM1, Socket FM2, Socket H (LGA 1156), Socket H2 (LGA 1155), Socket H3 (LGA 1150), Socket LGA 1151, Socket R (LGA 2011), Socket R (LGA 2011-v3)\r\n        Cantidad: 1\r\n\r\n    DiseÃ±o\r\n        Color del producto: Negro', ''),
(34, 14, 'Corsair H100i V2', 70000, 10, 'upload/HS038CS_176348_800x800_1526052007.jpg', 8, 'El Hydro Series H110i v2 es un sistema de refrigeraciÃ³n integral para CPU de rendimiento extremo adaptado a chasis con puntos de montaje para radiadores de 240 mm. El radiador de 240 mm y dos ventiladores SP140L PWM disipan eficazmente el calor generado por CPU muy sobreaceleradas. Incluye Corsair Link, para que se puedan supervisar las temperaturas, ajustar el rendimiento de refrigeraciÃ³n y personalizar la iluminaciÃ³n LED directamente desde el ordenador de sobremesa.\r\n\r\nCaracterÃ­sticas:\r\n\r\n    Radiador de 240 mm\r\n    El radiador de doble ancho ofrece aproximadamente dos veces el Ã¡rea de refrigeraciÃ³n de nuestros sistemas de refrigeraciÃ³n Hydro Series, que utilizan un radiador de 120 mm o 140 mm. Se adapta prÃ¡cticamente a cualquier chasis que disponga de dos puntos de montaje para ventiladores de 120 mm espaciados para un radiador de 240 mm.\r\n    Ventiladores SP120L PWM avanzados\r\n    Nuestros ventiladores SP120L especialmente diseÃ±ados son diferentes de los ventiladores estÃ¡ndares para chasis: estÃ¡n diseÃ±ados de manera personalizada para suministrar aire de alta presiÃ³n estÃ¡tica al montarse directamente contra los radiadores, y las aspas del ventilador estÃ¡n especialmente diseÃ±adas para suministrar el mÃ¡ximo flujo de aire con el mÃ­nimo ruido. Como estÃ¡n controlados por PWM, se puede personalizar la velocidad del ventilador para encontrar el equilibrio Ã³ptimo entre refrigeraciÃ³n y ruido.\r\n    Corsair Link integrado para supervisar, personalizar y controlar\r\n    Conecte el cable de Corsair Link incluido a un puerto USB de la placa base y descargue el software gratuito Corsair Link para liberar aÃºn mÃ¡s potencia. Puede personalizar el rendimiento del refrigerador, supervisar las temperaturas de la CPU y del refrigerante, asÃ­ como cambiar el color de la iluminaciÃ³n LED RGB desde el color blanco predeterminado para que combine con su sistema, o cambiar el color en funciÃ³n de las lecturas de la temperatura y otras entradas.\r\n    Una refrigeraciÃ³n mÃ¡s sencilla de la CPU de elevado rendimiento\r\n    Lejos quedan los tiempos en los que refrigeraciÃ³n por agua requerÃ­a mucho trabajo. El H100i v2 es un diseÃ±o de circuito cerrado que viene precargado y que incluye un soporte de montaje modular, que no precisa de herramientas, para una instalaciÃ³n mÃ¡s rÃ¡pida.\r\n    Acerca de los refrigeradores por lÃ­quido para CPU Hydro Series\r\n    Los refrigeradores de CPU Corsair Hydro Series le ofrecen la potencia de la refrigeraciÃ³n lÃ­quida en un paquete compacto fÃ¡cil de instalar. Brindan una refrigeraciÃ³n superior para un rendimiento de overclocking elevado, sin la complejidad de los tradicionales mÃ³dulos de refrigeraciÃ³n por agua.', 'Especificaciones: \r\n\r\n    Dimensiones del radiador: 276 mm x 125 mm x 30 mm\r\n    Dimensiones del ventilador: 120 mm x 120 mm x 25 mm\r\n    Velocidad del ventilador: 2435 +/- 10% RPM  \r\n    Caudal de aire del ventilador: 70,69 CFM\r\n    PresiÃ³n estÃ¡tica del ventilador: 4,65 mmH2O\r\n    Nivel de ruido del ventilador: 37,7 dB(A)\r\n    Intelâ„¢ LGA 1150, 1155, 1156, 1366, 2011, 2011-3\r\n    Sockets AMDâ„¢ FM1, FM2, AM2, AM3', ''),
(35, 14, 'Aorus ATC700', 55000, 10, 'upload/2017042718050455_big_1526358969.png', 8, 'RGB fusion â€“ 16.7M Customizable Color Lighting\r\nDual 120mm 2 ball bearing (PWM) fans\r\n3*10mm high performance copper heat-pipes\r\nHeat-Pipe direct touch technology\r\n\r\nDUAL 120MM 2 BALL BEARING PWM FANS\r\nAttached 2 big 120mm PWM fans to each side of the heat-sink, will efficiently dissipate the heat from the CPU at a very low noise level. PWM function provides the accurate and efficient fan speed for the CPU, to optimize the noise reduction and the thermal performance. GIGABYTE patented blade fan design increases the airflow. And moreover, the 2 ball bearing structure will provide longer and more stable lifespan.', '\r\n\r\n    Rated Voltage\r\n    Fan :12V DC , LED : 12V\r\n    Rated Current\r\n    0.21A\r\n    Fan Speed\r\n    500-1700 RPMÂ±10%\r\n    Bearing Type\r\n    2 Ball Bearing\r\n    Weight\r\n    955 g\r\n    CPU Socket\r\n    Intel Socket 2066 / 2011 / 1366 / 1156 / 1155 / 1151 / 1150 / 775\r\n    AMD Socket FM2+, FM2, FM1, AM4, AM3+, AM3, AM2+, AM2, 939, 754\r\n    TDP\r\n    >200W\r\n    Dimensions (LxWxH)\r\n    139 x 109 x 169 mm\r\n    Heat Sink Dimensions (LxWxH)\r\n    133 x 59 x 158 mm\r\n    Heat Sink Material\r\n    3 x 10mm Heat Pipes / Aluminum Fins\r\n    Heat Sink Weight\r\n    670 g\r\n    Heat Pipe Dimensions\r\n    Ã˜10 mm\r\n    Fan Dimensions\r\n    Ã˜120*25mm*2PCS\r\n    Fan Air Flow\r\n    14-53 CFM Â±10%\r\n    Fan Air Pressure\r\n    0.2-1.93 mmH2O Â±10%\r\n    Fan Life Expectancy\r\n    70000 Hrs\r\n    Noise Level\r\n    12 ~ 31 dBA\r\n    Connector\r\n    4 Pin\r\n    Power Consumption\r\n    2.52W\r\n    Fan Weight\r\n    142 g\r\n\r\n', ''),
(36, 9, 'EVGA 600w Certificada White 80+ No Modular', 34000, 0, 'upload/1456512265938-30574483_9866_1526359083.jpg', 8, 'ATX CABLE 	1x 550mm\r\nEPS CABLE 	1x 600mm\r\nPCIE CABLE 	1x 550mm, 670mm\r\nSATA CABLE 	2x 450mm, 570mm, 690mm\r\nFOUR-PIN PERIPHERAL CABLE 	1x 450mm, 570mm, 690mm (f)\r\nFLOPPY ADAPTER 	1x 810mm\r\nAC POWER 	1x 1200mm (m)\r\nMODULAR CABLE TYPE 	No', 'Potencia nominal 	600W\r\nVoltaje de entrada AC 	100 - 240V\r\nFrecuencia de entrada AC 	50 - 60 Hz\r\nCorriente de entrada 	15A\r\nVoltaje de salida CC 	+12V, +3.3V, +5V, +5Vsb, -12V\r\nPotencia combinada (3,3 V) 	130W\r\nPotencia combinada (+12 V) 	588W\r\nPotencia combinada (+5 V) 	130W\r\nPotencia combinada (-12V) 	3,6W\r\nPotencia combinada (+5 VSB) 	15W\r\nCorriente mÃ¡xima de salida (+3.3V) 	24A\r\nCorriente mÃ¡xima de salida (+12V) 	49A\r\nCorriente mÃ¡xima de salida (+5V) 	20A\r\nCorriente mÃ¡xima de salida (-12V) 	0,3A\r\nCorriente mÃ¡xima de salida (+5Vsb) 	3A\r\nEficiencia 	85%\r\nFunciones de protecciÃ³n de poder 	Over current, Over power, Sobrevoltaje, Cortocircuito, Bajo voltaje\r\nProtecciÃ³n contra sobrecalentamiento 	Si\r\nDiÃ¡metro de ventilador 	12 cm\r\nNÃºmero de ventiladores 	1\r\nUbicaciÃ³n de ventilador 	Superior', ''),
(37, 9, 'Corsair VS 650wats Certificada White 80+ No Modular', 32000, 10, 'upload/corsair-vs650-650w-vs-series-80-plus_1526360061.jpg', 8, 'La fuente de alimentaciÃ³n CORSAIR VS650 es una gran elecciÃ³n si estÃ¡ montando un sistema domÃ©stico o de oficina menos exigente, pero necesita la compatibilidad y la fiabilidad que han hecho cÃ©lebres a CORSAIR.\r\n\r\n\r\nVS650: la fuente de alimentaciÃ³n de gama bÃ¡sica de 240 V con prestaciones de alto nivel\r\n\r\nLa fuente de alimentaciÃ³n Corsair VS650 es una gran elecciÃ³n si estÃ¡ montando un sistema domÃ©stico o de oficina menos exigente, pero necesita la compatibilidad y la fiabilidad que han hecho cÃ©lebres a Corsair.\r\n', 'ATX Connector\r\n1\r\nAbility to toggle singlemultiple 12V rails\r\nNo\r\nATX12V Version\r\nv2.31\r\nContinuous output rated temperature C\r\n40Â°C\r\nContinuous power W\r\n650 Watts\r\nCorsair Link Support\r\nNo\r\nFan bearing technology\r\nSleeve\r\nFan size mm\r\n120\r\nMTBF hours\r\n100,000 hours\r\nMulti-GPU ready\r\nNO\r\nPower\r\n650 Watts\r\nWarranty\r\nThree years\r\n80 PLUS Efficiency\r\nWhite\r\nPSU Form Factor\r\nATX\r\nZero RPM Mode\r\nNo\r\nCable Type\r\nSleeved\r\nC-Link Ready\r\nNo\r\nDimensions\r\n150mm x 86mm x 140mm\r\nEPS Connector\r\n1\r\nFloppy Connector\r\n2\r\nModular\r\nNo\r\nPCI-E Connector\r\n2\r\nPlug Type\r\nNA\r\nSATA Connector\r\n4\r\n', '');
INSERT INTO `product` (`productid`, `categoryid`, `product_name`, `product_price`, `product_qty`, `photo`, `supplierid`, `description`, `tech`, `video`) VALUES
(38, 9, 'TT smart Pro RGB 650wats Bronce 80+ Modular', 53000, 10, 'upload/main850_1526360419.jpg', 8, 'Smart Pro RGB 650W Bronze Fully Modular\r\nThermaltake, as the pioneer who incorporates RGB lights into PSU, has launched the Thermaltake Smart Pro RGB Bronze Series, coming with a pre-installed, patented 256 Colors Riing 14 RGB fan with 5 lighting modes to choose from and built-in memory.\r\n\r\nFeaturing capacities ranging from 650W to 850W and 80 PLUS Bronze certification, Smart Pro RGB Bronze Series adopts the highest quality components and fully modular design that always accommodate any mainstream build under any circumstances.', 'P/N 	PS-SPR-0650FPCBxx-R\r\nShort P/N 	SPR-0650F-R\r\nModel 	SPR-650AH3FSB-R\r\nType 	ATX 12V v2.4 and EPS v2.92\r\nMax. Output Capacity 	650W\r\nPeak Output Capacity 	780W\r\nColor 	Black\r\nDimension ï¼ˆ W / H / D ï¼‰ 	150mm(W) x 86mm(H) x 170mm(D)\r\nPFC ï¼ˆPower Factor Correctionï¼‰ 	Active PFC\r\nPower Good Signal 	100-500 msec\r\nHold Up Time 	> 16msec at 75% load\r\nInput current 	10A\r\nInput Frequency Range 	50Hz - 60Hz\r\nInput Voltage 	100V â€“ 240V~\r\nOperating Temperature 	0Â°C to + 40Â°C\r\nOperating Humidity 	20% to 90%,non-condensing\r\nStorage Temperature 	-40Â°C to + 70Â°C\r\nStorage Humidity 	20% to 95%, non-condensing\r\nCooling System 	14cm hydraulic bearing fan\r\nEfficiency 	Meet 80 PLUSÂ® Bronze at 115Vac input.\r\nMTBF 	100,000 hrs minimum\r\nSafety Approval 	CE/cTUVus/TÃœV SÃœD/FCC/CCC/BSMI/EAC\r\nPin Connector 	PCI-E 6+2pin x 4\r\nProtection 	OCP, OVP, UVP, OPP, SCP, OTP', ''),
(39, 10, 'Azza Photios 250', 25000, 0, 'upload/azza-photios-250-3-x-usb20-1-x-usb30_1526360635.jpg', 8, 'AZZA\r\nPhotios 250\r\nESPECIFICACIONES DEL PRODUCTO\r\nDIMENSIONES: 532 mm x 198 mm x 453 mm (alto x ancho x profundidad)\r\nDe color negro\r\n\r\nINFORMACIÃ“N DEL PRODUCTO\r\nAdmite tarjetas VGA de hasta 380 mm de longitud.\r\n\r\nEl panel lateral de vidrio templado de alta calidad permite una visualizaciÃ³n clara de los componentes internos.\r\n\r\nPuertos de ventilador disponibles:\r\n\r\n2 puertos de ventilador de 120 mm en la parte superior\r\n\r\n2 puertos de ventilador de 120 mm / 2 x 140 mm en la parte delantera (ventilador LED de 1 x 120 mm instalado)\r\n\r\n2 puertos de ventilador de 120 mm en la parte inferior\r\n\r\n1 puerto de ventilador de 120 mm en la parte posterior (instalado)\r\n\r\nAdmite un radiador de refrigeraciÃ³n por agua de 120 mm / 240 mm / 280 mm.\r\n\r\nSupportsmax. Fuente de alimentaciÃ³n montada en la parte inferior de 210 mm de longitud.\r\n\r\nLos cables estÃ¡n escondidos detrÃ¡s de la bandeja de la placa base pretaladrada para lograr un mejor flujo de aire.\r\n\r\nEl Photios 250 estÃ¡ diseÃ±ado para aquellos usuarios orentados a la vista que se preocupan por las apariencias tanto como por el rendimiento.\r\nCon su elegante diseÃ±o y el panel lateral hecho de vidrio templado de alta calidad, el Photios 250 ofrece una visiÃ³n clara de los componentes internos de la PC trabajando duro.\r\nAdmite hasta tres radiadores de refrigeraciÃ³n por agua (120 mm / 240 mm / 280 mm), asÃ­ como las tarjetas de video mÃ¡s largas del mercado.\r\nEl calor de la fuente de alimentaciÃ³n tambiÃ©n se mantiene a raya al encerrar la fuente de alimentaciÃ³n en su propia bahÃ­a con cÃ¡mara, evitando que su calor afecte al resto de los componentes internos.\r\n\r\nAdmite tarjetas VGA de hasta 380 mm de longitud.\r\n\r\nSe pueden instalar dos SSD de 2.5â€³ en el lado MB.\r\n\r\nSe puede instalar un HDD de 3.5â€³ en el lado MB.\r\n\r\nAdmite unidades de suministro de energÃ­a de hasta 190 mm de longitud.\r\n\r\nDos soportes multifuncionales soportan 3.5â€³ HDD o 2.5â€³ SSD', 'Modelo\r\nNombre del modelo: Photios 250\r\nNÃºmero de modelo: CSAZ-250\r\nESPECIFICACIONES\r\nTipo: ATX Mid Tower\r\nColor: Negro (exterior) / Negro (interior)\r\nPanel lateral: Panel lateral de vidrio templado con EVA Anti Vibration PAD\r\nAltura mÃ¡xima del refrigerador de la CPU: Hasta 155 mm\r\nCompatibilidad con placa base: ATX, Full ATX, Micro ATX\r\nExpansiÃ³n\r\nBahÃ­as de unidades externas de 5.25 â€œ: 1\r\nBahÃ­as de unidades internas de 2.5 â€œ: Hasta 5\r\nBahÃ­as de unidad internas de 3.5 â€œ: Hasta 3\r\nRanuras de expansiÃ³n: 7\r\nPuertos frontales\r\nCSAZ-250: 1 x USB 3.0, 3 x USB 2.0, audio HD, micrÃ³fono\r\nSistema de refrigeraciÃ³n\r\nVentilador de 120 mm: Ventilador frontal LED de 1 x 120 mm rojo; Ventilador trasero negro 1 x 120 mm\r\nEspecificaciones fÃ­sicas\r\nDimensiones (HxWxD): 532 mm x 198 mm x 453 mm\r\nPeso: 6.3 kg (13.89 lbs) s\r\nTamaÃ±o del cartÃ³n (H x W x D): 582 mm x 265 mm x 525 mm', ''),
(40, 10, 'In Win 101 Blanco', 38000, 0, 'upload/CJCIN303WHITE_00001_1526361019.jpg', 8, 'CASE IN WIN 101 ( 101 WHITE ) SIN- FUENTE / BLANCO CON- NEGRO / 1 PANEL VIDRIO / LED- AZUL\r\n', 'Modelo\r\n101\r\nColor\r\nNegro, Blanco\r\nTipo de caja\r\nMedia torre\r\nMaterial de la caja\r\nSECC, ABS, PC y Vidrio templado\r\nCompatibilidad de la placa base\r\nATX, Micro-ATX, Mini-ITX, Max : 12\" x 10.5\"\r\nRanuras de expansiÃ³n\r\nPCI-E x 7\r\nCompatibilidad mÃ¡xima\r\nLongitud de la tarjeta VGA : 421 mm (mÃ¡xima)\r\nLongitud de la tarjeta VGA : 305 mm (con radiador lateral)\r\nAltura del disipador de la CPU : 160 mm\r\nPuertos delanteros\r\n1 X USB 3.1 Gen 2 Type-C 2 x USB 3.0 Audio HD\r\nCompatibilidad con soluciones tÃ©rmicas\r\n1 x Ventilador trasero de 120 mm / Radiador de 120 mm\r\n2 x Ventilador lateral de 120 mm / Radiador de 240 mm\r\n3 x Ventilador inferior de 120 mm / Radiador de 360 mm\r\nCompatibilidad con fuentes de alimentaciÃ³n\r\nPSII : ATX12V - Longitudes de hasta 200 mm\r\n', ''),
(41, 10, 'In win 101 negro', 38000, 10, 'upload/101-BLACK_1526361234.jpg', 8, 'CASE IN WIN 101 ( 101 BLACK ) SIN- FUENTE / NEGRO CON- ROJO / 1 PANEL VIDRIO / LED- ROJA ', 'Modelo\r\n101\r\nColor\r\nNegro, Rojo\r\nTipo de caja\r\nMedia torre\r\nMaterial de la caja\r\nSECC, ABS, PC y Vidrio templado\r\nCompatibilidad de la placa base\r\nATX, Micro-ATX, Mini-ITX, Max : 12\" x 10.5\"\r\nRanuras de expansiÃ³n\r\nPCI-E x 7\r\nCompatibilidad mÃ¡xima\r\nLongitud de la tarjeta VGA : 421 mm (mÃ¡xima)\r\nLongitud de la tarjeta VGA : 305 mm (con radiador lateral)\r\nAltura del disipador de la CPU : 160 mm\r\nPuertos delanteros\r\n1 X USB 3.1 Gen 2 Type-C 2 x USB 3.0 Audio HD\r\nCompatibilidad con soluciones tÃ©rmicas\r\n1 x Ventilador trasero de 120 mm / Radiador de 120 mm\r\n2 x Ventilador lateral de 120 mm / Radiador de 240 mm\r\n3 x Ventilador inferior de 120 mm / Radiador de 360 mm\r\nCompatibilidad con fuentes de alimentaciÃ³n\r\nPSII : ATX12V - Longitudes de hasta 200 mm ', ''),
(42, 10, 'NZXT S340 negro', 46000, 10, 'upload/26306417_4593791187_1526361404.jpg', 8, 'Dentro de la lÃ­nea de gabinetes Mid-Tower el NZXT S340 Negro CA-S340W-B1 es un gabinete diseÃ±ado para soportar tarjetas madre ITX, M-ATX y ATX ademÃ¡s de soportar un sistema de enfriamiento liquido con radiador de 240mm en su secciÃ³n frontal gracias a su rediseÃ±o y posicionamiento de bahÃ­as de discos duros debajo de la zona de ventiladores Cuenta ademÃ¡s con bahÃ­as especiales sobre la zona de la fuente de poder para ubicar 2 unidades SSD, el acabado en color blanco y una superficie limpia y de toque clÃ¡sico con una ventana lateral que permite admirar los componentes internos con facilidad lo convierten en una opciÃ³n interesante dentro del segmento econÃ³mico de gabinetes Mid-Tower.', 'Especificaciones tÃ©cnicas:\r\n\r\nModelo: CA-S340W-B1\r\nColor: Negro\r\nDimensiones:  200mm x 445mm x 432mm  \r\nPeso: 7.05 kg.\r\nTarjetas Madre Soportadas: ATX, Micro-ATX, ITX\r\nBahÃ­as de 5.25\": Ninguna\r\nBahÃ­as de 3.5\":  2 + 1\r\nBahÃ­as de 2.5\":  2\r\nPanel Fronta: USB 3.0 x 2, Mic x1, Audio x1\r\nRanuras de expansiÃ³n: 7\r\nVentilador Frontal: 120mm fan x 2 o 140mm x 2\r\nVentilador Trasero: 140mm fan x 1 (120mm incluido)\r\nVentilador Superior: 140mm fan x1 (120mm incluido)\r\nTarjetas de Video de hasta: 334mm con radiador de 240mm, \r\n                                             364mm sin radiador instalado', ''),
(43, 10, 'NZXT S340 Blanco', 46000, 10, 'upload/large_c9e6ed04b5d1b066_1526361482.png', 8, 'Dentro de la lÃ­nea de gabinetes Mid-Tower el NZXT S340 Negro CA-S340W-B1 es un gabinete diseÃ±ado para soportar tarjetas madre ITX, M-ATX y ATX ademÃ¡s de soportar un sistema de enfriamiento liquido con radiador de 240mm en su secciÃ³n frontal gracias a su rediseÃ±o y posicionamiento de bahÃ­as de discos duros debajo de la zona de ventiladores Cuenta ademÃ¡s con bahÃ­as especiales sobre la zona de la fuente de poder para ubicar 2 unidades SSD, el acabado en color blanco y una superficie limpia y de toque clÃ¡sico con una ventana lateral que permite admirar los componentes internos con facilidad lo convierten en una opciÃ³n interesante dentro del segmento econÃ³mico de gabinetes Mid-Tower.', 'Especificaciones tÃ©cnicas:\r\n\r\nModelo: CA-S340W-B1\r\nColor: Negro\r\nDimensiones:  200mm x 445mm x 432mm  \r\nPeso: 7.05 kg.\r\nTarjetas Madre Soportadas: ATX, Micro-ATX, ITX\r\nBahÃ­as de 5.25\": Ninguna\r\nBahÃ­as de 3.5\":  2 + 1\r\nBahÃ­as de 2.5\":  2\r\nPanel Fronta: USB 3.0 x 2, Mic x1, Audio x1\r\nRanuras de expansiÃ³n: 7\r\nVentilador Frontal: 120mm fan x 2 o 140mm x 2\r\nVentilador Trasero: 140mm fan x 1 (120mm incluido)\r\nVentilador Superior: 140mm fan x1 (120mm incluido)\r\nTarjetas de Video de hasta: 334mm con radiador de 240mm, \r\n                                             364mm sin radiador instalado', ''),
(44, 10, 'NZXT S340 Rojo', 46000, 10, 'upload/pic5_1526361649.png', 8, 'Dentro de la lÃ­nea de gabinetes Mid-Tower el NZXT S340 Negro CA-S340W-B1 es un gabinete diseÃ±ado para soportar tarjetas madre ITX, M-ATX y ATX ademÃ¡s de soportar un sistema de enfriamiento liquido con radiador de 240mm en su secciÃ³n frontal gracias a su rediseÃ±o y posicionamiento de bahÃ­as de discos duros debajo de la zona de ventiladores Cuenta ademÃ¡s con bahÃ­as especiales sobre la zona de la fuente de poder para ubicar 2 unidades SSD, el acabado en color blanco y una superficie limpia y de toque clÃ¡sico con una ventana lateral que permite admirar los componentes internos con facilidad lo convierten en una opciÃ³n interesante dentro del segmento econÃ³mico de gabinetes Mid-Tower.', 'Especificaciones tÃ©cnicas:\r\n\r\nModelo: CA-S340W-B1\r\nColor: Negro\r\nDimensiones:  200mm x 445mm x 432mm  \r\nPeso: 7.05 kg.\r\nTarjetas Madre Soportadas: ATX, Micro-ATX, ITX\r\nBahÃ­as de 5.25\": Ninguna\r\nBahÃ­as de 3.5\":  2 + 1\r\nBahÃ­as de 2.5\":  2\r\nPanel Fronta: USB 3.0 x 2, Mic x1, Audio x1\r\nRanuras de expansiÃ³n: 7\r\nVentilador Frontal: 120mm fan x 2 o 140mm x 2\r\nVentilador Trasero: 140mm fan x 1 (120mm incluido)\r\nVentilador Superior: 140mm fan x1 (120mm incluido)\r\nTarjetas de Video de hasta: 334mm con radiador de 240mm, \r\n                                             364mm sin radiador instalado', ''),
(45, 10, 'Azza Inferno 310', 46000, 10, 'upload/azza-korpus-inferno-310-window-must_1526361799.jpg', 8, 'Modelo\r\nMarca\r\nAZZA\r\nModelo\r\nCSAZ-310\r\n \r\nDetalles\r\nTipo\r\nATX Mid Tower\r\nColor\r\nNegro\r\nCon fuente de alimentaciÃ³n\r\nNo\r\nFuente de alimentaciÃ³n montada\r\nFondo\r\nCompatibilidad con placa base\r\nATX, Full ATX, Micro ATX\r\nVentana del panel lateral\r\nVidrio templado con caucho montado\r\nLED\r\nRGB', 'ExpansiÃ³n\r\nBahÃ­as de unidades externas de 5.25 \"\r\n1\r\nBahÃ­as de unidad internas de 3.5 \"\r\n2 con bandeja de plÃ¡stico\r\nBahÃ­as de unidades internas de 2.5 \"\r\n4 (2 con bandeja de metal)\r\nRanuras de expansiÃ³n\r\n7\r\n \r\nPuertos del panel frontal\r\nPuertos frontales\r\n2 x USB 3.0, audio HD\r\n \r\nSistema de refrigeraciÃ³n\r\nVentiladores de 120 mm\r\nArriba: \r\nVentilador de 3 x 120 mm / 2 x 140 mm \r\nDelantero: ventilador de \r\n2 x 120 mm / 2 x 140 mm (2 ventiladores HURRICANE LED RGB de 120 mm incluidos) \r\nParte posterior: \r\nventilador de 1 x 120 mm / 1 x 140 mm (ventilador de 1 x 120 mm incluido)\r\n \r\nDimensiones y peso\r\nMax GPU Allowance de longitud\r\n380 mm\r\nMÃ¡xima tolerancia de altura del enfriador de CPU\r\n155 mm\r\nDimensiones (H x W x D)\r\n18.50 \"x 8.25\" x 18.50 \"\r\nPeso\r\n15.00 lbs.', ''),
(46, 10, 'Phanteks Eclipse P400S TG blanco', 50000, 10, 'upload/phanteks-eclipse-p400-tg-blanco_1526362142.jpg', 8, 'Phanteksâ€™ budget-friendly Eclipse P400 now sports an all new tempered glass side panel. The new variant of the Eclipse Series still features the solid build quality, built-in RGB lighting controller, open interior design, compatibility with all-in-one liquid cooling. The Eclipse P400 tempered glass panel adds to its distinct beauty and brings an additional bit of flair and sophistication to your system build.', 'Dimension\r\n	\r\n210 mm x 465 mm x 470 mm (W x H x D)\r\n8.3 in x 18.3 in x 18.5 in\r\nForm Factor\r\n	\r\nMidtower\r\nMaterials\r\n	\r\nSteel chassis, steel exterior, ABS, glass\r\nMotherboard Support\r\n	\r\nATX, Micro ATX, Mini ITX,\r\nE-ATX *(up to 272mm wide, cannot use rubber grommets)\r\nFront I/O\r\n	\r\n2x USB 3.0, Mic, Headphone, Reset, LED control\r\nSide Window\r\n	\r\nYes ', ''),
(47, 10, 'In WIn 303 RGB Blanco', 55000, 10, 'upload/in-win-303c-rgb-negro_1526362205.jpg', 8, '\r\nEstÃ©tica y diseÃ±o exquisito\r\n\r\nIN WIN presenta el modelo 303, una caja para ordenador de elegante diseÃ±o simplista , fabricada con acero y vidrio templado. El panel delantero, aunque guarda una lÃ­nea sobria, se complementa a la perfecciÃ³n con un LED brillante para lograr un resultado mucho mÃ¡s llamativo, pero en todo momento, busca el equilibrio con el que salvaguardar su lÃ­nea elegante. Visualmente, el modelo 303 es sensacional: calidad y diseÃ±o se fusionan con la finalidad de dar un nuevo valor al Hardware, como si se tratase de una obra de ingenierÃ­a.\r\n\r\nLuminosidad radiante\r\n\r\nLa caja del PC siempre serÃ¡ el corazÃ³n del centro de mando de nuestra estaciÃ³n de batalla. El modelo 303 llama la atenciÃ³n desde el momento en el que se enciende. El logotipo de IN WIN se resalta con la pantalla con retroiluminaciÃ³n LED en  color azul y las letras en color negro. Estos bonitos LED tambiÃ©n sirven para indicar cuÃ¡ndo estÃ¡ activo el PC.', 'Modelo 	303\r\nColor 	Black, White\r\nTipo de caja 	Media torre\r\nMaterial de la caja 	Vidrio templado y SECC\r\nCompatibilidad de la placa base 	12\" x 10.7\" ATX, Micro-ATX, Mini-ITX\r\nRanuras de expansiÃ³n 	PCI-E x 7\r\nMaximum Compatibility 	\r\n\r\nCompatible con tarjetas grÃ¡ficas de tecnologÃ­a avanzada -Longitud: 350 mm mÃ¡xima\r\nCompatible con disipador de CPU -Superficie de molde de CPU a la altura del panel lateral: 160 \r\nPuertos delanteros 	2 x USB 3.0\r\n2 x USB 2.0\r\nHD Audio\r\nBahÃ­as de unidad internas 	2 x 3.5\"\r\n2 x 2.5\"\r\nPre-installed (hasta 3 bahÃ­as)\r\nCompatibilidad con soluciones tÃ©rmicas 	1 x Ventilador trasero de 120 mm  / Radiador trasero de 120 mm \r\n3 x Ventilador superior de 120 mm / Radiador trasero de 360 mm \r\nVentilador inferior de 120 mm ', ''),
(48, 2, 'Intel Core I7 8700k', 260000, 0, 'upload/8700k_1528091988.png', 8, 'AGOTADO!\r\nDesktop PC performance is redefined with up to six cores for more processing power. Intel Hyper-Threading Technology1 delivers up to 12-way multitasking support. Intel Optane memory delivers amazing system responsiveness1 and Intel Turbo Boost 2.0 technology gives you that extra burst of performance for fluid gaming and smooth 4K video creation and sharing. \r\n\r\n\r\nUnlocked & Overlocking\r\n\r\nFor the enthusiast, the unlocked 8th Gen Intel Core processors provide you the opportunity to tweak the platform performance to its fullest potential and enjoy great gaming and VR experiences. An impressive portfolio of standard and unlocked devices for a broad range of usages and performance levels provides you more control and more granularity for overclocking2 your platform.\r\n', '    Type CPU / Microprocessor\r\n    Market segment Desktop\r\n    Family Intel Core i7\r\n    Model number ? i7-8700K\r\n    Frequency ? 3700 MHz\r\n    Turbo frequency 4700 MHz (1 core)\r\n    4600 MHz (2 cores)\r\n    4400 MHz (3 or 4 cores)\r\n    4300 MHz (5 or 6 cores)\r\n    Low power frequency 800 MHz\r\n    Bus speed ? 8 GT/s DMI\r\n    Clock multiplier ? 37\r\n    Socket Socket 1151 / H4 / LGA1151\r\n    Size 1.48\" x 1.48\" / 3.75cm x 3.75cm', ''),
(49, 6, 'Asus Strix 1070 8gb', 275000, 2, 'upload/1070_1528093400.jpg', 8, 'AGOTADA!\r\n\r\nROG Strix GeForceÂ® GTX 1070 gaming graphics cards are packed with exclusive ASUS technologies, including DirectCU III Technology with Patented Wing-Blade Fans for 30% cooler and 3X quieter performance, and Industry-only Auto-Extreme Technology for premium quality and the best reliability. Aura RGB Lighting enables a gaming system personalization and VR-friendly HDMI ports let gamers easily enjoy immersive virtual reality experiences. ROG Strix GeForceÂ® GTX 1070 also has GPU Tweak II with XSplit Gamecaster that provides intuitive performance tweaking and instant gameplay streaming.\r\n\r\n', 'Graphics Engine\r\nNVIDIA GeForce GTX 1070\r\nBus Standard\r\nPCI Express 3.0\r\nOpenGL\r\nOpenGLÂ®4.5\r\nVideo Memory\r\nGDDR5 8GB\r\nEngine Clock\r\nOC Mode - GPU Boost Clock : 1860 MHz , GPU Base Clock : 1657 MHz\r\nGaming Mode (Default) - GPU Boost Clock : 1835 MHz , GPU Base Clock : 1632 MHz\r\n*Retail goods are with default Gaming Mode, OC Mode can be adjusted with one click on GPU Tweak II\r\nCUDA Core\r\n1920\r\nMemory Clock\r\n8008 MHz\r\nMemory Interface\r\n256-bit\r\nResolution\r\nDigital Max Resolution:7680x4320\r\nInterface\r\nDVI Output : Yes x 1 (Native) (DVI-D)\r\nHDMI Output : Yes x 2 (Native) (HDMI 2.0)\r\nDisplay Port : Yes x 2 (Native) (Regular DP)\r\nHDCP Support : Yes\r\nPower Connectors\r\n1 x 8-pin\r\nAccessories\r\n2 x ROG Cable Ties\r\nSoftware\r\nASUS GPU Tweak II & Driver\r\nDimensions\r\n11.73 \" x 5.28 \" x 1.57 \" Inch\r\n29.8 x 13.4 x4 Centimeter', ''),
(50, 6, 'Sapphire Nitro Rx 580 8gb', 180000, 3, 'upload/RX 580_1528094194.jpg', 8, 'Te presentamos la tarjeta grÃ¡fica Sapphire Nitro+ Radeon RX 580 8GB GDDR5. Construida sobre la arquitectura Polaris a prueba de futuro, la tarjeta grÃ¡fica SAPPHIRE NITRO + Radeon â„¢ RX 580 reproduce tus favoritos a 1080p y mÃ¡s allÃ¡, desde los Ãºltimos juegos de eSports y MOBA hasta los tÃ­tulos AAA mÃ¡s populares y de gran intensidad grÃ¡fica. La evoluciÃ³n del proceso FinFET 14 ha permitido a la nueva serie RX 500 alcanzar mayores relojes que las generaciones anteriores.', '    Overclock\r\n    Especificaciones de reloj: 1450/1411/2000 Mhz\r\n    2304 Steam Processors\r\n    Memoria: 8GB GDDR5\r\n    14nm FinFET\r\n    4Âº GeneraciÃ³n Graphics Core Next\r\n    Interfaz: PCI Express 3.0\r\n    Memoria: 8GB GDDR5\r\n    Salidas: 1x DL-DVI-D/2x HDMI 2.0b/2x DisplayPort 1.4\r\n    Interfaz de memoria: 256 bit\r\n    Cooling solution: 2.2 slot active\r\n    OpenGLÂ® 4.5\r\n    OpenCL 2.0\r\n    DirectXÂ® 12\r\n    Vulkanâ„¢ 1.0\r\n    Shader Model 5.1\r\n    Interfaz de memoria:256bit\r\n    Cooling solution: 2.2 slot active\r\n    Enfriamiento Dual-X mejorado\r\n    Ventiladores de rodamientos de bolas dobles\r\n    Capacitores polimÃ©ricos de larga duraciÃ³n\r\n    ', ''),
(52, 8, 'Black Conqueror Pro Instinct', 383000, 3, 'upload/azza-photios-250-3-x-usb20-1-x-usb30_1528668552.jpg', 8, 'Te presentamos la computadora Black Conqueror Pro Instinct 2018!!\r\n* Somos una empresa legalmente inscrita en Costa Rica y damos garantÃ­a real con factura timbrada*\r\n\r\n** Damos asesorÃ­a y el mejor trato personalizado del paÃ­s **\r\n** Todos los componentes son 100% nuevos y traen su respectivo nÃºmero serial**\r\n** PC dedicada para gamers de gama media-alta (50-60 FPS high resolution PUGB) como juegos fortnite o PUGB**\r\n** Windows 10 Pro 64bits Instalado y Google Chrome incluidos **\r\n** No incluye monitor **\r\n** Este precio solo aplica en efectivo o depÃ³sito bancario!**', '1) Case Azza Photios 250 Mid Tower\r\n\r\n2) Tarjeta Madre Gigabyte H110m-h\r\n- 1 PCIe 3.0 x 16 slots\r\n- Socket LGA 1151 SÃ©tima generacion/sexta Generacion\r\n- 2 PCI-E 3.0 x 1 slot\r\n- 4 Sata 6gb/seg\r\n- 32 GB memoria maximo 2400mhz\r\n- 4 x USB 3.1 Gen 1 port(s) (2 at back panel, blue, 2 at mid-board)\r\n- 6 x USB 2.0/1.1 port(s) (2 at back panel, black, 4 at mid-board)\r\n- 1 x D-Sub\r\n- 1 x HDMI\r\n\r\n3) Procesador Intel 7va Generacion i5 7500\r\n* Se puede hacer upgrade a Gtx 1060 6gb sin producir cuello de botella!\r\n- 4 NÃºcleos\r\n- 4 Subprocesadores\r\n- Turbo boost tech 2.0 pasa de 3.4ghz hasta 3.8ghz\r\n- 6 mb CachÃ©\r\n- LitografÃ­a 14nm\r\n- TDP 65 wats\r\n\r\n4) Fuente de Poder Marca EVGA 600 wats No modular 80+ White Certificada\r\n\r\n5) Memoria Marca Corsair DDR 4 8gb 2133mhz\r\n\r\n7) Disco duro Toshiba 1 tb 7200 rpm\r\n\r\n8) Tarjeta Grafica Gigabyte Nvidia Geforce GTX 1050ti 4gb\r\n- PCI express 3.0\r\n- Velocidad de 128 bits\r\n- Memoria 4gb DDR 5\r\n- Suporta HDMI/Dual-link/DVI-D\r\n- DirectX 12\r\n- OpenGL 4.5', 'No hay disponible'),
(53, 8, 'White Tiger PRO Instinc Promocion!!', 726000, 3, 'upload/in-win-303c-rgb-negro_1528671832.jpg', 8, 'Se integra a la manada de PC Innovations la nueva #WhiteTigerProInstinct2018\r\nPuedes adquirirla en este momento a tan sÃ³lo: â‚¡726,000 Colones\r\n(HACEMOS ENVÃOS A TODO EL PAÃS).\r\n\r\nUn 100% de calificaciones positivas en mercado libre. Clientes 100% satisfactorios y contentos.\r\nPara ver nuestra reputaciÃ³n puedes acceder por medio de este enlace:\r\nhttps://articulo.mercadolibre.co.cr/MCR-422791833-computadoâ€¦\r\n\r\n* Costo del envÃ­o dependiendo del lugar. Gratis alrededores de Curridabat. hasta 8km de la tienda\r\n\r\n* Todos nuestros productos cuentan con garantia de 1 aÃ±o por defectos de fÃ¡brica.\r\n\r\n* Somos tienda fisica. Se puede retirar el producto en Curridabat, San JosÃ©.\r\n\r\nHorario de AtenciÃ³n en Tienda ElectrÃ³nica(Facebook y Mercado Libre):\r\nL-V 8:00am a 10:00pm y S-D 10am a 8:00pm.\r\n\r\nHorario de AtenciÃ³n en Tienda FÃ­sica:\r\nL-V 11:00am a 8:00pm y S 11:00am a 7:00pm\r\nD 1:00PM-7:00 PM (Trabajamos DÃ­as Festivos)', '1- Case Inwin 303 Blanco RGB incluidos 3 Fans Corsair ML120 Led White 120mm Premium Magnetic Levitation\r\n2- Tarjeta Gigabyte Z270x-Designare RGB de Lujo Led Blue \r\n- ATX\r\n- Dedicada para overclokear el procesador Intel i7 7700k\r\n- 3 PCIe 3.0 x 16 slots para AMD Crossfire Technology-Nvidia SLi\r\n- Socket LGA 1151 Setima GeneraciÃ³n\r\n- Intel Z270 Chipset\r\n- 3 PCI-E 3.0 x 1 slot\r\n- 1 Turbo M.2 slot\r\n- 6 Sata 6gb/seg y 2 Sata Express\r\n- 6 USB\r\n- 2 USB 3.1 gen 2!!\r\n- 64 GB memoria a 3866mhz XMP Ready\r\n- Soporta DVI-D, HDMI\r\n3-Procesador Intel I7 7700k Unlocked\r\n- 4.2 hasta 4.5 ghz\r\n- LGA1151\r\n- 8MB CachÃ©\r\n- 4 nucleos y 8 subprocesadores\r\n4-Memoria Ram Trident DDR4 8gb 3200mhz \r\n5-PSU Thermaltake SmartPro RGB 650 Wats Bronce 80+\r\n- Su color led azul combina con la GPU y la tarjeta madre haciendo el diseÃ±o de la misma perfecta\r\n6-Enfriamento liquido Corsair H100i v2 240mm radiador\r\n7-Asus Strix Geforce Gtx 1070 8 gb\r\n8-1 tb HDD Tosiba 7200 rpm\r\n\r\n', ''),
(54, 8, 'Stylist Red/Black Pro', 571000, 3, 'upload/s340 elite rojo_1528674076.jpg', 8, 'Se integra a la manada de PC Innovations la nueva \r\n#Stylist Red/Black Pro \r\nPuedes adquirirla en este momento a tan sÃ³lo: â‚¡571,000 Colones\r\n(HACEMOS ENVÃOS A TODO EL PAÃS).\r\n\r\nUn 100% de calificaciones positivas en mercado libre. Clientes 100% satisfactorios y contentos.\r\nPara ver nuestra reputaciÃ³n puedes acceder por medio de este enlace:\r\nhttps://articulo.mercadolibre.co.cr/MCR-422791833-computadoâ€¦\r\n\r\n* Costo del envÃ­o dependiendo del lugar. Gratis alrededores de Curridabat. hasta 8km de la tienda\r\n\r\n* Todos nuestros productos cuentan con garantia de 1 aÃ±o por defectos de fÃ¡brica.\r\n\r\n* Somos tienda fisica. Se puede retirar el producto en Curridabat, San JosÃ©.\r\n\r\nHorario de AtenciÃ³n en Tienda ElectrÃ³nica(Facebook y Mercado Libre):\r\nL-V 8:00am a 10:00pm y S-D 10am a 8:00pm.\r\n\r\nHorario de AtenciÃ³n en Tienda FÃ­sica:\r\nL-V 11:00am a 8:00pm y S 11:00am a 7:00pm\r\nD 1:00PM-7:00 PM (Trabajamos DÃ­as Festivos)', '1) Case NZXT S340 Color Negro/Rojo con 2 fans de 120mm incluido\r\n\r\n2) Tarjeta Msi z370 A-pro\r\n- 2 PCIe 3.0 x 16 slots para AMD Crossfire Technology\r\n- Socket LGA 1151 Octava generacion\r\n- 4 PCI-E 3.0 x 1 slot\r\n- 1 Turbo M.2 slot\r\n- 6 Sata 6gb/seg\r\n- 64 GB memoria a 4000mhz\r\n- Soporta DVI-D, Display port, VGA\r\n\r\n3) Procesador Intel 8va Generacion i5 8400\r\n\r\n4) PSU Corsair 650 wats No modular 80+ White\r\n\r\n6) Memoria Hyperx Fury 8gb 2666mhz DDR4\r\n\r\n7) HDD Toshiba 1 tb 7200 rpm\r\n\r\n8) Gigabyte Geforce Gtx 1060 6 gb OC Windforce\r\n', ''),
(55, 6, 'Geforce Titan Z 12gb', 250000, 0, 'upload/titan Z_1528675311.jpg', 8, 'NO HAY EN STOCK!\r\n\r\nTe traemos la potente Geforce GTX TITAN Z 12 GB Nueva de paquete al precio mÃ¡s bajo del mercado + 1 aÃ±o de garantia!!\r\n* Solo efectivo o depÃ³sito bancario por ser precio rebajado!!*\r\n* GrÃ¡fica diseÃ±ada para usar hasta 4 monitores hasta 4K!\r\n* Factura timbrada!*\r\n\r\nUn 100% de calificaciones positivas. Clientes 100% satisfactorios y contentos.\r\n\r\n* Costo del envÃ­o dependiendo del lugar. Gratis alrededores de Curridabat. hasta 8km de la tienda\r\n\r\n* Todos nuestros productos cuentan con garantia por defectos de fÃ¡brica.\r\n\r\n* Somos tienda fisica. Se puede retirar el producto en Curridabat, San JosÃ©.\r\n\r\n* Horario:\r\nContacto:\r\nL-V 8:00am a 10:00pm y S-D 10am a 8:00pm\r\n\r\n* DespuÃ©s de la compra les agradecemos que nos califiquen segÃºn su opiniÃ³n! Es muy valioso su comentario para seguir mejorando!\r\n\r\nEs un gusto atenderlos...', 'CUDA Cores: 5760\r\n* Base Clock (MHz): 705\r\n* Boost Clock (MHz): 876\r\n* Texture Fill Rate (billion/sec): 338\r\n* Memory Speed 7.0 Gbps\r\n* Standard Memory Config: 12288 MB\r\n* Memory Interface GDDR5\r\n* Memory Interface Width: 768-bit (384-bit per GPU)\r\n* Memory Bandwidth (GB/sec0:) 672', ''),
(56, 14, 'NZXT Kraken X42', 66000, 2, 'upload/NZXT-Kraken-X42_1528676116.png', 8, 'The all-new Kraken Series features the most advanced controls ever to be included in an all-in-one liquid cooler. Through CAMâ€™s software interface, users can fine-tune settings to ensure an optimal performance, even in the most intense gaming sessions. Everything, including the pump, radiator, and the fans, have been redesigned to bring you the greatest experience in liquid cooling, all backed by an industry-leading 6-year warranty.  ', 'Dimensions	Radiator: 175 x 143 x 30mm\r\nPump: 80 x 80 x 52.9mm\r\nMaterial(s)	Aluminum, copper, plastic, ultra-low evaporation rubber, nylon sleeving\r\nWeight	890g\r\nCPU & Socket	Intel Socket 1151, 1150, 1155, 1156, 1366, 2011, 2011-3, 2066\r\nAMD Socket AM4, FM2+, FM2, FM1, AM3+, AM3, AM2+, AM2\r\nRAM Height Clearance	35mm\r\nControl Modes	Fan: Silent / Performance / Custom / Manual\r\nPump: Silent / Performance / Custom / Manual\r\nControl Method	Software with CAM\r\nLED Modes	Preset Modes: Fixed, Breathing, Fading, Marquee, Covering Marquee, Pulse, Spectrum Wave, Alternating, Tai Chi, Water Cooler, Loading\r\nReactive Modes: Smart and Audio\r\nPump Speed	1,600~2,800 +/- 300RPM\r\nFan Model	Aer P140\r\nNumber of Fans	1\r\nFan Speed	500~1,800 +/- 300RPM\r\nFan Noise Level	21-38dBA\r\nWarranty	6 years\r\nModel Number	RL-KRX42-01\r\nRL-KRX42-02 (Includes AM4 Bracket)\r\nUPC	815671012852\r\n815671013422 (Includes AM4 Bracket)\r\nEAN	5060301693184\r\n5060301693740 (Includes AM4 Bracket)', ''),
(57, 14, 'NZXT Kraken X62', 92000, 2, 'upload/large_c6637a7493d26889_1528676276.png', 8, 'The all-new Kraken Series features the most advanced controls ever to be included in an all-in-one liquid cooler. Through CAMâ€™s software interface, users can fine-tune settings to ensure an optimal performance, even in the most intense gaming sessions. Everything, including the pump, radiator, and the fans, have been redesigned to bring you the greatest experience in liquid cooling, all backed by an industry-leading 6-year warranty.  ', 'Dimensions	Radiator: 315 x 143 x 30mm\r\nPump: 80 x 80 x 52.9mm\r\nMaterial(s)	Aluminum, copper, plastic, ultra-low evaporation rubber, nylon sleeving\r\nWeight	1.29kg\r\nCPU & Socket	Intel Socket 1151, 1150, 1155, 1156, 1366, 2011, 2011-3, 2066\r\nAMD SocketTR4, AM4, FM2+, FM2, FM1, AM3+, AM3, AM2+, AM2\r\nRAM Height Clearance	35mm\r\nControl Modes	Fan: Silent / Performance / Custom / Manual\r\nPump: Silent / Performance / Custom / Manual\r\nControl Method	Software with CAM\r\nLED Modes	Preset Modes: Fixed, Breathing, Fading, Marquee, Covering Marquee, Pulse, Spectrum Wave, Alternating, Tai Chi, Water Cooler, Loading\r\nReactive Modes: Smart and Audio\r\nPump Speed	1,600~2,800 +/- 300RPM\r\nFan Model	Aer P140\r\nNumber of Fans	2\r\nFan Speed	500~1,800 +/- 300RPM\r\nFan Noise Level	21-38dBA\r\nWarranty	6 years\r\nModel Number	RL-KRX62-01\r\nRL-KRX62-02 (Includes AM4 Bracket)\r\nUPC	815671012876\r\n815671013446 (Includes AM4 Bracket)\r\nEAN	5060301693207\r\n5060301693764 (Includes AM4 Bracket) ', ''),
(58, 14, 'Corsair H100i Gtx', 62000, 3, 'upload/corsair-cooling-hydro-series-h100i-gtx-4_1528676428.jpg', 8, 'Sistema de refrigeraciÃ³n lÃ­quida para CPU de rendimiento extremo Hydro Seriesâ„¢ H100i GTX\r\n\r\nEl sistema de refrigeraciÃ³n lÃ­quida para CPU Hydro Seriesâ„¢ H100i GTX cuenta con un radiador de 240 mm y dos ventiladores SP120L PWM que disipan eficazmente el calor generado por CPUs muy sobreaceleradas.\r\n\r\nDos ventiladores SP120L PWM con supervisiÃ³n y control a travÃ©s de Corsair Link para unas prestaciones extremas de la refrigeraciÃ³n lÃ­quida para CPU\r\n\r\nEl Hydro Series H100i GTX es un sistema de refrigeraciÃ³n integral para CPU de rendimiento extremo adaptado a chasis con puntos de montaje para radiadores de 240 mm. El radiador de 240 mm y dos ventiladores SP120L PWM disipan eficazmente el calor generado por CPU muy sobreaceleradas. Incluye Corsair Link, para que se puedan supervisar las temperaturas, ajustar el rendimiento de refrigeraciÃ³n y personalizar la iluminaciÃ³n LED directamente desde el ordenador de sobremesa.', 'Cooling Warranty\r\nFive years\r\nCold Plate Material\r\nCopper\r\nRadiator Material\r\nAluminum\r\nPWM\r\nYES\r\nCORSAIR LINK compatibility\r\nYes\r\nRadiator Dimensions\r\n276mm x 125mm x 30mm\r\nFan Dimensions\r\n120mm x 25mm\r\nFan Speed\r\n2435 RPM\r\nNumber of Fans\r\n2\r\nCooling Socket support\r\nIntel 115x, Intel 2011/2066, AMD AM3/AM2\r\nLighting\r\nRGB\r\nRadiator Size\r\n240mm\r\nFan Model\r\nSP Series\r\nFan airflow\r\n70.69 CFM\r\nNoise level\r\n37.7 dBA\r\nFan static pressure\r\n4.65 mm-H2O\r\n', ''),
(59, 6, 'Zotac 1050ti Mini', 125000, 3, 'upload/gczt-088_gczt_088_1g_800x800_1529996144.jpg', 8, 'Todos merecen un excelente juego. Es por eso que creamos la rÃ¡pida y poderosa ZOTAC GeForceÂ® GTX 1050 Ti Mini. Ahora puede convertir su PC en una verdadera plataforma de juego, con NVIDIA Pascal â„¢, la arquitectura de GPU mÃ¡s avanzada que se haya creado. EstÃ¡ cargado con las innovadoras tecnologÃ­as NVIDIA Game Ready que permiten a cada jugador experimentar los Ãºltimos tÃ­tulos en toda su gloria en forma sÃºper compacta.', '    GPU\r\n    GeForceÂ® GTX 1050 Ti\r\n    CUDA cores\r\n    768\r\n    Video Memory\r\n    4GB GDDR5\r\n    Memory Bus\r\n    128-bit\r\n    Engine Clock\r\n    Base: 1303 MHz\r\n    Boost:1417 MHz\r\n    Memory Clock\r\n    7 GHz\r\n    PCI Express\r\n    3.0\r\n    Display Outputs\r\n    DisplayPort 1.4\r\n    HDMI 2.0b\r\n    DL-DVI\r\n    HDCP Support\r\n    Yes\r\n    Multi Display Capability\r\n    Triple Display\r\n    Recommended Power Supply\r\n    300W\r\n    Power Consumption\r\n    75W\r\n    Power Input\r\n    N/A\r\n    DirectX\r\n    12 API feature level 12_1\r\n    OpenGL\r\n    4.5\r\n    Cooling\r\n    Single Fan\r\n    Slot Size\r\n    Dual Slot\r\n    SLI\r\n    No\r\n    Supported OS\r\n    Windows 10 / 8 / 7\r\n    Card Length\r\n    144.78mm x 111.15mm\r\n    Accessories\r\n    User Manual\r\n\r\n', ''),
(60, 6, 'Zotac 1050ti OC', 130000, 10, 'upload/gczt-087_gczt_087_1g_800x800_1529996425.jpg', 8, 'Todos merecen un excelente juego. Es por eso que creamos la rÃ¡pida y poderosa ZOTAC GeForceÂ® GTX 1050 Ti OC Edition. Ahora puede convertir su PC en una verdadera plataforma de juego, con NVIDIA Pascal â„¢, la arquitectura de GPU mÃ¡s avanzada que se haya creado. EstÃ¡ cargado con las innovadoras tecnologÃ­as NVIDIA Game Ready que permiten a cada jugador experimentar los Ãºltimos tÃ­tulos en toda su gloria en forma sÃºper compacta.', '    GPU\r\n    GeForceÂ® GTX 1050 Ti\r\n    CUDA cores\r\n    768\r\n    Video Memory\r\n    4GB GDDR5\r\n    Memory Bus\r\n    128-bit\r\n    Engine Clock\r\n    Base: 1392 MHz\r\n    Boost:1506 MHz\r\n    Memory Clock\r\n    7 GHz\r\n    PCI Express\r\n    3.0\r\n    Display Outputs\r\n    DisplayPort 1.4\r\n    HDMI 2.0b\r\n    DL-DVI\r\n    HDCP Support\r\n    Yes\r\n    Multi Display Capability\r\n    Triple Display\r\n    Recommended Power Supply\r\n    300W\r\n    Power Consumption\r\n    75W\r\n    Power Input\r\n    N/A\r\n    DirectX\r\n    12 API feature level 12_1\r\n    OpenGL\r\n    4.5\r\n    Cooling\r\n    Dual Fan\r\n    Slot Size\r\n    Dual Slot\r\n    SLI\r\n    No\r\n    Supported OS\r\n    Windows 10 / 8 / 7\r\n    Card Length\r\n    174mm x 111.15mm\r\n    Accessories\r\n    User Manual\r\n\r\n', ''),
(61, 6, 'Gigabyte Windforce 1060 3gb', 155000, 0, 'upload/20160721193143_big_1529996596.png', 8, 'ReciÃ©n llegada la Gigabyte GeForce GTX 1060 Windforce OC, tercera de la nueva familia de tarjetas grÃ¡ficas Nvidia bajo la tecnologÃ­a Pascal, nos encontramos con una potente grÃ¡fica que viene a competir directamente con su competencia mÃ¡s directa, las RX 480 de AMD.\r\n\r\nCon un gran elenco de novedosas tecnologÃ­as, la GTX 1060 se convierte en la puerta de entrada a la realidad virtual y a los grÃ¡ficos en alta definiciÃ³n. Entre todas ellas destaca la tecnologÃ­a Pascal utilizada para fabricar la GPU bajo una nueva arquitectura mÃ¡s Ã³ptima en todos los aspectos y de la que hablaremos mÃ¡s abajo.\r\n\r\nLas GTX 1060 tambiÃ©n disfrutan de la arquitectura Pascal\r\n\r\nEn las Gigabyte GTX 1060 encontramos la misma estructura en los silicio de estos modelos, hablamos de Pascal, lo Ãºltimo en cuanto a computaciÃ³n grÃ¡fica que estÃ¡ arrojando resultados espectaculares.\r\n\r\nBajo el nombre Pascal se encuentra una nueva arquitectura, una forma en la que se construyen los procesadores grÃ¡ficos de Nvidia, la evoluciÃ³n de Maxwell. Este nuevo diseÃ±o ha conseguido triplicar los resultados en realidad virtual. Ante este escenario podemos asegurar que la serie 10 de Nvidia es la reina absoluta de las tarjetas grÃ¡ficas en estos momentos por potencia, rendimiento y eficiencia.\r\n\r\nFabricadas en 16 nanÃ³metros con la tecnologÃ­a FinFET, las GPU de las Nvidia GTX 1060 han demostrado que pueden alcanzar velocidades mucho mÃ¡s altas sin repercutir en el consumo, reduciÃ©ndolo incluso, llegando a integrar 17.000 millones de transistores, la unidades bÃ¡sicas de las que se compone un procesador', '\r\n    Graphics Processing\r\n    GeForceÂ® GTX 1060\r\n    Core Clock\r\n    Boost: 1797MHz/ Base: 1582MHz in OC Mode\r\n    Boost: 1771MHz/ Base: 1556MHz in Gaming Mode\r\n    CUDAÂ® Cores\r\n    1152\r\n    Process Technology\r\n    16 nm\r\n    Memory Clock\r\n    8008 MHz\r\n    Memory Size\r\n    3 GB\r\n    Memory Type\r\n    GDDR5\r\n    Memory Bus\r\n    192 bit\r\n    Card Bus\r\n    PCI-E 3.0 x 16\r\n    Output\r\n\r\n    Dual-link DVI-D *2\r\n\r\n    HDMI-2.0b*1 (Max Resolution: 4096x2160 @60 Hz)\r\n\r\n    Display Port-1.4 *1 (Max Resolution: 7680x4320 @60 Hz)\r\n    Digital max resolution\r\n    7680x4320\r\n    Multi-view\r\n    4\r\n    Card size\r\n    H=39 L=223 W=121 mm\r\n    PCB Form\r\n    ATX\r\n    DirectX\r\n    12\r\n    OpenGL\r\n    4.5\r\n    Recommended PSU\r\n    400W\r\n    Power Connectors\r\n    6 pin*1\r\n\r\n', ''),
(62, 6, 'Gigabyte G1 Rx 480', 150000, 0, 'upload/gigabyte-radeon-rx-480-g1-gaming-D_NQ_NP_634406-MPE27536858467_062018-F_1529996782.jpg', 8, 'Te presentamos la Radeon RX480 de Gigabyte, una grÃ¡fica con 8GB GDDR5 y VR Ready.', '\r\n    Graphics Processing\r\n    Radeon RX480\r\n    Core Clock\r\n    1290 MHz\r\n    Process Technology\r\n    14 nm\r\n    Memory Clock\r\n    8,000 MHz\r\n    Memory Size\r\n    8 GB\r\n    Memory Type\r\n    GDDR5\r\n    Memory Bus\r\n    256 bit\r\n    Card Bus\r\n    PCI-E 3.0 x 16\r\n    Output\r\n    Dual-link DVI-D *1\r\n    HDMI 2.0*1\r\n    Display Port *1.4*3\r\n    Digital max resolution\r\n    7680x4320\r\n    Multi-view\r\n    5\r\n    Card size\r\n    H=40 L=232 W=116 mm\r\n    PCB Form\r\n    ATX\r\n    DirectX\r\n    12\r\n    OpenGL\r\n    4.5\r\n    Recommended PSU\r\n    500W\r\n    Power Connectors\r\n    8 pin*1\r\n\r\n', ''),
(63, 1, 'Asus Strix Z270i', 110000, 0, 'upload/placa-asus-rog-strix-z270i-gaming-lga-1151_1529996971.jpg', 8, 'Intel Z370 mini-ITX gaming motherboard with Addressable AURA sync RGB LED lighting, 802.11ac Wi-Fi, DDR4 4333MHz support, dual M.2, SATA 6Gbps and a USB 3.1 Gen 2 front-panel connector', '    LGA1151 socket for 8th -gen IntelÂ® Coreâ„¢ desktop processors.\r\n    Aura Sync RGB: Synchronize LED lighting with a vast portfolio of compatible PC gear, including addressable headers.\r\n    Onboard M.2 heatsink: Cools your M.2 drive, delivering consistent storage performance and enhanced reliability.\r\n    5-Way Optimization: Automated system-wide tuning, providing overclocking and cooling profiles that are tailor-made for your rig.\r\n    Gaming audio: SupremeFX S1220A teams with Sonic Studio III to create an aural landscape that draws you deeper into the action.\r\n    Gaming connectivity: Onboard dual M.2 slots for up to 32 Gbps of PCIe bandwidth and a USB 3.1 Gen 2 front panel connector.\r\n    Gaming networking: Intel Gigabit Ethernet, LANGuard, GameFirst and 2x2 802.11ac Wi-Fi with MU-MIMO support.\r\n    Gamerâ€™s Guardian: ASUS SafeSlot and premium components for maximum endurance.\r\n', ''),
(64, 4, 'AOC G2460pqu', 150000, 10, 'upload/aoc-g2460pqu_1530758290.jpg', 8, 'Monitor de  24 pulgadas  (24 pulgadas  Full HD de 1920 x 1080 de resoluciÃ³n)\r\n\r\n16: 9 de aspecto RelaciÃ³n de apoyo  de 16,7 millones de colores\r\n\r\n144hz frecuencia de actualizaciÃ³n\r\n\r\nBrillo: 350 cd / m2, contraste dinÃ¡mico de 80.000.000: 1 racionalidad, respuesta de 1 ms tiempo-\r\n\r\nConectividad- VGA, DVI, HDMI, DisplayPort, USB (4)\r\n\r\nMontar en la pared, altavoces, ajuste de altura w / Pivote Retrato', 'Panel 	WLED Backlit - TFT Active Matrix LCD\r\nViewable Image Size / Aspect Ratio 	24â€ / 16:9\r\nBrightness 	350 cd/m2\r\nContrast 	80,000,000:1\r\nResponse Time 	1ms (Gray to Gray)\r\nViewable Angle 	170 degrees horizontal, 160 degrees vertical\r\nMaximum Resolution 	1920 x 1080 @144Hz\r\nDisplay Colors 	16.7 Million\r\nConnectivity 	VGA, DIV-Dual Link, HDMI, DisplayPort, USB 2.0 x 4\r\nAudio In/Out 	audio out 2W x 2 ', ''),
(65, 4, 'Samsung LC27f390', 190000, 0, 'upload/es-curved-cf390-lc27f390fhuxen-018-dynamic-black_1530758531.jpg', 8, 'Disfruta de una experiencia totalmente inmersiva con el nuevo monitor curvo de Samsung. Su curvatura 1800R (radio de curvatura de 1800 mm) te ofrece un mayor campo de visiÃ³n, mejorando la percepciÃ³n de profundidad y haciendo que te sumerjas aÃºn mÃ¡s en tu contenido multimedia.\r\n\r\nConfort para tus ojos\r\n\r\nRecientes estudios han demostrado que las pantallas curvas proporcionan una sensaciÃ³n de alivio en comparaciÃ³n con las planas. La curvatura de la pantalla 1800R estÃ¡ basada en la del ojo humano y ayuda a que la vista pueda recorrer toda la pantalla sin necesidad de cambiar el enfoque. AdemÃ¡s, gracias al modo Eye Saver se minimiza la emisiÃ³n de ondas de luz azul que fatigan tu retina, y con la tecnologÃ­a Flicker Free reducirÃ¡s el parpadeo de la pantalla para que tus ojos descansen.\r\n', '1920x1080 (Full HD)\r\nResoluciÃ³n\r\n16:9\r\nRelaciÃ³n de aspecto	\r\n1800R\r\nCurvatura de Pantalla	\r\n250cd/m2\r\nBrillo (Normal)	\r\n3,000:1(Typ)\r\nRelaciÃ³n de contraste estÃ¡tico	\r\n4(GTG)\r\nTiempo de Respuesta	', ''),
(66, 4, 'AOC Agon Ag271qx', 270000, 10, 'upload/81aPq2ihg2L._SX425__1530758799.jpg', 8, 'Descubra un nuevo mundo de imÃ¡genes ultra fluidas y cristalinas con nuestro nuevo monitor para juegos QHD, AGON 27â€ destinado a jugadores exigentes y profesionales. Su resoluciÃ³n nativa de 2560x1440 y otras caracterÃ­sticas para juegos, como la tecnologÃ­a Adaptive-Sync Technology (compatible con FreeSyncâ„¢, a un rango de 30-144Hz) y un tiempo de respuesta de 1ms hacen de AGON AG271QX uno de los mejores monitores para juegos que se hayan creado. El AOC AGON AG271QX lleva el juego a un nivel nuevo con una pantalla de alta velocidad de 27 pulgadas. Los 144Hz y el tiempo de respuesta de 1ms suponen la diferencia a la hora de jugar a una resoluciÃ³n de 2560x1440. Esta combinaciÃ³n garantiza imÃ¡genes cristalinas y ultra suaves. Gracias a la tecnologÃ­a Adaptive-Sync Technology (compatible con FreeSyncâ„¢, a un rango de 30-144Hz), los dÃ­as de los parpadeos y las imÃ¡genes partidas se han acabado. No hay donde esconderse, porque el Control de Sombras AOC Shadow Control lleva claridad a los rincones oscuros sin tener que ajustar el resto de la pantalla, y el modo de entrada con bajo Lag garantiza que las Ã³rdenes se ejecuten de manera instantÃ¡nea. Para ofrecer la experiencia de juego mÃ¡s cÃ³moda, el AGON AG271QX viene con la tecnologÃ­a antiparpadeo AOC Flicker Free Technology y el modo AOC Low Blue Light para reducir el cansancio ocular y la fatiga. El libre ajuste de altura, inclinaciÃ³n y giro son el toque final que hacen que Ã©ste sea el monitor para juego perfecto.', ' 27\" TN Panel, 2560x1440 Resolution, 144hz Response Time, 1ms\r\nBrightness- 350 cd/m2, Dynamic Contrast Ratio- 50,000,000:1,16:9 Aspect Ratio\r\nConnectivity-VGA,DVI,DP,HDMI-MHL, (2) USB3.0, (2) USB 2.0. Compatibile with Windows 10\r\nSpeakers, Audio line-in/out, , Dual Link/adaptive-sync-Free Sync Compatible\r\nHeight and Pivot Adjustable, Wall Mountable ', ''),
(67, 7, 'I3 8100+ GA H310M-ds2 + 8gb Ddr4', 182000, 10, 'upload/kit1_1530760008.png', 8, 'Core i3 8100\r\nGigabyte H310M-DS2\r\nTeamgroup ddr4 8gb 2400mhz', '', ''),
(68, 7, 'i5 8400+ GA h310M-ds2 + 8gb ddr4', 212000, 10, 'upload/kit2_1530760090.png', 8, 'Intel Core i5 8400\r\nGigabyte H310M-DS2\r\nTeamgroup ddr4 8gb 2400mhz', '', ''),
(69, 3, 'Ryzen 7 1800x', 170000, 0, 'upload/1_500_1530760511.jpg', 8, 'La cumbre de la potencia de procesamiento de escritorio Zen\r\nLa verdadera inteligencia artificial con un procesador de 8 nÃºcleos, 16 subprocesos y las mÃ¡s altas velocidades de reloj disponibles, todo en la nueva plataforma Socket AM4.\r\n\r\n\r\nArquitectura de nÃºcleo â€œZenâ€\r\n\r\nCreada con la tecnologÃ­a AMD SenseMI para brindar un procesador realmente inteligente.\r\n\r\n\r\nTecnologÃ­a AMD SenseMI\r\n\r\nCon la tecnologÃ­a AMD SenseMI, los procesadores Ryzen utilizan inteligencia artificial verdadera para acelerar el rendimiento.\r\n\r\n\r\nUtilidad AMD Ryzen Master\r\n\r\nLa utilidad de overclocking sencilla a la vez que potente para los procesadores AMD Ryzen', '# de nÃºcleos de CPU\r\n8\r\n# de hilos\r\n16\r\nReloj base\r\n3.6GHz\r\nReloj de aumento mÃ¡x.\r\n4GHz\r\nCachÃ© L1 total\r\n768KB\r\nCachÃ© L2 total\r\n4MB\r\nCachÃ© L3 total\r\n16MB\r\nDesbloqueados\r\nSÃ­\r\nCMOS\r\n14nm\r\nPackage\r\nAM4\r\nVersiÃ³n de PCI Express\r\nPCIe 3.0 x16\r\nSoluciÃ³n tÃ©rmica\r\nNot included\r\nTDP/TDP predeterminado\r\n95W\r\nTemp. mÃ¡x.\r\n95Â°C\r\n', ''),
(70, 6, 'Asus Strix 1060 6gb OC', 250000, 0, 'upload/asus-rog-strix-geforce-gtx-1060-oc-6gb-gddr5_1536559740.jpg', 8, '  -  1873 MHz de boost clock en modo OC para un rendimiento y experiencia de juego sobresalientes.\r\n  -  DirectCU III con Aspas Patentadas de Ventilador para rendimiento 30% mÃ¡s frÃ­o y 3X mÃ¡s silencioso.\r\n  -  ASUS FanConnect cuenta con cabezales de 4-pines controlado por el GPU conectados a los ventiladores de sistema para un Ã³ptimo rendimiento tÃ©rmico.\r\n  -  TecnologÃ­a Auto-Extreme Ãšnica en la Industria con Super Alloy Power II ofrece calidad premium y la mejor confiabilidad.\r\n  -  IluminaciÃ³n Aura RGB para expresar tu estilo de juego personalizado.\r\n  -  Puertos HDMI amigables con VR para una experiencia de realidad virtual inmersiva.\r\n  - GPU Tweak II con Xsplit Gamecaster provee mejoras de rendimiento intuitivo y te permite transmitir tus sesiones de juego al instante.\r\n  - NVIDIA ANSEL para una revolucionaria forma de captura pantalla en tus juegos.\r\n  - NVIDIA GameWorksâ„¢ provee una experiencia cinemÃ¡tica interactiva, ademÃ¡s de una experiencia de juego fluida.\r\n', 'Motor GrÃ¡fico\r\nNVIDIA GeForce GTX 1060\r\nCore Name\r\nGP106\r\nBus\r\nPCI Express 3.0\r\nOpenGL\r\nOpenGLÂ®4.5\r\nMemoria de Video\r\nGDDR5 6GB\r\nFrecuencia del Reloj\r\nOC Mode - GPU Boost Clock : 1873 MHz , GPU Base Clock : 1645 MHz\r\nGaming Mode (Default) - GPU Boost Clock : 1847 MHz , GPU Base Clock : 1620 MHz\r\n*Retail goods are with default Gaming Mode, OC Mode can be adjusted with one click on GPU Tweak II\r\nNÃºcleo CUDA\r\n1280\r\nMemory Clock\r\n8208 MHz\r\nInterfaz de Memoria\r\n192-bit\r\nResoluciÃ³n\r\nDigital Max Resolution:7680x4320\r\nInterfaz\r\nDVI Output : Yes x 1 (Native) (DVI-D)\r\nHDMI Output : Yes x 2 (Native) (HDMI 2.0b)\r\nDisplay Port : Yes x 2 (DisplayPort 1.4)\r\nHDCP Support : Yes (2.2)\r\nMaximum Display Support\r\n4\r\nSLI / Crossfire Support\r\nNo\r\nRecommended PSU\r\n500W\r\nPower Connectors\r\n1 x 8-pin\r\nAccesorios\r\n2 x ROG Cable Ties\r\n1 x CD\r\n1 x Quick Guide\r\nSoftware\r\nASUS GPU Tweak II & Driver\r\nDimensiones\r\n11.73 \" x 5.28 \" x 1.57 \" Inch\r\n29.8 x 13.4 x4 Centimeter', ''),
(71, 6, 'Asus Strix  1070TI 8gb Oc', 300000, 0, 'upload/915voJ1XLHL._SX425__1536560074.jpg', 8, 'Te presentamos la tarjeta grÃ¡fica Asus ROG Strix Geforce GTX 1070 Ti Gaming Advance 8GB GDDR5.\r\n\r\n    - Advanced edition: 1759 MHz GPU boost clock in OC mode.\r\n    - 8GB GDDR5 Memory\r\n    - 0db Fan\r\n    - VR Ready', 'Motor GrÃ¡fico NVIDIA GeForce GTX 1070 Ti\r\nBus PCI Express 3.0\r\nOpenGL OpenGLÂ®4.5\r\nMemoria de Video GDDR5 8GB\r\nFrecuencia del Reloj\r\n\r\n    GPU boost Clock\r\n        OC mode: 1759 MHz\r\n        Gaming mode: 1683 MHz\r\n    GPU base Clock\r\n        OC mode: 1683 MHz\r\n        Gaming mode: 1607 MHz\r\n\r\nNÃºcleo CUDA 2432\r\nFrecuencia de la Memoria 8008 MHz\r\nInterfaz de Memoria 256 bits\r\nMÃ¡xima resoluciÃ³n 7680 x 4320\r\nInterfaz\r\n\r\n    1x Native Dual-link DVI-D\r\n    2x Native HDMI 2.0\r\n    HDCP compliant SÃ­\r\n    2x Native DisplayPort 1.4\r\n    Power Connectors 8 pin\r\n\r\nAccesorios\r\n\r\n    1 x ROG Velcro Hook & Loop\r\n    1 x CD\r\n    1 x Quick Guide\r\n\r\nSoftware ASUS GPU Tweak II & Driver\r\nDimensiones 29.8 x 13.4 x 5.25 cm.', 'No disponible '),
(73, 6, 'Zotac Geforce Gtx 1080 8gb', 345000, 0, 'upload/index_1536560547.jpg', 8, 'Performance\r\nThe GeForceÂ® GTX 10 Series comes with ultra-fast FinFET and high-bandwidth technologies, as well as support for DirectX 12 features to deliver the fastest, smoothest, most power-efficient gaming experiences. \r\n\r\nTHE LATEST GAMING TECHNOLOGIES\r\nGeForceÂ® GTX 10 Series is built to meet the demands of next-generation displays, including VR, ultra-high-resolution, and multiple monitors. It features NVIDIA GameWorksâ„¢ technologies for extremely smooth gameplay and cinematic experiences, plus revolutionary new 360-degree image captureâ€”even in VR. \r\n\r\n', '\r\n    GPU\r\n    GeForceÂ® GTX 1080\r\n    CUDA cores\r\n    2560\r\n    Video Memory\r\n    8GB GDDR5X\r\n    Memory Bus\r\n    256-bit\r\n    Engine Clock\r\n    Base: 1683 MHz\r\n    Boost:1822 MHz\r\n    Memory Clock\r\n    10 GHz\r\n    PCI Express\r\n    3.0\r\n    Display Outputs\r\n    3 x DisplayPort 1.4\r\n    HDMI 2.0b\r\n    DL-DVI\r\n    HDCP Support\r\n    Yes\r\n    Multi Display Capability\r\n    Quad Display\r\n    Recommended Power Supply\r\n    500W\r\n    Power Consumption\r\n    230W\r\n    Power Input\r\n    Dual 8-pin\r\n    DirectX\r\n    12 API feature level 12_1\r\n    OpenGL\r\n    4.5\r\n    Cooling\r\n    Dual Fan IceStorm\r\n    Slot Size\r\n    Dual Slot\r\n    SLI\r\n    Yes, SLI HB Bridge Supported\r\n    Supported OS\r\n    Windows 10 / 8 / 7\r\n    Card Length\r\n    300mm x 148mm\r\n    Accessories\r\n    2 x Dual 6-pin to 8-pin PCIe adapter\r\n    Driver Disk\r\n    User Manual\r\n\r\n', '');
INSERT INTO `product` (`productid`, `categoryid`, `product_name`, `product_price`, `product_qty`, `photo`, `supplierid`, `description`, `tech`, `video`) VALUES
(74, 6, 'Asus Strix 1080ti', 465000, 0, 'upload/81a2aBCgDML._SX425__1536809068.jpg', 8, 'Las tarjetas grÃ¡ficas ROG Strix GeForceÂ® GTX 1080 Ti estÃ¡n equipadas con tecnologÃ­as ASUS exclusivas, incluida la nueva tecnologÃ­a MaxContact, que es 2 veces mÃ¡s contacto con la GPU para una transferencia tÃ©rmica mejorada y ventiladores patentados Wing-Blade IP5X para un flujo de aire mÃ¡ximo y un ventilador mÃ¡s largo esperanza de vida. Si bien ASUS FanConnect II cuenta con cabezales de 4 pines, controlados por hÃ­bridos conectados a ventiladores del sistema para una refrigeraciÃ³n Ã³ptima del sistema. La sincronizaciÃ³n ASUS Aura Sync RGB LED permite una personalizaciÃ³n del sistema de juegos y los puertos HDMI compatibles con VR permiten a los jugadores disfrutar fÃ¡cilmente de las experiencias de inmersiÃ³n en la realidad virtual.ROG Strix GeForce Â® GTX 1080 Ti tambiÃ©n tiene GPU Tweak II con XSplit Gamecaster que proporciona ajuste de rendimiento intuitivo y streaming de juego instantÃ¡neo.', 'Procesador\r\n\r\n    Familia de procesadores de grÃ¡ficos: NVIDIA\r\n\r\n    Procesador grÃ¡fico: GeForce GTX 1080 TI\r\n\r\n    MÃ¡xima resoluciÃ³n: 7680 x 4320 Pixeles\r\n\r\n    CUDA: Si\r\n\r\n    Frecuencia del procesador: 1594 MHz\r\n\r\n    Soporte para proceso paralelo: 4-Way SLI\r\n\r\n    FireStream: No\r\n\r\n    Aumento de la velocidad de reloj del procesador: 1708 MHz\r\n\r\n    NÃºcleos CUDA: 3584\r\n\r\nMemoria: \r\n    GrÃ¡ficos discretos memoria del adaptador: 11 GB\r\n\r\n    Tipo de memoria de adaptador grÃ¡fico: GDDR5X\r\n\r\n    Ancho de datos: 352 bit\r\n\r\n    Velocidad de memoria del reloj: 11010 MHz\r\n\r\nPuertos e Interfaces:\r\n\r\n    Tipo de interfaz: PCI Express 3.0\r\n\r\n    NÃºmero de puertos HDMI: 2\r\n\r\n    Cantidad de puertos DVI-D: 1\r\n\r\n    Cantidad de DisplayPorts: 2\r\n\r\n    VersiÃ³n HDMI: 2.0', ''),
(75, 3, 'Ryzen 7 2700', 212000, 10, 'upload/ryzen7_1536809471.jpg', 8, 'TecnologÃ­a AMD StoreMI\r\n\r\nSoftware que combina la velocidad de SSD con la capacidad de disco duro en una sola unidad rÃ¡pida y fÃ¡cil de administrar, gratuita con la placa madre AMD Serie 400.\r\n\r\n\r\nTecnologÃ­a AMD SenseMI\r\n\r\nCon la tecnologÃ­a AMD SenseMI, los procesadores Ryzenâ„¢ utilizan inteligencia artificial verdadera para acelerar el rendimiento.\r\n\r\n\r\nUtilidad AMD Ryzenâ„¢ Master\r\n\r\nLa utilidad de overclocking sencilla a la vez que potente para los procesadores AMD Ryzen\r\n', '# de nÃºcleos de CPU\r\n8\r\n# de hilos\r\n16\r\nReloj base\r\n3.2GHz\r\nReloj de aumento mÃ¡x.\r\n4.1GHz\r\nCachÃ© L1 total\r\n768KB\r\nCachÃ© L2 total\r\n4MB\r\nCachÃ© L3 total\r\n16MB\r\nDesbloqueados\r\nSÃ­\r\nCMOS\r\n12nm FinFET\r\nPackage\r\nAM4\r\nVersiÃ³n de PCI Express\r\nPCIe 3.0 x16\r\nSoluciÃ³n tÃ©rmica\r\nWraith Spire with RGB LED\r\nTDP/TDP predeterminado\r\n65W\r\nTemp. mÃ¡x.\r\n95Â°C\r\n', ''),
(76, 2, 'Intel Core I7 8700', 230000, 2, 'upload/19-117-826-Z01_1536809684.jpg', 8, 'Te presentamos el Intel Core i7-8700, un procesador de 8Âª GeneraciÃ³n, con socket Intel 1151.', '    Type CPU / Microprocessor\r\n    Market segment Desktop\r\n    Family Intel Core i7\r\n    Model number ? i7-8700\r\n    Frequency ? 3200 MHz\r\n    Turbo frequency 4600 MHz (1 core)\r\n    4500 MHz (2 cores)\r\n    4300 MHz (3 or more cores)\r\n    Low power frequency 800 MHz\r\n    Bus speed ? 8 GT/s DMI\r\n    Clock multiplier ? 32\r\n    Socket Socket 1151 / H4 / LGA1151\r\n    Size 1.48\" x 1.48\" / 3.75cm x 3.75cm', ''),
(77, 6, 'Zotac Geforce Gtx 1070 Amp Extreme', 275000, 0, 'upload/gczt-080_gczt_080_1g_800x800_1536809918.jpg', 8, 'Raise the playing field with the most advanced gaming graphics card ever created. Amped with the ZOTAC technologies, discover performance, power efficiency, and gaming experiences from the new NVIDIA Pascalâ„¢ architecture. This is the game changer.', '\r\n    GPU\r\n    GeForceÂ® GTX 1070\r\n    CUDA cores\r\n    1920\r\n    Video Memory\r\n    8GB GDDR5\r\n    Memory Bus\r\n    256-bit\r\n    Engine Clock\r\n    Base: 1632 MHz\r\n    Boost:1835 MHz\r\n    Memory Clock\r\n    8208 MHz\r\n    PCI Express\r\n    3.0\r\n    Display Outputs\r\n    3 x DisplayPort 1.4\r\n    HDMI 2.0b\r\n    DL-DVI\r\n    HDCP Support\r\n    Yes\r\n    Multi Display Capability\r\n    Quad Display\r\n    Recommended Power Supply\r\n    500W\r\n    Power Consumption\r\n    250W\r\n    Power Input\r\n    Dual 8-pin\r\n    DirectX\r\n    12 API feature level 12_1\r\n    OpenGL\r\n    4.5\r\n    Cooling\r\n    Triple Fan IceStorm\r\n    Slot Size\r\n    2.5 slots\r\n    SLI\r\n    Yes, SLI HB Bridge Supported\r\n    Supported OS\r\n    Windows 10 / 8 / 7\r\n    Card Length\r\n    325mm x 148mm\r\n    Accessories\r\n    2 x Dual 6-pin to 8-pin PCIe adapter\r\n    Driver Disk\r\n    User Manual\r\n\r\n', ''),
(78, 10, 'Corsair Carbide SPEC-04 - Vidrio Temperado ', 35000, 10, 'upload/corsair-carbide-spec-04-rojo-vidrio-temperado.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(79, 10, 'Corsair Carbide 275R - Blanco ', 48000, 10, 'upload/corsair-carbide-275r-blanco.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(80, 10, 'Corsair Carbide 275R - Negro ', 48000, 10, 'upload/corsair-carbide-275r-negro.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(81, 10, 'Corsair Carbide SPEC Omega - Negro ', 60000, 10, 'upload/corsair-carbide-spec-omega-rojo.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(82, 10, 'Corsair Carbide SPEC Omega - Rojo ', 60000, 10, 'upload/corsair-carbide-spec-omega-blanco.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(83, 10, 'Corsair Carbide SPEC Omega - Blanco ', 60000, 10, 'upload/corsair-carbide-spec-omega-negro.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(84, 10, 'Corsair Crystal 460X RGB ', 85000, 10, 'upload/corsair-crystal-460x-rgb.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(85, 10, 'Corsair Crystal 460X RGB - Blanco ', 86000, 10, 'upload/corsair-crystal-460x-rgb-blanco.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(86, 10, 'Corsair Obsidian 500D ', 90000, 10, 'upload/corsair-obsidian-500d.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(87, 10, 'Corsair Crystal 570X RGB ', 110000, 10, 'upload/corsair-crystal-570x-rgb.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(88, 10, 'Corsair Crystal 570X RGB - Mirror ', 120000, 10, 'upload/corsair-crystal-570x-rgb-mirror.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(89, 10, 'Aerocool Cylon RGB', 23000, 10, 'upload/aerocool-cylon-rgb.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(90, 10, 'Aerocool Quartz RGB ', 45000, 10, 'upload/aerocool-quartz-rgb.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(93, 10, 'Cougar Panzer ', 48000, 10, 'upload/cougar-panzer.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(94, 10, 'Cougar Panzer S ', 55000, 10, 'upload/cougar-panzer-s.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(95, 10, 'Cougar Panzer G ', 60000, 10, 'upload/cougar-panzer-g.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(96, 10, 'Cougar Panzer Max ', 80000, 10, 'upload/cougar-panzer-max.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(97, 10, 'Cougar Panzer Evo ', 90000, 10, 'upload/cougar-panzer-evo.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(98, 10, 'Cougar Conquer ', 140000, 10, 'upload/cougar-conquer.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(99, 10, 'Thermaltake Core P1 - Vidrio Temperado ', 65000, 10, 'upload/thermaltake-core-p1-vidrio-temperado.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(100, 10, 'Thermaltake Core P3 - Vidrio Temperado - Snow ', 85000, 10, 'upload/thermaltake-core-p3-vidrio-temperado-snow.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(101, 10, 'Thermaltake Core P3 - Vidrio Temperado ', 85000, 10, 'upload/thermaltake-core-p3-vidrio-temperado.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(102, 10, 'Thermaltake Core X71 Vidrio Temperado ', 95000, 10, 'upload/thermaltake-core-x71-vidrio-temperado.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(103, 10, 'Thermaltake Core P90 - Vidrio Temperado ', 110000, 10, 'upload/thermaltake-core-p90.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(104, 10, 'Thermaltake View 71 ', 110000, 10, 'upload/thermaltake-view-71.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(105, 10, 'Thermaltake View 71 RGB ', 132000, 10, 'upload/thermaltake-view-71-rgb.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(106, 1, 'Asus Prime A320M-K ', 38000, 10, 'upload/asus-prime-a320m-k.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(107, 1, 'Asus TUF B360M-E Gaming ', 60000, 10, 'upload/asus-tuf-b360m-e-gaming.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(108, 1, 'Asus Prime B450M-A ', 62000, 10, 'upload/asus-prime-b450m-a.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(109, 1, 'Asus ROG STRIX B450-F ', 90000, 10, 'upload/asus-rog-strix-b450-f.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(110, 1, 'Asus ROG STRIX B360-I ', 90000, 10, 'upload/asus-rog-strix-b360-i.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(111, 1, 'Asus ROG STRIX H370-F ', 95000, 10, 'upload/asus-rog-strix-h370-f.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(112, 1, 'Asus Prime Z370-P ', 95000, 10, 'upload/asus-rog-strix-z370-p.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(113, 1, 'Asus TUF X470 Plus Gaming ', 105000, 10, 'upload/asus-tuf-x470-plus-gaming.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(114, 1, 'Asus TUF Z370-PRO GAMING ', 108000, 10, 'upload/asus-tuf-z370-pro-gaming.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(115, 1, 'Asus ROG STRIX B450-I ', 110000, 10, 'upload/asus-rog-strix-b450-i.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(116, 1, 'Asus Prime X470 Pro ', 115000, 10, 'upload/asus-rog-strix-x470-pro.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(117, 1, 'Asus Prime Z370-A ', 118000, 10, 'upload/asus-prime-z370-a.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(118, 1, 'Asus ROG STRIX Z370-I ', 125000, 10, 'upload/asus-rog-strix-z370-i.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(119, 1, 'Asus ROG STRIX X470-F ', 135000, 10, 'upload/asus-rog-strix-x470-f.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(120, 1, 'Asus ROG Crosshair VII Hero Wi-Fi ', 195000, 10, 'upload/asus-rog-crosshair-vii-hero-wi-fi.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(122, 16, 'Corsair K55 RGB ', 30000, 10, 'upload/corsair-k55-rgb.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(123, 16, 'Corsair Strafe RGB MK.2 - Cherry MX Red ', 87000, 10, 'upload/corsair-strafe-rgb-mk2-cherry-mx-red.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(124, 16, 'Corsair Strafe RGB MK.2 - Cherry MX Silent ', 90000, 10, 'upload/corsair-strafe-rgb-mk2-cherry-mx-silent.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(125, 16, 'Corsair K70 RGB MK.2 ', 97000, 10, 'upload/corsair-k70-rgb-mk2.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(126, 16, 'Corsair K70 RGB MK.2 Rapidfire ', 99000, 10, 'upload/corsair-k70-rgb-mk2-rapidfire.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(127, 16, 'Corsair K70 RGB MK.2 SE ', 105000, 10, 'upload/corsair-k70-rgb-mk2-se.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(128, 16, 'Corsair K95 RGB Platinum - Cherry MX ', 110000, 10, 'upload/corsair-k95-rgb-platinum-cherry-mx-speed.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(129, 17, 'Corsair Harpoon RGB ', 16000, 10, 'upload/corsair-harpoon-rgb.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(130, 17, 'Corsair M65 Pro RGB Blanco ', 33000, 10, 'upload/corsair-m65-pro-rgb-blanco.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(131, 17, 'Corsair M65 Pro RGB ', 33000, 10, 'upload/corsair-m65-pro-rgb.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(132, 17, 'Corsair Glaive RGB ', 42000, 10, 'upload/corsair-glaive-rgb.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(133, 17, 'Corsair Scimitar Pro RGB - Negro ', 48000, 10, 'upload/corsair-scimitar-rgb-negro.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(134, 17, 'Corsair Scimitar Pro RGB - Amarillo ', 48000, 10, 'upload/corsair-scimitar-rgb.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(135, 17, 'Corsair Dark Core RGB ', 55000, 10, 'upload/corsair-dark-core-rgb.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(136, 18, 'Corsair K55 + Harpoon RGB ', 40000, 10, 'upload/corsair-k55-harpoon-rgb.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(137, 18, 'Combo Gamer Corsair HS50 + K55 RGB + Harpoon RGB + MM100', 75000, 10, 'upload/corsair-combo.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(138, 19, 'Corsair HS50 - Carbon ', 32000, 10, 'upload/corsair-hs50.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(139, 19, 'Corsair HS50 - Verde ', 32000, 10, 'upload/corsair-hs50-verde.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(140, 19, 'Corsair HS50 - Azul ', 32000, 10, 'upload/corsair-hs50-azul.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(141, 19, 'Corsair ST100 RGB ', 37000, 10, 'upload/corsair-st100-rgb.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(142, 19, 'Corsair Void Pro USB - Rojo ', 48000, 10, 'upload/corsair-void-pro-rgb-usb-rojo.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(143, 19, 'Corsair Void Pro RGB USB - Blanco ', 48000, 10, 'upload/corsair-void-pro-rgb-usb-blanco.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(144, 19, 'Corsair Void Pro RGB USB - Negro ', 48000, 10, 'upload/corsair-void-pro-rgb-usb-negro.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(145, 19, 'Corsair Void Pro RGB Wireless - Blanco ', 65000, 10, 'upload/corsair-void-pro-rgb-wireless-blanco.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(146, 19, 'Corsair Void Pro RGB Wireless - Negro ', 65000, 10, 'upload/corsair-void-rgb-wireless.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(147, 20, 'Corsair MM300 Extended ', 15000, 10, 'upload/corsair-mm300-extended.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(148, 20, 'Corsair MM800 RGB ', 36000, 10, 'upload/corsair-mm800-rgb.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(149, 20, 'Corsair MM1000 ', 50000, 10, 'upload/corsair-mm1000.jpg', 8, 'No disponible', 'No disponible', 'No disponible'),
(150, 5, 'Corsair ValueSelect 4 GB DDR4 2400 ', 24000, 10, 'upload/corsair-valueselect-4-gb-ddr4-2400.jpg', 10, 'No disponible', 'No disponible', 'No disponible'),
(151, 5, 'Corsair Vengeance RGB 8 GB DDR4 2666 ', 55000, 10, 'upload/corsair-vengeance-rgb-8-gb-ddr4-2666.jpg', 10, 'No disponible', 'No disponible', 'No disponible'),
(152, 5, 'Corsair Vengeance RGB Pro 8 GB DDR4 2666 - Blanco', 58000, 10, 'upload/corsair-vengeance-rgb-pro-8-gb-ddr4-2666-negro.jpg', 10, 'No disponible', 'No disponible', 'No disponible'),
(153, 5, 'Corsair Dominator Platinum 8 GB DDR4 2666 ', 66000, 10, 'upload/corsair-dominator-platinum-8-gb-ddr4-2666.jpg', 10, 'No disponible', 'No disponible', 'No disponible'),
(154, 1, 'Gigabyte GA-E3000N ', 32000, 10, 'upload/gigabyte-ga-e3800n.jpg', 10, 'No disponible', 'No disponible', 'No disponible'),
(155, 1, 'Gigabyte A320M-S2H ', 35000, 10, 'upload/gigabyte-ab320m-s2h.jpg', 10, 'No disponible', 'No disponible', 'No disponible'),
(156, 1, 'Gigabyte B450M DS3H ', 55000, 10, 'upload/gigabyte-b450m-ds3h.jpg', 10, 'No disponible', 'No disponible', 'No disponible'),
(157, 1, 'Gigabyte B360M-DS3H ', 55000, 10, 'upload/gigabyte-b360m-ds3h.jpg', 10, 'No disponible', 'No disponible', 'No disponible'),
(158, 1, 'Gigabyte B450 Aorus M ', 65000, 10, 'upload/gigabyte-aorus-m-b450.jpg', 10, 'No disponible', 'No disponible', 'No disponible'),
(159, 1, 'Gigabyte AB350N-Gaming WIFI ', 82000, 10, 'upload/gigabyte-ab350n-gaming-wifi.jpg', 10, 'No disponible', 'No disponible', 'No disponible'),
(160, 1, 'Gigabyte B450 Aorus Pro WIFI ', 88000, 10, 'upload/gigabyte-aorus-m-b450-pro-wifi.jpg', 10, 'No disponible', 'No disponible', 'No disponible'),
(161, 1, 'Gigabyte Aorus X470 Ultra Gaming ', 105000, 10, 'upload/gigabyte-aorus-x470-ultra-gaming.jpg', 10, 'No disponible', 'No disponible', 'No disponible'),
(162, 1, 'Gigabyte Aorus X470 Gaming 5 Wifi ', 132000, 10, 'upload/gigabyte-aorus-x470-gaming-5-wifi.jpg', 10, 'No disponible', 'No disponible', 'No disponible');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales`
--

CREATE TABLE `sales` (
  `salesid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `sales_total` double NOT NULL,
  `sales_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sales`
--

INSERT INTO `sales` (`salesid`, `userid`, `sales_total`, `sales_date`) VALUES
(1, 2, 34, '2017-09-16 16:23:38'),
(2, 2, 18, '2017-09-16 16:25:28'),
(3, 2, 6, '2017-09-16 16:27:31'),
(4, 2, 1014244, '2017-09-16 16:44:01'),
(5, 2, 9588, '2017-09-18 09:06:29'),
(6, 2, 88779, '2017-09-18 09:08:42'),
(7, 2, 15579, '2017-09-18 09:09:34'),
(8, 2, 112361, '2017-09-18 09:32:00'),
(9, 2, 7990, '2017-09-18 09:34:29'),
(10, 2, 18370, '2017-09-18 11:09:21'),
(11, 2, 20, '2017-11-19 17:45:58'),
(12, 1, 15, '2017-11-22 19:47:29'),
(13, 1, 20, '2017-12-04 21:16:56'),
(14, 1, 420, '2017-12-04 21:17:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales_detail`
--

CREATE TABLE `sales_detail` (
  `sales_detailid` int(11) NOT NULL,
  `salesid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `sales_qty` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sales_detail`
--

INSERT INTO `sales_detail` (`sales_detailid`, `salesid`, `productid`, `sales_qty`) VALUES
(1, 2, 1, 12),
(2, 2, 2, 10),
(3, 3, 3, 11),
(4, 4, 2, 50),
(5, 4, 1, 106),
(6, 4, 5, 1000),
(7, 5, 2, 12),
(8, 6, 5, 101),
(9, 7, 1, 10),
(10, 7, 3, 11),
(11, 8, 4, 10),
(12, 8, 20, 10),
(13, 8, 1, 99),
(14, 8, 2, 20),
(15, 9, 2, 10),
(16, 10, 2, 10),
(17, 10, 3, 12),
(18, 10, 4, 8),
(19, 11, 23, 1),
(20, 12, 24, 1),
(21, 13, 23, 1),
(22, 14, 27, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `supplier`
--

CREATE TABLE `supplier` (
  `userid` int(11) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `company_address` varchar(150) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `supplier`
--

INSERT INTO `supplier` (`userid`, `company_name`, `company_address`, `contact`) VALUES
(8, 'PCINNOVATIONS', 'Curridabat', '83012524');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `access` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `access`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(2, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 2),
(8, 'Sebas', '81dc9bdb52d04dc20036dbd8313ed055', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`idphoto`),
  ADD UNIQUE KEY `photo` (`photo`,`idphoto`,`productid`),
  ADD UNIQUE KEY `photo_2` (`photo`),
  ADD KEY `productid` (`productid`);

--
-- Indices de la tabla `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartid`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indices de la tabla `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`userid`);

--
-- Indices de la tabla `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventoryid`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productid`);

--
-- Indices de la tabla `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`salesid`);

--
-- Indices de la tabla `sales_detail`
--
ALTER TABLE `sales_detail`
  ADD PRIMARY KEY (`sales_detailid`);

--
-- Indices de la tabla `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`userid`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carousel`
--
ALTER TABLE `carousel`
  MODIFY `idphoto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1540;
--
-- AUTO_INCREMENT de la tabla `cart`
--
ALTER TABLE `cart`
  MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;
--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;
--
-- AUTO_INCREMENT de la tabla `sales`
--
ALTER TABLE `sales`
  MODIFY `salesid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `sales_detail`
--
ALTER TABLE `sales_detail`
  MODIFY `sales_detailid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carousel`
--
ALTER TABLE `carousel`
  ADD CONSTRAINT `productid` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

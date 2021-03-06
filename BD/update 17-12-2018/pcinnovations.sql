-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2018 at 06:45 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pcinnovations`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `addinventory` (IN `userid` INT(11), IN `action` VARCHAR(50), IN `productid` INT(11), IN `quantity` DOUBLE, IN `inventory_date` DATETIME)  BEGIN 
INSERT INTO inventory(userid, action, productid, quantity, inventory_date) VALUES (userid, action, productid, quantity, inventory_date);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `addproduct` (IN `product_name` VARCHAR(150), IN `categoryid` INT(11), IN `product_price` DOUBLE, IN `product_qty` DOUBLE, IN `supplierid` INT(11), IN `description` VARCHAR(1000), IN `photo` VARCHAR(400), IN `tech` VARCHAR(3000), IN `video` VARCHAR(1000))  BEGIN
INSERT INTO product (product_name, categoryid, product_price, product_qty, supplierid, description, photo, tech, video) VALUES (product_name, categoryid , product_price , product_qty , supplierid , description , photo , tech, video);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteimg` (IN `id` INT(11))  BEGIN
DELETE FROM carousel WHERE idphoto = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `GuardarImagen` (IN `Productid` INT, IN `Photo` VARCHAR(100))  BEGIN
   INSERT INTO carousel (idphoto,productid, photo) VALUES (default,Productid, Photo);
   END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `listaproduct` ()  BEGIN
select * from product left join category on category.categoryid=product.categoryid left join supplier on supplier.userid=product.supplierid;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_product` (`_productid` INT, `_product_name` VARCHAR(150), `_supplierid` INT, `_categoryid` INT, `_product_price` DOUBLE, `_photo` VARCHAR(200), `_product_qty` DOUBLE, `_description` VARCHAR(1000), `_tech` VARCHAR(3000), `_video` VARCHAR(1000))  BEGIN
update product set 
product_name = _product_name,
supplierid = _supplierid,
categoryid = _categoryid,
product_price = _product_price,
photo = _photo,
product_qty = _product_qty,
description = _description,
tech = _tech,
video = _video
where productid = _productid;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `productid` int(11) NOT NULL,
  `photo` varchar(100) CHARACTER SET utf8 NOT NULL,
  `idphoto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`productid`, `photo`, `idphoto`) VALUES
(179, 'upload/02G-P4-6154-KR_LG_1.png', 1560),
(177, 'upload/08G-P4-6276-KR_LG_1.png', 1558),
(41, 'upload/101-BLACK_1526361234.jpg', 39),
(49, 'upload/1070_1528093400.jpg', 92),
(20, 'upload/13-145-005-V02_1524339054.jpg', 18),
(36, 'upload/1456512265938-30574483_9866_1526359083.jpg', 34),
(171, 'upload/161744_large.jpg', 1552),
(13, 'upload/19-113-43420front-1_1524298140.jpg', 11),
(76, 'upload/19-117-826-Z01_1536809684.jpg', 1394),
(33, 'upload/1_1526051709.jpg', 31),
(69, 'upload/1_500_1530760511.jpg', 833),
(32, 'upload/20-228-164-03_1526051429.jpg', 30),
(14, 'upload/20151106104621_big_1524298381.png', 12),
(25, 'upload/20160721193143_big_1525834284.png', 23),
(61, 'upload/20160721193143_big_1529996596.png', 271),
(180, 'upload/20170104150223_big.png', 1561),
(18, 'upload/2017032815061595_m_1524338405.png', 16),
(26, 'upload/2017041717160472_big_1525838439.png', 24),
(35, 'upload/2017042718050455_big_1526358969.png', 33),
(17, 'upload/2017092017344513_big_1524431913.png', 15),
(31, 'upload/2686873-a_1526050996.jpg', 29),
(164, 'upload/320c5-4.jpg', 1545),
(173, 'upload/3_1542859192.jpg', 1554),
(174, 'upload/3_1542917958.jpg', 1555),
(186, 'upload/41uxMYuIv3L._SX425_.jpg', 1567),
(170, 'upload/618p0f96ndL._SX425_.jpg', 1551),
(15, 'upload/71cHYy6qaCL._SL1000__1524298597.jpg', 13),
(6, 'upload/8100_1523915901.jpg', 4),
(74, 'upload/81a2aBCgDML._SX425__1536809068.jpg', 1249),
(66, 'upload/81aPq2ihg2L._SX425__1530758799.jpg', 638),
(189, 'upload/81nHD-cECTL._SX425_.jpg', 1570),
(185, 'upload/81R8OM9pGLL._SX425_.jpg', 1566),
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
(109, 'upload/asus-rog-strix-b450-f.jpg', 1500),
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
(52, 'upload/azza-photios-250-3-x-usb20-1-x-usb30_1528668552.jpg', 94),
(190, 'upload/C24F390FHL-FRONT.jpg', 1571),
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
(153, 'upload/corsair-dominator-platinum-8-gb-ddr4-2666.jpg', 1543),
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
(150, 'upload/corsair-valueselect-4-gb-ddr4-2400.jpg', 1540),
(151, 'upload/corsair-vengeance-rgb-8-gb-ddr4-2666.jpg', 1541),
(152, 'upload/corsair-vengeance-rgb-pro-8-gb-ddr4-2666-negro.jpg', 1542),
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
(182, 'upload/disco-duro-1tb-externo-seagate-expansion-portable-usb-30-pnstea1000400.jpg', 1563),
(183, 'upload/disco-duro-1tb-externo-toshiba-canvio-basics-25-usb-30-pn-hdtb410xk3aa.jpg', 1564),
(184, 'upload/Disco-duro-externo-Toshiba-Canvio-Basic-2TB.jpg', 1565),
(65, 'upload/es-curved-cf390-lc27f390fhuxen-018-dynamic-black_1530758531.jpg', 513),
(5, 'upload/g4560_1523915668.jpg', 3),
(77, 'upload/gczt-080_gczt_080_1g_800x800_1536809918.jpg', 1468),
(60, 'upload/gczt-087_gczt_087_1g_800x800_1529996425.jpg', 213),
(59, 'upload/gczt-088_gczt_088_1g_800x800_1529996144.jpg', 156),
(172, 'upload/gczt-110_gczt_110_01_800x800_1542858388.jpg', 1553),
(176, 'upload/gigabyte-geforce-gtx-1070-windforce-oc-8gb-gddr5-1.jpg', 1557),
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
(163, 'upload/lenovo-ideapad-330.jpeg', 1544),
(3, 'upload/lg-2k.jpg', 2),
(38, 'upload/main850_1526360419.jpg', 36),
(187, 'upload/MO07991.jpg', 1568),
(188, 'upload/monitor-aoc-led-D_NQ_NP_623847-MLU27391022500_052018-O.jpg', 1569),
(175, 'upload/msi-gtx-1070-gaming-x-8gb-gddr5-4.jpg', 1556),
(181, 'upload/msi-gtx-1070-gaming-x-8gb-gddr5-5.jpg', 1562),
(178, 'upload/msi-rx-580-gaming-x-8g-product-pictures-3d4.jpg', 1559),
(168, 'upload/Notebook_Asus_VivoBook_X541NA-PD1003Y_N4200_1.1GHZ_500GB_4GB_tab_1.png', 1549),
(56, 'upload/NZXT-Kraken-X42_1528676116.png', 98),
(46, 'upload/phanteks-eclipse-p400-tg-blanco_1526362142.jpg', 44),
(63, 'upload/placa-asus-rog-strix-z270i-gaming-lga-1151_1529996971.jpg', 390),
(16, 'upload/P_setting_fff_1_90_end_500.png_1524298775.jpg', 14),
(169, 'upload/P_setting_fff_1_90_end_600.png.jpg', 1550),
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
(27, 'upload/toshiba_1525887199.jpg', 25),
(165, 'upload/w13267_454aa.jpg', 1546);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `qty` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartid`, `userid`, `productid`, `qty`) VALUES
(1, 2, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryid` int(11) NOT NULL,
  `category_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
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
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `userid` int(11) NOT NULL,
  `customer_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `address` varchar(150) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `contact` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`userid`, `customer_name`, `address`, `contact`) VALUES
(2, 'Jose Molina Cascante', 'Nicoya Costa Rica', '+50661372755');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `inventoryid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `action` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `productid` int(11) NOT NULL,
  `quantity` double NOT NULL,
  `inventory_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `inventory`
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
(175, 1, 'Update Quantity', 40, 0, '2018-10-15 15:02:52'),
(176, 1, 'Update Quantity', 75, 5, '2018-11-11 13:15:16'),
(177, 1, 'Update Quantity', 13, 5, '2018-11-11 13:15:27'),
(178, 1, 'Update Quantity', 11, 0, '2018-11-11 13:17:10'),
(179, 1, 'Update Quantity', 12, 50, '2018-11-11 13:17:20'),
(180, 1, 'Update Quantity', 12, 0, '2018-11-11 13:17:34'),
(181, 1, 'Add Product', 191, 8, '2018-12-04 20:19:17'),
(182, 1, 'Add Product', 192, 8, '2018-12-04 20:21:10'),
(183, 1, 'Add Product', 193, 8, '2018-12-04 20:22:12'),
(184, 1, 'Add Product', 194, 8, '2018-12-04 20:23:37');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `product_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `product_price` double NOT NULL,
  `product_qty` double NOT NULL,
  `photo` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `supplierid` int(11) NOT NULL,
  `description` varchar(10000) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `tech` varchar(1000) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `video` varchar(1000) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productid`, `categoryid`, `product_name`, `product_price`, `product_qty`, `photo`, `supplierid`, `description`, `tech`, `video`) VALUES
(2, 2, 'Intel Core I5 8600k', 190000, 0, 'upload/86002_1526239950.jpg', 8, 'Disfrute de una potencia y una capacidad de respuesta sin precedentes\r\n\r\nAhora las tareas inform????ticas diarias se pueden realizar de manera m????s r????pida. Edite fotos y videos sin inconvenientes. Cambie entre programas y ventanas de manera r????pida. Realice m????ltiples tareas sin esfuerzo. Lo que es a????n mejor es que todo el desempe????o se combina con una duraci????n de la bater????a de hasta 10 horas1 2, por lo que puede llevar su computadora a donde quiera que vaya sin preocuparse de los cables ni los enchufes.\r\n\r\n\r\nConvierta su computadora en un centro de entretenimiento\r\n\r\nDisfrute de un centro de entretenimiento sorprendente, en el cual puede transmitir videos 4K UHD, utilizar la potencia para realidad virtual y reproducir los videojuegos m????s exigentes. Debido a que tiene cuatro veces m????s p????xeles que la resoluci????n HD tradicional, puede disfrutar de im????genes realistas y n????tidas, degradaci????n compleja y frecuencias r????pidas de cuadros; todo de manera virtual sin interrupciones, sin almacenamiento en memoria intermedia ni retrasos. Prep????rese para las experiencias revolucionarias envolventes del futuro.\r\n\r\n\r\nF????cil de usar, dif????cil de penetrar\r\n\r\nLa seguridad incorporada agrega una capa cr????tica de protecci????n para que pueda iniciar sesi????n, navegar y realizar pagos en l????nea de manera sencilla y segura3. Puede iniciar sesi????n con su mirada, su voz o sus huellas dactilares para una seguridad s????lida, r????pida y sin complicaciones. Almacene contrase????as, informaci????n personal e informaci????n autom????tica con solo una contrase????a maestra. Adem????s, los comandos de voz y de pantalla t????ctil y las opciones de l????piz ????ptico ofrecen interacciones naturales e intuitivas.\r\n', 'Marca:	Intel\r\nSeries:	Core i5-8600K\r\nPeso del producto:	18,1 g\r\nDimensiones del producto:	11,6 x 4,4 x 10,1 cm\r\nN??mero de modelo del producto:	BX80684I58600K\r\nColor:	Metalico\r\nVelocidad del procesador:	3.6 GHz\r\nToma del procesador:	LGA 1151 (Socket H4)\r\nN??mero de procesadores:	6\r\nTipo de memoria del ordenador:	DDR4 SDRAM\r\nMemoria m??xima compatible:	65536 MB\r\nDescripci??n de la tarjeta gr??fica:	Intel UHD Graphics 630\r\nPotencia el??ctrica:	95', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/BGNwPP8MBS4\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(5, 2, 'Intel Pentium G4560', 40000, 10, 'upload/g4560_1523915668.jpg', 8, 'Socket LGA 1151\r\nIntel 200/1001 Series Chipset Compatibility (1. Excludes Intel Optane Technology support)\r\nIntel HD Graphics 610\r\n7th Generation (Kaby Lake) ', 'Processor: 	3.5 GHz Pentium \r\nBrand Name: 	Intel\r\nItem model number: 	BX80677G4560\r\nItem Weight: 	9.6 ounces\r\nProduct Dimensions: 	14.5 x 5.1 x 4.9 inches\r\nItem Dimensions L x W x H: 	14.48 x 5.07 x 4.92 inches\r\nProcessor Brand: 	Intel\r\nProcessor Count: 	2 \r\n', ''),
(6, 2, 'Intel Core I3 8100', 88000, 3, 'upload/8100_1523915901.jpg', 8, 'Caracter????sticas: Solo compatible con la placa madre serie Intel 300, frecuencia base del procesador de 3.6 GHz, gr????ficos Intel UHD 630, soporte DDR4, toma de corriente LGA 1151 (serie 300), ventilador y refrigerador incluidos. ', 'Marca	Intel\r\nSeries	Pentium Core i3-8100\r\nPeso del producto	268 g\r\nDimensiones del producto	10,2 x 11,4 x 7 cm\r\nN??mero de modelo del producto	BX80684I38100\r\nColor	Gris\r\nFabricante del procesador	Intel\r\nVelocidad del procesador	3.6 GHz\r\nToma del procesador	Intel 1151\r\nN??mero de procesadores	4\r\nTipo de memoria del ordenador	DDR4 SDRAM\r\nMemoria m??xima compatible	65536 MB\r\nDescripci??n de la tarjeta gr??fica	Intel UHD Graphics 630\r\nPotencia el??ctrica	65', ''),
(7, 2, 'Intel Core I5 7500 OEM', 0, 0, 'upload/core-i5-7500_1523916373.jpg', 8, ' Socket LGA 1151\r\nIntel 200/100 Series Chipset Compatibility (1. Excludes Intel Octane Technology support)\r\nIntel HD Graphics 630\r\nIntel Turbo Boost 2.0 Technology ', 'Processor:	3.4 GHz Intel Core i5\r\nBrand Name: 	Intel\r\nItem model number: 	BX80677I57500\r\nItem Weight: 	9.6 ounces\r\nProduct Dimensions: 	2.9 x 3.9 x 4.7 inches\r\nItem Dimensions L x W x H: 	2.9 x 3.9 x 4.7 inches\r\nProcessor Brand: 	Intel\r\nProcessor Count: 	4\r\nComputer Memory Type 	DDR4 SDRAM ', ''),
(8, 2, 'Intel Core I5 8400', 139500, 10, 'upload/I5-8400_1523916888.jpg', 8, 'Outstanding gaming experiences extend beyond personal gameplay to your entire gaming community. Share those experiences by live-streaming or recording, editing, and posting your epic highlights. ', 'Processor: 	2.8 GHz Intel Core i5 \r\nBrand Name: 	Intel\r\nItem model number: 	BX80684I58400\r\nItem Weight: 	9.6 ounces\r\nProduct Dimensions: 	5 x 3 x 4 inches\r\nItem Dimensions L x W x H:	5 x 3 x 4 inches\r\nProcessor Brand: 	Intel\r\nProcessor Count: 	6\r\nComputer Memory Type 	DDR4 SDRAM ', ''),
(9, 2, 'Intel Core I5 8600', 160000, 0, 'upload/86002_1524297142.jpg', 8, 'No stock\r\n 6 Cores / 6 Threads\r\nUp to 4.3 GHz (Max Turbo Frequency)\r\nCompatible with Intel 300 series chipset based motherboards\r\nSupports Intel vPro\r\nSupports Intel Optane Memory\r\n\r\n\r\nGreat Gaming\r\n\r\nOutstanding gaming experiences extend beyond personal gameplay to your entire gaming community. Share those experiences by live-streaming or recording, editing, and posting your epic highlights. To perform at your best, get a great gaming PC powered by an 8th Gen Intel Core processor that lets you live????????and share????????the ultimate gaming experience.\r\n \r\n\r\nUltra HD Entertainment\r\n\r\nTo play premium movie streams in stunning 4K UHD, get an advanced platform that supports the latest media technologies and entertainment. Bring premium, high-quality content to your desktop, with smooth streaming of premium 4K UHD entertainment, including 4K video creation and sharing and 360-degree viewing.\r\n', 'Processor: 	3.1 GHz Intel Core i5\r\nRAM: 	DDR4 \r\nBrand Name: 	Intel\r\nItem model number: 	BX80684I58600\r\nItem Weight: 	9.4 ounces\r\nProduct Dimensions: 	4.6 x 2.8 x 4 inches\r\nItem Dimensions L x W x H: 	4.57 x 2.76 x 3.98 inches\r\nProcessor Brand: 	intel\r\nProcessor Count: 	6\r\nComputer Memory Type: 	DDR4 SDRAM ', ''),
(10, 2, 'Inte Core I7 7700k', 190000, 2, 'upload/i7-7700k_04_1524297459.jpg', 8, ' Socket LGA 1151\r\nIntel 200/1001 Series Chipset Compatibility (1. Excludes Intel Optane Technology support)\r\nIntel HD Graphics 630\r\nIntel Turbo Boost 2.0 Technology\r\nIntel Hyper-Threading Technology1 ', 'Processor:	4.2 GHz Intel Core i7 \r\nBrand Name: 	Intel\r\nItem model number: 	BX80677I77700K\r\nItem Weight: 	2.4 ounces\r\nProduct Dimensions: 	1.9 x 4.1 x 4.6 inches\r\nItem Dimensions L x W x H: 	1.9 x 4.1 x 4.6 inches\r\nProcessor Brand: 	Intel\r\nProcessor Count: 	4\r\nComputer Memory Type: 	DDR4 SDRAM ', ''),
(11, 3, 'Ryzen 5 2400g', 110000, 0, 'upload/ryzen5-2400g.jpg', 8, ' Built-In Radeon Vega RX 11 Graphics\r\n4 Cores/8 Threads UNLOCKED\r\nFrequency: 3.9 GHz Max Boost\r\nSocket Type: AM4. Default TDP / TDP: 65W\r\nThermal Solution: Wraith Stealth Cooler ', 'Processor 	3.9 GHz AMD R Series\r\nBrand Name 	AMD\r\nItem model number 	YD2400C5FBBOX\r\nHardware Platform 	PC\r\nOperating System 	Windows 10\r\nItem Weight 	1.6 ounces\r\nProduct Dimensions 	1.6 x 1.6 x 0.3 inches\r\nItem Dimensions L x W x H 	1.6 x 1.6 x 0.3 inches\r\nProcessor Brand 	AMD\r\nProcessor Count 	4\r\nComputer Memory Type 	DDR4 SDRAM\r\nHard Drive Interface 	Serial ATA-600 ', ''),
(12, 3, 'Ryzen 5 1600', 120000, 0, 'upload/AMD-RYZEN-5-1600-3.4-GHz-Socket-AM4-Processor-with-Wraith-Stealth-65W-cooler_1524297919.jpg', 8, ' Frequency: 3.6 ghz precision boost\r\n6 cores/12 threads unlocked\r\nCache: 3 mb/16 mb (l2/l3)\r\nSocket type: Am4\r\nThermal solution: Wraith spire cooler \r\n\r\n\r\nFootnotes:\r\n\r\n1. Overclocking AMD processors, including without limitation, altering clock frequencies / multipliers or memory timing / voltage, to operate beyond their stock specifications will void any applicable AMD product warranty, even when such overclocking is enabled via AMD hardware and/or software. This may also void warranties offered by the system manufacturer or retailer. Users assume all risks and liabilities that may arise out of overclocking AMD processors, including, without limitation, failure of or damage to hardware, reduced system performance and/or data loss, corruption or vulnerability. RZN-6.\r\n\r\n2. AMD Ryzen VR Ready Premium processors are select AMD Ryzen processors that meet or exceed the Oculus Rift or HTC Vive recommended specifications for processors. Other hardware (including graphics cards) and system requirements recommended by Oculus Rift or HTC Vive should also be met in order to operate the applicable HMDs as intended. As VR technology, HMDs and other VR hardware and software evolve and/or become available, these criteria may change without notice. Check with your PC or system manufacturer to confirm VR capabilities. GD-11.\r\n\r\n*Video Encoding: Compared to the Ryzen 5 1600, the Core i5-7600 achieved 66% (Average of 372/954=63%, 791/1144=69%) the video encoding performance in Handbrake and 65% (171.4/263.0=65%) the performance in Adobe Premiere CC, for an average video encoding performance of 60% relative to the Ryzen 5 1600. Content Creation: Compared to the Ryzen 5 1600, the Core i5-7600 achieved 68% (1618.1/2371.9 =68%) the performance in POVRay, and 57% (651.8/1144.1=57%) the performance in Cinebench, for an average content creation performance of 63% relative to the Ryzen 5 1600. 1080p gaming: Compared to the Ryzen 5 1600, the Core i5-7600 achieved 102% the performance in The Division, 135% the performance in Alien: Isolation, 103% the performance in Battlefield 1, 104% the performance in Ashes of the Singularity, 92% the performance in Civilization 6, 103% the performance in Doom, 121% the performance in Deus Ex: Mankind Divided, 102% the performance in Overwatch, 105% the performance in Mafia 3, 94% the performance in F1 2016, and 105% the performance in Watch Dogs 2, and 118% the performance in Sniper Elite 4, for an average 1080p game performance of 107% relative to the Ryzen 5 1600. VR Performance: Both the Ryzen 5 1600 and Core i5-7600 dropped less than 1% of frames in the Price of Freedom, Serious Sam, and Raw Data game benchmark tests. RZN-57.\r\n\r\n** This information represents the views of third parties at https://www.vortez.net/articles_pages/amd_ryzen_5_1400_1600_review,7.html for secure data encryption and VR performance. These third party results have not been verified by AMD. AMD has no obligation to update third party information and will unde', 'Processor 	3.6 GHz None\r\nRAM 	DDR4 \r\nBrand Name 	AMD\r\nItem model number 	YD1600BBAEBOX\r\nItem Weight 	1.6 ounces\r\nProduct Dimensions 	1.6 x 0.3 x 1.6 inches\r\nItem Dimensions L x W x H 	1.6 x 0.3 x 1.6 inches\r\nColor 	silver\r\nProcessor Brand 	AMD\r\nProcessor Count 	6 ', ''),
(13, 3, 'Ryzen 5 2600', 143000, 5, 'upload/2600.jpg', 8, ' 6 Cores/12 Threads UNLOCKED\r\nFrequency: 3.9 GHz Max Boost\r\nIncludes Wraith Stealth Cooler\r\n19MB of Combined Cache\r\nSocket AM4 Motherboard Required ', 'Processor 	3.9 GHz None\r\nRAM 	DDR4 \r\nBrand Name 	AMD\r\nItem model number 	YD2600BBAFBOX\r\nItem Weight 	1.6 ounces\r\nProduct Dimensions 	1.6 x 1.6 x 0.3 inches\r\nItem Dimensions L x W x H 	1.6 x 1.6 x 0.3 inches\r\nProcessor Brand 	AMD\r\nProcessor Count 	6\r\nComputer Memory Type 	DDR4 SDRAM ', ''),
(14, 1, 'Gigabyte H110M-H', 32000, 10, 'upload/h110m-h.jpg', 8, ' Get to Know the GIGABYTE GA-H110M-A LGA1151\r\nIntel H110 Micro ATX DDR4 Motherboard\r\n\r\nGIGABYTE 100 series motherboards support the latest 6th/7th Generation Intel Core processors, a 14nm desktop CPU which features improved performance, power efficiency and support for DDR4 memory, bringing cutting edge features and ultimate performance to your next PC build. All new GIGABYTE APP Center, simple and easy use. Audio Noise Guard with High Quality Audio Capacitors. Great for first time builders and gaming systems.    \r\n\r\n LGA1151, Supports 7th/ 6th Generation Intel Core Processors\r\n    Dual Channel DDR4, 2 DIMMs\r\n    Audio Noise Guard with High Quality Audio Capacitors\r\n    HDMI 1.4 port for Full HD contents playback\r\n    Realtek GbE LAN with cFos Speed Internet Accelerator Software\r\n    All new GIGABYTE APP Center, simple and easy use. Support intel small business basics\r\n', 'RAM 	DDR4\r\nNumber of USB 2.0 Ports 	2 \r\nBrand Name 	Gigabyte\r\nSeries 	GA-H110M-A\r\nItem model number 	GA-H110M-A\r\nItem Weight 	2.08 ounces\r\nProduct Dimensions 	11 x 10 x 2 inches\r\nItem Dimensions L x W x H 	11 x 10 x 2 inches \r\n\r\nSupports 7th/ 6th Generation Intel Core Processors Realtek ALC887 codec Audio Noise Guard with High Quality Audio Capacitors Integrated Graphics Processor - Intel HD Graphics support for Q-Flash Use of licensed AMI UEFI BIOS App Center including Easy Tune and Cloud Station utilities Safer design around screw mounting holes. Micro ATX Form Factor; 22.6cm x 17.4cm ', ''),
(15, 1, 'GIGABYTE H310M S2H', 40000, 10, 'upload/h310m-s2h.jpg', 8, 'Intel H310 Ultra Durable motherboard with GIGABYTE 8118 Gaming LAN, PCIe Gen2 x2 M.2, HDMI 1.4, DVI-D, D-Sub Ports for Multiple Display, Anti-Sulfur Resistor, Smart Fan 5, CEC 2019 ready. Supports 8th Gen Intel Core Processors. Dual Channel Non-ECC Unbuffered DDR4. 8-Channel HD Audio with High Quality Audio Capacitors. Ultra-Fast M.2 with PCIe Gen2 X2 & SATA interface. GIGABYTE Exclusive 8118 Gaming LAN with Bandwidth Management. HDMI 1.4, DVI-D, D-Sub Ports for Multiple Display. CEC 2019 Ready, Save Power With a Simple Click. Smart Fan 5 features Multiple Temperature Sensors and Hybrid Fan Headers with FAN STOP. All new GIGABYTE APP Center, simple and easy use. Anti-Sulfur Resistors Design. \r\n\r\n Dual Channel Non-ECC Unbuffered DDR4\r\n8-Channel HD Audio with High Quality Audio Capacitors\r\nUltra-Fast M.2 with PCIe Gen2 X2 & SATA interface\r\nGIGABYTE Exclusive 8118 Gaming LAN with Bandwidth Management\r\nHDMI 1.4, DVI-D, D-Sub Ports for Multiple Display ', 'RAM 	DDR4\r\nWireless Type 	Bluetooth \r\nBrand Name 	Gigabyte\r\nItem model number 	H310M S2H\r\nItem Weight 	1.8 pounds\r\nProduct Dimensions 	22.3 x 11.1 x 10.2 inches\r\nItem Dimensions L x W x H 	22.3 x 11.1 x 10.2 inches', ''),
(16, 1, 'Asus Prime A320M-K', 38000, 10, 'upload/P_setting_fff_1_90_end_500.png_1524298775.jpg', 8, ' Powered by AMD???? Ryzen??????? AM4, 7th generation Athlon??????? and HD 2000 series processors to maximize connectivity and speed with NVMe M.2, support for 32GB of DDR4, USB 3.0 and Gigabit LAN\r\n5X Protection III Hardware-level safeguards provide component longevity and reliability\r\nPatent-pending SafeSlot Core fortified PCIe slot prevents damage from heavyweight GPUs\r\nFan Xpert delivers advanced fan controls for optimized cooling\r\nIndustry-leading 8-channel HD audio driven by Japanese capacitors features an onboard LED-illuminated design ', 'Powered by AMD Ryzen AM4 processors, the ASUS Prime A320M-K packs performance and reliability into a microATX form-factor. Access next-generation connectivity and speeds with NVMe M.2, USB 3.1, Gigabit LAN and support for 32GB DDR4. 5X Protection III ensures component longevity and reliability while SafeSlot Core adds PCIe slot protection. \r\n\r\nRAM 	DDR4\r\nNumber of USB 2.0 Ports 	2 \r\nBrand Name 	Asus\r\nSeries 	PRIME A320M-K\r\nItem model number 	PRIME A320M-K\r\nItem Weight 	1.5 pounds\r\nProduct Dimensions 	8.9 x 1 x 8.7 inches\r\nItem Dimensions L x W x H 	8.9 x 1 x 8.7 inches\r\nBatteries 	1 Lithium Metal batteries required. ', ''),
(17, 1, 'Gigabyte Z370-HD3', 77000, 10, 'upload/GIGABYTE-Z370-HD3.jpg', 8, '  Intel Z370 Ultra Durable motherboard with CrossFire support, Intel GbE LAN with 25KV protection, M.2, RGB Fusion, Smart Fan 5, Anti-Sulfur Resistors\r\n    Supports 8th Gen Intel???? Core??????? Processors\r\n    DDR4 Dual Channel Non-ECC Unbuffered , 4 DIMMs\r\n    Memoria Intel???? Optane???????\r\n    Soporta 2-way CrossFire???????\r\n    M.2 ultra r????pida con PCIe Gen3 x4 y interfaz SATA\r\n    Capacitadores de audio de alta calidad y con protecci????n de ruido con separaci????n de audio led\r\n    Intel???? Gigabit LAN with cFosSpeed Internet Accelerator Software\r\n    APP Center, que incluye las utilidades EasyTune??????? y Cloud Station???????\r\n    Smart Fan 5 con sensores de m????ltiple temperatura y cabezales de ventilaci????n h????brida con FAN STOP\r\n    Ultra Durable??????? 25KV ESD y protecci????n contra la sobretensi????n\r\n    Anti-Sulfur Resistors Design\r\n    RGB FUSION supports RGB LED strips in 7 colors\r\n', '  Procesador\r\n\r\n    Support for 8th Generation Intel?? Core??? i7 processors/Intel?? Core??? i5 processors/Intel?? Core??? i3 processors in the LGA1151 package\r\n    Cach?? L3 var??a seg??n la CPU\r\n\r\nChipset\r\n\r\n    Intel?? Z370 Express Chipset\r\n\r\nMemoria\r\n\r\n    4 x sockets DDR4 DIMM con soporte de hasta 64 GB de memoria del sistema\r\n    Arquitectura de memoria Dual Channel\r\n    Support for DDR4 4000(O.C.) / 3866(O.C.) / 3800(O.C.) / 3733(O.C.) / 3666(O.C.) / 3600(O.C.) / 3466(O.C.) / 3400(O.C.) / 3333(O.C.) / 3300(O.C.) / 3200(O.C.) / 3000(O.C.) / 2800(O.C.) / 2666 / 2400 / 2133 MHz memory modules\r\n    Soporte para m??dulos de memoria ECC Un-buffered UDIMM 1Rx8/2Rx8 (operando en modo no-ECC)\r\n    Soporte para m??dulos de memoria non-ECC Un-buffered DIMM 1Rx8/2Rx8\r\n    Soporte para m??dulos de memoria Extreme Memory Profile (XMP)\r\n\r\nGr??fica Integrada\r\nProcesador gr??fico integrado ??? Soporte Intel?? HD Graphics:\r\n\r\n    1 x HDMI port, supporting a maximum resolution of 4096x2160@30 Hz\r\n', ''),
(18, 1, 'GA-AX370-Gaming', 85000, 0, 'upload/GAAX370GAMING_1.jpg', 8, 'NO stock\r\nSupports AMD Ryzen??????? & 7th Generation A-series / Athlon??????? Processors\r\nDual Channel Non-ECC Unbuffered DDR4, 4 DIMMs\r\nTurbo B-Clock, Built-in Advanced Performance Tuning IC\r\nFast 2 USB 3.1 Gen 2 with USB Type-A\r\n2-Way CrossFire??????? Multi-Graphics Support with Ultra Durable??????? Metal Shielding over PCIe Slot\r\nUltra-Fast PCIe Gen3 x4 M.2 with PCIe NVMe & SATA mode support\r\nHigh Quality Audio Capacitors and Audio Noise Guard with LED Trace Path Lighting\r\nRealtek???? Gigabit LAN with cFosSpeed Internet Accelerator Software\r\nSmart Fan 5 features 6 Temperature Sensors and 4 Hybrid Fan Headers\r\nGIGABYTE??????? UEFI DualBIOS???????\r\nAPP Center Including EasyTune??????? and Cloud Station??????? Utilities', 'CPU\r\nAM4 Socket:\r\n\r\n    AMD Ryzen??? processor\r\n    AMD 7th Generation A-series/ Athlon??? processor\r\n\r\n(Please refer \"CPU Support List\" for more information.)\r\nChipset\r\n\r\n    AMD X370\r\n\r\nMemory\r\n\r\n    4 x DDR4 DIMM sockets supporting up to 64 GB of system memory\r\n    Dual channel memory architecture\r\n    Support for DDR4 3200(O.C.) / 2933(O.C.) / 2667* / 2400 / 2133 MHz memory modules\r\n    * Support for higher than DDR4 2667 MHz may vary by CPU.\r\n    Support for ECC Un-buffered DIMM 1Rx8/2Rx8 memory modules (operate in non-ECC mode)\r\n    Support for non-ECC Un-buffered DIMM 1Rx8/2Rx8/1Rx16 memory modules\r\n    Support for Extreme Memory Profile (XMP) memory modules\r\n\r\n(Please refer \"Memory Support List\" for more information.)\r\nOnboard Graphics\r\nIntegrated Graphics Processor:\r\n\r\n    1 x HDMI port, supporting a maximum resolution of 4096x2160@24 Hz\r\n    * Support for HDMI 1.4 version.\r\n    Maximum shared memory of 2 GB\r\n\r\n* Actual support may vary by CPU.\r\nAudio\r\n\r\n    Realtek?? ALC892', ''),
(19, 1, 'Asus Rog Strix Z370-E', 138000, 10, 'upload/asus-rog-strix-z370-e_1524431955.jpg', 8, 'Tarjeta madre para juegos Intel Z370 ATX con iluminaci????n LED Aura Sync RGB, 802.11ac Wi-Fi, soporte DDR4 4000MHz, M.2 dual, SATA 6Gbps y panel frontal con USB 3.1 Gen 2.\r\n\r\n\r\n    Socket LGA1151 para la 8a generaci????n de procesadores de escritorio Intel???? Core???????.\r\n    Aura Sync RGB: Sincroniza iluminaci????n LED con un vasto portafolio de dispositivos compatibles, incluyendo tiras RGB direccionables.\r\n    Disipador M.2 integrado: Enria tu dispositivo M.2, ofreciendo rendimiento de almacenamiento constante y confiabilidad mejorada.\r\n    Optimizaci????n de 5 v????as: Mejora autom????tica de sistema, que ofrece perfiles de enfriamiento y overclokeo personalizados para tu equipo.\r\n    Audio para juegos: SupremeFX S1220A se al????a con Sonic Studio III para crear el ambiente perfecto que te lleva dentro de la acci????n.\r\n    Conectividad para juegos: M.2 dual y entradas USB 3.1 Gen 2 Tipo-A y Tipo-C.\r\n    Redes para juegos: Intel Gigabit Ethernet, LANGuard, GameFirst y 2x2 802.11ac Wi-Fi con soporte MU-MIMO.\r\n    Gamer????????s Guardian: ASUS SafeSlot y componentes premium para mayor duraci????n.\r\n', 'CPU\r\nIntel?? Socket 1151 for 8th Generation Core??? Processors\r\nSupports Intel?? 14 nm CPU\r\nSupports Intel?? Turbo Boost Technology 2.0\r\n* The Intel?? Turbo Boost Technology 2.0 support depends on the CPU types.\r\n* Refer to www.asus.com for CPU support list\r\nChipset\r\nIntel?? Z370\r\nMemoria\r\n4 x DIMM, Max. 64GB, DDR4 4000(O.C.)/3866(O.C.)/3733(O.C.)/3600(O.C.)/3466(O.C.)/3400(O.C.)/3333(O.C.)/3300(O.C.)/3200(O.C.)/3000(O.C.)/2800(O.C.)/2666/2400/2133 MHz Non-ECC, Un-buffered Memory\r\nDual Channel Memory Architecture\r\nSupports Intel?? Extreme Memory Profile (XMP)\r\n* Hyper DIMM support is subject to the physical characteristics of individual CPUs. \r\n* Refer to www.asus.com for the Memory QVL (Qualified Vendors Lists).\r\nGr??ficos\r\nIntegrated Graphics Processor- Intel?? HD Graphics support\r\nMulti-VGA output support : HDMI/DVI-D/DisplayPort ports\r\n- Supports HDMI with max. resolution 4096 x 2160 @ 24 Hz\r\n- Supports DVI-D with max. resolution 1920 x 1200 @ 60 Hz\r\n- Supports DisplayPort with max', ''),
(20, 1, 'Gigabyte Z270x-Designare Promocion', 140000, 0, 'upload/GAZ270XDESIGNARE_1.jpg', 8, '    Supports 7th/ 6th Generation Intel???? Core??????? Processors\r\n    Dual Channel Non-ECC Unbuffered DDR4, 4 DIMMs\r\n    Front USB 3.1 Gen 2 Header\r\n    Fast USB 3.1 Gen 2 with USB Type-C??????? and Type-A\r\n    3-Way Graphics Support with Dual Armor and Ultra Durable??????? Design\r\n    Dual NVMe PCIe SSDs in RAID 0 Support\r\n    NVMe PCIe Gen3 x4 U.2 Connector\r\n    Ultra-Fast M.2 with PCIe Gen3 x4 & SATA interface\r\n    Intel???? Optane??????? Memory Ready\r\n    ALC1220 120dB SNR HD Audio with Smart Headphone Amp\r\n    Intel???? GbE LAN with cFosSpeed Internet Accelerator Software\r\n    USB DAC-UP 2 with Adjustable Voltage\r\n    RGB FUSION LED Light Show Design\r\n    Swappable Overlay for Accent LED\r\n    Smart Fan 5 features Multiple Temperature Sensors and Hybrid Fan Headers\r\n    Silver Alloy Coated PCB Design\r\n    GIGABYTE UEFI DualBIOS???????\r\n    APP Center Including EasyTune??????? and Cloud Station??????? Utilities\r\n', 'CPU\r\n\r\n    Support for 7th and 6th generation Intel?? Core??? i7 processors/ Intel?? Core??? i5 processors/Intel?? Core??? i3 processors/ Intel?? Pentium?? processors/Intel?? Celeron?? processors in the LGA1151 package\r\n    L3 cache varies with CPU\r\n\r\n(Please refer \"CPU Support List\" for more information.)\r\nChipset\r\n\r\n    Intel?? Z270 Express Chipset\r\n\r\nMemory\r\n\r\n    4 x DDR4 DIMM sockets supporting up to 64 GB of system memory\r\n    * Due to a Windows 32-bit operating system limitation, when more than 4 GB of physical memory is installed, the actual memory size displayed will be less than the size of the physical memory installed.\r\n    Dual channel memory architecture\r\n    Support for DDR4 3866(O.C.) / 3800(O.C.) / 3733(O.C.) / 3666(O.C.) / 3600(O.C.) / 3466(O.C.) / 3400(O.C.) / 3333(O.C.) / 3300(O.C.) / 3200(O.C.) / 3000(O.C.) / 2800(O.C.) / 2666(O.C.) / 2400 / 2133 MHz memory modules\r\n    Support for ECC Un-buffered DIMM 1Rx8/2Rx8 memory modules (operate in non-ECC mode)\r\n', ''),
(23, 6, 'EVGA Geforce Gt 1030 Sc 2gb', 65000, 0, 'upload/GX315EA_166346_800x800_1525766359.jpg', 8, 'NO HAY EN STOCK!\r\n\r\nEntra en las hermosas Graficas de PC \r\nEVGA???? GeForce???? GT 1030\r\n\r\nAcelera toda tu experiencia con tu PC con la r????pida y poderosa Tarjeta de Video EVGA???? GeForce???? GT 1030. Con su premiada arquitectura NVIDIA Pascal???????, poderoso motor grafico y tecnolog????as de punta que le dan la mejora de rendimiento que necesitas para correr las aplicaciones mas demandantes de PC.\r\n\r\nDesata tu creatividad con impresionante video HD, edici????n de im????genes y disfruta incre????ble gaming. Ahora, tu puedes hacer esto hasta 2X mas r????pido que con las graficas integradas de un Intel???? Core??????? i5*. Obt????n actualizaciones de drivers mas sencillas, y optimizaci????n con un solo bot????n con GeForce Experience.???????.', 'Core:\r\n  \r\n    - 384 N??cleos CUDA\r\n    - Reloj b??sico: 1290 MHz\r\n    - Reloj de aceleraci??n: 1544 MHz\r\n    - Bus: PCI-E 3.01\r\n\r\nMemory:\r\n     \r\n   - Detalles de la memoria: 2048 MB GDDR5\r\n   - Ancho de bits de la memoria: 64 Bit\r\n   - Reloj de la memoria: 6008 MHz\r\n   - Velocidad de la memoria: 0.28 ns\r\n   - Ancho de banda de la memoria: 48.06 GB/s\r\n\r\n\r\nKey Features:\r\n\r\n   - NVIDIA GameWorks Technology\r\n   - OpenGL 4.6 Support\r\n   - NVIDIA GPU Boost 3.0\r\n   - Microsoft DirectX 12 API\r\n   - Vulkan API\r\n   - PCI Express 3.0\r\n   - Built for EVGA Precision XOC\r\n   - 2x Single-Link DVI-D\r\n\r\n', ''),
(24, 6, 'Asus Geforce GTX 1050ti Phoenix', 135000, 0, 'upload/GX40SAS_158723_800x800_1525766852.jpg', 8, 'ASUS Phoenix GeForce???? GTX 1050 Ti 4GB GDDR5 es la mejor PC compacta para juegos jam????s creada \r\n\r\nVentilador de doble balero reduce la fricci????n de giro para una vida ????til 2 veces mayor y mejor eficiencia de enfriamiento.\r\nJuego f????cil, s????lo conecta y juega sin necesidad de fuente de poder adicional.\r\nTecnolog????a ????nica en la industria Auto-Extreme con Super Alloy Power II entrega calidad premium y la mejor confiabilidad.\r\nGPU Tweak II con XSplit Gamecaster provee un ajuste de rendimiento intuitivo y transmisiones en tiempo real.\r\nNVIDIA ANSEL para una nueva y revolucionaria forma de capturar screenshots del juego.\r\nNVIDIA GameWorks??????? provee una experiencia interactiva y cinem????tica, as???? como un modo de juego suave.', 'Motor gr??fico: NVIDIA GeForce GTX 1050 TI\r\nBus Standard: PCI Express 3.0 \r\nOpenGL: OpenGL??4.5\r\nVideo Memory: GDDR5 4GB\r\nEngine Clock: GPU Boost Clock : 1392 MHz\r\nGPU Base Clock : 1290 MHz\r\nCUDA Core: 768\r\nMemory Clock: 7008 MHz\r\nMemory Interface: 128-bit\r\nResoluci??n: Digital Max Resolution:7680x4320\r\n\r\nInterfaz:\r\nDVI Output : Yes x 1 (Native) (DVI-D)\r\nHDMI Output : Yes x 1 (Native) (HDMI 2.0)\r\nDisplay Port : Yes x 1 (Native) (Regular DP)\r\nHDCP Support : Yes\r\n\r\nSoftware: ASUS GPU Tweak II & Driver\r\n\r\nDimensiones: \r\n7.6 \" x 4.4 \" x 1.5 \" Inch\r\n19.2 x 11.1 x3.7 Centimeter', ''),
(25, 6, 'Gigabyte Geforce Gtx 1060 6gb Windforce OC', 190000, 3, 'upload/20160721193143_big_1525834284.png', 8, 'Las GTX 1060 tambi????n disfrutan de la arquitectura Pascal:\r\nEn las Gigabyte GTX 1060 encontramos la misma estructura en los silicio de estos modelos, hablamos de Pascal, lo ????ltimo en cuanto a computaci????n gr????fica que est???? arrojando resultados espectaculares.\r\n\r\nBajo el nombre Pascal se encuentra una nueva arquitectura, una forma en la que se construyen los procesadores gr????ficos de Nvidia, la evoluci????n de Maxwell. Este nuevo dise????o ha conseguido triplicar los resultados en realidad virtual. Ante este escenario podemos asegurar que la serie 10 de Nvidia es la reina absoluta de las tarjetas gr????ficas en estos momentos por potencia, rendimiento y eficiencia.\r\n\r\nFabricadas en 16 nan????metros con la tecnolog????a FinFET, las GPU de las Nvidia GTX 1060 han demostrado que pueden alcanzar velocidades mucho m????s altas sin repercutir en el consumo, reduci????ndolo incluso, llegando a integrar 17.000 millones de transistores, la unidades b????sicas de las que se compone un procesador\r\n\r\nCompatible con DirectX 12:\r\nLos ????ltimos avances gr????ficos se encuentran bajo DirectX 12 y  la Gigabyte GeForce GTX 1060 es compatible con las APIS m????s avanzadas como la mencionada DirectX u Open GL, asegurando un rendimiento sin igual en videojuegos.\r\n\r\n6GB GDDR5 dedicados:\r\nEl triple de memoria que su hom????loga de la generaci????n anterior. Los 6036 MB de RAM de esta tarjeta de v????deo te har????n enmudecer.\r\n\r\nLas memorias GDDR5 son la evoluci????n de la memoria RAM DDR convencional. Ante el avance de los requisitos gr????ficos de videojuegos y aplicaciones, los canales tradicionales de memoria se ve????an colapsados debido a su propia arquitectura centrada en ofrecer bajas latencias. Este sistema ha funcionado durante a????os hasta que las necesidades de datos ha visto superadas las necesidades de una baja latencia en pos de canales mucho m????s anchos por los que transmitir informaci????n, es ese el momento en el que se hizo patente que hac????a falta una nueva arquitectura, un nuevo sistema para proporcionar toda la informaci????n que las GPU solicitaban sin caer en cuellos de botella, as???? naci???? la tecnolog????a GDDR.', 'Gigabyte GeForce GTX 1060 Windforce OC especificaciones\r\n\r\n    Motor Gr??fico NVIDIA GeForce GTX 1060\r\n    Bus PCI Express 3.0\r\n    OpenGL OpenGL??4.5\r\n    Memoria de Video GDDR5 6GB\r\n    Frecuencia del Reloj\r\n        Frecuencia de la GPU OC: 1797 MHz\r\n        Frecuencia de la GPU por defecto: 1582 MHz\r\n    Frecuencia de la Memoria 8008 MHz\r\n    Interfaz de Memoria 192 bits\r\n    Resoluci??n Max. resoluci??n digital: 7680 x 4320\r\n    Tasa de refresco 60Hz\r\n    Ventiladores Windforce 2x\r\n    Alimentaci??n 1x6 pin\r\n    Interfaz\r\n        Salida DVI: S?? x 2 (DVI-D)\r\n        Salida HDMI: S?? x 1 (HDMI 2.0)\r\n        DisplayPort : S?? x 1\r\n    Dimensiones H=39 L=223 W=121 mm\r\n    Notas\r\n\r\nM??s informaci??n en la web del fabricante:\r\n\r\nhttp://www.gigabyte.com/products/product-page.aspx?pid=5978#kf', ''),
(26, 6, 'Gigabyte Aorus Radeon Rx 580 8gb', 200000, 2, 'upload/2017041717160472_big_1525838439.png', 8, ' Features\r\nPowered by Radeon ??????? RX 580\r\nWINDFORCE 2X with 90mm Blade Fan Design\r\nAdvanced Copper Back Plate Cooling\r\nRGB fusion ???????? 16.7M customizable color lighting\r\nStylish Metal Back Plate\r\nIntuitive AORUS Graphics Engine\r\n\r\nCore Clock\r\nOC mode: 1380MHz\r\nGaming mode: 1365MHz\r\n(Reference card : 1340 MHz)', 'Memory Speed 	8000 MHz\r\nCard Description 	Radeon RX 580\r\nGraphics Card Ram Size 	8 GB \r\nBrand Name 	Gigabyte\r\nSeries 	Gigabyte AORUS Radeon RX 580\r\nItem model number 	GV-RX580AORUS-8GD\r\nItem Weight 	2.2 pounds\r\nProduct Dimensions 	9.1 x 4.8 x 1.4 inches\r\nItem Dimensions L x W x H 	9.1 x 4.8 x 1.4 inches ', ''),
(27, 13, 'Toshiba 1TB 7200 rpm', 28000, 10, 'upload/toshiba_1525887199.jpg', 8, 'N????mero de parte: DT01ACA100                \r\nModelo: DT01ACA100 TOSHIBA\r\nDisco Duro Para PC\r\nCapacidad 1TB\r\n7200RPM\r\nGarant????a: 1 A????o', '', ''),
(28, 13, 'Teamgroup L5 Lite 3d 120gb ', 20000, 10, 'upload/s-l1600-400x400.jpg', 8, 'Team Group L5 LITE-3D Series es una nueva serie de discos SSD que llegan con un tradicional formato SATA III de 2,5??????? y 7 mm por lo que podr????n ser instalados en todo tipo de dispositivos. Su tecnolog????a de memoria 3D NAND proporciona unos mayores niveles de fiabilidad y eficiencia energ????tica en comparaci????n con la anterior 2D NAND. Team group L5 LITE-3D se ofrece en capacidades de 120 GB, 240 GB y 480 GB para tratar de adaptarse a las necesidades y las posibilidades de todos los usuarios.\r\n\r\n', '', ''),
(29, 13, 'Teamgroup L5 Lite 3d 240gb', 35000, 10, 'upload/team-group-l5-lite-3d-240gb-25-sata3-disco-ssd-001_1526050334.jpg', 8, 'Welcome to the new era of 3D NAND\r\n\r\nThe latest generation of 3D NAND flash memory has overcome the technical barrier of 2D NAND and has enhanced the overall capacity, performance, and reliability. Unlike the 2D planar flash memory, 3D NAND increases storage capacity by stacking up cells in the vertical direction. It not only provides a better performance and endurance but also breaks through the technical limitation of planar chips.\r\n\r\n4 times of speed improvement\r\n\r\nThe L5 LITE 3D solid state drive is 4 times faster* than the traditional hard drive. Its excellent performance and read/write speed not only allow fast boot/shutdown time but also speed up the response time of all applications, so consumers can enjoy the high-speed performance immediately after the upgrade. The lightweight and zero hassle advantage make it the best product to replace the traditional hard drive.\r\n\r\n\r\nLightweight and compact with various capacities for selection\r\n\r\nThe L5 LITE 3D solid state drive has an industry-standard 2.5-inch. With the only 7mm in height, it is best suited for Ultrabooks on the market. Whether it is for laptop or desktop, the upgrade can be done quickly. It is using SATA III 6Gbps specification and capacities available in 120GB, 240GB, 480GB, 1TB, etc. With read speed up to 470 MB/s*, it not only improves the computer performance, but it is also the best bargain available.\r\n', '    3D NAND ??? excellent choice for upgrade\r\n    Read/write speed is 4 times faster than traditional hard drive ??? breathe new life into old system\r\n    Smooth read/write speed ??? up to 470 MB/s of reading speed is able to enhance the speed and performance of the overall system\r\n    Ultra lightweight and slim - 2.5-inch hard drive with just 7.0 mm thickness, it can be installed on laptop or any other system\r\n    Support S.M.A.R.T. technology - monitoring hard drive status efficiently\r\n    Support TRIM - bring out its best performance on the compatible operating system\r\n    Three years product warranty with free technical support service\r\n', ''),
(30, 13, 'Teamgroup L5 Lite 3d 480gb', 75000, 10, 'upload/ssd-480gb.jpg', 8, 'Welcome to the new era of 3D NAND\r\n\r\nThe latest generation of 3D NAND flash memory has overcome the technical barrier of 2D NAND and has enhanced the overall capacity, performance, and reliability. Unlike the 2D planar flash memory, 3D NAND increases storage capacity by stacking up cells in the vertical direction. It not only provides a better performance and endurance but also breaks through the technical limitation of planar chips.\r\n\r\n4 times of speed improvement\r\n\r\nThe L5 LITE 3D solid state drive is 4 times faster* than the traditional hard drive. Its excellent performance and read/write speed not only allow fast boot/shutdown time but also speed up the response time of all applications, so consumers can enjoy the high-speed performance immediately after the upgrade. The lightweight and zero hassle advantage make it the best product to replace the traditional hard drive.\r\n\r\n\r\nLightweight and compact with various capacities for selection\r\n\r\nThe L5 LITE 3D solid state drive has an industry-standard 2.5-inch. With the only 7mm in height, it is best suited for Ultrabooks on the market. Whether it is for laptop or desktop, the upgrade can be done quickly. It is using SATA III 6Gbps specification and capacities available in 120GB, 240GB, 480GB, 1TB, etc. With read speed up to 470 MB/s*, it not only improves the computer performance, but it is also the best bargain available.\r\n', '    3D NAND ??? excellent choice for upgrade\r\n    Read/write speed is 4 times faster than traditional hard drive ??? breathe new life into old system\r\n    Smooth read/write speed ??? up to 470 MB/s of reading speed is able to enhance the speed and performance of the overall system\r\n    Ultra lightweight and slim - 2.5-inch hard drive with just 7.0 mm thickness, it can be installed on laptop or any other system\r\n    Support S.M.A.R.T. technology - monitoring hard drive status efficiently\r\n    Support TRIM - bring out its best performance on the compatible operating system\r\n    Three years product warranty with free technical support service\r\n', ''),
(31, 13, 'Samsung/Toshiba 256gb m.2 ', 40000, 2, 'upload/2686873-a_1526050996.jpg', 8, 'M.2\r\n\r\nUsed in various equipment and systems,\r\nit is recognized for its excellent performance and stability', 'Density 	128 / 256 / 512GB\r\nForm Factor 	M.2 2280\r\nCell type 	MLC\r\nSequential Performance\r\n(128KB, Typical) 	Read : Up to 530MB/s(128/256/512GB)\r\nWrite : Up to 190MB/s(128GB), 370MB/s(256GB),\r\n470MB/s(512GB)\r\nRandom Performance\r\n(4KB, Typical) 	Read : Up to 85K IOPS(128GB), 95K IOPS(256/512GB)\r\nWrite : Up to 50K IOPS(128GB), 85K IOPS(256/512GB)\r\nTemperature Range\r\nOperating 	0??? to 70???\r\nTemperature Sensor (SMART Attribute ID 194)\r\nPower Consumption\r\n(Typical) 	Active : 0.06W | ldle : 0.045W\r\nDevslp : < 0.003W\r\nLatency 	Read : 135??? (Typical)\r\nWrite : 55??? (Typical)\r\nShock 	Operating : 1500G, duration 0.5ms\r\nNon-Operating : 1500G, duration 0.5ms\r\nVibration 	Operating : 20G, 10~2KHz (Frequency)\r\nNon-Operating : 20G, 10~2KHz (Frequency)\r\nReliability 	MTBF : 1.2M | BER : 1 error in 1015 bits Transferred\r\nDimension 	(22.00??0.15) x (80.00??0.15) x (Max. 2.23) mm\r\nWeight 	Max. 7g\r\nVoltage 	3.3V??5%', ''),
(32, 13, 'Toshiba M.2 PCIe 3 Genx4', 130000, 1, 'upload/ssd-toshiba-1tb.jpg', 8, 'Introducing a new breed of enthusiast storage, the OCZ RD400 NVM Express???? M.2 solid state drive series, designed to propel high-end computing into a new realm of possibility. The OCZ RD400 PCIe Gen3 x4 outperforms SATA SSDs by over 4.5 times in sequential read (up to 2,600 MB/s), and over 3 times in sequential write performance (up to 1,600 MB/s) so your system won????????t be deprived of the storage bandwidth your data-intensive workload requires.* The OCZ RD400????????s next generation NVMe interface provides a more responsive PC experience with shorter storage latency than that of today????????s traditional hard disk drives and SATA SSDs. Along with high performance, the OCZ RD400 is designed for mobile, desktop, or workstation applications.\r\n\r\n', 'Performance\r\n\r\n    Sequential Read/Write:\r\n\r\n    128GB: Up to 2,200/620 MB/s\r\n\r\n    256GB: Up to 2,600/1,150 MB/s\r\n\r\n    512GB: Up to 2,600/1,600 MB/s\r\n\r\n    1024GB: Up to 2,600/1,550 MB/s\r\n\r\n    Random Read/Write (4KiB, QD32):\r\n\r\n    128GB: Up to 170,000/110,0000 IOPS\r\n\r\n    256GB: Up to 210,000/140,0000 IOPS\r\n\r\n    512GB: Up to 190,000/120,0000 IOPS\r\n\r\n    1024GB: Up to 210,000/130,0000 IOPS\r\n\r\nEndurance:\r\n\r\nTBW (Total Bytes Written)\r\n\r\n128GB: 74 TB\r\n\r\n256GB: 148 TB\r\n\r\n512GB: 296 TB\r\n\r\n1024GB: 592 TB\r\n\r\n\r\nDaily Usage Guideline4\r\n\r\n128GB: 40 GB/day\r\n\r\n256GB: 81 GB/day\r\n\r\n512GB: 162 GB/day\r\n\r\n1024GB: 324 GB/day\r\n', ''),
(33, 14, 'Corsair h45', 32000, 10, 'upload/1_1526051709.jpg', 8, 'El sistema Hydro Series H45 permite un funcionamiento m????s fr????o y silencioso del PC al reemplazar el disipador t????rmico de la CPU. Los componentes compactos y los tubos flexibles del sistema Hydro Series H45 facilitan su instalaci????n incluso en espacios reducidos. Podr????s mejorar la eficiencia de refrigeraci????n de la CPU, incluso en los chasis m????s compactos. Casi con total seguridad, el modelo H45 se adapta a todo aquel chasis que disponga de un soporte para ventilador de 120 mm pr????ximo a la CPU. El sistema H45 viene precargado y no es necesario purgarlo.\r\n\r\nCaracter????sticas:\r\n     Radiador de 120 mm: m????s superficie para un rendimiento de refrigeraci????n superior\r\n    Dise????o mejorado de la placa refrigerante y de la bomba\r\n    Avanzado dise????o de ventiladores PWM SP120L: mejor suministro de aire y velocidad personalizable\r\n\r\n', 'Especificaciones\r\n\r\n    Peso y dimensiones\r\n        Di??metro de ventilador: 12 cm\r\n        Altura de radiador: 12 cm\r\n        Ancho del paquete: 270 mm\r\n        Profundidad del paquete: 215 mm\r\n        Altura del paquete: 135 mm\r\n        Peso del paquete: 796 g\r\n\r\n    Detalles t??cnicos\r\n        Utilizar con: Procesador\r\n        Ventilador: Si\r\n        Radiador: Si\r\n        Compatible con modulaci??n por ancho de pulsos (PWM): Si\r\n        Sockets de procesador soportados: Socket AM2, Socket AM3, Socket B (LGA 1366), Socket FM1, Socket FM2, Socket H (LGA 1156), Socket H2 (LGA 1155), Socket H3 (LGA 1150), Socket LGA 1151, Socket R (LGA 2011), Socket R (LGA 2011-v3)\r\n        Cantidad: 1\r\n\r\n    Dise??o\r\n        Color del producto: Negro', ''),
(34, 14, 'Corsair H100i V2', 70000, 10, 'upload/HS038CS_176348_800x800_1526052007.jpg', 8, 'El Hydro Series H110i v2 es un sistema de refrigeraci????n integral para CPU de rendimiento extremo adaptado a chasis con puntos de montaje para radiadores de 240 mm. El radiador de 240 mm y dos ventiladores SP140L PWM disipan eficazmente el calor generado por CPU muy sobreaceleradas. Incluye Corsair Link, para que se puedan supervisar las temperaturas, ajustar el rendimiento de refrigeraci????n y personalizar la iluminaci????n LED directamente desde el ordenador de sobremesa.\r\n\r\nCaracter????sticas:\r\n\r\n    Radiador de 240 mm\r\n    El radiador de doble ancho ofrece aproximadamente dos veces el ????rea de refrigeraci????n de nuestros sistemas de refrigeraci????n Hydro Series, que utilizan un radiador de 120 mm o 140 mm. Se adapta pr????cticamente a cualquier chasis que disponga de dos puntos de montaje para ventiladores de 120 mm espaciados para un radiador de 240 mm.\r\n    Ventiladores SP120L PWM avanzados\r\n    Nuestros ventiladores SP120L especialmente dise????ados son diferentes de los ventiladores est????ndares para chasis: est????n dise????ados de manera personalizada para suministrar aire de alta presi????n est????tica al montarse directamente contra los radiadores, y las aspas del ventilador est????n especialmente dise????adas para suministrar el m????ximo flujo de aire con el m????nimo ruido. Como est????n controlados por PWM, se puede personalizar la velocidad del ventilador para encontrar el equilibrio ????ptimo entre refrigeraci????n y ruido.\r\n    Corsair Link integrado para supervisar, personalizar y controlar\r\n    Conecte el cable de Corsair Link incluido a un puerto USB de la placa base y descargue el software gratuito Corsair Link para liberar a????n m????s potencia. Puede personalizar el rendimiento del refrigerador, supervisar las temperaturas de la CPU y del refrigerante, as???? como cambiar el color de la iluminaci????n LED RGB desde el color blanco predeterminado para que combine con su sistema, o cambiar el color en funci????n de las lecturas de la temperatura y otras entradas.\r\n    Una refrigeraci????n m????s sencilla de la CPU de elevado rendimiento\r\n    Lejos quedan los tiempos en los que refrigeraci????n por agua requer????a mucho trabajo. El H100i v2 es un dise????o de circuito cerrado que viene precargado y que incluye un soporte de montaje modular, que no precisa de herramientas, para una instalaci????n m????s r????pida.\r\n    Acerca de los refrigeradores por l????quido para CPU Hydro Series\r\n    Los refrigeradores de CPU Corsair Hydro Series le ofrecen la potencia de la refrigeraci????n l????quida en un paquete compacto f????cil de instalar. Brindan una refrigeraci????n superior para un rendimiento de overclocking elevado, sin la complejidad de los tradicionales m????dulos de refrigeraci????n por agua.', 'Especificaciones: \r\n\r\n    Dimensiones del radiador: 276 mm x 125 mm x 30 mm\r\n    Dimensiones del ventilador: 120 mm x 120 mm x 25 mm\r\n    Velocidad del ventilador: 2435 +/- 10% RPM  \r\n    Caudal de aire del ventilador: 70,69 CFM\r\n    Presi??n est??tica del ventilador: 4,65 mmH2O\r\n    Nivel de ruido del ventilador: 37,7 dB(A)\r\n    Intel??? LGA 1150, 1155, 1156, 1366, 2011, 2011-3\r\n    Sockets AMD??? FM1, FM2, AM2, AM3', ''),
(35, 14, 'Aorus ATC700', 55000, 10, 'upload/2017042718050455_big_1526358969.png', 8, 'RGB fusion ???????? 16.7M Customizable Color Lighting\r\nDual 120mm 2 ball bearing (PWM) fans\r\n3*10mm high performance copper heat-pipes\r\nHeat-Pipe direct touch technology\r\n\r\nDUAL 120MM 2 BALL BEARING PWM FANS\r\nAttached 2 big 120mm PWM fans to each side of the heat-sink, will efficiently dissipate the heat from the CPU at a very low noise level. PWM function provides the accurate and efficient fan speed for the CPU, to optimize the noise reduction and the thermal performance. GIGABYTE patented blade fan design increases the airflow. And moreover, the 2 ball bearing structure will provide longer and more stable lifespan.', '\r\n\r\n    Rated Voltage\r\n    Fan :12V DC , LED : 12V\r\n    Rated Current\r\n    0.21A\r\n    Fan Speed\r\n    500-1700 RPM??10%\r\n    Bearing Type\r\n    2 Ball Bearing\r\n    Weight\r\n    955 g\r\n    CPU Socket\r\n    Intel Socket 2066 / 2011 / 1366 / 1156 / 1155 / 1151 / 1150 / 775\r\n    AMD Socket FM2+, FM2, FM1, AM4, AM3+, AM3, AM2+, AM2, 939, 754\r\n    TDP\r\n    >200W\r\n    Dimensions (LxWxH)\r\n    139 x 109 x 169 mm\r\n    Heat Sink Dimensions (LxWxH)\r\n    133 x 59 x 158 mm\r\n    Heat Sink Material\r\n    3 x 10mm Heat Pipes / Aluminum Fins\r\n    Heat Sink Weight\r\n    670 g\r\n    Heat Pipe Dimensions\r\n    ??10 mm\r\n    Fan Dimensions\r\n    ??120*25mm*2PCS\r\n    Fan Air Flow\r\n    14-53 CFM ??10%\r\n    Fan Air Pressure\r\n    0.2-1.93 mmH2O ??10%\r\n    Fan Life Expectancy\r\n    70000 Hrs\r\n    Noise Level\r\n    12 ~ 31 dBA\r\n    Connector\r\n    4 Pin\r\n    Power Consumption\r\n    2.52W\r\n    Fan Weight\r\n    142 g\r\n\r\n', ''),
(36, 9, 'EVGA 600w Certificada White 80+ No Modular', 34000, 0, 'upload/1456512265938-30574483_9866_1526359083.jpg', 8, 'ATX CABLE 	1x 550mm\r\nEPS CABLE 	1x 600mm\r\nPCIE CABLE 	1x 550mm, 670mm\r\nSATA CABLE 	2x 450mm, 570mm, 690mm\r\nFOUR-PIN PERIPHERAL CABLE 	1x 450mm, 570mm, 690mm (f)\r\nFLOPPY ADAPTER 	1x 810mm\r\nAC POWER 	1x 1200mm (m)\r\nMODULAR CABLE TYPE 	No', 'Potencia nominal 	600W\r\nVoltaje de entrada AC 	100 - 240V\r\nFrecuencia de entrada AC 	50 - 60 Hz\r\nCorriente de entrada 	15A\r\nVoltaje de salida CC 	+12V, +3.3V, +5V, +5Vsb, -12V\r\nPotencia combinada (3,3 V) 	130W\r\nPotencia combinada (+12 V) 	588W\r\nPotencia combinada (+5 V) 	130W\r\nPotencia combinada (-12V) 	3,6W\r\nPotencia combinada (+5 VSB) 	15W\r\nCorriente m??xima de salida (+3.3V) 	24A\r\nCorriente m??xima de salida (+12V) 	49A\r\nCorriente m??xima de salida (+5V) 	20A\r\nCorriente m??xima de salida (-12V) 	0,3A\r\nCorriente m??xima de salida (+5Vsb) 	3A\r\nEficiencia 	85%\r\nFunciones de protecci??n de poder 	Over current, Over power, Sobrevoltaje, Cortocircuito, Bajo voltaje\r\nProtecci??n contra sobrecalentamiento 	Si\r\nDi??metro de ventilador 	12 cm\r\nN??mero de ventiladores 	1\r\nUbicaci??n de ventilador 	Superior', ''),
(37, 9, 'Corsair VS 650wats Certificada White 80+ No Modular', 32000, 10, 'upload/corsair-vs650-650w-vs-series-80-plus_1526360061.jpg', 8, 'La fuente de alimentaci????n CORSAIR VS650 es una gran elecci????n si est???? montando un sistema dom????stico o de oficina menos exigente, pero necesita la compatibilidad y la fiabilidad que han hecho c????lebres a CORSAIR.\r\n\r\n\r\nVS650: la fuente de alimentaci????n de gama b????sica de 240 V con prestaciones de alto nivel\r\n\r\nLa fuente de alimentaci????n Corsair VS650 es una gran elecci????n si est???? montando un sistema dom????stico o de oficina menos exigente, pero necesita la compatibilidad y la fiabilidad que han hecho c????lebres a Corsair.\r\n', 'ATX Connector\r\n1\r\nAbility to toggle singlemultiple 12V rails\r\nNo\r\nATX12V Version\r\nv2.31\r\nContinuous output rated temperature C\r\n40??C\r\nContinuous power W\r\n650 Watts\r\nCorsair Link Support\r\nNo\r\nFan bearing technology\r\nSleeve\r\nFan size mm\r\n120\r\nMTBF hours\r\n100,000 hours\r\nMulti-GPU ready\r\nNO\r\nPower\r\n650 Watts\r\nWarranty\r\nThree years\r\n80 PLUS Efficiency\r\nWhite\r\nPSU Form Factor\r\nATX\r\nZero RPM Mode\r\nNo\r\nCable Type\r\nSleeved\r\nC-Link Ready\r\nNo\r\nDimensions\r\n150mm x 86mm x 140mm\r\nEPS Connector\r\n1\r\nFloppy Connector\r\n2\r\nModular\r\nNo\r\nPCI-E Connector\r\n2\r\nPlug Type\r\nNA\r\nSATA Connector\r\n4\r\n', ''),
(38, 9, 'TT smart Pro RGB 650wats Bronce 80+ Modular', 53000, 10, 'upload/main850_1526360419.jpg', 8, 'Smart Pro RGB 650W Bronze Fully Modular\r\nThermaltake, as the pioneer who incorporates RGB lights into PSU, has launched the Thermaltake Smart Pro RGB Bronze Series, coming with a pre-installed, patented 256 Colors Riing 14 RGB fan with 5 lighting modes to choose from and built-in memory.\r\n\r\nFeaturing capacities ranging from 650W to 850W and 80 PLUS Bronze certification, Smart Pro RGB Bronze Series adopts the highest quality components and fully modular design that always accommodate any mainstream build under any circumstances.', 'P/N 	PS-SPR-0650FPCBxx-R\r\nShort P/N 	SPR-0650F-R\r\nModel 	SPR-650AH3FSB-R\r\nType 	ATX 12V v2.4 and EPS v2.92\r\nMax. Output Capacity 	650W\r\nPeak Output Capacity 	780W\r\nColor 	Black\r\nDimension ??? W / H / D ??? 	150mm(W) x 86mm(H) x 170mm(D)\r\nPFC ???Power Factor Correction??? 	Active PFC\r\nPower Good Signal 	100-500 msec\r\nHold Up Time 	> 16msec at 75% load\r\nInput current 	10A\r\nInput Frequency Range 	50Hz - 60Hz\r\nInput Voltage 	100V ??? 240V~\r\nOperating Temperature 	0??C to + 40??C\r\nOperating Humidity 	20% to 90%,non-condensing\r\nStorage Temperature 	-40??C to + 70??C\r\nStorage Humidity 	20% to 95%, non-condensing\r\nCooling System 	14cm hydraulic bearing fan\r\nEfficiency 	Meet 80 PLUS?? Bronze at 115Vac input.\r\nMTBF 	100,000 hrs minimum\r\nSafety Approval 	CE/cTUVus/T??V S??D/FCC/CCC/BSMI/EAC\r\nPin Connector 	PCI-E 6+2pin x 4\r\nProtection 	OCP, OVP, UVP, OPP, SCP, OTP', '');
INSERT INTO `product` (`productid`, `categoryid`, `product_name`, `product_price`, `product_qty`, `photo`, `supplierid`, `description`, `tech`, `video`) VALUES
(40, 10, 'In Win 101 Blanco', 38000, 0, 'upload/CJCIN303WHITE_00001_1526361019.jpg', 8, 'CASE IN WIN 101 ( 101 WHITE ) SIN- FUENTE / BLANCO CON- NEGRO / 1 PANEL VIDRIO / LED- AZUL\r\n', 'Modelo\r\n101\r\nColor\r\nNegro, Blanco\r\nTipo de caja\r\nMedia torre\r\nMaterial de la caja\r\nSECC, ABS, PC y Vidrio templado\r\nCompatibilidad de la placa base\r\nATX, Micro-ATX, Mini-ITX, Max : 12\" x 10.5\"\r\nRanuras de expansi??n\r\nPCI-E x 7\r\nCompatibilidad m??xima\r\nLongitud de la tarjeta VGA : 421 mm (m??xima)\r\nLongitud de la tarjeta VGA : 305 mm (con radiador lateral)\r\nAltura del disipador de la CPU : 160 mm\r\nPuertos delanteros\r\n1 X USB 3.1 Gen 2 Type-C 2 x USB 3.0 Audio HD\r\nCompatibilidad con soluciones t??rmicas\r\n1 x Ventilador trasero de 120 mm / Radiador de 120 mm\r\n2 x Ventilador lateral de 120 mm / Radiador de 240 mm\r\n3 x Ventilador inferior de 120 mm / Radiador de 360 mm\r\nCompatibilidad con fuentes de alimentaci??n\r\nPSII : ATX12V - Longitudes de hasta 200 mm\r\n', ''),
(41, 10, 'In win 101 negro', 38000, 10, 'upload/TORRE_MICRO_ATX_IN_WIN_301_NEGRO-1535532951.jpg', 8, 'CASE IN WIN 101 ( 101 BLACK ) SIN- FUENTE / NEGRO CON- ROJO / 1 PANEL VIDRIO / LED- ROJA ', 'Modelo\r\n101\r\nColor\r\nNegro, Rojo\r\nTipo de caja\r\nMedia torre\r\nMaterial de la caja\r\nSECC, ABS, PC y Vidrio templado\r\nCompatibilidad de la placa base\r\nATX, Micro-ATX, Mini-ITX, Max : 12\" x 10.5\"\r\nRanuras de expansi??n\r\nPCI-E x 7\r\nCompatibilidad m??xima\r\nLongitud de la tarjeta VGA : 421 mm (m??xima)\r\nLongitud de la tarjeta VGA : 305 mm (con radiador lateral)\r\nAltura del disipador de la CPU : 160 mm\r\nPuertos delanteros\r\n1 X USB 3.1 Gen 2 Type-C 2 x USB 3.0 Audio HD\r\nCompatibilidad con soluciones t??rmicas\r\n1 x Ventilador trasero de 120 mm / Radiador de 120 mm\r\n2 x Ventilador lateral de 120 mm / Radiador de 240 mm\r\n3 x Ventilador inferior de 120 mm / Radiador de 360 mm\r\nCompatibilidad con fuentes de alimentaci??n\r\nPSII : ATX12V - Longitudes de hasta 200 mm ', ''),
(46, 10, 'Phanteks Eclipse P400S TG blanco', 50000, 10, 'upload/phanteks-eclipse-p400-tg-blanco_1526362142.jpg', 8, 'Phanteks???????? budget-friendly Eclipse P400 now sports an all new tempered glass side panel. The new variant of the Eclipse Series still features the solid build quality, built-in RGB lighting controller, open interior design, compatibility with all-in-one liquid cooling. The Eclipse P400 tempered glass panel adds to its distinct beauty and brings an additional bit of flair and sophistication to your system build.', 'Dimension\r\n	\r\n210 mm x 465 mm x 470 mm (W x H x D)\r\n8.3 in x 18.3 in x 18.5 in\r\nForm Factor\r\n	\r\nMidtower\r\nMaterials\r\n	\r\nSteel chassis, steel exterior, ABS, glass\r\nMotherboard Support\r\n	\r\nATX, Micro ATX, Mini ITX,\r\nE-ATX *(up to 272mm wide, cannot use rubber grommets)\r\nFront I/O\r\n	\r\n2x USB 3.0, Mic, Headphone, Reset, LED control\r\nSide Window\r\n	\r\nYes ', ''),
(47, 10, 'In WIn 303 RGB Blanco', 55000, 10, 'upload/in-win-303c-rgb-negro_1526362205.jpg', 8, '\r\nEst????tica y dise????o exquisito\r\n\r\nIN WIN presenta el modelo 303, una caja para ordenador de elegante dise????o simplista , fabricada con acero y vidrio templado. El panel delantero, aunque guarda una l????nea sobria, se complementa a la perfecci????n con un LED brillante para lograr un resultado mucho m????s llamativo, pero en todo momento, busca el equilibrio con el que salvaguardar su l????nea elegante. Visualmente, el modelo 303 es sensacional: calidad y dise????o se fusionan con la finalidad de dar un nuevo valor al Hardware, como si se tratase de una obra de ingenier????a.\r\n\r\nLuminosidad radiante\r\n\r\nLa caja del PC siempre ser???? el coraz????n del centro de mando de nuestra estaci????n de batalla. El modelo 303 llama la atenci????n desde el momento en el que se enciende. El logotipo de IN WIN se resalta con la pantalla con retroiluminaci????n LED en  color azul y las letras en color negro. Estos bonitos LED tambi????n sirven para indicar cu????ndo est???? activo el PC.', 'Modelo 	303\r\nColor 	Black, White\r\nTipo de caja 	Media torre\r\nMaterial de la caja 	Vidrio templado y SECC\r\nCompatibilidad de la placa base 	12\" x 10.7\" ATX, Micro-ATX, Mini-ITX\r\nRanuras de expansi??n 	PCI-E x 7\r\nMaximum Compatibility 	\r\n\r\nCompatible con tarjetas gr??ficas de tecnolog??a avanzada -Longitud: 350 mm m??xima\r\nCompatible con disipador de CPU -Superficie de molde de CPU a la altura del panel lateral: 160 \r\nPuertos delanteros 	2 x USB 3.0\r\n2 x USB 2.0\r\nHD Audio\r\nBah??as de unidad internas 	2 x 3.5\"\r\n2 x 2.5\"\r\nPre-installed (hasta 3 bah??as)\r\nCompatibilidad con soluciones t??rmicas 	1 x Ventilador trasero de 120 mm  / Radiador trasero de 120 mm \r\n3 x Ventilador superior de 120 mm / Radiador trasero de 360 mm \r\nVentilador inferior de 120 mm ', ''),
(48, 2, 'Intel Core I7 8700k', 260000, 0, 'upload/8700k_1528091988.png', 8, 'AGOTADO!\r\nDesktop PC performance is redefined with up to six cores for more processing power. Intel Hyper-Threading Technology1 delivers up to 12-way multitasking support. Intel Optane memory delivers amazing system responsiveness1 and Intel Turbo Boost 2.0 technology gives you that extra burst of performance for fluid gaming and smooth 4K video creation and sharing. \r\n\r\n\r\nUnlocked & Overlocking\r\n\r\nFor the enthusiast, the unlocked 8th Gen Intel Core processors provide you the opportunity to tweak the platform performance to its fullest potential and enjoy great gaming and VR experiences. An impressive portfolio of standard and unlocked devices for a broad range of usages and performance levels provides you more control and more granularity for overclocking2 your platform.\r\n', '    Type CPU / Microprocessor\r\n    Market segment Desktop\r\n    Family Intel Core i7\r\n    Model number ? i7-8700K\r\n    Frequency ? 3700 MHz\r\n    Turbo frequency 4700 MHz (1 core)\r\n    4600 MHz (2 cores)\r\n    4400 MHz (3 or 4 cores)\r\n    4300 MHz (5 or 6 cores)\r\n    Low power frequency 800 MHz\r\n    Bus speed ? 8 GT/s DMI\r\n    Clock multiplier ? 37\r\n    Socket Socket 1151 / H4 / LGA1151\r\n    Size 1.48\" x 1.48\" / 3.75cm x 3.75cm', ''),
(49, 6, 'Asus Strix 1070 8gb', 275000, 2, 'upload/1070_1528093400.jpg', 8, 'AGOTADA!\r\n\r\nROG Strix GeForce???? GTX 1070 gaming graphics cards are packed with exclusive ASUS technologies, including DirectCU III Technology with Patented Wing-Blade Fans for 30% cooler and 3X quieter performance, and Industry-only Auto-Extreme Technology for premium quality and the best reliability. Aura RGB Lighting enables a gaming system personalization and VR-friendly HDMI ports let gamers easily enjoy immersive virtual reality experiences. ROG Strix GeForce???? GTX 1070 also has GPU Tweak II with XSplit Gamecaster that provides intuitive performance tweaking and instant gameplay streaming.\r\n\r\n', 'Graphics Engine\r\nNVIDIA GeForce GTX 1070\r\nBus Standard\r\nPCI Express 3.0\r\nOpenGL\r\nOpenGL??4.5\r\nVideo Memory\r\nGDDR5 8GB\r\nEngine Clock\r\nOC Mode - GPU Boost Clock : 1860 MHz , GPU Base Clock : 1657 MHz\r\nGaming Mode (Default) - GPU Boost Clock : 1835 MHz , GPU Base Clock : 1632 MHz\r\n*Retail goods are with default Gaming Mode, OC Mode can be adjusted with one click on GPU Tweak II\r\nCUDA Core\r\n1920\r\nMemory Clock\r\n8008 MHz\r\nMemory Interface\r\n256-bit\r\nResolution\r\nDigital Max Resolution:7680x4320\r\nInterface\r\nDVI Output : Yes x 1 (Native) (DVI-D)\r\nHDMI Output : Yes x 2 (Native) (HDMI 2.0)\r\nDisplay Port : Yes x 2 (Native) (Regular DP)\r\nHDCP Support : Yes\r\nPower Connectors\r\n1 x 8-pin\r\nAccessories\r\n2 x ROG Cable Ties\r\nSoftware\r\nASUS GPU Tweak II & Driver\r\nDimensions\r\n11.73 \" x 5.28 \" x 1.57 \" Inch\r\n29.8 x 13.4 x4 Centimeter', ''),
(50, 6, 'Sapphire Nitro Rx 580 8gb', 180000, 3, 'upload/RX 580_1528094194.jpg', 8, 'Te presentamos la tarjeta gr????fica Sapphire Nitro+ Radeon RX 580 8GB GDDR5. Construida sobre la arquitectura Polaris a prueba de futuro, la tarjeta gr????fica SAPPHIRE NITRO + Radeon ??????? RX 580 reproduce tus favoritos a 1080p y m????s all????, desde los ????ltimos juegos de eSports y MOBA hasta los t????tulos AAA m????s populares y de gran intensidad gr????fica. La evoluci????n del proceso FinFET 14 ha permitido a la nueva serie RX 500 alcanzar mayores relojes que las generaciones anteriores.', '    Overclock\r\n    Especificaciones de reloj: 1450/1411/2000 Mhz\r\n    2304 Steam Processors\r\n    Memoria: 8GB GDDR5\r\n    14nm FinFET\r\n    4?? Generaci??n Graphics Core Next\r\n    Interfaz: PCI Express 3.0\r\n    Memoria: 8GB GDDR5\r\n    Salidas: 1x DL-DVI-D/2x HDMI 2.0b/2x DisplayPort 1.4\r\n    Interfaz de memoria: 256 bit\r\n    Cooling solution: 2.2 slot active\r\n    OpenGL?? 4.5\r\n    OpenCL 2.0\r\n    DirectX?? 12\r\n    Vulkan??? 1.0\r\n    Shader Model 5.1\r\n    Interfaz de memoria:256bit\r\n    Cooling solution: 2.2 slot active\r\n    Enfriamiento Dual-X mejorado\r\n    Ventiladores de rodamientos de bolas dobles\r\n    Capacitores polim??ricos de larga duraci??n\r\n    ', ''),
(55, 6, 'Geforce Titan Z 12gb', 250000, 0, 'upload/titan Z_1528675311.jpg', 8, 'NO HAY EN STOCK!\r\n\r\nTe traemos la potente Geforce GTX TITAN Z 12 GB Nueva de paquete al precio m????s bajo del mercado + 1 a????o de garantia!!\r\n* Solo efectivo o dep????sito bancario por ser precio rebajado!!*\r\n* Gr????fica dise????ada para usar hasta 4 monitores hasta 4K!\r\n* Factura timbrada!*\r\n\r\nUn 100% de calificaciones positivas. Clientes 100% satisfactorios y contentos.\r\n\r\n* Costo del env????o dependiendo del lugar. Gratis alrededores de Curridabat. hasta 8km de la tienda\r\n\r\n* Todos nuestros productos cuentan con garantia por defectos de f????brica.\r\n\r\n* Somos tienda fisica. Se puede retirar el producto en Curridabat, San Jos????.\r\n\r\n* Horario:\r\nContacto:\r\nL-V 8:00am a 10:00pm y S-D 10am a 8:00pm\r\n\r\n* Despu????s de la compra les agradecemos que nos califiquen seg????n su opini????n! Es muy valioso su comentario para seguir mejorando!\r\n\r\nEs un gusto atenderlos...', 'CUDA Cores: 5760\r\n* Base Clock (MHz): 705\r\n* Boost Clock (MHz): 876\r\n* Texture Fill Rate (billion/sec): 338\r\n* Memory Speed 7.0 Gbps\r\n* Standard Memory Config: 12288 MB\r\n* Memory Interface GDDR5\r\n* Memory Interface Width: 768-bit (384-bit per GPU)\r\n* Memory Bandwidth (GB/sec0:) 672', ''),
(56, 14, 'NZXT Kraken X42', 66000, 2, 'upload/NZXT-Kraken-X42_1528676116.png', 8, 'The all-new Kraken Series features the most advanced controls ever to be included in an all-in-one liquid cooler. Through CAM????????s software interface, users can fine-tune settings to ensure an optimal performance, even in the most intense gaming sessions. Everything, including the pump, radiator, and the fans, have been redesigned to bring you the greatest experience in liquid cooling, all backed by an industry-leading 6-year warranty.  ', 'Dimensions	Radiator: 175 x 143 x 30mm\r\nPump: 80 x 80 x 52.9mm\r\nMaterial(s)	Aluminum, copper, plastic, ultra-low evaporation rubber, nylon sleeving\r\nWeight	890g\r\nCPU & Socket	Intel Socket 1151, 1150, 1155, 1156, 1366, 2011, 2011-3, 2066\r\nAMD Socket AM4, FM2+, FM2, FM1, AM3+, AM3, AM2+, AM2\r\nRAM Height Clearance	35mm\r\nControl Modes	Fan: Silent / Performance / Custom / Manual\r\nPump: Silent / Performance / Custom / Manual\r\nControl Method	Software with CAM\r\nLED Modes	Preset Modes: Fixed, Breathing, Fading, Marquee, Covering Marquee, Pulse, Spectrum Wave, Alternating, Tai Chi, Water Cooler, Loading\r\nReactive Modes: Smart and Audio\r\nPump Speed	1,600~2,800 +/- 300RPM\r\nFan Model	Aer P140\r\nNumber of Fans	1\r\nFan Speed	500~1,800 +/- 300RPM\r\nFan Noise Level	21-38dBA\r\nWarranty	6 years\r\nModel Number	RL-KRX42-01\r\nRL-KRX42-02 (Includes AM4 Bracket)\r\nUPC	815671012852\r\n815671013422 (Includes AM4 Bracket)\r\nEAN	5060301693184\r\n5060301693740 (Includes AM4 Bracket)', ''),
(57, 14, 'NZXT Kraken X62', 92000, 2, 'upload/large_c6637a7493d26889_1528676276.png', 8, 'The all-new Kraken Series features the most advanced controls ever to be included in an all-in-one liquid cooler. Through CAM????????s software interface, users can fine-tune settings to ensure an optimal performance, even in the most intense gaming sessions. Everything, including the pump, radiator, and the fans, have been redesigned to bring you the greatest experience in liquid cooling, all backed by an industry-leading 6-year warranty.  ', 'Dimensions	Radiator: 315 x 143 x 30mm\r\nPump: 80 x 80 x 52.9mm\r\nMaterial(s)	Aluminum, copper, plastic, ultra-low evaporation rubber, nylon sleeving\r\nWeight	1.29kg\r\nCPU & Socket	Intel Socket 1151, 1150, 1155, 1156, 1366, 2011, 2011-3, 2066\r\nAMD SocketTR4, AM4, FM2+, FM2, FM1, AM3+, AM3, AM2+, AM2\r\nRAM Height Clearance	35mm\r\nControl Modes	Fan: Silent / Performance / Custom / Manual\r\nPump: Silent / Performance / Custom / Manual\r\nControl Method	Software with CAM\r\nLED Modes	Preset Modes: Fixed, Breathing, Fading, Marquee, Covering Marquee, Pulse, Spectrum Wave, Alternating, Tai Chi, Water Cooler, Loading\r\nReactive Modes: Smart and Audio\r\nPump Speed	1,600~2,800 +/- 300RPM\r\nFan Model	Aer P140\r\nNumber of Fans	2\r\nFan Speed	500~1,800 +/- 300RPM\r\nFan Noise Level	21-38dBA\r\nWarranty	6 years\r\nModel Number	RL-KRX62-01\r\nRL-KRX62-02 (Includes AM4 Bracket)\r\nUPC	815671012876\r\n815671013446 (Includes AM4 Bracket)\r\nEAN	5060301693207\r\n5060301693764 (Includes AM4 Bracket) ', ''),
(58, 14, 'Corsair H100i Gtx', 62000, 3, 'upload/corsair-cooling-hydro-series-h100i-gtx-4_1528676428.jpg', 8, 'Sistema de refrigeraci????n l????quida para CPU de rendimiento extremo Hydro Series??????? H100i GTX\r\n\r\nEl sistema de refrigeraci????n l????quida para CPU Hydro Series??????? H100i GTX cuenta con un radiador de 240 mm y dos ventiladores SP120L PWM que disipan eficazmente el calor generado por CPUs muy sobreaceleradas.\r\n\r\nDos ventiladores SP120L PWM con supervisi????n y control a trav????s de Corsair Link para unas prestaciones extremas de la refrigeraci????n l????quida para CPU\r\n\r\nEl Hydro Series H100i GTX es un sistema de refrigeraci????n integral para CPU de rendimiento extremo adaptado a chasis con puntos de montaje para radiadores de 240 mm. El radiador de 240 mm y dos ventiladores SP120L PWM disipan eficazmente el calor generado por CPU muy sobreaceleradas. Incluye Corsair Link, para que se puedan supervisar las temperaturas, ajustar el rendimiento de refrigeraci????n y personalizar la iluminaci????n LED directamente desde el ordenador de sobremesa.', 'Cooling Warranty\r\nFive years\r\nCold Plate Material\r\nCopper\r\nRadiator Material\r\nAluminum\r\nPWM\r\nYES\r\nCORSAIR LINK compatibility\r\nYes\r\nRadiator Dimensions\r\n276mm x 125mm x 30mm\r\nFan Dimensions\r\n120mm x 25mm\r\nFan Speed\r\n2435 RPM\r\nNumber of Fans\r\n2\r\nCooling Socket support\r\nIntel 115x, Intel 2011/2066, AMD AM3/AM2\r\nLighting\r\nRGB\r\nRadiator Size\r\n240mm\r\nFan Model\r\nSP Series\r\nFan airflow\r\n70.69 CFM\r\nNoise level\r\n37.7 dBA\r\nFan static pressure\r\n4.65 mm-H2O\r\n', ''),
(59, 6, 'Zotac 1050ti Mini', 125000, 3, 'upload/gczt-088_gczt_088_1g_800x800_1529996144.jpg', 8, 'Todos merecen un excelente juego. Es por eso que creamos la r????pida y poderosa ZOTAC GeForce???? GTX 1050 Ti Mini. Ahora puede convertir su PC en una verdadera plataforma de juego, con NVIDIA Pascal ???????, la arquitectura de GPU m????s avanzada que se haya creado. Est???? cargado con las innovadoras tecnolog????as NVIDIA Game Ready que permiten a cada jugador experimentar los ????ltimos t????tulos en toda su gloria en forma s????per compacta.', '    GPU\r\n    GeForce?? GTX 1050 Ti\r\n    CUDA cores\r\n    768\r\n    Video Memory\r\n    4GB GDDR5\r\n    Memory Bus\r\n    128-bit\r\n    Engine Clock\r\n    Base: 1303 MHz\r\n    Boost:1417 MHz\r\n    Memory Clock\r\n    7 GHz\r\n    PCI Express\r\n    3.0\r\n    Display Outputs\r\n    DisplayPort 1.4\r\n    HDMI 2.0b\r\n    DL-DVI\r\n    HDCP Support\r\n    Yes\r\n    Multi Display Capability\r\n    Triple Display\r\n    Recommended Power Supply\r\n    300W\r\n    Power Consumption\r\n    75W\r\n    Power Input\r\n    N/A\r\n    DirectX\r\n    12 API feature level 12_1\r\n    OpenGL\r\n    4.5\r\n    Cooling\r\n    Single Fan\r\n    Slot Size\r\n    Dual Slot\r\n    SLI\r\n    No\r\n    Supported OS\r\n    Windows 10 / 8 / 7\r\n    Card Length\r\n    144.78mm x 111.15mm\r\n    Accessories\r\n    User Manual\r\n\r\n', ''),
(60, 6, 'Zotac 1050ti OC', 130000, 10, 'upload/gczt-087_gczt_087_1g_800x800_1529996425.jpg', 8, 'Todos merecen un excelente juego. Es por eso que creamos la r????pida y poderosa ZOTAC GeForce???? GTX 1050 Ti OC Edition. Ahora puede convertir su PC en una verdadera plataforma de juego, con NVIDIA Pascal ???????, la arquitectura de GPU m????s avanzada que se haya creado. Est???? cargado con las innovadoras tecnolog????as NVIDIA Game Ready que permiten a cada jugador experimentar los ????ltimos t????tulos en toda su gloria en forma s????per compacta.', '    GPU\r\n    GeForce?? GTX 1050 Ti\r\n    CUDA cores\r\n    768\r\n    Video Memory\r\n    4GB GDDR5\r\n    Memory Bus\r\n    128-bit\r\n    Engine Clock\r\n    Base: 1392 MHz\r\n    Boost:1506 MHz\r\n    Memory Clock\r\n    7 GHz\r\n    PCI Express\r\n    3.0\r\n    Display Outputs\r\n    DisplayPort 1.4\r\n    HDMI 2.0b\r\n    DL-DVI\r\n    HDCP Support\r\n    Yes\r\n    Multi Display Capability\r\n    Triple Display\r\n    Recommended Power Supply\r\n    300W\r\n    Power Consumption\r\n    75W\r\n    Power Input\r\n    N/A\r\n    DirectX\r\n    12 API feature level 12_1\r\n    OpenGL\r\n    4.5\r\n    Cooling\r\n    Dual Fan\r\n    Slot Size\r\n    Dual Slot\r\n    SLI\r\n    No\r\n    Supported OS\r\n    Windows 10 / 8 / 7\r\n    Card Length\r\n    174mm x 111.15mm\r\n    Accessories\r\n    User Manual\r\n\r\n', ''),
(61, 6, 'Gigabyte Windforce 1060 3gb', 155000, 0, 'upload/20160721193143_big_1529996596.png', 8, 'Reci????n llegada la Gigabyte GeForce GTX 1060 Windforce OC, tercera de la nueva familia de tarjetas gr????ficas Nvidia bajo la tecnolog????a Pascal, nos encontramos con una potente gr????fica que viene a competir directamente con su competencia m????s directa, las RX 480 de AMD.\r\n\r\nCon un gran elenco de novedosas tecnolog????as, la GTX 1060 se convierte en la puerta de entrada a la realidad virtual y a los gr????ficos en alta definici????n. Entre todas ellas destaca la tecnolog????a Pascal utilizada para fabricar la GPU bajo una nueva arquitectura m????s ????ptima en todos los aspectos y de la que hablaremos m????s abajo.\r\n\r\nLas GTX 1060 tambi????n disfrutan de la arquitectura Pascal\r\n\r\nEn las Gigabyte GTX 1060 encontramos la misma estructura en los silicio de estos modelos, hablamos de Pascal, lo ????ltimo en cuanto a computaci????n gr????fica que est???? arrojando resultados espectaculares.\r\n\r\nBajo el nombre Pascal se encuentra una nueva arquitectura, una forma en la que se construyen los procesadores gr????ficos de Nvidia, la evoluci????n de Maxwell. Este nuevo dise????o ha conseguido triplicar los resultados en realidad virtual. Ante este escenario podemos asegurar que la serie 10 de Nvidia es la reina absoluta de las tarjetas gr????ficas en estos momentos por potencia, rendimiento y eficiencia.\r\n\r\nFabricadas en 16 nan????metros con la tecnolog????a FinFET, las GPU de las Nvidia GTX 1060 han demostrado que pueden alcanzar velocidades mucho m????s altas sin repercutir en el consumo, reduci????ndolo incluso, llegando a integrar 17.000 millones de transistores, la unidades b????sicas de las que se compone un procesador', '\r\n    Graphics Processing\r\n    GeForce?? GTX 1060\r\n    Core Clock\r\n    Boost: 1797MHz/ Base: 1582MHz in OC Mode\r\n    Boost: 1771MHz/ Base: 1556MHz in Gaming Mode\r\n    CUDA?? Cores\r\n    1152\r\n    Process Technology\r\n    16 nm\r\n    Memory Clock\r\n    8008 MHz\r\n    Memory Size\r\n    3 GB\r\n    Memory Type\r\n    GDDR5\r\n    Memory Bus\r\n    192 bit\r\n    Card Bus\r\n    PCI-E 3.0 x 16\r\n    Output\r\n\r\n    Dual-link DVI-D *2\r\n\r\n    HDMI-2.0b*1 (Max Resolution: 4096x2160 @60 Hz)\r\n\r\n    Display Port-1.4 *1 (Max Resolution: 7680x4320 @60 Hz)\r\n    Digital max resolution\r\n    7680x4320\r\n    Multi-view\r\n    4\r\n    Card size\r\n    H=39 L=223 W=121 mm\r\n    PCB Form\r\n    ATX\r\n    DirectX\r\n    12\r\n    OpenGL\r\n    4.5\r\n    Recommended PSU\r\n    400W\r\n    Power Connectors\r\n    6 pin*1\r\n\r\n', ''),
(62, 6, 'Gigabyte G1 Rx 480', 150000, 0, 'upload/GV-RX480G1-8GD.jpg', 8, 'Te presentamos la Radeon RX480 de Gigabyte, una gr????fica con 8GB GDDR5 y VR Ready.', '\r\n    Graphics Processing\r\n    Radeon RX480\r\n    Core Clock\r\n    1290 MHz\r\n    Process Technology\r\n    14 nm\r\n    Memory Clock\r\n    8,000 MHz\r\n    Memory Size\r\n    8 GB\r\n    Memory Type\r\n    GDDR5\r\n    Memory Bus\r\n    256 bit\r\n    Card Bus\r\n    PCI-E 3.0 x 16\r\n    Output\r\n    Dual-link DVI-D *1\r\n    HDMI 2.0*1\r\n    Display Port *1.4*3\r\n    Digital max resolution\r\n    7680x4320\r\n    Multi-view\r\n    5\r\n    Card size\r\n    H=40 L=232 W=116 mm\r\n    PCB Form\r\n    ATX\r\n    DirectX\r\n    12\r\n    OpenGL\r\n    4.5\r\n    Recommended PSU\r\n    500W\r\n    Power Connectors\r\n    8 pin*1\r\n\r\n', ''),
(63, 1, 'Asus Strix Z270i', 110000, 0, 'upload/placa-asus-rog-strix-z270i-gaming-lga-1151_1529996971.jpg', 8, 'Intel Z370 mini-ITX gaming motherboard with Addressable AURA sync RGB LED lighting, 802.11ac Wi-Fi, DDR4 4333MHz support, dual M.2, SATA 6Gbps and a USB 3.1 Gen 2 front-panel connector', '    LGA1151 socket for 8th -gen Intel?? Core??? desktop processors.\r\n    Aura Sync RGB: Synchronize LED lighting with a vast portfolio of compatible PC gear, including addressable headers.\r\n    Onboard M.2 heatsink: Cools your M.2 drive, delivering consistent storage performance and enhanced reliability.\r\n    5-Way Optimization: Automated system-wide tuning, providing overclocking and cooling profiles that are tailor-made for your rig.\r\n    Gaming audio: SupremeFX S1220A teams with Sonic Studio III to create an aural landscape that draws you deeper into the action.\r\n    Gaming connectivity: Onboard dual M.2 slots for up to 32 Gbps of PCIe bandwidth and a USB 3.1 Gen 2 front panel connector.\r\n    Gaming networking: Intel Gigabit Ethernet, LANGuard, GameFirst and 2x2 802.11ac Wi-Fi with MU-MIMO support.\r\n    Gamer???s Guardian: ASUS SafeSlot and premium components for maximum endurance.\r\n', ''),
(64, 4, 'AOC G2460pqu', 150000, 10, 'upload/aoc-g2460pqu_1530758290.jpg', 8, 'Monitor de  24 pulgadas  (24 pulgadas  Full HD de 1920 x 1080 de resoluci????n)\r\n\r\n16: 9 de aspecto Relaci????n de apoyo  de 16,7 millones de colores\r\n\r\n144hz frecuencia de actualizaci????n\r\n\r\nBrillo: 350 cd / m2, contraste din????mico de 80.000.000: 1 racionalidad, respuesta de 1 ms tiempo-\r\n\r\nConectividad- VGA, DVI, HDMI, DisplayPort, USB (4)\r\n\r\nMontar en la pared, altavoces, ajuste de altura w / Pivote Retrato', 'Panel 	WLED Backlit - TFT Active Matrix LCD\r\nViewable Image Size / Aspect Ratio 	24??? / 16:9\r\nBrightness 	350 cd/m2\r\nContrast 	80,000,000:1\r\nResponse Time 	1ms (Gray to Gray)\r\nViewable Angle 	170 degrees horizontal, 160 degrees vertical\r\nMaximum Resolution 	1920 x 1080 @144Hz\r\nDisplay Colors 	16.7 Million\r\nConnectivity 	VGA, DIV-Dual Link, HDMI, DisplayPort, USB 2.0 x 4\r\nAudio In/Out 	audio out 2W x 2 ', ''),
(65, 4, 'Samsung LC27f390', 190000, 0, 'upload/Samsung-LC-27-F390-FHUXEN-Curved-Full-HD.jpg', 8, 'Disfruta de una experiencia totalmente inmersiva con el nuevo monitor curvo de Samsung. Su curvatura 1800R (radio de curvatura de 1800 mm) te ofrece un mayor campo de visi????n, mejorando la percepci????n de profundidad y haciendo que te sumerjas a????n m????s en tu contenido multimedia.\r\n\r\nConfort para tus ojos\r\n\r\nRecientes estudios han demostrado que las pantallas curvas proporcionan una sensaci????n de alivio en comparaci????n con las planas. La curvatura de la pantalla 1800R est???? basada en la del ojo humano y ayuda a que la vista pueda recorrer toda la pantalla sin necesidad de cambiar el enfoque. Adem????s, gracias al modo Eye Saver se minimiza la emisi????n de ondas de luz azul que fatigan tu retina, y con la tecnolog????a Flicker Free reducir????s el parpadeo de la pantalla para que tus ojos descansen.\r\n', '1920x1080 (Full HD)\r\nResoluci??n\r\n16:9\r\nRelaci??n de aspecto	\r\n1800R\r\nCurvatura de Pantalla	\r\n250cd/m2\r\nBrillo (Normal)	\r\n3,000:1(Typ)\r\nRelaci??n de contraste est??tico	\r\n4(GTG)\r\nTiempo de Respuesta	', ''),
(66, 4, 'AOC Agon Ag271qx', 270000, 10, 'upload/81aPq2ihg2L._SX425__1530758799.jpg', 8, 'Descubra un nuevo mundo de im????genes ultra fluidas y cristalinas con nuestro nuevo monitor para juegos QHD, AGON 27??????? destinado a jugadores exigentes y profesionales. Su resoluci????n nativa de 2560x1440 y otras caracter????sticas para juegos, como la tecnolog????a Adaptive-Sync Technology (compatible con FreeSync???????, a un rango de 30-144Hz) y un tiempo de respuesta de 1ms hacen de AGON AG271QX uno de los mejores monitores para juegos que se hayan creado. El AOC AGON AG271QX lleva el juego a un nivel nuevo con una pantalla de alta velocidad de 27 pulgadas. Los 144Hz y el tiempo de respuesta de 1ms suponen la diferencia a la hora de jugar a una resoluci????n de 2560x1440. Esta combinaci????n garantiza im????genes cristalinas y ultra suaves. Gracias a la tecnolog????a Adaptive-Sync Technology (compatible con FreeSync???????, a un rango de 30-144Hz), los d????as de los parpadeos y las im????genes partidas se han acabado. No hay donde esconderse, porque el Control de Sombras AOC Shadow Control lleva claridad a los rincones oscuros sin tener que ajustar el resto de la pantalla, y el modo de entrada con bajo Lag garantiza que las ????rdenes se ejecuten de manera instant????nea. Para ofrecer la experiencia de juego m????s c????moda, el AGON AG271QX viene con la tecnolog????a antiparpadeo AOC Flicker Free Technology y el modo AOC Low Blue Light para reducir el cansancio ocular y la fatiga. El libre ajuste de altura, inclinaci????n y giro son el toque final que hacen que ????ste sea el monitor para juego perfecto.', ' 27\" TN Panel, 2560x1440 Resolution, 144hz Response Time, 1ms\r\nBrightness- 350 cd/m2, Dynamic Contrast Ratio- 50,000,000:1,16:9 Aspect Ratio\r\nConnectivity-VGA,DVI,DP,HDMI-MHL, (2) USB3.0, (2) USB 2.0. Compatibile with Windows 10\r\nSpeakers, Audio line-in/out, , Dual Link/adaptive-sync-Free Sync Compatible\r\nHeight and Pivot Adjustable, Wall Mountable ', ''),
(67, 7, 'I3 8100+ GA H310M-ds2 + 8gb Ddr4', 182000, 10, 'upload/kit1_1530760008.png', 8, 'Core i3 8100\r\nGigabyte H310M-DS2\r\nTeamgroup ddr4 8gb 2400mhz', '', ''),
(68, 7, 'i5 8400+ GA h310M-ds2 + 8gb ddr4', 212000, 10, 'upload/kit2_1530760090.png', 8, 'Intel Core i5 8400\r\nGigabyte H310M-DS2\r\nTeamgroup ddr4 8gb 2400mhz', '', ''),
(69, 3, 'Ryzen 7 1800x', 170000, 0, 'upload/1_500_1530760511.jpg', 8, 'La cumbre de la potencia de procesamiento de escritorio Zen\r\nLa verdadera inteligencia artificial con un procesador de 8 n????cleos, 16 subprocesos y las m????s altas velocidades de reloj disponibles, todo en la nueva plataforma Socket AM4.\r\n\r\n\r\nArquitectura de n????cleo ???????Zen???????\r\n\r\nCreada con la tecnolog????a AMD SenseMI para brindar un procesador realmente inteligente.\r\n\r\n\r\nTecnolog????a AMD SenseMI\r\n\r\nCon la tecnolog????a AMD SenseMI, los procesadores Ryzen utilizan inteligencia artificial verdadera para acelerar el rendimiento.\r\n\r\n\r\nUtilidad AMD Ryzen Master\r\n\r\nLa utilidad de overclocking sencilla a la vez que potente para los procesadores AMD Ryzen', '# de n??cleos de CPU\r\n8\r\n# de hilos\r\n16\r\nReloj base\r\n3.6GHz\r\nReloj de aumento m??x.\r\n4GHz\r\nCach?? L1 total\r\n768KB\r\nCach?? L2 total\r\n4MB\r\nCach?? L3 total\r\n16MB\r\nDesbloqueados\r\nS??\r\nCMOS\r\n14nm\r\nPackage\r\nAM4\r\nVersi??n de PCI Express\r\nPCIe 3.0 x16\r\nSoluci??n t??rmica\r\nNot included\r\nTDP/TDP predeterminado\r\n95W\r\nTemp. m??x.\r\n95??C\r\n', ''),
(70, 6, 'Asus Strix 1060 6gb OC', 250000, 0, 'upload/asus-rog-strix-geforce-gtx-1060-oc-6gb-gddr5_1536559740.jpg', 8, '  -  1873 MHz de boost clock en modo OC para un rendimiento y experiencia de juego sobresalientes.\r\n  -  DirectCU III con Aspas Patentadas de Ventilador para rendimiento 30% m????s fr????o y 3X m????s silencioso.\r\n  -  ASUS FanConnect cuenta con cabezales de 4-pines controlado por el GPU conectados a los ventiladores de sistema para un ????ptimo rendimiento t????rmico.\r\n  -  Tecnolog????a Auto-Extreme ????nica en la Industria con Super Alloy Power II ofrece calidad premium y la mejor confiabilidad.\r\n  -  Iluminaci????n Aura RGB para expresar tu estilo de juego personalizado.\r\n  -  Puertos HDMI amigables con VR para una experiencia de realidad virtual inmersiva.\r\n  - GPU Tweak II con Xsplit Gamecaster provee mejoras de rendimiento intuitivo y te permite transmitir tus sesiones de juego al instante.\r\n  - NVIDIA ANSEL para una revolucionaria forma de captura pantalla en tus juegos.\r\n  - NVIDIA GameWorks??????? provee una experiencia cinem????tica interactiva, adem????s de una experiencia de juego fluida.\r\n', 'Motor Gr??fico\r\nNVIDIA GeForce GTX 1060\r\nCore Name\r\nGP106\r\nBus\r\nPCI Express 3.0\r\nOpenGL\r\nOpenGL??4.5\r\nMemoria de Video\r\nGDDR5 6GB\r\nFrecuencia del Reloj\r\nOC Mode - GPU Boost Clock : 1873 MHz , GPU Base Clock : 1645 MHz\r\nGaming Mode (Default) - GPU Boost Clock : 1847 MHz , GPU Base Clock : 1620 MHz\r\n*Retail goods are with default Gaming Mode, OC Mode can be adjusted with one click on GPU Tweak II\r\nN??cleo CUDA\r\n1280\r\nMemory Clock\r\n8208 MHz\r\nInterfaz de Memoria\r\n192-bit\r\nResoluci??n\r\nDigital Max Resolution:7680x4320\r\nInterfaz\r\nDVI Output : Yes x 1 (Native) (DVI-D)\r\nHDMI Output : Yes x 2 (Native) (HDMI 2.0b)\r\nDisplay Port : Yes x 2 (DisplayPort 1.4)\r\nHDCP Support : Yes (2.2)\r\nMaximum Display Support\r\n4\r\nSLI / Crossfire Support\r\nNo\r\nRecommended PSU\r\n500W\r\nPower Connectors\r\n1 x 8-pin\r\nAccesorios\r\n2 x ROG Cable Ties\r\n1 x CD\r\n1 x Quick Guide\r\nSoftware\r\nASUS GPU Tweak II & Driver\r\nDimensiones\r\n11.73 \" x 5.28 \" x 1.57 \" Inch\r\n29.8 x 13.4 x4 Centimeter', ''),
(71, 6, 'Asus Strix  1070TI 8gb Oc', 300000, 0, 'upload/915voJ1XLHL._SX425__1536560074.jpg', 8, 'Te presentamos la tarjeta gr????fica Asus ROG Strix Geforce GTX 1070 Ti Gaming Advance 8GB GDDR5.\r\n\r\n    - Advanced edition: 1759 MHz GPU boost clock in OC mode.\r\n    - 8GB GDDR5 Memory\r\n    - 0db Fan\r\n    - VR Ready', 'Motor Gr??fico NVIDIA GeForce GTX 1070 Ti\r\nBus PCI Express 3.0\r\nOpenGL OpenGL??4.5\r\nMemoria de Video GDDR5 8GB\r\nFrecuencia del Reloj\r\n\r\n    GPU boost Clock\r\n        OC mode: 1759 MHz\r\n        Gaming mode: 1683 MHz\r\n    GPU base Clock\r\n        OC mode: 1683 MHz\r\n        Gaming mode: 1607 MHz\r\n\r\nN??cleo CUDA 2432\r\nFrecuencia de la Memoria 8008 MHz\r\nInterfaz de Memoria 256 bits\r\nM??xima resoluci??n 7680 x 4320\r\nInterfaz\r\n\r\n    1x Native Dual-link DVI-D\r\n    2x Native HDMI 2.0\r\n    HDCP compliant S??\r\n    2x Native DisplayPort 1.4\r\n    Power Connectors 8 pin\r\n\r\nAccesorios\r\n\r\n    1 x ROG Velcro Hook & Loop\r\n    1 x CD\r\n    1 x Quick Guide\r\n\r\nSoftware ASUS GPU Tweak II & Driver\r\nDimensiones 29.8 x 13.4 x 5.25 cm.', 'No disponible '),
(73, 6, 'Zotac Geforce Gtx 1080 8gb', 345000, 0, 'upload/gtx-1080.png', 8, 'Performance\r\nThe GeForce???? GTX 10 Series comes with ultra-fast FinFET and high-bandwidth technologies, as well as support for DirectX 12 features to deliver the fastest, smoothest, most power-efficient gaming experiences. \r\n\r\nTHE LATEST GAMING TECHNOLOGIES\r\nGeForce???? GTX 10 Series is built to meet the demands of next-generation displays, including VR, ultra-high-resolution, and multiple monitors. It features NVIDIA GameWorks??????? technologies for extremely smooth gameplay and cinematic experiences, plus revolutionary new 360-degree image capture????????even in VR. \r\n\r\n', '\r\n    GPU\r\n    GeForce?? GTX 1080\r\n    CUDA cores\r\n    2560\r\n    Video Memory\r\n    8GB GDDR5X\r\n    Memory Bus\r\n    256-bit\r\n    Engine Clock\r\n    Base: 1683 MHz\r\n    Boost:1822 MHz\r\n    Memory Clock\r\n    10 GHz\r\n    PCI Express\r\n    3.0\r\n    Display Outputs\r\n    3 x DisplayPort 1.4\r\n    HDMI 2.0b\r\n    DL-DVI\r\n    HDCP Support\r\n    Yes\r\n    Multi Display Capability\r\n    Quad Display\r\n    Recommended Power Supply\r\n    500W\r\n    Power Consumption\r\n    230W\r\n    Power Input\r\n    Dual 8-pin\r\n    DirectX\r\n    12 API feature level 12_1\r\n    OpenGL\r\n    4.5\r\n    Cooling\r\n    Dual Fan IceStorm\r\n    Slot Size\r\n    Dual Slot\r\n    SLI\r\n    Yes, SLI HB Bridge Supported\r\n    Supported OS\r\n    Windows 10 / 8 / 7\r\n    Card Length\r\n    300mm x 148mm\r\n    Accessories\r\n    2 x Dual 6-pin to 8-pin PCIe adapter\r\n    Driver Disk\r\n    User Manual\r\n\r\n', ''),
(74, 6, 'Asus Strix 1080ti', 465000, 0, 'upload/81a2aBCgDML._SX425__1536809068.jpg', 8, 'Las tarjetas gr????ficas ROG Strix GeForce???? GTX 1080 Ti est????n equipadas con tecnolog????as ASUS exclusivas, incluida la nueva tecnolog????a MaxContact, que es 2 veces m????s contacto con la GPU para una transferencia t????rmica mejorada y ventiladores patentados Wing-Blade IP5X para un flujo de aire m????ximo y un ventilador m????s largo esperanza de vida. Si bien ASUS FanConnect II cuenta con cabezales de 4 pines, controlados por h????bridos conectados a ventiladores del sistema para una refrigeraci????n ????ptima del sistema. La sincronizaci????n ASUS Aura Sync RGB LED permite una personalizaci????n del sistema de juegos y los puertos HDMI compatibles con VR permiten a los jugadores disfrutar f????cilmente de las experiencias de inmersi????n en la realidad virtual.ROG Strix GeForce ???? GTX 1080 Ti tambi????n tiene GPU Tweak II con XSplit Gamecaster que proporciona ajuste de rendimiento intuitivo y streaming de juego instant????neo.', 'Procesador\r\n\r\n    Familia de procesadores de gr??ficos: NVIDIA\r\n\r\n    Procesador gr??fico: GeForce GTX 1080 TI\r\n\r\n    M??xima resoluci??n: 7680 x 4320 Pixeles\r\n\r\n    CUDA: Si\r\n\r\n    Frecuencia del procesador: 1594 MHz\r\n\r\n    Soporte para proceso paralelo: 4-Way SLI\r\n\r\n    FireStream: No\r\n\r\n    Aumento de la velocidad de reloj del procesador: 1708 MHz\r\n\r\n    N??cleos CUDA: 3584\r\n\r\nMemoria: \r\n    Gr??ficos discretos memoria del adaptador: 11 GB\r\n\r\n    Tipo de memoria de adaptador gr??fico: GDDR5X\r\n\r\n    Ancho de datos: 352 bit\r\n\r\n    Velocidad de memoria del reloj: 11010 MHz\r\n\r\nPuertos e Interfaces:\r\n\r\n    Tipo de interfaz: PCI Express 3.0\r\n\r\n    N??mero de puertos HDMI: 2\r\n\r\n    Cantidad de puertos DVI-D: 1\r\n\r\n    Cantidad de DisplayPorts: 2\r\n\r\n    Versi??n HDMI: 2.0', ''),
(75, 3, 'Ryzen 7 2700', 218000, 5, 'upload/ryzen7_1536809471.jpg', 8, 'Tecnolog????a AMD StoreMI\r\n\r\nSoftware que combina la velocidad de SSD con la capacidad de disco duro en una sola unidad r????pida y f????cil de administrar, gratuita con la placa madre AMD Serie 400.\r\n\r\n\r\nTecnolog????a AMD SenseMI\r\n\r\nCon la tecnolog????a AMD SenseMI, los procesadores Ryzen??????? utilizan inteligencia artificial verdadera para acelerar el rendimiento.\r\n\r\n\r\nUtilidad AMD Ryzen??????? Master\r\n\r\nLa utilidad de overclocking sencilla a la vez que potente para los procesadores AMD Ryzen\r\n', '# de n??cleos de CPU\r\n8\r\n# de hilos\r\n16\r\nReloj base\r\n3.2GHz\r\nReloj de aumento m??x.\r\n4.1GHz\r\nCach?? L1 total\r\n768KB\r\nCach?? L2 total\r\n4MB\r\nCach?? L3 total\r\n16MB\r\nDesbloqueados\r\nS??\r\nCMOS\r\n12nm FinFET\r\nPackage\r\nAM4\r\nVersi??n de PCI Express\r\nPCIe 3.0 x16\r\nSoluci??n t??rmica\r\nWraith Spire with RGB LED\r\nTDP/TDP predeterminado\r\n65W\r\nTemp. m??x.\r\n95??C\r\n', ''),
(76, 2, 'Intel Core I7 8700', 230000, 2, 'upload/i7-8700.png', 8, 'Te presentamos el Intel Core i7-8700, un procesador de 8???? Generaci????n, con socket Intel 1151.', '    Type CPU / Microprocessor\r\n    Market segment Desktop\r\n    Family Intel Core i7\r\n    Model number ? i7-8700\r\n    Frequency ? 3200 MHz\r\n    Turbo frequency 4600 MHz (1 core)\r\n    4500 MHz (2 cores)\r\n    4300 MHz (3 or more cores)\r\n    Low power frequency 800 MHz\r\n    Bus speed ? 8 GT/s DMI\r\n    Clock multiplier ? 32\r\n    Socket Socket 1151 / H4 / LGA1151\r\n    Size 1.48\" x 1.48\" / 3.75cm x 3.75cm', ''),
(77, 6, 'Zotac Geforce Gtx 1070 Amp Extreme', 275000, 0, 'upload/gczt-080_gczt_080_1g_800x800_1536809918.jpg', 8, 'Raise the playing field with the most advanced gaming graphics card ever created. Amped with the ZOTAC technologies, discover performance, power efficiency, and gaming experiences from the new NVIDIA Pascal??????? architecture. This is the game changer.', '\r\n    GPU\r\n    GeForce?? GTX 1070\r\n    CUDA cores\r\n    1920\r\n    Video Memory\r\n    8GB GDDR5\r\n    Memory Bus\r\n    256-bit\r\n    Engine Clock\r\n    Base: 1632 MHz\r\n    Boost:1835 MHz\r\n    Memory Clock\r\n    8208 MHz\r\n    PCI Express\r\n    3.0\r\n    Display Outputs\r\n    3 x DisplayPort 1.4\r\n    HDMI 2.0b\r\n    DL-DVI\r\n    HDCP Support\r\n    Yes\r\n    Multi Display Capability\r\n    Quad Display\r\n    Recommended Power Supply\r\n    500W\r\n    Power Consumption\r\n    250W\r\n    Power Input\r\n    Dual 8-pin\r\n    DirectX\r\n    12 API feature level 12_1\r\n    OpenGL\r\n    4.5\r\n    Cooling\r\n    Triple Fan IceStorm\r\n    Slot Size\r\n    2.5 slots\r\n    SLI\r\n    Yes, SLI HB Bridge Supported\r\n    Supported OS\r\n    Windows 10 / 8 / 7\r\n    Card Length\r\n    325mm x 148mm\r\n    Accessories\r\n    2 x Dual 6-pin to 8-pin PCIe adapter\r\n    Driver Disk\r\n    User Manual\r\n\r\n', ''),
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
(162, 1, 'Gigabyte Aorus X470 Gaming 5 Wifi ', 132000, 10, 'upload/gigabyte-aorus-x470-gaming-5-wifi.jpg', 10, 'No disponible', 'No disponible', 'No disponible'),
(163, 12, 'Lenovo Ideapad 330- I3 8130U', 260000, 10, 'upload/lenovo-ideapad-330.jpeg', 8, 'No disponible', 'No disponible', 'No disponible'),
(164, 12, 'Lenovo ideapad N4200', 198000, 10, 'upload/320c5-4.jpg', 10, '15.6\" 1 tb 4gb Black win 10 Eng 1366 x 768 resoluci??n', 'No disponible', 'No disponible'),
(165, 12, 'Dell Inspiron l3573', 200000, 10, 'upload/w13267_454aa.jpg', 10, '15.6\" N5000 500gb Win10 Eng Black', 'No disponible', 'No disponible');
INSERT INTO `product` (`productid`, `categoryid`, `product_name`, `product_price`, `product_qty`, `photo`, `supplierid`, `description`, `tech`, `video`) VALUES
(166, 12, 'Dell Inspiron 5570', 454500, 10, 'upload/w13267_454aa.jpg', 10, '15.6\" 8gb 1tb Win10 Silver Spa Res: 1920*1080', 'No disponible', 'No disponible'),
(167, 12, 'Dell Inspiron 3467', 389000, 10, 'upload/w13267_454aa.jpg', 10, '14\" i5 7200U 8gb 1Tb Win10 Spa 1366 x 768 resoluci??n', 'No disponible', 'No disponible'),
(168, 12, 'Asus Vivobook X541NA', 178000, 10, 'upload/Notebook_Asus_VivoBook_X541NA-PD1003Y_N4200_1.1GHZ_500GB_4GB_tab_1.png', 10, '15.6\" 500gb 4gb ddr3 Intel Celeron 3350 1366 x 768 resoluci??n', 'No disponible', 'No disponible'),
(169, 12, 'Asus Vivobook X510', 370000, 10, 'upload/P_setting_fff_1_90_end_600.png.jpg', 10, 'Pantalla: 15.6\"\r\nAlmacenamiento: 1tb 8gb \r\nProcesador: i5-8250U \r\nResoluci????n: 1366 x 768 ', 'No disponible', 'No disponible'),
(170, 12, 'Asus Vivobook x540', 266000, 10, 'upload/618p0f96ndL._SX425_.jpg', 10, '15.6\" 1tb 4gb i3-8130U 1366 x 768 resoluci??n', 'No disponible', 'No disponible'),
(171, 12, 'Asus Vivobook K510UF', 570000, 10, 'upload/161744_large.jpg', 10, '15.6\" 1tb 12gb i7-8550U 1920*1080 res Nvida GeforceMx130 2gb', 'No disponible', 'No disponible'),
(172, 6, 'Zotac Geforce Gtx 1070ti 8gb amp extreme', 320000, 10, 'upload/gczt-110_gczt_110_01_800x800_1542858388.jpg', 8, 'The most advanced gaming GPU ever created. Powered by NVIDIA Pascal??????? architecture, the ZOTAC GeForce GTX 1070 Ti Series is the world????????s most advanced gaming GPU ever created. It strives for the excellence in power, speed, cooling, noise, gaming, and si', '    GPU\n    GeForce???? GTX 1070 Ti\n    CUDA cores\n    2432\n    Video Memory\n    8GB GDDR5\n    Memory Bus\n    256-bit\n    Engine Clock\n    Base: 1607 MHz\n    Boost: 1683 MHz\n    Memory Clock\n    8 GHz\n    PCI Express\n    3.0\n    Display Outputs\n    3 x Disp', 'No disponible en este momento'),
(173, 6, 'GEFORCE GTX 1080 TI DUKE 11GB OC', 490000, 10, 'upload/3_1542859192.jpg', 8, ' Core/Memory\n\n    Boost Clock / Base Clock / Memory Frequency\n    1645 MHz / 1531 MHz / 11016 MHz \n    11GB GDDR5X\n\nTriple Force Architecture\n\n    TRI-FROZR Thermal Design: Triple PWM fans with Independent Control System on Advanced Thermal Design.\n    TO', 'Model Name: GeForce???? GTX 1080 Ti DUKE 11G OC \n\nGraphics Processing Unit: NVIDIA???? GeForce???? GTX 1080 Ti \n\nInterface: PCI Express x16 3.0 \n\nCore Name: GP102-350 \n\nCores: 3584 Units\n\nCore Clocks:  1645 MHz / 1531 MHz \n\nMemory Speed: 11016 MHz \n\nMemory Size', 'No disponible'),
(174, 6, ' MSI GTX Armor 1080ti 11gb', 478000, 10, 'upload/3_1542917958.jpg', 8, ' Chipset: NVIDIA GeForce GTX 1080 Ti\nCore Clocks: 1645 MHz/1531 MHz\nVideo Memory: 11GB GDDR5X. Built with Hi-c CAP, Solid CAP, and New SFC components\nMemory Interface: 352-bit;Cores: 3584 Units\nMax. Resolution: Support 4x Display Monitors\nForm Factor: Plu', 'Memory Speed 	1531 MHz\nGraphics Coprocessor 	geforce gtx\nChipset Brand 	GTX 1080 TI\nGraphics Card Ram Size 	11 GB \n\nBrand Name 	MSI\nItem model number 	GTX 1080 TI ARMOR 11G OC\nItem Weight 	3 pounds\nProduct Dimensions 	10.6 x 5.6 x 1.6 inches\nItem Dimensio', 'No disponible'),
(175, 6, 'MSI GeForce GTX 1070 8gb gaming x', 295000, 10, 'upload/msi-gtx-1070-gaming-x-8gb-gddr5-4.jpg', 10, 'No disponible', 'No disponible', 'No disponible'),
(176, 6, 'gigabyte nvidia GeForce GTX windforce 1070 8 gb', 283000, 10, 'upload/gigabyte-geforce-gtx-1070-windforce-oc-8gb-gddr5-1.jpg', 10, 'No disponible', 'No disponible', 'No disponible'),
(177, 6, 'EVGA GeForce GTX FTW 1070 8gb:', 265000, 10, 'upload/08G-P4-6276-KR_LG_1.png', 10, 'No disponible', 'No disponible', 'No disponible'),
(178, 6, ' MSI Radeon Rx 580 8gb gaming x', 205000, 10, 'upload/msi-rx-580-gaming-x-8g-product-pictures-3d4.jpg', 10, 'No disponible', 'No disponible', 'No disponible'),
(179, 6, 'EVGA SSC 1050 2gb', 95000, 10, 'upload/02G-P4-6154-KR_LG_1.png', 10, 'No disponible', 'No disponible', 'No disponible'),
(180, 6, 'Zotac Geforce Gtx 1050ti \"low profile\"', 126000, 10, 'upload/20170104150223_big.png', 10, 'No disponible', 'No disponible', 'No disponible'),
(181, 6, 'MSI Nvidia Geforce GTX 1070 8gb gaming X', 295000, 10, 'upload/msi-gtx-1070-gaming-x-8gb-gddr5-5.jpg', 10, 'No disponible', 'No disponible', 'No disponible'),
(182, 13, 'HD EXTERNO 1TB 2.5 USB 3.0 SEAGATE STEA1000400', 32100, 10, 'upload/disco-duro-1tb-externo-seagate-expansion-portable-usb-30-pnstea1000400.jpg', 10, 'No disponible', 'No disponible', 'No disponible'),
(183, 13, 'HD EXTERNO 1TB 2.5 TOSHIBA CANVIO HDTB410XK3AA', 32500, 10, 'upload/disco-duro-1tb-externo-toshiba-canvio-basics-25-usb-30-pn-hdtb410xk3aa.jpg', 10, 'No disponible', 'No disponible', 'No disponible'),
(184, 13, 'HD EXTERNO 2TB 2.5 TOSHIBA CANVIO HDTB420XK3AA', 45400, 10, 'upload/Disco-duro-externo-Toshiba-Canvio-Basic-2TB.jpg', 10, 'No disponible', 'No disponible', 'No disponible'),
(185, 13, 'HD EXTERNO 2TB 3.0 SEAGATE ULTRA SLIM STEH2000100', 43100, 10, 'upload/81R8OM9pGLL._SX425_.jpg', 10, 'No disponible', 'No disponible', 'No disponible'),
(186, 13, 'HD EXTERNO 4TB 2.5 SEAGATE STDR4000100', 65400, 10, 'upload/41uxMYuIv3L._SX425_.jpg', 10, 'No disponible', 'No disponible', 'No disponible'),
(187, 4, 'MONITOR AOC E2070SWN ', 47500, 10, 'upload/MO07991.jpg', 10, 'No disponible', 'No disponible', 'No disponible'),
(188, 4, 'MONITOR AOC 22\" LED E2270SWN   ', 56500, 10, 'upload/monitor-aoc-led-D_NQ_NP_623847-MLU27391022500_052018-O.jpg', 10, 'No disponible', 'No disponible', 'No disponible'),
(189, 4, 'MONITOR AOC 21.5\" 22V2H ', 88200, 10, 'upload/81nHD-cECTL._SX425_.jpg', 10, 'No disponible', 'No disponible', 'No disponible'),
(190, 4, 'MONITOR SAMSUNG 24\" CURVED 1920/1080 VGA HDMI LC24F390FHLXZP', 120000, 10, 'upload/C24F390FHL-FRONT.jpg', 10, 'No disponible', 'No disponible', 'No disponible'),
(191, 5, ' G.Skill Triden Z RGB 8GB 3000mhz', 53000, 8, 'upload/1140625_1543979957.jpg', 8, 'Latencia: 16-18-18-38\r\nFrecuencia: 3000mhz', '', ''),
(193, 5, 'G.Skill Trident Z RGB 8GB 3200 mhz', 55000, 8, 'upload/1140625_1543980132.jpg', 8, 'Frecuencia: 3200mhz\r\nLatencia 16-18-18-38', '', ''),
(194, 5, 'G.Skill Trident Z RGB 16GB', 115000, 8, 'upload/1140625_1543980217.jpg', 8, 'Frecuencia: 3200mhz\r\nLatencia:16-18-18-38', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `salesid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `sales_total` double NOT NULL,
  `sales_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sales`
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
-- Table structure for table `sales_detail`
--

CREATE TABLE `sales_detail` (
  `sales_detailid` int(11) NOT NULL,
  `salesid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `sales_qty` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sales_detail`
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
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `userid` int(11) NOT NULL,
  `company_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `company_address` varchar(150) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `contact` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`userid`, `company_name`, `company_address`, `contact`) VALUES
(8, 'PCINNOVATIONS', 'Curridabat', '83012524');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `access` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `access`) VALUES
(1, 'admin', '1c7d589c83b20711ae4f4bd23f78c407', 1),
(2, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 2),
(8, 'Sebas', '81dc9bdb52d04dc20036dbd8313ed055', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`idphoto`),
  ADD UNIQUE KEY `photo` (`photo`,`idphoto`,`productid`),
  ADD UNIQUE KEY `photo_2` (`photo`),
  ADD KEY `productid` (`productid`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventoryid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`salesid`);

--
-- Indexes for table `sales_detail`
--
ALTER TABLE `sales_detail`
  ADD PRIMARY KEY (`sales_detailid`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `idphoto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1572;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

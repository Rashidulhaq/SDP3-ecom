-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 04, 2022 at 07:03 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mm_ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '8f2c1b7fe03e3c722074cab7bfcc0b2b', '2017-01-24 16:21:18', '02-12-2022 10:00:05 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'Men', 'Men Accessories', '2022-12-02 16:26:00', ''),
(2, 'Women', 'Women Accessories', '2022-12-02 16:37:14', ''),
(3, 'Books', 'Books', '2017-01-24 19:17:37', '30-01-2017 12:22:24 AM'),
(4, 'Electronics', 'Electronic Products', '2017-01-24 19:19:32', ''),
(5, 'Showpiece', 'Gift', '2017-01-24 19:19:54', '03-12-2022 01:57:52 PM'),
(6, 'Kids', 'kids', '2017-02-20 19:18:52', ''),
(7, 'Flowers', 'Flowers', '2022-12-03 08:39:25', NULL),
(8, 'Cake', 'Cake', '2022-12-03 08:34:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '3', 1, '2017-03-07 19:32:57', 'COD', NULL),
(3, 1, '4', 1, '2017-03-10 19:43:04', 'Debit / Credit card', 'Delivered'),
(4, 1, '17', 1, '2017-03-08 16:14:17', 'COD', 'in Process'),
(5, 1, '3', 1, '2017-03-08 19:21:38', 'COD', NULL),
(6, 1, '4', 1, '2017-03-08 19:21:38', 'COD', NULL),
(7, 5, '1', 1, '2022-12-02 14:39:20', 'Debit / Credit card', 'Delivered'),
(8, 1, '2', 1, '2022-12-02 19:20:55', 'COD', NULL),
(9, 7, '1', 1, '2022-12-03 06:11:58', 'COD', 'Delivered'),
(11, 1, '50', 1, '2022-12-03 06:29:10', 'COD', NULL),
(12, 1, '31', 1, '2022-12-03 06:33:14', 'COD', NULL),
(13, 5, '39', 1, '2022-12-03 06:36:42', 'Internet Banking', 'Delivered'),
(14, 5, '38', 1, '2022-12-03 08:04:16', 'COD', 'in Process'),
(15, 5, '37', 1, '2022-12-03 12:27:33', 'COD', 'Delivered'),
(16, 5, '59', 1, '2022-12-04 05:18:09', 'COD', 'in Process');

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-10 19:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-10 19:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-10 19:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-10 19:50:36'),
(5, 7, 'Delivered', '24h', '2022-12-02 14:40:02'),
(6, 9, 'Delivered', '44', '2022-12-03 06:15:55'),
(7, 13, 'in Process', 'processing', '2022-12-03 06:38:11'),
(8, 13, 'Delivered', 'delivered', '2022-12-03 06:40:25'),
(9, 14, 'in Process', 'processing', '2022-12-03 08:05:16'),
(10, 15, 'in Process', 'Processing', '2022-12-03 12:28:52'),
(11, 15, 'Delivered', 'Delivared', '2022-12-03 12:30:58'),
(12, 16, 'in Process', 'processing', '2022-12-04 05:19:33');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 20:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:59:19'),
(5, 35, 5, 5, 5, 'rashed', 'shirt', '5*', '2022-12-03 06:17:39');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(4, 4, 4, 'Lenovo K6 Power (Silver, 32 GB) ', 'Lenovo', 9999, 0, '<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5 inch Full HD Display<br></li><li>13MP Primary Camera | 8MP Front<br></li><li>4000 mAh Li-Polymer Battery<br></li><li>Qualcomm Snapdragon 430 Processor<br></li></ul>', 'lenovo-k6-power-k33a42-1.jpeg', 'lenovo-k6-power-k33a42-2.jpeg', 'lenovo-k6-power-k33a42-3.jpeg', 45, 'In Stock', '2017-02-04 04:04:43', ''),
(5, 4, 4, 'Lenovo Vibe K5 Note (Gold, 32 GB)  ', 'Lenovo', 11999, 0, '<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5.5 inch Full HD Display<br></li><li>13MP Primary Camera | 8MP Front<br></li><li>3500 mAh Li-Ion Polymer Battery<br></li><li>Helio P10 64-bit Processor<br></li></ul>', 'lenovo-k5-note-pa330010in-1.jpeg', 'lenovo-k5-note-pa330116in-2.jpeg', 'lenovo-k5-note-pa330116in-3.jpeg', 0, 'In Stock', '2017-02-04 04:06:17', ''),
(6, 4, 4, 'Micromax Canvas Mega 4G', 'Micromax', 6999, 0, '<ul><li>3 GB RAM | 16 GB ROM |<br></li><li>5.5 inch HD Display<br></li><li>13MP Primary Camera | 5MP Front<br></li><li>2500 mAh Battery<br></li><li>MT6735 Processor<br></li></ul>', 'micromax-canvas-mega-4g-1.jpeg', 'micromax-canvas-mega-4g-2.jpeg', 'micromax-canvas-mega-4g-3.jpeg', 35, 'In Stock', '2017-02-04 04:08:07', ''),
(7, 4, 4, 'SAMSUNG Galaxy On5', 'SAMSUNG', 7490, 0, '<ul><li>1.5 GB RAM | 8 GB ROM | Expandable Upto 128 GB<br></li><li>5 inch HD Display<br></li><li>8MP Primary Camera | 5MP Front<br></li><li>2600 mAh Li-Ion Battery<br></li><li>Exynos 3475 Processor<br></li></ul>', 'samsung-galaxy-on7-sm-1.jpeg', 'samsung-galaxy-on5-sm-2.jpeg', 'samsung-galaxy-on5-sm-3.jpeg', 20, 'In Stock', '2017-02-04 04:10:17', ''),
(8, 4, 4, 'OPPO A57', 'OPPO', 14990, 0, '<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 256 GB<br></li><li>5.2 inch HD Display<br></li><li>13MP Primary Camera | 16MP Front<br></li><li>2900 mAh Battery<br></li><li>Qualcomm MSM8940 64-bit Processor<br></li></ul>', 'oppo-a57-na-original-1.jpeg', 'oppo-a57-na-original-2.jpeg', 'oppo-a57-na-original-3.jpeg', 0, 'In Stock', '2017-02-04 04:11:54', ''),
(9, 4, 5, 'Headphone', 'uisi', 350, 600, 'Headphone', 'download.jpeg', 'download.jpeg', 'download.jpeg', 20, 'In Stock', '2017-02-04 04:17:03', ''),
(11, 4, 6, 'Acer ES 15 Pentium Quad Core', 'Acer', 19990, 0, '<ul><li>Intel Pentium Quad Core Processor ( )<br></li><li>4 GB DDR3 RAM<br></li><li>Linux/Ubuntu Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display<br></li></ul>', 'acer-aspire-notebook-original-1.jpeg', 'acer-aspire-notebook-original-2.jpeg', 'acer-aspire-notebook-original-3.jpeg', 0, 'In Stock', '2017-02-04 04:26:17', ''),
(13, 4, 6, 'HP Core i5 5th Gen', 'HP', 41990, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">HP Core i5 5th Gen - (4 GB/1 TB HDD/Windows 10 Home/2 GB Graphics) N8M28PA 15-ac123tx Notebook</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(15.6 inch, Turbo SIlver, 2.19 kg)</span><br><div><ul><li>Intel Core i5 Processor ( 5th Gen )<br></li><li>4 GB DDR3 RAM<br></li><li>64 bit Windows 10 Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display<br></li></ul></div>', 'hp-notebook-original-1.jpeg', 'hp-notebook-original-2.jpeg', 'hp-notebook-original-3.jpeg', 0, 'In Stock', '2017-02-04 04:30:24', ''),
(14, 4, 6, 'Lenovo Ideapad 110 APU Quad Core A6 6th Gen', 'Lenovo', 22990, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">Lenovo Ideapad 110 APU Quad Core A6 6th Gen - (4 GB/500 GB HDD/Windows 10 Home) 80TJ00D2IH IP110 15ACL Notebook</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(15.6 inch, Black, 2.2 kg)</span><br><div><ul><li>AMD APU Quad Core A6 Processor ( 6th Gen )<br></li><li>4 GB DDR3 RAM<br></li><li>64 bit Windows 10 Operating System<br></li><li>500 GB HDD<br></li><li>15.6 inch Display<br></li></ul></div>', 'lenovo-ideapad-notebook-original-1.jpeg', 'lenovo-ideapad-notebook-original-2.jpeg', 'lenovo-ideapad-notebook-3.jpeg', 0, 'In Stock', '2017-02-04 04:32:15', ''),
(15, 3, 8, 'The Wimpy Kid Do -It- Yourself Book', 'ABC', 205, 250, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">The Wimpy Kid Do -It- Yourself Book</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(English, Paperback, Jeff Kinney)</span><br><div><ul><li>Language: English<br></li><li>Binding: Paperback<br></li><li>Publisher: Penguin Books Ltd<br></li><li>ISBN: 9780141339665, 0141339667<br></li><li>Edition: 1<br></li></ul></div>', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 50, 'In Stock', '2017-02-04 04:35:13', ''),
(16, 3, 8, 'Thea Stilton and the Tropical Treasure ', 'XYZ', 240, 0, '<ul><li>Language: English<br></li><li>Binding: Paperback<br></li><li>Publisher: Scholastic<br></li><li>ISBN: 9789351032083, 9351032086<br></li><li>Edition: 2015<br></li><li>Pages: 176<br></li></ul>', '22-thea-stilton-and-the-tropical-treasure-original-1.jpeg', '22-thea-stilton-and-the-tropical-treasure-original-1.jpeg', '22-thea-stilton-and-the-tropical-treasure-original-1.jpeg', 30, 'In Stock', '2017-02-04 04:36:23', ''),
(31, 1, 27, 'T-shirts', 'no', 400, 500, 't shirt', '106.jpg', '', '', 50, 'In Stock', '2022-12-02 20:27:39', NULL),
(35, 1, 27, 'Blue T-Shirt', 'no', 200, 350, 'Blue T-shirt', '107.jpg', '107.jpg', '107.jpg', 50, 'In Stock', '2022-12-02 21:13:52', NULL),
(36, 1, 13, 'Shirt', 'casual Shirt', 450, 500, 'casual shirt', 'OIP.jpeg', '', '', 40, 'In Stock', '2022-12-02 21:21:19', NULL),
(37, 1, 13, 'shirt', 'none', 350, 400, 'shirt', 'download.jpeg', '', '', 50, 'In Stock', '2022-12-02 21:23:33', NULL),
(38, 1, 14, 'White Formal', 'none', 500, 600, 'formal dress', 'OIP.jpeg', '', '', 50, 'In Stock', '2022-12-02 21:27:07', NULL),
(39, 1, 14, 'Formal Dress', 'none', 550, 650, 'formal', 'OIP (1).jpeg', '', '', 60, 'In Stock', '2022-12-02 21:28:02', NULL),
(40, 1, 15, 'Black pants', 'no', 800, 900, 'black pants', 'pt4.jpg', '', '', 60, 'In Stock', '2022-12-02 21:31:20', NULL),
(41, 1, 15, 'pants', 'no', 700, 800, 'pants', 'pt3.jpg', '', '', 50, 'In Stock', '2022-12-02 21:32:18', NULL),
(42, 1, 15, 'pants', 'no', 700, 850, 'pants', 'pt2.jpg', '', '', 60, 'In Stock', '2022-12-02 21:33:09', NULL),
(43, 1, 16, 'Joggers', 'none', 700, 800, 'joggers', 'product-featured-89.jpg', '', '', 60, 'In Stock', '2022-12-02 21:36:38', NULL),
(44, 1, 16, 'joggers', 'no', 800, 900, 'jogger', '118.jpg', '', '', 50, 'In Stock', '2022-12-02 21:37:23', NULL),
(45, 1, 17, 'shoes', 'none', 750, 800, 'shoes', '110.jpg', '', '', 50, 'In Stock', '2022-12-02 21:39:12', NULL),
(46, 1, 17, 'shoes', 'none', 870, 900, 'White shoes', '1.jpeg', '', '', 60, 'In Stock', '2022-12-02 21:41:31', NULL),
(47, 1, 18, 'sunglass', 'no', 550, 580, 'sunglass', 'OIP.jpeg', '', '', 40, 'In Stock', '2022-12-02 21:47:41', NULL),
(48, 1, 18, 'sunglass', 'no', 300, 400, 'sunglass', 'download.jpeg', '', '', 50, 'In Stock', '2022-12-02 22:01:22', NULL),
(49, 2, 19, 'Borkha', 'none', 1200, 1400, 'ladies borkha', 'OIP.jpeg', '', '', 50, 'In Stock', '2022-12-02 22:08:26', NULL),
(50, 2, 19, '3 pices', 'no', 1200, 1300, '3 pices<div><br></div><div>comfort</div>', 'OIP (1).jpeg', '', '', 60, 'In Stock', '2022-12-02 22:12:57', NULL),
(51, 2, 20, 'Jewelry', 'no', 500, 6000, '&nbsp; &nbsp; jewelry', 'OIP.jpeg', '', '', 600, 'In Stock', '2022-12-02 22:21:08', NULL),
(52, 2, 21, 'Red Lipstick', 'no', 450, 600, 'Red lipstick', 'OIP (1).jpeg', '', '', 70, 'In Stock', '2022-12-02 22:25:21', NULL),
(53, 2, 22, 'women Shoes', 'no', 1100, 1200, 'women shoes', 'OIP.jpeg', '', '', 80, 'In Stock', '2022-12-02 22:29:31', NULL),
(54, 3, 28, 'The Girl on the Train', 'Book', 2000, 2200, '<h1 id=\"title\" class=\"a-spacing-none a-text-normal\" style=\"box-sizing: border-box; padding: 0px; line-height: 36px; color: rgb(15, 17, 17); font-family: Arial, sans-serif; margin-bottom: 0px !important;\"><span id=\"productTitle\" class=\"a-size-extra-large\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; line-height: 36px !important;\">The Girl on the Train</span></h1>', '51KQwCQ326L._SX331_BO1,204,203,200_.jpg', '', '', 50, 'In Stock', '2022-12-03 17:41:40', NULL),
(55, 3, 28, 'Before I Go To Sleep', 'Before I Go To Sleep', 1800, 1900, '<h2 class=\"a-size-mini a-spacing-none a-color-base s-line-clamp-2\" style=\"box-sizing: border-box; padding: 0px; color: rgb(15, 17, 17); overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-box-orient: vertical; -webkit-line-clamp: 2; max-height: 86.4px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 12px !important; line-height: 16px !important;\"><a class=\"a-link-normal s-underline-text s-underline-link-text s-link-style a-text-normal\" target=\"_blank\" href=\"https://www.amazon.in/Before-I-Go-Sleep-Watson/dp/0552164127/ref=sr_1_1?geniuslink=true&amp;keywords=S.+J.+Watson+before+i+go+to+sleep+a+novel&amp;qid=1670089419&amp;sr=8-1\" style=\"box-sizing: border-box; color: rgb(0, 113, 133); font-weight: 400 !important;\"><span class=\"a-size-medium a-color-base a-text-normal\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; font-size: 18px !important; line-height: 24px !important; color: rgb(15, 17, 17) !important;\">Before I Go To Sleep</span></a></h2>', '81RCo6+yH-L._AC_UY218_.jpg', '', '', 80, 'In Stock', '2022-12-03 17:45:02', NULL),
(56, 3, 29, 'A Heart Full of Headstones', 'A Heart Full of Headstones', 2600, 3000, '<h1 id=\"bookTitle\" class=\"gr-h1 gr-h1--serif\" itemprop=\"name\" style=\"margin-bottom: 0px; padding: 0px 0px 2px; font-size: 24px; font-family: Merriweather, Georgia, serif; line-height: 1.25; width: 455px;\">A Heart Full of Headstones</h1>', '60382750.jpg', '', '', 100, 'In Stock', '2022-12-03 17:48:07', NULL),
(57, 5, 9, 'Showpiece', 'no', 400, 500, 'showpiece', 'OIP.jpeg', '', '', 80, 'In Stock', '2022-12-03 17:53:43', NULL),
(58, 6, 23, 'Girls Birthday dress', 'dress', 1100, 1200, 'dress', 'OIP (1).jpeg', '', '', 50, 'In Stock', '2022-12-03 18:00:25', NULL),
(59, 6, 23, 'Blue Dress', 'dress', 1200, 1300, 'dress', 'OIP.jpeg', '', '', 55, 'In Stock', '2022-12-03 18:01:15', NULL),
(60, 6, 24, 'Babies shoes', 'shoes', 380, 400, 'shoes', 'OIP (1).jpeg', '', '', 55, 'In Stock', '2022-12-03 18:03:26', NULL),
(61, 6, 24, 'shoes', 'no', 380, 400, 'shoes', 'OIP.jpeg', '', '', 55, 'In Stock', '2022-12-03 18:04:10', NULL),
(62, 6, 25, 'Babies toys ', 'no', 380, 400, 'toys', 'OIP (1).jpeg', '', '', 55, 'In Stock', '2022-12-03 18:08:45', NULL),
(63, 6, 26, 'MEIJI Original Choco Baby Chocolates', 'no', 350, 400, '<span style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;; font-size: 14px; background-color: rgb(250, 250, 250);\">MEIJI Original Choco Baby Chocolates. These delicious creamy chocolate treats from Japan’s most famous confectionery company Meiji simply melt in your mouth! They come in a handy plastic dispenser box so you can take them with you and get your Japanese chocolate fix while on the move! These baby chocolates might be tiny, but you get a lot of them in one box! The texture of these pellet shaped candies is so lovely and velvety that you just cannot get enough of them!</span>', 'OIP.jpeg', '', '', 88, 'In Stock', '2022-12-03 18:11:43', NULL),
(64, 7, 30, 'Red Rose', 'no', 250, 300, 'red rose', 'th.jpeg', '', '', 70, 'In Stock', '2022-12-03 18:15:13', NULL),
(65, 7, 30, 'Red Rose ', 'rose', 100, 150, 'red rose', 'OIP.jpeg', '', '', 30, 'In Stock', '2022-12-03 18:17:00', NULL),
(66, 7, 31, 'GIFT BAG FLOWER ARRANGEMENTS', 'no', 200, 200, '<h1 style=\"box-sizing: border-box; margin-bottom: 0px; padding: 0px; font-size: 24px; font-family: &quot;Open Sans&quot;; line-height: 1.35; color: rgb(58, 52, 52); -webkit-font-smoothing: subpixel-antialiased; -webkit-print-color-adjust: exact; text-transform: uppercase;\">GIFT BAG FLOWER ARRANGEMENTS</h1>', 'gift-bag-of-flower.jpg', '', '', 60, 'In Stock', '2022-12-03 18:28:05', NULL),
(67, 8, 32, 'Chocolate cake', 'no', 550, 600, 'cake', 'OIP.jpeg', '', '', 70, 'In Stock', '2022-12-03 18:32:42', NULL),
(68, 8, 32, 'chocolate cake', 'no', 600, 650, 'chocolate cake', 'OIP (1).jpeg', '', '', 60, 'In Stock', '2022-12-03 18:35:07', NULL),
(69, 8, 33, 'Vanilla Cake', 'vanilla', 600, 700, 'venilla cake', 'download.jpeg', '', '', 90, 'In Stock', '2022-12-03 18:37:28', NULL),
(70, 8, 33, 'Venilla cake', 'venilla', 800, 800, 'venilla cake&nbsp;', 'download (1).jpeg', '', '', 90, 'In Stock', '2022-12-03 18:39:28', NULL),
(72, 6, 25, 'Teddy Bear', 'no', 480, 500, 'teddy bear', 'th.jpeg', '', '', 60, 'In Stock', '2022-12-03 18:59:28', NULL),
(73, 5, 10, 'Anniversary Gift', 'gift', 750, 800, 'gift&nbsp;', 'OIP.jpeg', '', '', 90, 'In Stock', '2022-12-04 02:55:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(3, 4, 'Television', '2017-01-26 16:29:09', ''),
(4, 4, 'Mobiles', '2017-01-30 16:55:48', ''),
(5, 4, 'Mobile Accessories', '2017-02-04 04:12:40', ''),
(6, 4, 'Laptops', '2017-02-04 04:13:00', ''),
(7, 4, 'Computers', '2017-02-04 04:13:27', ''),
(8, 3, 'Comics', '2017-02-04 04:13:54', ''),
(9, 5, 'Birthday Gift', '2017-02-04 04:36:45', '03-12-2022 01:59:39 PM'),
(10, 5, 'Anniversary Gift', '2017-02-04 04:37:02', '03-12-2022 02:01:10 PM'),
(13, 1, 'Casual Shirts', '2022-12-02 16:40:44', '02-12-2022 10:12:14 PM'),
(14, 1, 'Formal Shirts', '2022-12-02 16:42:01', NULL),
(15, 1, 'Pants', '2022-12-02 16:43:29', NULL),
(16, 1, 'Joggers', '2022-12-02 16:44:09', NULL),
(17, 1, 'Shoes', '2022-12-02 16:44:21', NULL),
(18, 1, 'Sunglasses', '2022-12-02 16:44:34', NULL),
(19, 2, 'Dresses', '2022-12-02 17:07:58', NULL),
(20, 2, 'Ornaments', '2022-12-02 17:08:10', NULL),
(21, 2, 'Cosmetics', '2022-12-02 17:08:23', NULL),
(22, 2, 'Shoes', '2022-12-02 17:08:31', NULL),
(23, 6, 'Dresses', '2022-12-02 17:11:16', NULL),
(24, 6, 'Shoes', '2022-12-02 17:11:32', NULL),
(25, 6, 'Babies toys', '2022-12-02 17:14:15', NULL),
(26, 6, 'Chocolate', '2022-12-02 17:15:32', NULL),
(27, 1, 'T-Shirts', '2022-12-02 20:26:47', NULL),
(28, 3, 'Suspense', '2022-12-03 17:33:07', NULL),
(29, 3, 'Detective Books', '2022-12-03 17:46:36', NULL),
(30, 7, 'Red Roses', '2022-12-03 18:14:14', NULL),
(31, 7, 'GIFT BAG FLOWER ', '2022-12-03 18:27:27', NULL),
(32, 8, 'Chocolate Cake', '2022-12-03 18:31:49', NULL),
(33, 8, 'Vanilla Cake', '2022-12-03 18:36:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 'aman@digihand.co.in', 0x3a3a3100000000000000000000000000, '2021-03-14 07:26:52', NULL, 1),
(25, 'rashed@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-02 14:38:42', '02-12-2022 08:13:37 PM', 1),
(26, 'rashidul@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-02 16:48:11', NULL, 0),
(27, 'rashidul@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-02 16:48:31', NULL, 0),
(28, 'rashidu@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-02 16:49:22', '02-12-2022 10:20:58 PM', 1),
(29, 'rashidul@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-02 17:00:13', NULL, 1),
(30, 'rashidul@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-02 19:03:04', '03-12-2022 11:33:41 AM', 1),
(31, 'rashidul@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-03 06:04:30', NULL, 0),
(32, 'rashidul@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-03 06:05:00', '03-12-2022 12:05:24 PM', 1),
(33, 'rashed@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-03 06:35:44', '03-12-2022 12:12:03 PM', 1),
(34, 'rashed@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-03 08:03:05', '03-12-2022 06:08:08 PM', 1),
(35, 'rashed@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-03 12:39:05', NULL, 1),
(36, 'rashed@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-03 17:24:33', NULL, 1),
(37, 'rashed@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-04 02:50:28', '04-12-2022 10:44:21 AM', 1),
(38, 'rashed@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-04 05:15:55', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(4, 'aman', 'aman@digihand.co.in', 8058596008, '73b25522615dac9cfd289ee35faef4ef', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-14 07:26:38', NULL),
(5, 'rashed', 'rashed@gmail.com', 1234567890, '81dc9bdb52d04dc20036dbd8313ed055', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-02 14:38:24', NULL),
(6, 'Md Rashidul Haq', 'rashidu@gmail.com', 1912196464, '6c524f9d5d7027454a783c841250ba71', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-02 16:47:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

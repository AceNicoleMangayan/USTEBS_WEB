-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2023 at 01:51 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ustebs`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_account_user`
--

CREATE TABLE `admin_account_user` (
  `admin_userid` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  `status` varchar(100) DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_account_user`
--

INSERT INTO `admin_account_user` (`admin_userid`, `username`, `password`, `firstname`, `lastname`, `role`, `status`) VALUES
(2011, 'cutie123', 'acekun', 'Ace', 'Gwapo', 'Super Admin', 'Active'),
(2020, 'richianreib123', 'suanadmin', 'Richian Reib', 'Suan', 'Super Admin', 'Active'),
(2021, 'basseymae234', 'daomaradmin', 'Bassey Mae', 'Daomar', 'Super Admin', 'Active'),
(2022, 'acenicole345', 'mangayanadmin', 'Ace Nicole', 'Mangayan', 'Super Admin', 'Active'),
(2023, 'ladymaxine456', 'sarsalijoadmin', 'Lady Maxine', 'Sarsalijo', 'Regular Admin', 'Active'),
(2024, 'ralphronan567', 'descallaradmin', 'Ralph Ronan', 'Descallar', 'Regular Admin', 'Active'),
(2025, 'andrey678', 'illaganadmin', 'Andrey', 'Illagan', 'Regular Admin', 'Active'),
(2026, 'charise789', 'quijadaadmin', 'Charise', 'Quijada', 'Regular Admin', 'Active'),
(2027, 'rian890', 'suanadmin', 'Rian', 'Suan\r\n', 'Regular Admin', 'Active'),
(2028, 'amosglen901', 'daomaradmin', 'Amos Glenn', 'Daomar', 'Regular Admin', 'Active'),
(2029, 'achilles012', 'achilesadmin', 'Achilles', 'Mangayan', 'Regular Admin', 'Active'),
(2030, 'batman123', 'batman', 'Bruce', 'Wayne', 'Super Admin', 'Disable'),
(2031, 'crane123', 'light', 'Kyle ', 'Crane', 'Super Admin', 'Disable'),
(2033, 'acesasaki2111a111', 'acekun211', 'aaaa11', 'kunaaaaa11', 'Regular Admin', 'Disable');

-- --------------------------------------------------------

--
-- Table structure for table `barter_items`
--

CREATE TABLE `barter_items` (
  `barter_item_id` int(100) NOT NULL,
  `barter_name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `value` double NOT NULL,
  `dateCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `category_id` int(100) NOT NULL,
  `image_link` int(100) DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  `user_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barter_items`
--

INSERT INTO `barter_items` (`barter_item_id`, `barter_name`, `description`, `value`, `dateCreated`, `category_id`, `image_link`, `status`, `user_id`) VALUES
(1, 'Cattleya Notebook Binder', 'This notebook is suitable for classroom, office, etc., meeting your multiple needs. It is lightweight, easy to carry and offers great convenience to your life.', 200, '2022-11-28 00:00:00', 1, 1, 'Available', 1),
(2, 'Red Dragon Keyboard ', 'The RED Illuminated Mechanical Gaming Keyboard features a Solid Aircraft-grade Aluminiumand ABS construction, plate mounted keys, double-shot injection moulded keycaps, high-end switches with mechanical ultra-last springs, crisp and bright adjustable RED LED backlighting.', 500, '2022-08-23 00:00:00', 2, 2, 'Available', 2),
(3, 'Fountain Pen', 'A fountain pen is a writing instrument equipped with a metal nib (usually solid gold) that utilizes a cartridge, converter, or other internal reservoir in order to provide a continuous and refillable ink supply.', 1000, '2022-06-06 00:00:00', 1, 3, 'Bartered', 3),
(4, 'Logitec Headphones', 'Wireless headsets from Logitech offer all the features of their wired counterparts along with the freedom to get up, stretch, and move around while still using your headset. Use your wireless headset to take phone calls, join and initiate video meetings, and listen to music.', 800, '2022-10-24 00:00:00', 3, 4, 'Bartered', 4),
(5, 'Study Table', 'A study table is one that is designed and built keeping students in mind. Since it is built with the purpose of studying kept in mind, it is used to store books and access them easily, organize study materials efficiently, and make the entire learning experience more enjoyable.', 300, '2022-11-20 00:00:00', 1, 5, 'Available', 5),
(6, 'Rizal Book', 'Rizal wrote the novel to expose the ills of Philippine society during the Spanish colonial era.', 275, '2022-10-21 00:00:00', 4, 6, 'Bartered', 6),
(7, 'Lenovo Laptop IdeaPad 3', 'The IdeaPad 3 (15, AMD) is an entry-level laptop powerful enough to help you get things done. Up to an AMD Ryzen™ 7 4700U Mobile Processor and discrete AMD Radeon™ graphics options fuel easy multitasking, speedy performance, and a great entertainment experience.', 28000, '2022-09-02 00:00:00', 5, 7, 'Available', 7),
(8, 'Epson printer l3110', 'a lightweight portable inkjet printer designed for professionals on the go. Battery-operated with integrated wireless capabilities such as Wi-Fi Direct and Epson Connect.', 8195, '2022-10-11 00:00:00', 3, 8, 'Available', 8),
(9, 'USTP P.E Uniform', 'Good as new and used for a year. No damage and Size is medium.', 1000, '2022-08-21 00:00:00', 6, 9, 'Available', 9),
(10, 'Wifi router', 'This is my extra wifi router. A wireless router is a device that enables wireless network packet forwarding and routing, and serves as an access point in a local area network. It works much like a wired router but replaces wires with wireless radio signals to communicate within and to external network environments.', 1200, '2022-08-11 00:00:00', 7, 10, 'Available', 10),
(11, 'Architect\'s scale', 'Would like to exchange for a table. An Architect\'s or scale ruler is designed for use in determining the actual dimensions of a distance on a scaled drawing.', 377, '2022-11-05 00:00:00', 1, 11, 'Available', 2),
(12, 'Cherry Mobile Flare 4', 'Old phone but still functional.', 3500, '2022-10-11 00:00:00', 8, 12, 'Available', 5),
(13, 'Hand-painted paint', 'This is my latest hand-painted ready-to-barter for a book.', 350, '2022-10-20 00:00:00', 9, 13, 'Bartered', 6),
(14, 'Hawks blue bag', 'Good as new with no issues. Branded hawks bag.', 475, '2022-09-04 00:00:00', 10, 14, 'Available', 9),
(15, 'Type A uniform', 'Complete ser uniform size small.', 1100, '2022-10-27 00:00:00', 6, 15, 'Available', 1),
(16, 'Acer Laptop i4', 'Nice specs with a little bit issus on keyboard.', 16999, '2022-11-01 00:00:00', 5, 16, 'Bartered', 3),
(17, 'Hp Projector', 'Have great specs with scan feature and bluetooth.', 8900, '2022-12-14 00:00:00', 3, 17, 'Bartered', 4),
(18, 'JBL Speaker', 'Wireless Bluetooth Streaming. Wirelessly connect up to 2 smartphones or tablets to the speaker and take turns enjoying JBL Pro sound.', 1000, '2022-12-05 00:00:00', 3, 18, 'Available', 7),
(19, 'Ethics Book', 'In good condition. With answers every activity quiz.', 300, '2022-11-22 00:00:00', 4, 19, 'Bartered', 8),
(20, 'Lunch Box', 'Blue lunch box. A lunch box refers to a hand-held container used to transport food, usually to work or to school. It is commonly made of metal or plastic, is reasonably airtight and often has a handle for carrying.', 150, '2022-10-09 00:00:00', 1, 20, 'Bartered', 10),
(21, 'MMW book', 'Fun book', 300, '0000-00-00 00:00:00', 1, NULL, 'Available', 1),
(22, 'Bag', 'Need it asap', 300, '2023-01-28 08:41:36', 1, NULL, 'Available', 1);

-- --------------------------------------------------------

--
-- Table structure for table `barter_items_pics`
--

CREATE TABLE `barter_items_pics` (
  `image_link` int(100) NOT NULL,
  `images` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barter_items_pics`
--

INSERT INTO `barter_items_pics` (`image_link`, `images`) VALUES
(1, 'ustebs\\components\\uploads\\img1.jpg'),
(2, 'ustebs\\components\\uploads\\img2.jpg'),
(3, 'ustebs\\components\\uploads\\img3.jpg'),
(4, 'ustebs\\components\\uploads\\img4.jpg'),
(5, 'ustebs\\components\\uploads\\img5.jpg'),
(6, 'ustebs\\components\\uploads\\img6.jpg'),
(7, 'ustebs\\components\\uploads\\img7.jpg'),
(8, 'ustebs\\components\\uploads\\img8.jpg'),
(9, 'ustebs\\components\\uploads\\img9.jpg'),
(10, 'ustebs\\components\\uploads\\img10.jpg'),
(11, 'ustebs\\components\\uploads\\img11.jpg'),
(12, 'ustebs\\components\\uploads\\img12.jpg'),
(13, 'ustebs\\components\\uploads\\img13.jpg'),
(14, 'ustebs\\components\\uploads\\img14.jpg'),
(15, 'ustebs\\components\\uploads\\img15.jpg'),
(16, 'ustebs\\components\\uploads\\img16.jpg'),
(17, 'ustebs\\components\\uploads\\img17.jpg'),
(18, 'ustebs\\components\\uploads\\img18.jpg'),
(19, 'ustebs\\components\\uploads\\img19.jpg'),
(20, 'ustebs\\components\\uploads\\img20.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(100) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'School Supplies'),
(2, 'Input Devices'),
(3, 'Output Devices'),
(4, 'Books'),
(5, 'Laptop'),
(6, 'Uniform'),
(7, 'Networking Devices'),
(8, 'Cellphone'),
(9, 'Arts'),
(10, 'Bags');

-- --------------------------------------------------------

--
-- Table structure for table `request_transactions`
--

CREATE TABLE `request_transactions` (
  `request_id` int(100) NOT NULL,
  `own_barter_id` int(100) NOT NULL,
  `exchange_barter_id` int(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `date_request` date NOT NULL,
  `datesuccessful_transaction` date NOT NULL,
  `requestor_id` int(100) NOT NULL,
  `exchange_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `request_transactions`
--

INSERT INTO `request_transactions` (`request_id`, `own_barter_id`, `exchange_barter_id`, `status`, `date_request`, `datesuccessful_transaction`, `requestor_id`, `exchange_id`) VALUES
(1, 1, 2, 'Declined', '2022-11-30', '2022-12-03', 1, 2),
(2, 3, 4, 'Accepted', '2022-10-25', '2022-10-28', 3, 4),
(3, 5, 6, 'Declined', '2022-11-24', '2022-11-30', 5, 6),
(4, 7, 8, 'Declined', '2022-10-18', '2022-10-19', 7, 8),
(5, 9, 10, 'Declined', '2022-08-23', '2022-08-25', 9, 10),
(6, 6, 19, 'Accepted', '2022-11-25', '2022-12-26', 6, 8),
(7, 16, 17, 'Accepted', '2022-12-10', '2022-12-12', 9, 7),
(8, 13, 20, 'Accepted', '2022-10-23', '2022-10-27', 6, 10),
(9, 14, 18, 'Declined', '2022-12-10', '2022-12-12', 9, 7),
(10, 15, 11, 'Declined', '2022-11-10', '2022-11-11', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `social_media_links`
--

CREATE TABLE `social_media_links` (
  `social_media_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `site` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `social_media_links`
--

INSERT INTO `social_media_links` (`social_media_id`, `user_id`, `link`, `site`) VALUES
(1, 1, 'https://www.facebook.com/mariatheresa.ompoc', 'Facebook'),
(2, 2, 'https://www.facebook.com/ashlyjohn.galagnara\r\n', 'Facebook'),
(3, 3, 'https://www.facebook.com/junenel.nel', 'Facebook'),
(4, 4, 'https://www.fb.com/kim.robles08', 'Facebook'),
(5, 5, 'https://www.facebook.com/mirv.vallermo.12', 'Facebook'),
(6, 6, 'https://www.facebook.com/gyle.delmar?mibextid=ZbWKwL', 'Facebook'),
(7, 7, 'https://www.facebook.com/kikay.patindol', 'Facebook'),
(8, 8, 'https://www.facebook.com/michaelrules.08', 'Facebook'),
(9, 9, 'https://www.fb.com/133spider', 'Facebook'),
(10, 10, 'https://www.facebook.com/rhealove.balaba', 'Facebook'),
(11, 12, 'Facebook.com/charot', 'facebook'),
(12, 13, 'facebook.acemangayan', 'facebook'),
(13, 14, 'https://www.facebook.com/basti.daomar?mibextid=ZbWKwL', 'facebook'),
(14, 16, 'fb.richian', 'facebook'),
(15, 16, 'fb.richian', 'facebook'),
(16, 17, 'Fb.link', 'facebook'),
(17, 18, 'suan.link', 'facebook'),
(18, 19, 'Hsh', 'facebook');

-- --------------------------------------------------------

--
-- Table structure for table `student_users`
--

CREATE TABLE `student_users` (
  `user_id` int(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `id_number` varchar(100) NOT NULL,
  `schoolyear_started` year(4) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact_number` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_users`
--

INSERT INTO `student_users` (`user_id`, `firstname`, `lastname`, `id_number`, `schoolyear_started`, `address`, `contact_number`, `email`, `gender`, `password`, `status`) VALUES
(1, 'Ma. Theresa', 'Ompoc', '2020304895', 2020, 'Liberty, Laguindingan, Misamis Oriental\r\n', '09759408687', 'michel143thea@gmail.com', 'Female', 'matet1234', 'Active'),
(2, 'Ashly John', 'Galagnara', '2020302623', 2020, 'Zone 4, Mauswagon, Laguindingan, Misamis Oriental\r\n', '09709526974', 'ashlythegreat12@gmail.com', 'Male', 'brobro543', 'Active'),
(3, 'Junnel', 'Aurestila', '2020305729', 2020, 'Camp 14, Sta.Fe, Libona, Bukidnon', '09966364598', 'junnelgaurestila@gmail.com', 'Male', 'nelnel1234', 'Active'),
(4, 'Junmaril', 'Robles', '2020300937', 2020, 'P1 Tunhai, Talisay, Indahag, CDOC', '09092983583', 'junmarilr@gmail.com', 'Male', 'junmaril937', 'Active'),
(5, 'Mirv Bonibar', 'Vallermo', '2020304175', 2020, 'Liberty, Laguindingan, Misamis Oriental', '09919213919', 'mirvvallermo@gmail.com', 'Male', 'night142', 'Active'),
(6, 'Gyle', 'Del Mar', '2020301546', 2020, 'Zone 3 Kinawe, Libona, Bukidnon', '09912953078', 'gyledelmar04@gmail.com', 'Male', 'gyledel546', 'Active'),
(7, 'Wendelyn', 'Abasolo', '2019100760', 2019, 'Balulang, Cagayan de Oro City', '09758729320', 'wendelynabasolo@gmail.com', 'Female', 'wendy1234', 'Active'),
(8, 'John Michael', 'Josol\r\n', '2020304524', 2020, 'Woodland Heights, Subd. Macasandig', '09050367838', 'johnmichaeljosol@gmail.com', 'Male', 'lupad321', 'Active'),
(9, 'Client John', 'Subibi', '2020304353', 2020, '500 Baconga Sts., Lapasan, CDOC', '09426347849', 'clientjohnsubibi@gmail.com', 'Male', 'sedj1234', 'Active'),
(10, 'Rhealove Ariane', 'Balaba', '2022301346', 2022, 'Zone 9, Caffas, Macanhan, Carmen, Cagayan de Oro City', '09050972048', 'balabarhealove323@gmail.com', 'Female', 'rhealove12345', 'Active'),
(11, 'dhdiwqkyhssj', 'Wickwuhdsifko1wq', '2020301111', 2020, 'New Yorkwfaegdgc', '0975119860', 'babayaga117@gmail.com', 'Female', '11111', 'Disable');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `wishlists_id` int(100) NOT NULL,
  `wishlist_name` varchar(100) NOT NULL,
  `barter_item_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`wishlists_id`, `wishlist_name`, `barter_item_id`) VALUES
(1, 'Rizal Book', 1),
(2, 'Mouse or Router', 2),
(3, 'Wifi Router', 3),
(4, 'Ear Buds', 4),
(5, 'School Bag', 5),
(6, 'Ethics Book', 6),
(7, 'Smartphone', 7),
(8, 'Smartphone', 8),
(9, 'Large P.E Uniform', 9),
(10, 'Keyboard', 10),
(11, 'Architect table', 11),
(12, 'Iphone 5', 12),
(13, 'Any school supplies', 13),
(14, 'Speaker', 14),
(15, 'Any school supplies', 15),
(16, 'Printer or Laptop', 16),
(17, 'Laptop', 17),
(18, 'Smartphone', 18),
(19, 'Rizal Book', 19),
(20, 'Painting', 20),
(21, 'Rizal book', 21),
(22, 'Uniform', 22);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barter_items`
--
ALTER TABLE `barter_items`
  ADD PRIMARY KEY (`barter_item_id`);

--
-- Indexes for table `barter_items_pics`
--
ALTER TABLE `barter_items_pics`
  ADD PRIMARY KEY (`image_link`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `request_transactions`
--
ALTER TABLE `request_transactions`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `social_media_links`
--
ALTER TABLE `social_media_links`
  ADD PRIMARY KEY (`social_media_id`);

--
-- Indexes for table `student_users`
--
ALTER TABLE `student_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`wishlists_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barter_items`
--
ALTER TABLE `barter_items`
  MODIFY `barter_item_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `barter_items_pics`
--
ALTER TABLE `barter_items_pics`
  MODIFY `image_link` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `request_transactions`
--
ALTER TABLE `request_transactions`
  MODIFY `request_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `social_media_links`
--
ALTER TABLE `social_media_links`
  MODIFY `social_media_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `student_users`
--
ALTER TABLE `student_users`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `wishlists_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

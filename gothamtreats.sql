-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2023 at 06:58 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gothamtreats`
--

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

CREATE TABLE `material` (
  `materialID` varchar(512) DEFAULT NULL,
  `materialName` varchar(512) DEFAULT NULL,
  `vendorID` varchar(512) DEFAULT NULL,
  `materialPrice` int(11) DEFAULT NULL,
  `materialStock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `material`
--

INSERT INTO `material` (`materialID`, `materialName`, `vendorID`, `materialPrice`, `materialStock`) VALUES
('MTR001', 'All purpose flour', 'V1234', 10000, 10),
('MTR002', 'Special flour', 'V1234', 15000, 5),
('MTR003', 'Granulated Sugar', 'V1234', 7500, 7);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `OrderDetailID` int(11) DEFAULT NULL,
  `OrderID` int(11) DEFAULT NULL,
  `ProductID` varchar(512) DEFAULT NULL,
  `ItemQuantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`OrderDetailID`, `OrderID`, `ProductID`, `ItemQuantity`) VALUES
(1, 1022, 'P001', 5),
(2, 1022, 'P003', 3),
(3, 1022, 'P005', 2),
(4, 1023, 'P008', 6),
(5, 1023, 'P009', 5),
(6, 1024, 'P011', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) DEFAULT NULL,
  `OrderDateTime` datetime DEFAULT NULL,
  `OrderCategory` varchar(512) DEFAULT NULL,
  `OrderStatus` varchar(512) DEFAULT NULL,
  `Outlet` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `OrderDateTime`, `OrderCategory`, `OrderStatus`, `Outlet`) VALUES
(1022, '2023-03-01 00:00:00', 'Walk-In', 'Complete', 'PIK'),
(1023, '2023-03-06 00:00:00', 'GoFood', 'Complete', 'Pakubuwono'),
(1024, '2023-03-08 00:00:00', 'Outlet', 'Complete', 'PIK'),
(1025, '2023-03-14 00:00:00', 'Grab', 'Complete', 'Pakubuwono'),
(1026, '2023-03-18 00:00:00', 'Outlet', 'Complete', 'PIK'),
(1027, '2023-03-21 00:00:00', 'Walk-In', 'Complete', 'Pakubuwono'),
(1028, '2023-03-26 00:00:00', 'Outlet', 'Complete', 'PIK'),
(1029, '2023-03-27 00:00:00', 'Outlet', 'Complete', 'Pakubuwono'),
(1030, '2023-03-29 00:00:00', 'Grab', 'Complete', 'PIK'),
(1031, '2023-03-30 00:00:00', 'GoFood', 'Complete', 'Pakubuwono'),
(1032, '2023-04-01 00:00:00', 'Outlet', 'Complete', 'PIK'),
(1033, '2023-04-05 00:00:00', 'GoFood', 'Complete', 'Pakubuwono'),
(1034, '2023-04-08 00:00:00', 'Walk-In', 'Complete', 'PIK'),
(1035, '2023-04-09 00:00:00', 'Walk-In', 'Complete', 'Pakubuwono'),
(1036, '2023-04-13 00:00:00', 'Outlet', 'Complete', 'PIK'),
(1037, '2023-04-16 00:00:00', 'GoFood', 'Complete', 'Pakubuwono'),
(1038, '2023-04-18 00:00:00', 'Grab', 'Complete', 'PIK'),
(1039, '2023-04-21 00:00:00', 'Outlet', 'Complete', 'Pakubuwono'),
(1040, '2023-04-25 00:00:00', 'Grab', 'Complete', 'PIK'),
(1041, '2023-04-28 00:00:00', 'Walk-In', 'Complete', 'Pakubuwono'),
(1042, '2023-05-01 00:00:00', 'Outlet', 'Complete', 'PIK'),
(1043, '2023-05-05 00:00:00', 'GoFood', 'Complete', 'Pakubuwono'),
(1044, '2023-05-09 00:00:00', 'Grab', 'Complete', 'PIK'),
(1045, '2023-05-14 00:00:00', 'Grab', 'Complete', 'Pakubuwono'),
(1046, '2023-05-16 00:00:00', 'Outlet', 'Complete', 'PIK'),
(1047, '2023-05-20 00:00:00', 'Walk-In', 'Complete', 'Pakubuwono'),
(1048, '2023-05-23 00:00:00', 'Grab', 'Complete', 'PIK'),
(1049, '2023-05-26 00:00:00', 'Outlet', 'Complete', 'Pakubuwono'),
(1050, '2023-05-28 00:00:00', 'Outlet', 'Complete', 'PIK'),
(1051, '2023-05-29 00:00:00', 'Walk-In', 'Complete', 'Pakubuwono');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productID` varchar(512) NOT NULL,
  `productName` varchar(512) DEFAULT NULL,
  `productCategory` varchar(512) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `materialUsedID` varchar(512) DEFAULT NULL,
  `materialCost` varchar(512) DEFAULT NULL,
  `productStock` int(11) DEFAULT NULL,
  `mtsQtyWeekdays` int(11) DEFAULT NULL,
  `mtsQtyWeekends` int(11) DEFAULT NULL,
  `pkbwDeliveryQtyWky` int(11) DEFAULT NULL,
  `pikDeliveryQtyWky` int(11) DEFAULT NULL,
  `pkbwDeliveryQtyWkd` int(11) DEFAULT NULL,
  `pikDeliveryQtyWkd` int(11) DEFAULT NULL,
  `cookieBakedStock` varchar(512) DEFAULT NULL,
  `cookieDoughStock` varchar(512) DEFAULT NULL,
  `pikMorningPrepWky` varchar(512) DEFAULT NULL,
  `pikReBakingPointWkky` varchar(512) DEFAULT NULL,
  `pikMorningPrepWkd` varchar(512) DEFAULT NULL,
  `pikReBakingPointWkd` varchar(512) DEFAULT NULL,
  `pkbwMorningPrepWky` varchar(512) DEFAULT NULL,
  `pkbwReBakingPointWky` varchar(512) DEFAULT NULL,
  `pkbwMorningPrepWkd` varchar(512) DEFAULT NULL,
  `pkbwReBakingPointWkd` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productID`, `productName`, `productCategory`, `productPrice`, `materialUsedID`, `materialCost`, `productStock`, `mtsQtyWeekdays`, `mtsQtyWeekends`, `pkbwDeliveryQtyWky`, `pikDeliveryQtyWky`, `pkbwDeliveryQtyWkd`, `pikDeliveryQtyWkd`, `cookieBakedStock`, `cookieDoughStock`, `pikMorningPrepWky`, `pikReBakingPointWkky`, `pikMorningPrepWkd`, `pikReBakingPointWkd`, `pkbwMorningPrepWky`, `pkbwReBakingPointWky`, `pkbwMorningPrepWkd`, `pkbwReBakingPointWkd`) VALUES
('P001', 'Tiramisu', 'Dessert Box', 65000, '', '', 20, 30, 50, 20, 10, 25, 25, '', '', '', '', '', '', '', '', '', ''),
('P002', 'Delmont', 'Pie', 55000, '', '', 25, 20, 40, 10, 10, 20, 20, '', '', '', '', '', '', '', '', '', ''),
('P003', 'The Central Park', 'Milk', 45000, '', '', 18, 30, 35, 10, 10, 15, 20, '', '', '', '', '', '', '', '', '', ''),
('P004', 'The Brooklyn', 'Milk', 50000, '', '', 19, 30, 35, 10, 10, 20, 15, '', '', '', '', '', '', '', '', '', ''),
('P005', 'The Upper East Side', 'Cookie', 48000, '', '', 12, 25, 20, 9, 9, 10, 2, '6', '6', '8', '4', '7', '4', '8', '4', '7', '4'),
('P006', 'The Soho', 'Cookie', 48000, '', '', 12, 18, 20, 9, 9, 10, 2, '6', '6', '6', '2', '5', '4', '6', '2', '5', '4'),
('P007', 'The Nolita', 'Cookie', 48000, '', '', 12, 18, 20, 9, 9, 10, 2, '6', '6', '4', '3', '4', '4', '4', '3', '4', '4'),
('P008', 'The Hells Kitchen', 'Cookie', 48000, '', '', 12, 18, 20, 9, 9, 10, 2, '6', '6', '5', '3', '8', '4', '5', '3', '8', '4'),
('P009', 'The Greenwich Village', 'Cookie', 48000, '', '', 12, 18, 20, 9, 9, 10, 2, '6', '6', '4', '4', '3', '2', '4', '4', '3', '2'),
('P010', 'The Chelsea', 'Cookie', 48000, '', '', 12, 18, 20, 9, 9, 10, 2, '6', '6', '4', '2', '10', '5', '4', '2', '10', '5'),
('P011', 'The East Village', 'Cookie', 48000, '', '', 12, 18, 20, 9, 9, 10, 2, '6', '6', '4', '4', '5', '3', '4', '4', '5', '3');

-- --------------------------------------------------------

--
-- Table structure for table `productionstep`
--

CREATE TABLE `productionstep` (
  `stepID` int(11) DEFAULT NULL,
  `productionDate` varchar(512) DEFAULT NULL,
  `stepName` varchar(512) DEFAULT NULL,
  `stepType` varchar(512) DEFAULT NULL,
  `productCategory` varchar(512) DEFAULT NULL,
  `stepStatus` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productionstep`
--

INSERT INTO `productionstep` (`stepID`, `productionDate`, `stepName`, `stepType`, `productCategory`, `stepStatus`) VALUES
(1, '', 'Select one below', 'Production', 'Mixture', 'Pending'),
(2, '', 'Select one below', 'Production', 'Cookie Dough', 'Pending'),
(3, '', 'Select one below', 'Production', 'Milk', 'Pending'),
(4, '', 'Select one below', 'Production', 'Dessert Box', 'Pending'),
(5, '', 'Select one below', 'Production', 'Pie', 'Pending'),
(6, '', 'Select one below', 'Production', 'Ice Cream', 'Pending'),
(7, '', 'Select one below', 'Packaging', 'Milk', 'Pending'),
(8, '', 'Select one below', 'Packaging', 'Dessert Box and Pie', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `purchaseorder`
--

CREATE TABLE `purchaseorder` (
  `ID` int(11) NOT NULL,
  `purchaseOrderID` varchar(512) DEFAULT NULL,
  `PODate` int(11) DEFAULT NULL,
  `vendorID` varchar(512) DEFAULT NULL,
  `shippingMethod` varchar(512) DEFAULT NULL,
  `paymentTerms` varchar(512) DEFAULT NULL,
  `requestBy` varchar(512) DEFAULT NULL,
  `requestStatus` varchar(512) DEFAULT NULL,
  `plannedDeliveryDate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchaseorder`
--

INSERT INTO `purchaseorder` (`ID`, `purchaseOrderID`, `PODate`, `vendorID`, `shippingMethod`, `paymentTerms`, `requestBy`, `requestStatus`, `plannedDeliveryDate`) VALUES
(1, 'PO1234', 7052023, '1', 'JNE', 'Net 30 Days', 'Head of Operations', 'Delivering', 11052023),
(2, 'PO2345', 11052023, '3', 'JNE', 'Net 30 Days', 'Head of Operations', 'In-Processing', 19052023),
(3, 'PO001', 14052023, '2', 'JNE', 'Net 30 Days', 'Purchasing Staff', 'In-Processing', 20052023),
(4, 'PO1235', 16052023, '5', 'LalaMove', 'Net 30 Days', 'Purchasing Staff', 'Cancelled', 13052023),
(5, 'PO2345', 5052023, '4', 'Grab', 'Net 30 Days', 'Purchasing Staff', 'Complete', 7052023),
(6, 'PO028', 2052023, '6', 'GoSend', 'Net 30 Days', 'Head of Operations', 'Complete', 5052023);

-- --------------------------------------------------------

--
-- Table structure for table `purchaseorderdetails`
--

CREATE TABLE `purchaseorderdetails` (
  `poDetailID` int(11) NOT NULL,
  `poID` varchar(512) DEFAULT NULL,
  `materialID` varchar(512) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchaseorderdetails`
--

INSERT INTO `purchaseorderdetails` (`poDetailID`, `poID`, `materialID`, `quantity`) VALUES
(1, 'PO1234', 'MTR001', 5),
(2, 'PO1234', 'MTR002', 3),
(3, 'PO1234', 'MTR003', 30),
(4, 'PO2345', 'MTR001', 10),
(5, 'PO2345', 'MTR002', 2),
(6, 'PO2345', 'MTR003', 4),
(7, 'PO2345', 'MTR001', 6),
(8, 'PO001', 'MTR001', 7),
(9, 'PO001', 'MTR003', 4),
(10, 'PO1235', 'MTR001', 2),
(11, 'PO2345', 'MTR002', 1),
(12, 'PO2345', 'MTR003', 4),
(13, 'PO028', 'MTR001', 7),
(14, 'PO028', 'MTR002', 8),
(15, 'PO028', 'MTR003', 4);

-- --------------------------------------------------------

--
-- Table structure for table `purchaserequest`
--

CREATE TABLE `purchaserequest` (
  `prID` varchar(512) DEFAULT NULL,
  `requestedBy` varchar(512) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `reason` varchar(512) DEFAULT NULL,
  `requestDate` varchar(512) DEFAULT NULL,
  `deadline` varchar(512) DEFAULT NULL,
  `requestStatus` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchaserequest`
--

INSERT INTO `purchaserequest` (`prID`, `requestedBy`, `userID`, `reason`, `requestDate`, `deadline`, `requestStatus`) VALUES
('PR1234', 'Outlet Staff', 3, 'Restock', '06/10/2023', '12/10/2023', 'Outdated'),
('PR1235', 'Outlet Staff', 3, 'Restock', '09/10/2023', '12/10/2023', 'Urgent'),
('PR1236', 'Outlet Staff', 3, 'Restock', '06/10/2023', '12/10/2023', 'Pending'),
('PR1237', 'Outlet Staff', 3, 'Restock', '06/10/2023', '12/10/2023', 'Outdated'),
('PR1238', 'Outlet Staff', 3, 'Restock', '06/10/2023', '12/10/2023', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `userdb`
--

CREATE TABLE `userdb` (
  `USERID` int(11) DEFAULT NULL,
  `Name` varchar(512) DEFAULT NULL,
  `Email` varchar(512) DEFAULT NULL,
  `Password` varchar(512) DEFAULT NULL,
  `Position` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userdb`
--

INSERT INTO `userdb` (`USERID`, `Name`, `Email`, `Password`, `Position`) VALUES
(1, 'Andi Buana', 'andi.buana@gothamtreats.com', 'password', 'Head of Operations'),
(2, 'Eka Melati', 'eka.melati@gothamtreats.com', 'password', 'Kitchen'),
(3, 'Annisa Darma', 'annisa.darma@gothamtreats.com', 'password', 'Outlet'),
(4, 'Citra Setiawan', 'citra.setiawan@gothamtreats.com', 'password', 'Purchasing'),
(5, 'Cahya Budi', 'cahya.budi@gothamtreats.com', 'password', 'Finance'),
(6, 'Agung Indah', 'agung.indah@gothamtreats.com', 'password', 'Driver');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vendorID` int(11) NOT NULL,
  `vendorName` varchar(512) DEFAULT NULL,
  `vendorAddress` varchar(512) DEFAULT NULL,
  `vendorPhone` int(11) DEFAULT NULL,
  `vendorContactPerson` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`vendorID`, `vendorName`, `vendorAddress`, `vendorPhone`, `vendorContactPerson`) VALUES
(1, 'Miso Banzai', 'Jl. Banzai No. 21, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12430', 2147483647, 'Barley Ban'),
(2, 'Choco Kemang', 'Jl. Pangeran Antasari No.36, Bangka, Kec. Mampang Prpt., Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12430', 2147483647, 'Charlie Cho'),
(3, 'Frederik co.', 'Jl. Frederik No.36, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12560', 2147483647, 'Frederik Furzy'),
(4, 'Poli Poki', 'Jl. Arteri Pd. Indah, RT.10/RW.6, Kby. Lama Utara, Kec. Kby. Lama, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12240', 2147483647, 'Polly Poki'),
(5, 'Anteri Co.', 'Jl. Jenderal Sudirman, RT.1/RW.3, Gelora, Kecamatan Tanah Abang, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10270', 2147483647, 'Kevin Anteri'),
(6, 'Flour Andi Kemang', 'Jl. Kemang no. 23, Jakarta Selatan, DKI Jakarta, 18932', 2147483647, 'Budiarto Rahmawan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD KEY `productForeignKey` (`ProductID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productID`);

--
-- Indexes for table `purchaseorder`
--
ALTER TABLE `purchaseorder`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `purchaseorderdetails`
--
ALTER TABLE `purchaseorderdetails`
  ADD PRIMARY KEY (`poDetailID`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendorID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `purchaseorder`
--
ALTER TABLE `purchaseorder`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `purchaseorderdetails`
--
ALTER TABLE `purchaseorderdetails`
  MODIFY `poDetailID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD CONSTRAINT `productForeignKey` FOREIGN KEY (`ProductID`) REFERENCES `product` (`productID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

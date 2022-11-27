-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2022 at 05:16 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `botanical_gardeb`
--

-- --------------------------------------------------------

--
-- Table structure for table `cultivated_in`

CREATE Database botanical_new;
use botanical_new;
CREATE TABLE `cultivated_in` (
  `plant_id` varchar(30) NOT NULL,
  `garden_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cultivated_in`
--

INSERT INTO `cultivated_in` (`plant_id`, `garden_id`) VALUES
('apple1', 1),
('apple2', 2),
('apple3', 3),
('apple4', 4),
('apple5', 5),
('apple6', 5),
('bishopcapcactus1', 1),
('bishopcapcactus2', 3),
('bishopcapcactus3', 5),
('christmascactus1', 2),
('christmascactus2', 4),
('christmascactus3', 5),
('eastercactus1', 1),
('eastercactus2', 2),
('eastercactus3', 3),
('fairycastlecactus1', 3),
('fairycastlecactus2', 4),
('fairycastlecactus3', 5),
('feathercactus1', 1),
('feathercactus2', 3),
('feathercactus3', 4),
('ladyfingercactus1', 2),
('ladyfingercactus2', 4),
('ladyfingercactus3', 5),
('lotus1', 1),
('lotus10', 4),
('lotus11', 5),
('lotus12', 1),
('lotus2', 3),
('lotus3', 5),
('lotus4', 2),
('lotus5', 4),
('lotus6', 3),
('lotus7', 5),
('lotus8', 2),
('lotus9', 1),
('pea1', 1),
('pea2', 2),
('pea3', 3),
('potato1', 3),
('potato2', 3),
('potato3', 4),
('rickrackcactus1', 4),
('rickrackcactus2', 5),
('rickrackcactus3', 2),
('rose1', 1),
('rose10', 1),
('rose11', 1),
('rose12', 2),
('rose13', 3),
('rose14', 4),
('rose15', 5),
('rose16', 5),
('rose17', 4),
('rose18', 3),
('rose19', 2),
('rose2', 2),
('rose3', 3),
('rose4', 4),
('rose5', 5),
('rose6', 5),
('rose7', 4),
('rose8', 3),
('rose9', 2),
('snake1', 1),
('snake2', 2),
('snake3', 3),
('snake4', 4),
('snake5', 5),
('snake6', 1),
('snake7', 2),
('snake8', 5),
('spider1', 2),
('spider2', 3),
('spider3', 4),
('spider4', 5),
('spider5', 2),
('spider6', 2),
('spider7', 2),
('spider8', 2),
('starcactus1', 3),
('starcactus2', 2),
('starcactus3', 5),
('waterlily1', 3),
('waterlily2', 3),
('waterlily3', 3);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `E_name` varchar(30) DEFAULT NULL,
  `E_id` varchar(30) NOT NULL,
  `designation` varchar(30) DEFAULT NULL,
  `garden_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO `employee` (`E_name`, `E_id`, `designation`, `garden_id`) VALUES
('James', '63679', 'Gardner', 1),
('John', '64989', 'Gardner', 1),
('Luke', '65271', 'Gardner', 1),
('Jack', '65646', 'Gardner', 1),
('Charles', '66564', 'Gardner', 2),
('Jace', '66928', 'Gardner', 2),
('Chase', '67832', 'Gardner', 2),
('Miles', '67858', 'Gardner', 2),
('Cole', '68319', 'Gardner', 3),
('Max', '69062', 'Gardner', 3),
('Juan', '71234', 'Gardner', 3),
('George', '71235', 'Gardner', 3),
('Blake', '71236', 'Gardner', 4),
('Jayce', '71237', 'Gardner', 4),
('Kai', '71238', 'Gardner', 4),
('Bryce', '71239', 'Gardner', 4),
('Jude', '71240', 'Gardner', 5),
('Grant', '71241', 'Gardner', 5),
('Finn', '71242', 'Gardner', 5),
('Beau', '71243', 'Gardner', 5),
('Mark', '71244', 'Manager', 1),
('Kyle', '71245', 'Manager', 2),
('Dean', '71246', 'Manager', 3),
('Paul', '71247', 'Manager', 4),
('Zane', '71248', 'Manager', 5),
('Jax', '71249', 'Head', 1),
('Rhett', '71250', 'Head', 2),
('Myles', '71251', 'Head', 3),
('Brooks', '71252', 'Head', 4),
('Brooks', '71253', 'Head', 5),
('Michael Scott ', '71254', 'Main Head', 1);


-- --------------------------------------------------------

--
-- Table structure for table `garden`
--

CREATE TABLE `garden` (
  `garden_id` int(11) NOT NULL,
  `garden_name` varchar(30) DEFAULT NULL,
  `garden_loc` varchar(30) DEFAULT NULL,
  `date_of_establishment` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `garden`
--

INSERT INTO `garden` (`garden_id`, `garden_name`, `garden_loc`, `date_of_establishment`) VALUES
(1, 'BlrBG', 'Bangalore', '1970-11-10 00:00:00'),
(2, 'MdyBG', 'Mandya', '1971-11-10 00:00:00'),
(3, 'MysBG', 'Mysore', '1972-11-10 00:00:00'),
(4, 'UdpBG', 'Udupi', '1973-11-10 00:00:00'),
(5, 'MangBG', 'Mangalore', '1974-11-10 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `horticultural_data`
--

CREATE TABLE `horticultural_data` (
  `local_name` varchar(30) DEFAULT NULL,
  `scientific_name` varchar(30) NOT NULL,
  `species` varchar(30) DEFAULT NULL,
  `genus` varchar(30) DEFAULT NULL,
  `family` varchar(30) DEFAULT NULL,
  `propagation` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `horticultural_data`
--

INSERT INTO `horticultural_data` (`local_name`, `scientific_name`, `species`, `genus`, `family`, `propagation`) VALUES
('fairy castle cactus', 'acanthocereus tetragonus', 'cactus_spec2', 'cactus_gen', 'cactus_fam', 'leaf'),
('star cactus', 'astrophytum asterias', 'cactus_spec8', 'cactus_gen', 'cactus_fam', 'leaf'),
('bishop cap cactus', 'astrophytum myriostigma', 'cactus_spec6', 'cactus_gen', 'cactus_fam', 'leaf'),
('spider plant', 'chlorophytum comosum', 'rose_spec', 'rose_gen', 'rose_fam', 'spiderettes'),
('snake plant', 'dracaena trifasciata', 'snake_spec', 'snake_gen', 'snake_fam', 'leaf'),
('apple', 'malus domestica', 'apple_spec2', 'apple_gen', 'apple_fam', 'seed'),
('apple', 'malus pumila', 'apple_spec', 'apple_gen', 'apple_fam', 'seed'),
('ladyfinger cactus', 'mammillaria elongata', 'cactus_spec5', 'cactus_gen', 'cactus_fam', 'leaf'),
('feather cactus', 'mammillaria plumosa', 'cactus_spec7', 'cactus_gen', 'cactus_fam', 'leaf'),
('lotus', 'nelumbo nucifera', 'lotus_spec', 'lotus_gen', 'lotus_fam', 'stolon'),
('lotus', 'nymphaea caerulea', 'lotus_spec2', 'lotus_gen', 'lotus_fam', 'stolon'),
('water lily', 'nymphaeaceae', 'lily_spec', 'lily_gen', 'lily_fam', 'steed'),
('pea', 'pisum sativum', 'pea_spec', 'pea_gen', 'pea_fam', 'seed'),
('rose', 'rosa', 'rose_spec', 'rose_gen', 'rose_fam', 'stem'),
('rose', 'rosa canina', 'rose_spec4', 'rose_gen', 'rose_fam', 'stem'),
('rose', 'rosa chinesis', 'rose_spec2', 'rose_gen', 'rose_fam', 'stem'),
('rose', 'rosa gallica', 'rose_spec3', 'rose_gen', 'rose_fam', 'stem'),
('rose', 'rosa spinosissima', 'rose_spec5', 'rose_gen', 'rose_fam', 'stem'),
('christmas cactus', 'schlumbergera bridgesii', 'cactus_spec3', 'cactus_gen', 'cactus_fam', 'leaf'),
('easter cactus', 'schlumbergera gaertneri', 'cactus_spec4', 'cactus_gen', 'cactus_fam', 'leaf'),
('rickrack cactus', 'selenicereus anthonyanus', 'cactus_spec', 'cactus_gen', 'cactus_fam', 'leaf'),
('potato', 'solanum tuberosum', 'potato_spec', 'potato_gen', 'potato_fam', 'tuber');

-- --------------------------------------------------------

--
-- Table structure for table `parent_plant`
--

CREATE TABLE `parent_plant` (
  `plant_id` varchar(30) NOT NULL,
  `parent_plant_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `plant`
--

CREATE TABLE `plant` (
  `plant_id` varchar(30) NOT NULL,
  `scientific_name` varchar(30) DEFAULT NULL,
  `local_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plant`
--

INSERT INTO `plant` (`plant_id`, `scientific_name`, `local_name`) VALUES
('apple1', 'malus pumila', 'apple'),
('apple2', 'malus pumila', 'apple'),
('apple3', 'malus pumila', 'apple'),
('apple4', 'malus domestica', 'apple'),
('apple5', 'malus domestica', 'apple'),
('apple6', 'malus domestica', 'apple'),
('bishopcapcactus1', 'astrophytum myriostigma', 'bishop cap cactus'),
('bishopcapcactus2', 'astrophytum myriostigma', 'bishop cap cactus'),
('bishopcapcactus3', 'astrophytum myriostigma', 'bishop cap cactus'),
('christmascactus1', 'schlumbergera bridgesii', 'christmas cactus'),
('christmascactus2', 'schlumbergera bridgesii', 'christmas cactus'),
('christmascactus3', 'schlumbergera bridgesii', 'christmas cactus'),
('eastercactus1', 'schlumbergera gaertneri', 'easter cactus'),
('eastercactus2', 'schlumbergera gaertneri', 'easter cactus'),
('eastercactus3', 'schlumbergera gaertneri', 'easter cactus'),
('fairycastlecactus1', 'acanthocereus tetragonus', 'fairy castle cactus'),
('fairycastlecactus2', 'acanthocereus tetragonus', 'fairy castle cactus'),
('fairycastlecactus3', 'acanthocereus tetragonus', 'fairy castle cactus'),
('feathercactus1', 'mammillaria plumosa', 'feather cactus'),
('feathercactus2', 'mammillaria plumosa', 'feather cactus'),
('feathercactus3', 'mammillaria plumosa', 'feather cactus'),
('ladyfingercactus1', 'mammillaria elongata', 'ladyfinger cactus'),
('ladyfingercactus2', 'mammillaria elongata', 'ladyfinger cactus'),
('ladyfingercactus3', 'mammillaria elongata', 'ladyfinger cactus'),
('lotus1', 'nelumbo nucifera', 'lotus'),
('lotus10', 'nymphaea caerulea', 'lotus'),
('lotus11', 'nelumbo nucifera', 'lotus'),
('lotus12', 'nymphaea caerulea', 'lotus'),
('lotus2', 'nymphaea caerulea', 'lotus'),
('lotus3', 'nelumbo nucifera', 'lotus'),
('lotus4', 'nymphaea caerulea', 'lotus'),
('lotus5', 'nelumbo nucifera', 'lotus'),
('lotus6', 'nymphaea caerulea', 'lotus'),
('lotus7', 'nelumbo nucifera', 'lotus'),
('lotus8', 'nymphaea caerulea', 'lotus'),
('lotus9', 'nelumbo nucifera', 'lotus'),
('pea1', 'pisum sativum', 'pea'),
('pea2', 'pisum sativum', 'pea'),
('pea3', 'pisum sativum', 'pea'),
('potato1', 'solanum tuberosum', 'potato'),
('potato2', 'solanum tuberosum', 'potato'),
('potato3', 'solanum tuberosum', 'potato'),
('rickrackcactus1', 'selenicereus anthonyanus', 'rickrack cactus'),
('rickrackcactus2', 'selenicereus anthonyanus', 'rickrack cactus'),
('rickrackcactus3', 'selenicereus anthonyanus', 'rickrack cactus'),
('rose1', 'rosa spinosissima', 'rose'),
('rose10', 'rosa', 'rose'),
('rose11', 'rosa', 'rose'),
('rose12', 'rosa gallica', 'rose'),
('rose13', 'rosa', 'rose'),
('rose14', 'rosa gallica', 'rose'),
('rose15', 'rosa canina', 'rose'),
('rose16', 'rosa canina', 'rose'),
('rose17', 'rosa gallica', 'rose'),
('rose18', 'rosa chinesis', 'rose'),
('rose19', 'rosa chinesis', 'rose'),
('rose2', 'rosa chinesis', 'rose'),
('rose3', 'rosa canina', 'rose'),
('rose4', 'rosa chinesis', 'rose'),
('rose5', 'rosa canina', 'rose'),
('rose6', 'rosa spinosissima', 'rose'),
('rose7', 'rosa chinesis', 'rose'),
('rose8', 'rosa canina', 'rose'),
('rose9', 'rosa', 'rose'),
('snake1', 'dracaena trifasciata', 'snake plant'),
('snake2', 'dracaena trifasciata', 'snake plant'),
('snake3', 'dracaena trifasciata', 'snake plant'),
('snake4', 'dracaena trifasciata', 'snake plant'),
('snake5', 'dracaena trifasciata', 'snake plant'),
('snake6', 'dracaena trifasciata', 'snake plant'),
('snake7', 'dracaena trifasciata', 'snake plant'),
('snake8', 'dracaena trifasciata', 'snake plant'),
('spider1', 'chlorophytum comosum', 'spider plant'),
('spider2', 'chlorophytum comosum', 'spider plant'),
('spider3', 'chlorophytum comosum', 'spider plant'),
('spider4', 'chlorophytum comosum', 'spider plant'),
('spider5', 'chlorophytum comosum', 'spider plant'),
('spider6', 'chlorophytum comosum', 'spider plant'),
('spider7', 'chlorophytum comosum', 'spider plant'),
('spider8', 'chlorophytum comosum', 'spider plant'),
('starcactus1', 'astrophytum asterias', 'star cactus'),
('starcactus2', 'astrophytum asterias', 'star cactus'),
('starcactus3', 'astrophytum asterias', 'star cactus'),
('waterlily1', 'nymphaeaceae', 'water lily'),
('waterlily2', 'nymphaeaceae', 'water lily'),
('waterlily3', 'nymphaeaceae', 'water lily');

-- --------------------------------------------------------

--
-- Table structure for table `plant_update`
--

CREATE TABLE `plant_update` (
  `status_date` datetime DEFAULT NULL,
  `status` varchar(40) DEFAULT NULL,
  `plant_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `supplied_to`
--

CREATE TABLE `supplied_to` (
  `supplier_id` varchar(30) NOT NULL,
  `garden_id` int(11) NOT NULL,
  `supply_date` datetime DEFAULT NULL,
  `product` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` varchar(30) NOT NULL,
  `supplier_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vouchers`
--

CREATE TABLE `vouchers` (
  `voucher_id` varchar(30) NOT NULL,
  `scientific_name` varchar(30) DEFAULT NULL,
  `collector_name` varchar(30) DEFAULT NULL,
  `habitat_site` varchar(30) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cultivated_in`
--
ALTER TABLE `cultivated_in`
  ADD PRIMARY KEY (`plant_id`,`garden_id`),
  ADD KEY `garden_id` (`garden_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`E_id`),
  ADD KEY `garden_id` (`garden_id`);

--
-- Indexes for table `garden`
--
ALTER TABLE `garden`
  ADD PRIMARY KEY (`garden_id`);

--
-- Indexes for table `horticultural_data`
--
ALTER TABLE `horticultural_data`
  ADD PRIMARY KEY (`scientific_name`);

--
-- Indexes for table `parent_plant`
--
ALTER TABLE `parent_plant`
  ADD PRIMARY KEY (`plant_id`,`parent_plant_id`),
  ADD KEY `parent_plant_id` (`parent_plant_id`);

--
-- Indexes for table `plant`
--
ALTER TABLE `plant`
  ADD PRIMARY KEY (`plant_id`),
  ADD KEY `scientific_name` (`scientific_name`);

--
-- Indexes for table `plant_update`
--
ALTER TABLE `plant_update`
  ADD PRIMARY KEY (`plant_id`);

--
-- Indexes for table `supplied_to`
--
ALTER TABLE `supplied_to`
  ADD PRIMARY KEY (`supplier_id`,`garden_id`),
  ADD KEY `garden_id` (`garden_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cultivated_in`
--
ALTER TABLE `cultivated_in`
  ADD CONSTRAINT `cultivated_in_ibfk_1` FOREIGN KEY (`plant_id`) REFERENCES `plant` (`plant_id`),
  ADD CONSTRAINT `cultivated_in_ibfk_2` FOREIGN KEY (`garden_id`) REFERENCES `garden` (`garden_id`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`garden_id`) REFERENCES `garden` (`garden_id`);

--
-- Constraints for table `parent_plant`
--
ALTER TABLE `parent_plant`
  ADD CONSTRAINT `parent_plant_ibfk_1` FOREIGN KEY (`plant_id`) REFERENCES `plant` (`plant_id`),
  ADD CONSTRAINT `parent_plant_ibfk_2` FOREIGN KEY (`parent_plant_id`) REFERENCES `plant` (`plant_id`);

--
-- Constraints for table `plant`
--
ALTER TABLE `plant`
  ADD CONSTRAINT `plant_ibfk_1` FOREIGN KEY (`scientific_name`) REFERENCES `horticultural_data` (`scientific_name`);

--
-- Constraints for table `plant_update`
--
ALTER TABLE `plant_update`
  ADD CONSTRAINT `plant_update_ibfk_1` FOREIGN KEY (`plant_id`) REFERENCES `plant` (`plant_id`);

--
-- Constraints for table `supplied_to`
--
ALTER TABLE `supplied_to`
  ADD CONSTRAINT `supplied_to_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`),
  ADD CONSTRAINT `supplied_to_ibfk_2` FOREIGN KEY (`garden_id`) REFERENCES `garden` (`garden_id`);

--
-- Constraints for table `vouchers`
--
ALTER TABLE `vouchers`
  ADD CONSTRAINT `vouchers_ibfk_1` FOREIGN KEY (`voucher_id`) REFERENCES `plant` (`plant_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

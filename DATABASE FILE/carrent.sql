SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";



CREATE TABLE IF NOT EXISTS `cars` (
`car_id` int(20) NOT NULL,
  `car_name` varchar(50) NOT NULL,
  `car_nameplate` varchar(50) NOT NULL,
  `car_img` varchar(50) DEFAULT 'NA',
  `ac_price` float NOT NULL,
  `non_ac_price` float NOT NULL,
  `ac_price_per_day` float NOT NULL,
  `non_ac_price_per_day` float NOT NULL,
  `car_availability` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;


INSERT INTO `cars` (`car_id`, `car_name`, `car_nameplate`, `car_img`, `ac_price`, `non_ac_price`, `ac_price_per_day`, `non_ac_price_per_day`, `car_availability`) VALUES
(1, 'Audi A4', 'GA3KA6969', 'assets/img/cars/audi-a4.jpg', 36, 26, 5200, 2600, 'yes'),
(2, 'Hyundai Creta', 'BA2CH2020', 'assets/img/cars/creta.jpg', 22, 12, 2900, 1400, 'yes'),
(3, 'BMW 6-Series', 'BA10PA5555', 'assets/img/cars/bmw6.jpg', 39, 30, 6950, 5999, 'yes'),
(4, 'Mercedes-Benz E-Class', 'BA10CH6009', 'assets/img/cars/mcec.jpg', 45, 30, 7200, 5200, 'yes'),
(6, 'Ford EcoSport', 'GA4PA2587', 'assets/img/cars/ecosport.png', 21, 13, 3890, 2600, 'yes'),
(7, 'Honda Amaze', 'PJ16YX8820', 'assets/img/cars/amaze.png', 14, 12, 2800, 2400, 'no'),
(8, 'Land Rover Range Rover Sport', 'GA5KH9669', 'assets/img/cars/rangero.jpg', 36, 26, 6000, 4600, 'yes'),
(9, 'MG Hector', 'GA6PA6666', 'assets/img/cars/mghector.jpg', 20, 12, 2900, 1400, 'yes'),
(10, 'Honda CR-V', 'TN17MS1997', 'assets/img/cars/hondacr.jpg', 22, 15, 2850, 1400, 'yes'),
(11, 'Mahindra XUV 500', 'KA12EX1883', 'assets/img/cars/Mahindra XUV.jpg', 15, 13, 3000, 2600, 'yes'),
(12, 'Toyota Fortuner', 'GA08MX1997', 'assets/img/cars/Fortuner.png', 16, 14, 3200, 2800, 'yes'),
(13, 'Hyundai Veloster', 'BA20PA5685', 'assets/img/cars/hyundai0.png', 23, 15, 4500, 3500, 'yes'),
(14, 'Jaguar XF', 'GA8KH8866', 'assets/img/cars/jaguarxf.jpg', 39, 29, 6100, 4380, 'yes');



CREATE TABLE IF NOT EXISTS `clientcars` (
  `car_id` int(20) NOT NULL,
  `client_username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `clientcars` (`car_id`, `client_username`) VALUES
(1, 'ved'),
(3, 'param'),
(7, 'prathamesh'),
(8, 'megh'),
(9, 'omkar'),
(11, 'ved'),
(12, 'param'),
(2, 'prathamesh'),
(4, 'megh'),
(6, 'omkar'),
(10, 'ved'),
(13, 'param'),
(14, 'prathamesh');

CREATE TABLE IF NOT EXISTS `clients` (
  `client_username` varchar(50) NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `client_phone` varchar(15) NOT NULL,
  `client_email` varchar(25) NOT NULL,
  `client_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL,
  `client_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `clients` (`client_username`, `client_name`, `client_phone`, `client_email`, `client_address`, `client_password`) VALUES
('ved', 'Ved Vekhande', '7558224026', 'vedvekhande7274@gmail.com', 'Diu, Daman and Diu', 'ved@mysql'),
('param', 'Param Prajapati', '7850000069', 'param@gmail.com', 'Diu, Daman and Diu', 'param@mysql'),
('prathamesh', 'Prathamesh Pawar', '900696969', 'prathamesh@gmail.com', 'Diu, Daman and Diu', 'prathamesh@mysql'),
('megh', 'Megh Bhatt', '9262384736', 'megh@gmail.com', 'Diu, Daman and Diu', 'megh@mysql'),
('omkar', 'Omkar Mohanty', '8354723487', 'omkar@gmail.com', 'Diu, Daman and Diu', 'omkar@mysql');




CREATE TABLE IF NOT EXISTS `customers` (
  `customer_username` varchar(50) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_phone` varchar(15) NOT NULL,
  `customer_email` varchar(25) NOT NULL,
  `customer_address` varchar(50) NOT NULL,
  `customer_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `customers` (`customer_username`, `customer_name`, `customer_phone`, `customer_email`, `customer_address`, `customer_password`) VALUES
('gunal', 'Gunal Gupta', '9246237284', 'gunal@gmail.com', 'Diu, Daman and Diu', 'gunal@mysql'),
('harsh', 'Harsh Taunk', '7855565850', 'harsh@gmail.com', 'Diu, Daman and Diu', 'harsh@mysql'),
('pradyot', 'Pradyot Soni', '9354824537', 'pradyot@gmail.com', 'Diu, Daman and Diu', 'pradyot@mysql'),
('nilesh', 'Nilesh Phaphale', '7236358530', 'nilesh@gmail.com', 'Diu, Daman and Diu', 'nilesh@mysql'),
('navin', 'Navin Kumar', '9352565850', 'navin@gmail.com', 'Diu, Daman and Diu', 'navin@mysql');


CREATE TABLE IF NOT EXISTS `driver` (
`driver_id` int(20) NOT NULL,
  `driver_name` varchar(50) NOT NULL,
  `dl_number` varchar(50) NOT NULL,
  `driver_phone` varchar(15) NOT NULL,
  `driver_address` varchar(50) NOT NULL,
  `driver_gender` varchar(10) NOT NULL,
  `client_username` varchar(50) NOT NULL,
  `driver_availability` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;



INSERT INTO `driver` (`driver_id`, `driver_name`, `dl_number`, `driver_phone`, `driver_address`, `driver_gender`, `client_username`, `driver_availability`) VALUES
(1, 'Harsh Sharma', '27840218658 ', '9547863157', 'Diu, Daman and Diu', 'Male', 'ved', 'yes'),
(2, 'Saurya Gupta', '03191563155 ', '9147523684', 'Diu, Daman and Diu', 'Male', 'param', 'yes'),
(3, 'Gaurav Tripathi', '32346288078 ', '9147523682', 'Diu, Daman and Diu', 'Male', 'prathamesh', 'yes'),
(4, 'Tejas Raj', '04316015965 ', '9187563240', 'Diu, Daman and Diu', 'Male', 'megh', 'no'),
(5, 'Anubhav Dubey', '68799466631 ', '7584960123', 'Diu, Daman and Diu', 'Male', 'omkar', 'yes'),
(6, 'Rohit Shirsat', '36740186040 ', '8421025476', 'Diu, Daman and Diu', 'Male', 'ved', 'yes'),
(7, 'Govind garg', '44919316260 ', '7541023695', 'Diu, Daman and Diu', 'Male', 'param', 'yes'),
(8, 'ROhith M', '94592817723', '5215557850', 'Diu, Daman and Diu', 'Male', 'prathamesh', 'yes');


CREATE TABLE IF NOT EXISTS `feedback` (
  `name` varchar(20) NOT NULL,
  `e_mail` varchar(30) NOT NULL,
  `message` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `feedback` (`name`, `e_mail`, `message`) VALUES
('Nikhil', 'nikhil@gmail.com', 'Hope this works.');



CREATE TABLE IF NOT EXISTS `rentedcars` (
`id` int(100) NOT NULL,
  `customer_username` varchar(50) NOT NULL,
  `car_id` int(20) NOT NULL,
  `driver_id` int(20) NOT NULL,
  `booking_date` date NOT NULL,
  `rent_start_date` date NOT NULL,
  `rent_end_date` date NOT NULL,
  `car_return_date` date DEFAULT NULL,
  `fare` double NOT NULL,
  `charge_type` varchar(25) NOT NULL DEFAULT 'days',
  `distance` double DEFAULT NULL,
  `no_of_days` int(50) DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `return_status` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=574681260 DEFAULT CHARSET=utf8;



INSERT INTO `rentedcars` (`id`, `customer_username`, `car_id`, `driver_id`, `booking_date`, `rent_start_date`, `rent_end_date`, `car_return_date`, `fare`, `charge_type`, `distance`, `no_of_days`, `total_amount`, `return_status`) VALUES
(574681245, 'gunal', 4, 2, '2018-07-18', '2018-07-01', '2018-07-02', '2018-07-18', 11, 'km', 244, 1, 5884, 'R'),
(574681246, 'harsh', 6, 6, '2018-07-18', '2018-06-01', '2018-06-28', '2018-07-18', 15, 'km', 69, 27, 5035, 'R'),
(574681247, 'pradyot', 3, 1, '2018-07-18', '2018-07-19', '2018-07-22', '2018-07-20', 13, 'km', 421, 3, 5473, 'R'),
(574681248, 'nilesh', 1, 2, '2018-07-20', '2018-07-28', '2018-07-29', '2018-07-20', 10, 'km', 69, 1, 690, 'R'),
(574681249, 'navin', 1, 2, '2018-07-23', '2018-07-24', '2018-07-25', '2018-07-23', 10, 'km', 500, 1, 5000, 'R'),
(574681250, 'gunal', 3, 2, '2018-07-23', '2018-07-23', '2018-07-24', '2018-07-23', 2600, 'days', NULL, 1, 2600, 'R'),
(574681251, 'harsh', 10, 1, '2018-07-23', '2018-07-25', '2018-07-30', '2018-07-23', 10, 'km', 60, 2, 600, 'R'),
(574681252, 'nilesh', 11, 2, '2018-07-23', '2018-07-23', '2018-07-23', '2018-07-23', 13, 'km', 200, 0, 2600, 'R'),
(574681253, 'pradyot', 6, 7, '2018-07-23', '2018-07-23', '2018-08-03', '2018-07-23', 2600, 'days', NULL, 11, 28600, 'R'),
(574681254, 'navin', 12, 5, '2018-07-23', '2018-07-23', '2018-07-26', '2018-07-23', 3200, 'days', NULL, 3, 9600, 'R'),
(574681255, 'harsh', 8, 5, '2018-07-23', '2018-07-23', '2018-08-08', '2018-07-23', 2400, 'days', NULL, 16, 38400, 'R'),
(574681257, 'gunal', 7, 4, '2018-08-11', '2018-08-13', '2018-08-17', NULL, 14, 'km', NULL, NULL, NULL, 'NR'),
(574681258, 'pradyot', 3, 1, '2021-03-24', '2021-03-24', '2021-03-25', '2021-03-24', 2600, 'days', NULL, 1, 2600, 'R'),
(574681259, 'nilesh', 14, 8, '2021-03-24', '2021-03-24', '2021-03-26', '2021-03-24', 6100, 'days', NULL, 2, 12200, 'R');


ALTER TABLE `cars`
 ADD PRIMARY KEY (`car_id`), ADD UNIQUE KEY `car_nameplate` (`car_nameplate`);


ALTER TABLE `clientcars`
 ADD PRIMARY KEY (`car_id`), ADD KEY `client_username` (`client_username`);


ALTER TABLE `clients`
 ADD PRIMARY KEY (`client_username`);


ALTER TABLE `customers`
 ADD PRIMARY KEY (`customer_username`);


ALTER TABLE `driver`
 ADD PRIMARY KEY (`driver_id`), ADD UNIQUE KEY `dl_number` (`dl_number`), ADD KEY `client_username` (`client_username`);


ALTER TABLE `rentedcars`
 ADD PRIMARY KEY (`id`), ADD KEY `customer_username` (`customer_username`), ADD KEY `car_id` (`car_id`), ADD KEY `driver_id` (`driver_id`);


ALTER TABLE `cars`
MODIFY `car_id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;

ALTER TABLE `driver`
MODIFY `driver_id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;

ALTER TABLE `rentedcars`
MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=574681260;

ALTER TABLE `clientcars`
ADD CONSTRAINT `clientcars_ibfk_1` FOREIGN KEY (`client_username`) REFERENCES `clients` (`client_username`),
ADD CONSTRAINT `clientcars_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`);


ALTER TABLE `driver`
ADD CONSTRAINT `driver_ibfk_1` FOREIGN KEY (`client_username`) REFERENCES `clients` (`client_username`);


ALTER TABLE `rentedcars`
ADD CONSTRAINT `rentedcars_ibfk_1` FOREIGN KEY (`customer_username`) REFERENCES `customers` (`customer_username`),
ADD CONSTRAINT `rentedcars_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`),
ADD CONSTRAINT `rentedcars_ibfk_3` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

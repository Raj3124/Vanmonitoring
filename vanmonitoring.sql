/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.7.13-log : Database - vanmonitoring
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`vanmonitoring` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `vanmonitoring`;

/*Table structure for table `area` */

DROP TABLE IF EXISTS `area`;

CREATE TABLE `area` (
  `area_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `area` */

/*Table structure for table `citizen` */

DROP TABLE IF EXISTS `citizen`;

CREATE TABLE `citizen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `area` text,
  `username` text,
  `password` text,
  `phone` text,
  `address` text,
  `email` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `citizen` */

insert  into `citizen`(`id`,`name`,`area`,`username`,`password`,`phone`,`address`,`email`) values (1,'raj','bhawarkua','raj','raj123','9876543210','address','rsm31123@ggg.com'),(2,'rohit','Vijay Nagar','rohit','rohit123','9807065432','122, Vijay Nagar','rohit@123.com');

/*Table structure for table `driver` */

DROP TABLE IF EXISTS `driver`;

CREATE TABLE `driver` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `phone` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `driver` */

insert  into `driver`(`id`,`name`,`phone`) values (1,'raj','8901234567');

/*Table structure for table `instantcomplaint` */

DROP TABLE IF EXISTS `instantcomplaint`;

CREATE TABLE `instantcomplaint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizen_id` int(11) DEFAULT NULL,
  `complaint` text NOT NULL,
  `is_resolved` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizen_id` (`citizen_id`),
  CONSTRAINT `instantcomplaint_ibfk_1` FOREIGN KEY (`citizen_id`) REFERENCES `citizen` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='is_resolved- 0 for unresolved 1 for resolved';

/*Data for the table `instantcomplaint` */

insert  into `instantcomplaint`(`id`,`citizen_id`,`complaint`,`is_resolved`) values (1,1,'project khatam nai ho rha',0),(2,1,'sssssssss',0),(3,2,'complaint123',1);

/*Table structure for table `location` */

DROP TABLE IF EXISTS `location`;

CREATE TABLE `location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `daytime` datetime DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `speed` double DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vehicle_id` (`vehicle_id`),
  CONSTRAINT `location_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `location` */

insert  into `location`(`id`,`daytime`,`latitude`,`longitude`,`speed`,`vehicle_id`) values (1,'2018-03-26 12:35:00',22.728758,75.868758,34,1),(2,'2018-03-26 10:00:00',22.727749,75.869026,34,1);

/*Table structure for table `sosmsg` */

DROP TABLE IF EXISTS `sosmsg`;

CREATE TABLE `sosmsg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `driver_id` int(11) DEFAULT NULL,
  `sosmessage` text,
  PRIMARY KEY (`id`),
  KEY `driver_id` (`driver_id`),
  CONSTRAINT `sosmsg_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sosmsg` */

/*Table structure for table `suggestion` */

DROP TABLE IF EXISTS `suggestion`;

CREATE TABLE `suggestion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizen_id` int(11) DEFAULT NULL,
  `suggestion` text,
  PRIMARY KEY (`id`),
  KEY `citizen_id` (`citizen_id`),
  CONSTRAINT `suggestion_ibfk_1` FOREIGN KEY (`citizen_id`) REFERENCES `citizen` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `suggestion` */

/*Table structure for table `vehicles` */

DROP TABLE IF EXISTS `vehicles`;

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle_number` text,
  `driver_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `driver_id` (`driver_id`),
  CONSTRAINT `vehicles_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `vehicles` */

insert  into `vehicles`(`id`,`vehicle_number`,`driver_id`) values (1,'mp09aa1234',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

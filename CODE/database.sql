/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 5.5.5-10.4.28-MariaDB : Database - movierecommondation
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`movierecommondation` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `movierecommondation`;

/*Table structure for table `allpayments` */

DROP TABLE IF EXISTS `allpayments`;

CREATE TABLE `allpayments` (
  `id` int(250) NOT NULL AUTO_INCREMENT,
  `movieid` varchar(200) DEFAULT NULL,
  `moviename` varchar(200) DEFAULT NULL,
  `ticketcount` varchar(200) DEFAULT NULL,
  `totalprice` varchar(200) DEFAULT NULL,
  `cardname` varchar(220) DEFAULT NULL,
  `cardnumber` varchar(200) DEFAULT NULL,
  `cvv` varchar(200) DEFAULT NULL,
  `expdate` varchar(200) DEFAULT NULL,
  `useremail` varchar(200) DEFAULT NULL,
  `imageid` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `allpayments` */

insert  into `allpayments`(`id`,`movieid`,`moviename`,`ticketcount`,`totalprice`,`cardname`,`cardnumber`,`cvv`,`expdate`,`useremail`,`imageid`) values (1,'1','The Last Witch Hunter','2','200','Kumar Gangarapu','9845821254685975','259','12/26','kumar@gmail.com','https://image.tmdb.org/t/p/original/qXvOpA2nhK5HQ6I95sN3nnMtfjH.jpg');

/*Table structure for table `reg` */

DROP TABLE IF EXISTS `reg`;

CREATE TABLE `reg` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `reg` */

insert  into `reg`(`id`,`name`,`email`,`password`) values (1,'kumar','kumar@gmail.com','1234'),(2,'nani','nani@gmail.com','1234');

/*Table structure for table `titles` */

DROP TABLE IF EXISTS `titles`;

CREATE TABLE `titles` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `Moviename` varchar(100) DEFAULT NULL,
  `Overview` varchar(250) DEFAULT NULL,
  `Genre` varchar(50) DEFAULT NULL,
  `Releaseddate` varchar(50) DEFAULT NULL,
  `Runtime` varchar(50) DEFAULT NULL,
  `Imgaddress` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `titles` */

insert  into `titles`(`id`,`Moviename`,`Overview`,`Genre`,`Releaseddate`,`Runtime`,`Imgaddress`) values (1,'The Last Witch Hunter','The modern world holds many secrets, but by far the most astounding is that witches still live among us; vicious supernatural creatures intent on unleashing the Black Death upon the world and putting an end to the human race once and for all. Armies ','Fantasy, Action, Adventure','Oct 21 2015','1 hour(s) 46 min(s)','https://image.tmdb.org/t/p/original/qXvOpA2nhK5HQ6I95sN3nnMtfjH.jpg'),(2,'Hulk','Bruce Banner, a genetics researcher with a tragic past, suffers massive radiation exposure in his laboratory that causes him to transform into a raging green monster when he gets angry.','Science Fiction, Adventure, Action','Jun 19 2003','2 hour(s) 18 min(s)','https://image.tmdb.org/t/p/original/qnngKqAcqfH2pBxDoKu5lxzSbTo.jpg'),(3,'Ghost Rider','In order to save his dying father, young stunt cyclist Johnny Blaze sells his soul to Mephistopheles and sadly parts from the pure-hearted Roxanne Simpson, the love of his life. Years later, Johnny\'s path crosses again with Roxanne, now a go-getting ','Thriller, Action, Fantasy','Jan 15 2007','1 hour(s) 54 min(s)','https://image.tmdb.org/t/p/original/8LaVQiXBsnlo7MXCPK1nXTVARUZ.jpg'),(4,'King Kong','In 1933 New York, an overly ambitious movie producer coerces his cast and hired ship crew to travel to mysterious Skull Island, where they encounter Kong, a giant ape who is immediately smitten with the leading lady.','Adventure, Drama, Action','Dec 12 2005','3 hour(s) 7 min(s)','https://image.tmdb.org/t/p/original/6a2HY6UmD7XiDD3NokgaBAXEsD2.jpg'),(5,'Anaconda','A \"National Geographic\" film crew is taken hostage by an insane hunter, who takes them along on his quest to capture the world\'s largest - and deadliest - snake.','Adventure, Horror, Thriller','Apr 11 1997','1 hour(s) 29 min(s)','https://image.tmdb.org/t/p/original/33NysOnLpLZY0ewHTcfpalzAsRG.jpg'),(6,'Spider-Man','After being bitten by a genetically altered spider at Oscorp, nerdy but endearing high school student Peter Parker is endowed with amazing powers to become the superhero known as Spider-Man.','Fantasy, Action','May 01 2002','2 hour(s) 1 min(s)','https://image.tmdb.org/t/p/original/gh4cZbhZxyTbgxQPxD0dOudNPTn.jpg'),(7,'Django Unchained','With the help of a German bounty hunter, a freed slave sets out to rescue his wife from a brutal Mississippi plantation owner.','Drama, Western','Dec 25 2012','2 hour(s) 45 min(s)','https://image.tmdb.org/t/p/original/7oWY8VDWW7thTzWh3OKYRkWUlD5.jpg'),(8,'Son of the Mask','Tim Avery, an aspiring cartoonist, finds himself in a predicament when his dog stumbles upon the mask of Loki. Then after conceiving an infant son \"born of the mask\", he discovers just how looney child raising can be.','Fantasy, Comedy, Family, Adventure','Feb 18 2005','1 hour(s) 34 min(s)','https://image.tmdb.org/t/p/original/Adgnfhm9B8YAQmC0osuP4zO9SRc.jpg'),(9,'The Dark Knight Rises','Following the death of District Attorney Harvey Dent, Batman assumes responsibility for Dent\'s crimes to protect the late attorney\'s reputation and is subsequently hunted by the Gotham City Police Department. Eight years later, Batman encounters the ','Action, Crime, Drama, Thriller','Jul 16 2012','2 hour(s) 45 min(s)','https://image.tmdb.org/t/p/original/85cWkCVftiVs0BVey6pxX8uNmLt.jpg'),(10,'Jumanji: The Next Level','As the gang return to Jumanji to rescue one of their own, they discover that nothing is as they expect. The players will have to brave parts unknown and unexplored in order to escape the world’s most dangerous game.','Adventure, Comedy, Fantasy','Dec 04 2019','2 hour(s) 3 min(s)','https://image.tmdb.org/t/p/original/jyw8VKYEiM1UDzPB7NsisUgBeJ8.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

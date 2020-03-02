/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.0.27-community-nt : Database - articlesummarization
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`articlesummarization` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `articlesummarization`;

/*Table structure for table `complainmaster` */

DROP TABLE IF EXISTS `complainmaster`;

CREATE TABLE `complainmaster` (
  `complainId` int(11) NOT NULL auto_increment,
  `complainSubject` varchar(100) default NULL,
  `complainDescription` text,
  `datasetname` varchar(50) default NULL,
  `datasetpath` varchar(150) default NULL,
  `complainFrom_LoginId` int(11) default NULL,
  `complainDate` varchar(15) default NULL,
  `replyDescription` text,
  `replyDate` varchar(15) default NULL,
  `complainStatus` varchar(20) default NULL,
  PRIMARY KEY  (`complainId`),
  KEY `complainmaster_ibfk_1` (`complainFrom_LoginId`),
  CONSTRAINT `complainmaster_ibfk_1` FOREIGN KEY (`complainFrom_LoginId`) REFERENCES `loginmaster` (`loginId`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `complainmaster` */

insert  into `complainmaster`(`complainId`,`complainSubject`,`complainDescription`,`datasetname`,`datasetpath`,`complainFrom_LoginId`,`complainDate`,`replyDescription`,`replyDate`,`complainStatus`) values (1,'upload file error','complain desc...','aboutUs.PNG','project/static/adminresources/dataset',2,'2019/06/12','complain reply...','2019/06/19','replied'),(4,'waiting time issues','complain desc...','userComplain.PNG','project/static/adminresources/dataset',6,'2019/06/13',NULL,NULL,'pending'),(5,'not txt format','complain desc...','userEditProfile.PNG','project/static/adminresources/dataset',2,'2019/06/13',NULL,NULL,'pending'),(6,'waiting time issues','complain desc...','userFeedback.PNG','project/static/adminresources/dataset',2,'2019/06/05','complain reply.....................','2019/06/15','replied'),(7,'pdf not summarized','complain desc.....','userComplain.PNG','project/static/adminresources/dataset',2,'2019/06/04',NULL,NULL,'pending'),(10,'upload file error','complain desc...','userComplain.PNG','project/static/adminresources/dataset',2,'2019/06/15',NULL,NULL,'pending'),(11,'pdf not summarized','complain desc','userComplain.PNG','project/static/adminresources/dataset',6,'2019/06/04','complain reply...','2020/02/28','replied'),(13,'waiting time issues','complain desc...','contactus.PNG','project/static/adminresources/dataset',6,'2019/06/16',NULL,NULL,'pending'),(14,'complain subj....','complain desc...','contactus.PNG','project/static/adminresources/dataset',2,'2019/06/22','reply...','2019/07/05','replied'),(15,'pdf not summarized','complain desc...','userComplain.PNG','project/static/adminresources/dataset',2,'2019/06/22',NULL,NULL,'pending'),(16,'waiting time issues','complain desc...','userComplain.PNG','project/static/adminresources/dataset',2,'2019/06/22',NULL,NULL,'pending'),(17,'upload file error','complain desc...','userComplain.PNG','project/static/adminresources/dataset',2,'2019/06/22',NULL,NULL,'pending'),(18,'waiting time issues','complain desc...','userComplain.PNG','project/static/adminresources/dataset',2,'2019/06/22',NULL,NULL,'pending'),(19,'pdf not summarized','complain desc...','userComplain.PNG','project/static/adminresources/dataset',2,'2019/06/22',NULL,NULL,'pending'),(21,'complain subj....','check','hospital_flow.PNG','project/static/adminresources/dataset',18,'2019/09/07',NULL,NULL,'pending');

/*Table structure for table `feedbackmaster` */

DROP TABLE IF EXISTS `feedbackmaster`;

CREATE TABLE `feedbackmaster` (
  `feedbackId` int(11) NOT NULL auto_increment,
  `feedbackRating` varchar(30) default NULL,
  `feedbackDescription` text,
  `feedbackFrom_LoginId` int(11) default NULL,
  `feedbackDate` varchar(15) default NULL,
  PRIMARY KEY  (`feedbackId`),
  KEY `feedbackFrom_LoginId` (`feedbackFrom_LoginId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `feedbackmaster` */

insert  into `feedbackmaster`(`feedbackId`,`feedbackRating`,`feedbackDescription`,`feedbackFrom_LoginId`,`feedbackDate`) values (1,'3','Portal is very helpful.',2,'2019/06/04'),(3,'2','Helpful but time consuming sometimes.',2,'2019/06/15'),(4,'3','Very friendly and professional summarization method, as well as they have good customer service.',6,'2019/06/03'),(7,'2','The Summarization Service has better customer service than any other portal. Thank you so much.',2,'2019/06/22'),(8,'2','Very friendly and professional summarization method, as well as they have good customer service.',2,'2019/06/22'),(9,'3','good',18,'2019/09/07');

/*Table structure for table `loginmaster` */

DROP TABLE IF EXISTS `loginmaster`;

CREATE TABLE `loginmaster` (
  `loginId` int(11) NOT NULL auto_increment,
  `loginEmail` varchar(30) default NULL,
  `loginPassword` varchar(30) default NULL,
  `loginRole` varchar(15) default NULL,
  `loginStatus` varchar(15) default NULL,
  PRIMARY KEY  (`loginId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `loginmaster` */

insert  into `loginmaster`(`loginId`,`loginEmail`,`loginPassword`,`loginRole`,`loginStatus`) values (1,'admin@gmail.com','admin','admin','active'),(2,'n1234@gmail.com','qyBdAZDI','user','active'),(4,'h1234@gmail.com','hetal123','user','active'),(5,'m1234@gmail.com','meetpatel123','user','active'),(6,'c1234@gmail.com','cherylsolanki123','user','active'),(7,'p1234@gmail.com','n0bdbu7l','user','active'),(11,'panditasit786@gmail.com','ryODSIbi','user','active'),(12,'pandit_asit@ymail.com','JnKMy5JV','user','active'),(16,'amiprajapati1102@gmail.com','00Qe0yOF','user','active'),(17,'sethmanali@gmail.com','3lB9LPP8','user','active'),(18,'vaishalivora5090@gmail.com','8Nh1TXtj','user','active'),(29,'jinal@gmail.com','ZjmlbYJT','user','active'),(30,'jagu@gmail.com','gduLvNeM','user','active'),(31,'ayan@gmail.com','oCXdDdmg','user','active'),(32,'nidhs@gmail.com','asa523oG','user','active'),(34,'nir@gmail.com','tRFx7u1u','user','active'),(35,'niru@gmail.com','lrUXmvYS','user','active'),(36,'gopi@gmail.com','9rkoDv1L','user','active'),(37,'rads@gmail.com','AiwkGqtw','user','active'),(38,'heer123@gmail.com','heer123','user','active');

/*Table structure for table `summarymaster` */

DROP TABLE IF EXISTS `summarymaster`;

CREATE TABLE `summarymaster` (
  `summaryId` int(11) NOT NULL auto_increment,
  `summary_LoginId` int(11) default NULL,
  `datasetname` varchar(50) default NULL,
  `datasetpath` varchar(150) default NULL,
  `summaryDate` varchar(15) default NULL,
  `summary_articleType` varchar(30) default NULL,
  `summary_articleFormat` varchar(10) default NULL,
  `summary_datasetname` varchar(50) default NULL,
  `summary_datasetpath` varchar(150) default NULL,
  PRIMARY KEY  (`summaryId`),
  KEY `summary_LoginId` (`summary_LoginId`),
  CONSTRAINT `summarymaster_ibfk_3` FOREIGN KEY (`summary_LoginId`) REFERENCES `loginmaster` (`loginId`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `summarymaster` */

insert  into `summarymaster`(`summaryId`,`summary_LoginId`,`datasetname`,`datasetpath`,`summaryDate`,`summary_articleType`,`summary_articleFormat`,`summary_datasetname`,`summary_datasetpath`) values (9,4,'s2.txt','project/static/adminresources/dataset','2020/02/27','Article','.txt','summary_s2.txt','project/static/adminresources/summary_dataset'),(10,2,'textdoc.txt','project/static/adminresources/dataset','2020/02/27','Article','.txt','summary_textdoc.txt','project/static/adminresources/summary_dataset'),(11,5,'demotxt.txt','project/static/adminresources/dataset','2020/02/27','Article','.txt','summary_demotxt.txt','project/static/adminresources/summary_dataset'),(12,6,'demotxt.txt','project/static/adminresources/dataset','2020/02/27','Article','.txt','summary_demotxt.txt','project/static/adminresources/summary_dataset'),(13,4,'demotxt.txt','project/static/adminresources/dataset','2020/02/27','Article','.txt','summary_demotxt.txt','project/static/adminresources/summary_dataset'),(14,4,'demotxt.txt','project/static/adminresources/dataset','2020/02/29','Article','.txt','summary_demotxt.txt','project/static/adminresources/summary_dataset'),(15,2,'textdoc.txt','project/static/adminresources/dataset','2020/03/02','Article','.txt','summary_textdoc.txt','project/static/adminresources/summary_dataset'),(16,2,'s1.txt','project/static/adminresources/dataset','2020/03/02','Article','.txt','summary_s1.txt','project/static/adminresources/summary_dataset');

/*Table structure for table `usermaster` */

DROP TABLE IF EXISTS `usermaster`;

CREATE TABLE `usermaster` (
  `userId` int(11) NOT NULL auto_increment,
  `userFirstName` varchar(20) default NULL,
  `userLastName` varchar(20) default NULL,
  `userAddress` text,
  `userGender` varchar(10) default NULL,
  `userDateOfBirth` varchar(15) default NULL,
  `userContactNumber` varchar(10) default NULL,
  `user_LoginId` int(11) default NULL,
  PRIMARY KEY  (`userId`),
  KEY `user_LoginId` (`user_LoginId`),
  CONSTRAINT `usermaster_ibfk_1` FOREIGN KEY (`user_LoginId`) REFERENCES `loginmaster` (`loginId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `usermaster` */

insert  into `usermaster`(`userId`,`userFirstName`,`userLastName`,`userAddress`,`userGender`,`userDateOfBirth`,`userContactNumber`,`user_LoginId`) values (1,'Niralii','Patel','Bhairavnath - Isanpur Rd, Near Govind Vadi Bus Stop Rajeshwari Society, Shivpark Society, Viratnagar, Vishalnagar, Isanpur, Ahmedabad, Gujarat 382443','Female','1999-12-07','9673574673',2),(2,'Hetal','Shah','Shilalekh Complex, G E 1 To 4, Vastrapur Rd, Vastrapur, Ahmedabad, Gujarat 380015','Female','1997-07-10','7586579754',4),(3,'Meet','Patel','Krishna Palace, Opp:Gopal Tower, Opp:Bank Of India,Station Road, Lala Lajpat Rai Marg, Maninagar, Ahmedabad, Gujarat 380008','Male ','1996-07-09','7574854795',5),(4,'Cheryl','Solanki','Sarangpur Lokhand Bazar, Opposite Meghdoot Hotel, Kalupur, Kalupur, Ahmedabad, Gujarat 380002','Female','2003-07-06','7689798595',6),(5,'Preeti','Hemlani','Dhartinagar Shopping Centre, Opposite Chandkheda Railway Station, Tragad Road, Chandkheda, Ahmedabad, Gujarat 382470','Female','1999-08-15','9476345373',7),(6,'Asit','Pandit','Sundaram Flats, Kankaria, Maninagar, Ahmedabad, Gujarat 380008\r\n','Male ','2000-06-20','6482394737',11),(7,'Asit','Pandit','Premchand Nagar Rd, JAYMA SOCIETY, Satellite, Ahmedabad, Gujarat 380015','Male ','1987-06-19','8578747874',12),(8,'ami','patel','Vastrapur Lake, Vastrapur, Ahmedabad, Gujarat 380052','Female','2006-06-08','9863722231',16),(9,'rk','rk','F/F, 1,2,14, Dhartinagar Shopping Centre, Opposite Chandkheda Railway Station, Near Rajeshwari Society, Tragad Rd, Aabugiri Tenement, Chandkheda, Ahmedabad, Gujarat 382470      ','Female','1992-01-01','9363466638',17),(10,'r','v','Dharti Nagar, Chandkheda, Ahmedabad, Gujarat 382424','Female','2004-09-01','8236638810',18),(11,'jinal','patel','Shri Swaminarayan Temple ,Kalupur, Ahmedabad','Female','1982-08-08','9678745645',29),(12,'jagruti','vora','4th Floor, Mansarovar Avenue, Wadaj, Ahmedabad - 380013, \r\nOpposite Laxmi Hospital, Near Bhimjipura Cross Road','Female','2006-07-07','9567438565',30),(13,'Ayan','seth','2nd Floor, Scarlet Business Hub,\r\n Paldi Bhattha Road, Paldi, Ahmedabad - 380007, \r\nNear Mahalaxmi Five Road, Opposite Ankur School','Male ','2006-01-23','9555776464',31),(14,'nidhi','shah','FF 7, 8, 9, Devam Residency, Gamdi Vatva Road, New Vatva, Vatva, Ahmedabad - 382440, Opp. Shaan 3','Male ','2007-07-08','9988998877',32),(16,'nirbhay','shah','Surgen Triangle, Isanpur, Ahmedabad - 382443, Opposite Govindavadi','Male ','2008-02-02','9999955555',34),(17,'nirupa','shah','Radhe Park Society, Vatva, Ahmedabad, Gujarat','Female','2005-02-04','9934563765',35),(18,'gopi','vora','Kaveri Complex, Subhash Bridge Circle, Subhash Bridge, Ahmedabad - 380027, Opposite Rto Office','Female','1999-12-08','912345674',36),(19,'radha','shah','Nr. Visat petrol pump, ONGC Avani bhavan, Sunrise Nagar, Ram Nagar, Sabarmati, Ahmedabad, Gujarat 380005','Female','2001-06-12','9273645744',37),(20,'Heer','Patel','123, Kohinoor Flats','Female','2000-03-03','9328638323',38);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

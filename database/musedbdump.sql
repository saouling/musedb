-- MySQL dump 10.14  Distrib 5.5.57-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: musedb
-- ------------------------------------------------------
-- Server version	5.5.57-MariaDB
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `musedb`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `musedb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `musedb`;

--
-- Temporary table structure for view `artlist`
--

DROP TABLE IF EXISTS `artlist`;
/*!50001 DROP VIEW IF EXISTS `artlist`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `artlist` (
  `username` tinyint NOT NULL,
  `Museum` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `cityID` int(6) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `country` varchar(40) DEFAULT NULL,
  `languages` varchar(40) DEFAULT NULL,
  `timeZone` enum('GMT-1','GMT+0','GMT+1','GMT+2') DEFAULT NULL,
  `currency` enum('EUR','AMD','AZN','BYN','BAM','BGN','HRK','CZK','DKK','GEL','HUF','ISK','CHF','MDL','MKD','NOK','PLN','RON','RUB','RSD','SEK','TRY','UAH','GBP') DEFAULT NULL,
  PRIMARY KEY (`cityID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Berlin','Germany','German,English','GMT+1','EUR'),(2,'Athens','Greece','Greek,English','GMT+2','EUR'),(3,'Paris','France','French,English','GMT+1','EUR'),(4,'Amsterdam','Netherlands','Dutch,English','GMT+1','EUR'),(5,'Vienna','Austria','German,English','GMT+1','EUR'),(6,'London','UK','English','GMT+0','GBP'),(7,'Rome','Italy','Italian,English','GMT+1','EUR');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creator`
--

DROP TABLE IF EXISTS `creator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creator` (
  `creatorID` int(6) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `bio` varchar(1000) DEFAULT NULL,
  `nationality` varchar(40) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`creatorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creator`
--

LOCK TABLES `creator` WRITE;
/*!40000 ALTER TABLE `creator` DISABLE KEYS */;
INSERT INTO `creator` VALUES (800000,'Vincent Van Gogh','Vincent Willem van Gogh (30 March 1853 - 29 July 1890) was a Dutch post-impressionist painter who is among the most famous and influential figures in the history of Western art. In just over a decade, he created about 2,100 artworks, including around 860 oil paintings, most of which date from the last two years of his life. They include landscapes, still lifes, portraits and self-portraits, and are characterised by bold colours and dramatic, impulsive and expressive brushwork that contributed to the foundations of modern art. He was not commercially successful, and his suicide at 37 came after years of mental illness, depression and poverty.','Dutch','https://www.holland.com/upload_mm/2/5/2/56781_fullimage_vincent_van_gogh.jpg'),(800001,'Gustav Klimt','Gustav Klimt (July 14, 1862 - February 6, 1918) was an Austrian symbolist painter and one of the most prominent members of the Vienna Secession movement. Klimt is noted for his paintings, murals, sketches, and other objet d\'art. Klimt\'s primary subject was the female body, and his works are marked by a frank eroticism. In addition to his figurative works, which include allegories and portraits, he painted landscapes. Among the artists of the Vienna Secession, Klimt was the most influenced by Japanese art and its methods.','Austrian','https://upload.wikimedia.org/wikipedia/commons/d/d8/Klimt.jpg'),(800002,'Phidias','Phidias or Pheidias was a Greek sculptor, painter, and architect. His Statue of Zeus at Olympia was one of the Seven Wonders of the Ancient World. Phidias also designed the statues of the goddess Athena on the Athenian Acropolis, namely the Athena Parthenos inside the Parthenon, and the Athena Promachos, a colossal bronze which stood between it and the Propylaea, a monumental gateway that served as the entrance to the Acropolis in Athens. Phidias was the son of Charmides of Athens. The ancients believed that his masters were Hegias and Ageladas.','Greek','https://t2.gstatic.com/images?q=tbn:ANd9GcQQ3tEn6ab69VSpWlRNaLNZACuPhmAxb2yvdGeXjzinfTkQ9zgGhcRIYGDvZDqZ'),(800003,'Maja Vukoje','Maja Vukoje is a 51 year old Contemporary artist. Maja Vukoje is a German female artist born in Dusseldorf, Niederrhein, NW (DE) in 1969.','German','https://tirza.at/imgs/i/3n1yv.jpg?705151443'),(800004,'Michelangelo','Michelangelo di Lodovico Buonarroti Simoni (Italian: 6 March 1475 - 18 February 1564), known best as simply Michelangelo, was an Italian sculptor, painter, architect and poet of the High Renaissance born in the Republic of Florence, who exerted an unparalleled influence on the development of Western art. His artistic versatility was of such a high order that he is often considered a contender for the title of the archetypal Renaissance man, along with his rival, the fellow Florentine, Leonardo da Vinci. Several scholars have described Michelangelo as the greatest artist of his age and even as the greatest artist of all time.','Italian','https://www.iellada.gr/sites/default/files/styles/article/public/field/image/28190990_2020432651543002_1953954602_n.jpg?itok=os07s85V'),(800005,'Eduard Angeli','Eduard Angeli was born on July 15, 1942 in Vienna, Austria.','Austrian','https://4.bp.blogspot.com/-4KViDVQHXqY/V-4H_dHvLAI/AAAAAAABHBY/FAG3owsr7kI1LBTAiGcMWVRKwCyRbJH8QCEw/s1600/eduard%2Bangeli.jpg'),(800006,'David Hockney','David Hockney, OM, CH, RA (born 9 July 1937) is an English painter, draftsman, printmaker, stage designer, and photographer. As an important contributor to the pop art movement of the 1960s, he is considered one of the most influential British artists of the 20th century.','British','https://www.irishnews.com/picturesarchive/irishnews/irishnews/2020/01/12/181102402-ac43aec6-4d9d-46cc-9f46-974f2aad07f7.jpg'),(800007,'Edmund de Waal','Edmund Arthur Lowndes de Waal, OBE (born 10 September 1964) is a contemporary English artist, master potter and author. He is known for his large-scale installations of porcelain vessels often created in response to collections and archives or the history of a particular place. In 2011 he was awarded the Order of the British Empire (OBE) for Service to the Arts. De WaalΓò¼├┤Γö£├ºΓö£├╗s book The Hare with Amber Eyes was awarded the Costa Book Award for Biography, Royal Society of Literature Ondaatje Prize in 2011 and WindhamΓò¼├┤Γö£├ºΓö£ΓöñCampbell Literature Prize for Non-Fiction in 2015. De Waal\'s second book The White Road, tracing his journey to discover the history of porcelain was released in 2015.','British','https://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/Edmund_de_Waal_Linz_BHO-9340.jpg/1200px-Edmund_de_Waal_Linz_BHO-9340.jpg9340.jpg'),(800008,'Donatello','Donato di Niccol di Betto Bardi (c.1386 - 13 December 1466), better known as Donatello , was an Italian sculptor of the Renaissance. Born in Florence, he studied classical sculpture and used this to develop a complete Renaissance style in sculpture, whose periods in Rome, Padua and Siena introduced to other parts of Italy a long and productive career. He worked with stone, bronze, wood, clay, stucco and wax, and had several assistants, with four perhaps being a typical number. Though his best-known works were mostly statues in the round, he developed a new, very shallow, type of bas-relief for small works, and a good deal of his output was larger architectural reliefs.','Florentine','https://i.pinimg.com/originals/9e/a5/3d/9ea53d70c9937aeea225f63c114c59f0.jpg'),(800010,'Hans Bol','Hans Bol or Jan Bol (16 December 1534 - 20 November 1593), was a Flemish painter, print artist, miniaturist painter and draftsman. He is known for his landscapes, allegorical and biblical scenes, and genre paintings executed in a late Northern Mannerist style.After a successful career in Flanders, he left his home country for the Dutch Republic during the Siege of Antwerp. His landscape work had an important influence on the next generation of Dutch landscape painters. His prints after his own designs as well as those of Flemish masters such as Pieter Brueghel the Elder contributed to the spread of their themes in the Northern Netherlands.','Flemish ','https://www.jitter-magazin.de/wp/wp-content/uploads/2014/06/o_st_presse_goltzius_muller-post.jpg');
/*!40000 ALTER TABLE `creator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creator_creates_exhibit`
--

DROP TABLE IF EXISTS `creator_creates_exhibit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creator_creates_exhibit` (
  `exhibitID` int(6) NOT NULL,
  `creatorID` int(6) NOT NULL,
  PRIMARY KEY (`exhibitID`,`creatorID`),
  KEY `fk_Exhibit_has_Creator_Creator1_idx` (`creatorID`),
  KEY `fk_Exhibit_has_Creator_Exhibit1_idx` (`exhibitID`),
  CONSTRAINT `FK_creatorID_for_cce` FOREIGN KEY (`creatorID`) REFERENCES `creator` (`creatorID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_exhibitID_for_cce` FOREIGN KEY (`exhibitID`) REFERENCES `exhibit` (`exhibitID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creator_creates_exhibit`
--

LOCK TABLES `creator_creates_exhibit` WRITE;
/*!40000 ALTER TABLE `creator_creates_exhibit` DISABLE KEYS */;
INSERT INTO `creator_creates_exhibit` VALUES (123,800000),(900000,800000),(900001,800006),(900002,800002),(900003,800010),(900004,800004),(900005,800001),(900006,800003),(900007,800007),(900008,800005),(900009,800008);
/*!40000 ALTER TABLE `creator_creates_exhibit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `creators_in_exhibition`
--

DROP TABLE IF EXISTS `creators_in_exhibition`;
/*!50001 DROP VIEW IF EXISTS `creators_in_exhibition`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `creators_in_exhibition` (
  `exhibition` tinyint NOT NULL,
  `creator` tinyint NOT NULL,
  `bio` tinyint NOT NULL,
  `photo` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `exhibit`
--

DROP TABLE IF EXISTS `exhibit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exhibit` (
  `exhibitID` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) DEFAULT NULL,
  `type` enum('Painting','Sculpture','Fossil','Photograph','Other') DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `photo` varchar(250) DEFAULT NULL,
  `exhibitionID` int(6) NOT NULL,
  PRIMARY KEY (`exhibitID`),
  KEY `fk_exhibit_exhibition1_idx` (`exhibitionID`),
  CONSTRAINT `fk_exhibit_exhibition1` FOREIGN KEY (`exhibitionID`) REFERENCES `exhibition` (`exhibitionID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=900010 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exhibit`
--

LOCK TABLES `exhibit` WRITE;
/*!40000 ALTER TABLE `exhibit` DISABLE KEYS */;
INSERT INTO `exhibit` VALUES (123,'Starry Night Over the Rhone','Painting','Starry Night (September 1888, French: La Nuit ├⌐toil├⌐e), commonly known as Starry Night Over the Rh├┤ne, is one of Vincent van Gogh\'s paintings of Arles at night. It was painted on the bank of the Rh├┤ne that was only a one or two-minute walk from the Yellow House on the Place Lamartine, which Van Gogh was renting at the time. The night sky and the effects of light at night provided the subject for some of van Gogh\'s more famous paintings, including Caf├⌐ Terrace at Night (painted earlier the same month) and the June, 1889, canvas from Saint-Remy, The Starry Night. ','https://static01.nyt.com/images/2019/03/27/arts/26VANGOGH-BRITAIN-1/merlin_152403333_3552f80f-9675-4951-bc32-0b8cbdbfa090-superJumbo.jpg',123456),(356489,'Starry Night','Painting','The Starry Night is an oil on canvas painting by Dutch Post-Impressionist painter Vincent van Gogh. Painted in June 1889, it depicts the view from the east-facing window of his asylum room at Saint-R├⌐my-de-Provence, just before sunrise, with the addition of an imaginary village','https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg/1280px-Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg',123456),(900000,'Almond Blossoms','Painting','Almond Blossoms is from a group of several paintings made in 1888 and 1890 by Vincent van Gogh in Arles and Saint-R╬ô├╢┬ú╬ô├«├ëmy, southern France of blossoming almond trees. Flowering trees were special to van Gogh. They represented awakening and hope. He enjoyed them aesthetically and found joy in painting flowering trees.','https://upload.wikimedia.org/wikipedia/commons/thumb/6/68/Vincent_van_Gogh_-_Almond_blossom_-_Google_Art_Project.jpg/1139px-Vincent_van_Gogh_-_Almond_blossom_-_Google_Art_Project.jpg',129839),(900001,'Under the Trees','Painting','Under the trees is one of his best work of his career.','https://az333960.vo.msecnd.net/images-0/under-the-trees-bigger-david-hockney-2011-2ba020aa.jpg',123456),(900002,'Caryatid','Sculpture','A caryatid is a sculpted female figure serving as an architectural support taking the place of a column or a pillar supporting an entablature on her head. The Greek term karyatides literally means \"maidens of Karyai\", an ancient town on the Peloponnese.','https://www.nationalgeographic.com/content/dam/travel/intelligent-travel/rights-exempt/files/2009/06/nytimes_caryatids-thumb-500x332-480x318.ngsversion.1569326183423.adapt.1900.1.jpg',123457),(900003,'Park Landscape with Castle','Painting','Park Landscape with Castle of Hans Bol.','https://cdn.gallerix.asia/sr/_UNK/3598920208/3554.jpg',123458),(900004,'David','Painting','David is a masterpiece of Renaissance sculpture created in marble between 1501 and 1504 by the Italian artist Michelangelo. David is a 5.17-metre (17.0 ft) marble statue of the Biblical figure David, a favoured subject in the art of Florence.','https://www.italymagazine.com/sites/default/files/david-michelangelo.jpg',124458),(900005,'The Kiss','Painting','The Kiss (in German Der Kuss) is an oil-on-canvas painting with added gold leaf, silver and platinum. by the Austrian Symbolist painter Gustav Klimt. It was painted at some point in 1907 and 1908, during the height of what scholars call his \"Golden Period\".','https://www.gustav-klimt.com/images/paintings/The-Kiss.jpg',129841),(900006,'Patata','Painting','Patata is an artwork of Maja Vukoje.','https://d7hftxdivxxvm.cloudfront.net/?resize_to=fit&width=400&height=256&quality=80&src=https%3A%2F%2Fd32dm0rphc51dk.cloudfront.net%2FHkHwRDB4s-UWKgW360GGRg%2Flarge.jpg',129842),(900007,'The Hare with Amber Eyes','Other','The Hare with Amber Eyes (2010) is a family memoir by British ceramicist Edmund de Waal. De Waal tells the story of his family, the Ephrussi, once a very wealthy European Jewish banking dynasty, centered in Odessa, Vienna and Paris, and peers of the Rothschild family. The Ephrussis lost almost everything in 1938 when the Nazis confiscated their property, and were unable to recover most of their property after the war, including priceless artwork; an easily hidden collection of 264 Japanese netsuke miniature sculptures was saved, tucked away inside a mattress by Anna, a loyal maid at Palais Ephrussi in Vienna during the war years. The collection has been passed down through five generations of the Ephrussi family, providing a common thread for the story of its fortunes from 1871 to 2009.','https://cbsnews3.cbsistatic.com/hub/i/r/2018/11/24/59841d66-8bc4-4eb6-981b-6a2f0d8e094d/thumbnail/640x480/e13e68f734675ac24f6b2f3b50b18e05/edmund-de-waal-netsuke-hare-with-amber-eyes-promo.jpg',129840),(900008,'Das Haus mit dem Lautsprecher,2012','Painting','Das Haus mit dem Lautsprecher,2012 by Eduard Angeli','https://i.pinimg.com/originals/61/c2/59/61c2597f73927d866b9c252fd5c27616.jpg',129838),(900009,'Bust of Niccolo da Uzzano','Sculpture','Bust of Niccolo da Uzzano by Donatello in Museo Nazionale del Bargello, Florence, Italy.','https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Niccolo_da_uzzano_cast_2.jpg/1200px-Niccolo_da_uzzano_cast_2.jpg',124458);
/*!40000 ALTER TABLE `exhibit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exhibition`
--

DROP TABLE IF EXISTS `exhibition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exhibition` (
  `exhibitionID` int(6) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `isTemporary` tinyint(1) DEFAULT NULL,
  `type` enum('Photography','Sculpture','Gallery','Other') DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `director` varchar(40) DEFAULT NULL,
  `website` varchar(70) DEFAULT NULL,
  `museumID` int(6) NOT NULL,
  PRIMARY KEY (`exhibitionID`),
  KEY `fk_Exhibition_Museum1_idx` (`museumID`),
  CONSTRAINT `FK_museumID_for_exhibition` FOREIGN KEY (`museumID`) REFERENCES `museum` (`museumID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exhibition`
--

LOCK TABLES `exhibition` WRITE;
/*!40000 ALTER TABLE `exhibition` DISABLE KEYS */;
INSERT INTO `exhibition` VALUES (123456,'Van Gogh The Joy of Nature',1,'Gallery','In yet another 2019 exhibition bringing together two great artists from very different periods, the Van Gogh Museum in Amsterdam is putting on Hockney Γò¼├┤Γö£├ºΓö£Γöñ Van Gogh: The Joy of Nature. David Hockney, with his strikingly colourful and colossal paintings has been deeply inspired by Van Gogh throughout his career, and this exhibition explores the parallels between the two artists','David Hockney','vangoghmuseum.nl/en/stories/hockney-van-gogh-two-painters-one-love#2',400002),(123457,'Acropolis Museum Main Exhibition',0,'Sculpture','After crossing the ground floor lobby towards the turn styles of the Museum, the first collection lies before the visitor. An ascending, wide glass-floored gallery houses finds from the slopes of the Acropolis. The occasionally transparent floor provides a view of the archaeological excavation, while its upward slope alludes to the ascent to the Acropolis.','Ministry of Culture','theacropolismuseum.gr/en/content/gallery-slopes-acropolis',200001),(123458,'Art of Islamic Cultures Main Exhibition',0,'Other','The broad spectrum of the collection includes architectural decorations, applied arts and crafts, jewelry, and rare illuminated and calligraphed manuscripts. The architectural decorations represent one of the major attractions, conveying also typical concepts of space and environments in various media: stone (the fa╬ô├╢┬úΓö¼Γòæade from Mshatta), stuccoes (archaeological finds from Samarra), painted wooden panelling (Aleppo Room) and wall ceramics in various techniques (prayer niches from Kashan and Konya).','Museum of Islamic Art Director','smb.museum/en/museums-institutions/pergamonmuseumexhibitions/',100002),(124458,'Body and Soul',1,'Sculpture','The Body and Soul exhibition, organized in collaboration with the Castello Sforzesco Museum in Milan, seeks to bring to light the main themes and ideas developed in Italy during the second half of the Quattrocento.','Marc Bormand','louvre.fr/en/expositions/body-and-soul-italian-renaissance-sculpture',300001),(129838,'Black White & Grey',1,'Gallery','In this exhibition, the ALBERTINA Museum presents large-format works from its own collection. Whether using pencil, ink, chalk, wire, or the moving imageΓò¼├┤Γö£├ºΓö£Γòóhere, drawing expands familiar dimensions by far.','Alois Mosbacher ','albertina.at/en/exhibitions/black-white-and-grey/',500001),(129839,'Van Gogh\'s Masterpieces',0,'Gallery','Explore Vincent van Gogh\'s masterpieces in the museum\'s permanent exhibition. See his development as an artist in the museum galleries. Get to know his ideas and ambitions and step into Van Gogh\'s world.','Van Gogh Museum Director','https://www.vangoghmuseum.nl/en/visit/whats-on/',400002),(129840,'Edmund de Waal',1,'Other','Created as a \'space to sit and read and be\', library of exile is an installation by British artist and writer, Edmund de Waal, housing more than 2,000 books in translation, written by exiled authors.','Hartwig Fischer','britishmuseum.org/exhibitions/edmund-de-waal-library-exile',600001),(129841,'Belvedere Main Exhibition',0,'Other','Get ready for a short vacation at the Upper Belvedere Γò¼├┤Γö£├ºΓö£Γöñ visit with old acquaintances and make new friends: You are invited to do just that by exploring some 430 exhibits from 800 years of art history. Crucial Austrian works by Rueland Frueauf the Elder, Elena Luksch-Makowsky, Gustav Klimt, Egon Schiele, Helene Funke, and Oskar Kokoschka stand alongside international highlights by Vincent van Gogh and Auguste Rodin. ','Austrian Gallery Belvedere Director','https://www.belvedere.at/en/permanent-collection',500002),(129842,'Maja Vukoje',1,'Gallery','In her painting Maja Vukoje explores cultural hybridity and transculturality as basic conditions of our globalized lives. Over various stages of her artistic career, Vukoje has developed a distinct artistic language in which she not only focuses on the mixture and fusion of elements of different cultures as visual motifs. Vukoje also reflects these hybrid phenomena in the materials and artistic methods she applies, thus blurring the boundaries of painting as a medium.','Luisa Ziaja','https://www.belvedere.at/en/maja-vukoje',500002);
/*!40000 ALTER TABLE `exhibition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `exhibitions_in_city`
--

DROP TABLE IF EXISTS `exhibitions_in_city`;
/*!50001 DROP VIEW IF EXISTS `exhibitions_in_city`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `exhibitions_in_city` (
  `exhibition` tinyint NOT NULL,
  `city` tinyint NOT NULL,
  `museum` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likes` (
  `userID` int(6) NOT NULL,
  `museumID` int(6) NOT NULL,
  PRIMARY KEY (`userID`,`museumID`),
  KEY `fk_user_has_museum_museum1_idx` (`museumID`),
  KEY `fk_user_has_museum_user1_idx` (`userID`),
  CONSTRAINT `fk_user_has_museum_museum1` FOREIGN KEY (`museumID`) REFERENCES `museum` (`museumID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_has_museum_user1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (111890,400001),(125009,400001),(125009,600002),(125400,200002),(125400,300002),(125400,600001),(125428,100002),(125428,200001),(125428,300001),(125900,400002),(125900,700001),(125999,100001),(125999,700002),(134500,500001),(138004,500002),(200205,200002),(201845,200002),(201845,400001),(321569,400001),(321569,500001),(346789,100002),(346789,600002),(663568,100002),(666793,200002),(666794,100002),(666794,700001);
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `museum`
--

DROP TABLE IF EXISTS `museum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `museum` (
  `museumID` int(6) NOT NULL,
  `name` varchar(80) NOT NULL,
  `type` enum('Archaeological','Art','History','War','Science','Natural History','Wax','Historic Houses','Enthographic','Virtual','Cultural','Gallery','Other') NOT NULL,
  `address` varchar(150) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `ownership` enum('state-owned','local-owned','private-owned') DEFAULT NULL,
  `annuaNumberlOfVisitors` int(10) DEFAULT NULL,
  `staff` int(6) DEFAULT NULL,
  `website` varchar(70) DEFAULT NULL,
  `cityID` int(6) NOT NULL,
  `description` varchar(3000) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`museumID`),
  KEY `fk_Museum_City1_idx` (`cityID`),
  CONSTRAINT `FK_cityID_for_museum` FOREIGN KEY (`cityID`) REFERENCES `city` (`cityID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `museum`
--

LOCK TABLES `museum` WRITE;
/*!40000 ALTER TABLE `museum` DISABLE KEYS */;
INSERT INTO `museum` VALUES (1234,'Vatican Museums','Gallery',' 00120 Vatican City','info@vaticanmuseums.com','002541236589','state-owned',NULL,120,'museivaticani.va',2,'The Vatican Museums trace their origin to one marble sculpture, purchased in the 16th century: Laoco├╢n and His Sons was discovered on 14 January 1506, in a vineyard near the basilica of Santa Maria Maggiore in Rome. Pope Julius II sent Giuliano da Sangallo and Michelangelo Buonarroti, who were working at the Vatican, to examine the discovery. On their recommendation, the pope immediately purchased the sculpture from the vineyard owner. The pope put the sculpture, which depicts the Trojan priest Laoco├╢n and his two sons being attacked by giant serpents, on public display at the Vatican exactly one month after its discovery.  Benedict XIV founded the Museum Christianum, and some of the Vatican collections formed the Lateran Museum, which Pius IX founded by decree in 1854.','https://upload.wikimedia.org/wikipedia/commons/3/31/Musei_Vaticani._Braccio_Nuovo.JPG'),(100001,'Nationalgalerie','Gallery','Genthiner Str. 38, 10785 Berlin, Germany','info@nationalgalerie.de','004930266424242','state-owned',240000,124,'smb.museum/en/museums-institutions/nationalgalerie',1,'The Alte Nationalgalerie (English: Old National Gallery) is a listed building on the Museum Island in the historic centre of Berlin and part of the UNESCO World Heritage. It was built from 1862 to 1876 by order of King Frederick William IV of Prussia according to plans by Friedrich August St├╝ler and Johann Heinrich Strack in Neoclassical and Renaissance Revival styles. The building\'s outside stair features a memorial to Frederick William IV.[1] Currently, the Alte Nationalgalerie is home to paintings and sculptures of the 19th century.','https://www.inexhibit.com/wp-content/uploads/2014/09/Alte-Nationalgalerie-Berlin-01.jpg'),(100002,'Pergamonmuseum','Archaeological',' Genthiner Str. 38, 10785 Berlin, Germany','info@pergamonmuseum.de','004930266424242','state-owned',600150,102,'smb.museum/museen-einrichtungen/pergamonmuseum',1,'The Pergamonmuseum (pronounced [╦êp╔¢╩ü.╔ía.m╔ön.mu╦îze╦É.╩èm] (About this soundlisten), English: Pergamon Museum) is a listed building on the Museum Island in the historic centre of Berlin and part of the UNESCO World Heritage. It was built from 1910 to 1930 by order of German Emperor William II according to plans by Alfred Messel and Ludwig Hoffmann in Stripped Classicism style.[1] Currently, the Pergamonmuseum is home to the Antikensammlung including the famous Pergamon Altar, the Vorderasiatisches Museum and the Museum f├╝r Islamische Kunst. Parts of the building are closed for renovation until 2023','https://www.dw.com/image/38208004_403.jpg'),(200001,'Acropolis Museum','Archaeological','15 Dionysiou Areopagitou Street, Athens 11742','info@theacropolismuseum.gr','00302109000900','state-owned',100000,273,'theacropolismuseum.gr',2,'The Acropolis Museum (Greek: ╬£╬┐╧à╧â╬╡╬»╬┐ ╬æ╬║╧ü╧î╧Ç╬┐╬╗╬╖╧é, Mouseio Akropolis) is an archaeological museum focused on the findings of the archaeological site of the Acropolis of Athens. The museum was built to house every artifact found on the rock and on the surrounding slopes, from the Greek Bronze Age to Roman and Byzantine Greece. It also lies over the ruins of a part of Roman and early Byzantine Athens.','https://www.inexhibit.com/wp-content/uploads/2014/07/acropolis-museum-athens-11.jpg'),(200002,'Benaki Museum','Cultural','1 Koumbari St. & Vas. Sofias Ave., 106 74 Athens','benaki@benaki.gr','00302126875275','state-owned',20000,32,'benaki.org',2,'The Benaki Museum, established and endowed in 1930 by Antonis Benakis in memory of his father Emmanuel Benakis, is housed in the Benakis family mansion in downtown Athens, Greece. The museum houses Greek works of art from the prehistorical to the modern times, an extensive collection of Asian art, hosts periodic exhibitions and maintains a state-of-the-art restoration and conservation workshop. Although the museum initially housed a collection that included Islamic art, Chinese porcelain and exhibits on toys, its 2000 re-opening led to the creation of satellite museums that focused on specific collections, allowing the main museum to focus on Greek culture over the span of the country\'s history.','https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/Benaki_Museum_Athens.JPG/390px-Benaki_Museum_Athens.JPG'),(300001,'Louvre Museum','Art','Rue de Rivoli,75001 Paris, France','handicap@louvre.fr','0033140205990','state-owned',1652123,1453,'louvre.fr',3,'The Louvre (English: /╦êlu╦Év(r╔Ö)/ LOOV(-r╔Ö)[3]), or the Louvre Museum (French: Mus├⌐e du Louvre [myze dy luv╩ü] (About this soundlisten)), is the world\'s largest art museum and a historic monument in Paris, France. A central landmark of the city, it is located on the Right Bank of the Seine in the city\'s 1st arrondissement (district or ward). Approximately 38,000 objects from prehistory to the 21st century are exhibited over an area of 72,735 square meters (782,910 square feet).[4] In 2019, the Louvre received 9.6 million visitors, making it the most visited museum in the world.','https://www.airtecnics.com/media/6385/Louvre-museum-in-Paris.jpg'),(300002,'Orsay Museum','Art','1 Rue de la Legion d\'Honneur, 75007 Paris, France','info@dorsay.fr','0033140494814','state-owned',100000,123,'musee-orsay.fr',3,'The museum building was originally a railway station, Gare d\'Orsay, constructed for the Chemin de Fer de Paris ├á Orl├⌐ans and finished in time for the 1900 Exposition Universelle to the design of three architects: Lucien Magne, ├ëmile B├⌐nard and Victor Laloux. It was the terminus for the railways of southwestern France until 1939.','https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Pont_Royal_and_Mus%C3%A9e_d%27Orsay%2C_Paris_10_July_2020.jpg/345px-Pont_Royal_and_Mus%C3%A9e_d%27Orsay%2C_Paris_10_July_2020.jpg'),(400001,'Rijksmuseum','Cultural','Museumstraat 1, 1071 XX Amsterdam, Netherlands','info@rijksmuseum.nl','0031206747000','state-owned',32000,23,'rijksmuseum.nl',4,'The Rijksmuseum is the museum of the Netherlands. Its world-famous masterworks from the Dutch Golden Age include the Milkmaid by Vermeer and Rembrandt\'s Night Watch. The Rijksmuseum itself is also a masterpiece. The collection is presented in a stunning building with amazing interior design. In 80 galleries 8,000 objects tell the story of 800 years of Dutch art and history, from the Middle Ages to Mondrian.','https://www.iefimerida.gr/sites/default/files/archive-files/ethniko_moyseio_the_rijksmuseum_amsterntam.jpg'),(400002,'Van Gogh Museum','Gallery','Museumplein 6, 1071, DJ Amsterdam, Netherlands','info@vangoghmuseum.nl','0031020505200','state-owned',320000,325,'vangogh.nl',4,'The Van Gogh Museum in Amsterdam houses the largest collection of artworks by Vincent van Gogh (1853-1890) in the world. The permanent collection includes over 200 paintings by Vincent van Gogh, 500 drawings and more than 750 letters. The museum also presents exhibitions on various subjects from 19th-century art history.','https://losthink.com/wp-content/uploads/2020/09/museum-losthink.com_.jpg'),(500001,'Albertina','Gallery','Albertinaplatz 1, 1010 Wien, Austria','besucher@albertina.at','43153483540','state-owned',150000,203,'albertina.at',5,'Located in the historical heart of Vienna, the Albertina combines imperial flair and masterpieces of art. What used to be the city\'s largest residential palace during the Habsburg monarchy is now an art museum of international renown whose name is also associated with one of the worlds most important graphic art collections and which attracts cultural travelers and city tourists from around the globe. ','https://upload.wikimedia.org/wikipedia/commons/f/f8/Albertina1.JPG'),(500002,'Austrian Gallery Belvedere','Gallery','Prinz Eugen-Stra╬ô├╢┬úΓò₧├åe 27, 1030 Wien, Austria','info@belvedere.at','431795570','state-owned',300000,382,'belvedere.at',5,'The Upper Belvedere houses the impressive collection of Austrian art dating from the Middle Ages to the present day. At the heart of the displays of art around 1900 is the worldΓÇÖs largest Gustav Klimt collection. The glittering highlights are KlimtΓÇÖs golden pictures Kiss and Judith, and masterpieces by Schiele and Kokoschka. Prominent works by the French Impressionists and the outstanding collection of Viennese Biedermeier paintings are further attractions at the Upper Belvedere.','https://travelen.eu/wp-content/uploads/2018/01/Bevedere-Palace-Front-View-Garden-Vienna-Travelen.jpg'),(600001,'British Museum','Other','Great Russell St, Bloomsbury, London WC1B 3DG, UK','info@britishmuseum.uk','4402073238000','state-owned',800000,350,'britishmuseum.org',6,'The British MuseumΓÇÖs remarkable collection spans over two million years of human history and culture. Over 6 million visitors every year experience the collection, including world-famous objects such as the Rosetta Stone, the Parthenon sculptures, and Egyptian mummies.','https://dmdlnu87i51n1.cloudfront.net/v1/uk/cjy5s86xz4dcg0195lvydm4of/0x120:1163x611/1200x630/2279ne_for_front_british_museum_the_trustees_of_the_british_museum.jpg'),(600002,'The National Gallery','Gallery','Trafalgar Square, Charing Cross, London WC2N 5DN, UK','information@ng-london.org.uk','4402077472885','state-owned',500000,102,'nationalgallery.org.uk',6,'The National Gallery Collection contains over 2,300 works, including many famous works, such as van EyckΓÇÖs \'Arnolfini Portrait\', Vel├ízquezΓÇÖs \'Rokeby Venus\', TurnerΓÇÖs \'Fighting Temeraire\' and Van GoghΓÇÖs \'Sunflowers\'.','https://i2.wp.com/londontopia.net/wp-content/uploads/2015/03/National_Gallery_London_2013_March.jpg?fit=2560%2C1280&ssl=1'),(700001,'La Galleria Nazionale d\'Arte Moderna E Contemporanea','Gallery','Viale delle Belle Arti, 131, 00197 Roma RM, Italy',' info@gallerianazionalemoderna.it','3906322981','state-owned',55000,62,'lagallerianazionale.com',7,'The Galleria Nazionale d\'Arte Moderna e Contemporanea (\"national gallery of modern and contemporary art\"), also known as La Galleria Nazionale, is an art gallery in Rome, Italy. It was founded in 1883 on the initiative of the then Minister Guido Baccelli and is dedicated to modern and contemporary art. The museum displays about 1100 paintings and sculptures of the nineteenth and twentieth centuries, of which it has the largest collection in Italy. Among the Italian artists represented are Giacomo Balla, Umberto Boccioni, Alberto Burri, Antonio Canova, Giorgio de Chirico, Lucio Fontana, Amedeo Modigliani, Giacomo Manz├╣, Vittorio Matteo Corcos and Giorgio Morandi. ','https://turismoroma.it/sites/default/files/lagallerianazionale_0.jpg'),(700002,'Galleria Nazionale d\'Arte Antica in Palazzo Barberini','Gallery','Via delle Quattro Fontane, 13, 00184 Roma RM, Italy',' info@pallazobarberini.it','3965214578','state-owned',80000,65,'barberinicorsini.org',7,'The Galleria Nazionale d\'Arte Antica (GNAA), or National Gallery of Ancient Art, is an art gallery in Rome, Italy, the main national collection of older (broadly, pre-1800) paintings in Rome. It has two sites: the Palazzo Barberini and the Palazzo Corsini.','https://pbs.twimg.com/media/EoKW6mMUwAYzYr1.jpg');
/*!40000 ALTER TABLE `museum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `museumID` int(6) NOT NULL,
  `userID` int(6) NOT NULL,
  `stars` float(2,1) DEFAULT NULL,
  `comment` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`museumID`,`userID`),
  KEY `fk_Museum_has_User1_User1_idx` (`userID`),
  KEY `fk_Museum_has_User1_Museum1_idx` (`museumID`),
  CONSTRAINT `FK_museumID_for_reviews` FOREIGN KEY (`museumID`) REFERENCES `museum` (`museumID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_userID_for_reviews` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (100001,125009,5.0,'A visit in this stunning museum is a must. It is a massive museum so make sure you have plenty of time to spend.'),(100001,125428,4.0,'We loved it!'),(100001,125999,4.0,'Classic!'),(100002,125428,5.0,'One of the best museums I\'ve seen, you will be greeted with huge pieces of history, among which an impressive grand babylonian gate.'),(200001,125400,4.0,'Gorgeous architecture. So much history & so much to see. The museum is enormous with rooms halls filled with statues & art. Very worthwhile seeing.'),(200001,125428,5.0,'Amazing!'),(200002,125400,4.0,'The Benaki Museum offers visitors an insight into Greek culture and an opportunity to discover the fascinating history of this culture.'),(200002,321569,1.0,'The building is beautiful and there is much to see, but we felt uncomfortable beacause of poor Corona virus measures.'),(300001,111890,4.0,'I\'m not massively into Art but WOW. So much to look at, make sure you have an entire day to view all of the beauty inside. Very busy, so especially due to COVID be masked up! Pre book online to avoid the very long queue! So much history. Best section for me was the Napoleon Apartments! '),(300001,125009,5.0,'A visit in this stunning museum is a must. It is a massive museum so make sure you have plenty of time to spend. Luckily it wasn\'t really busy so we could enjoy and admire every part of it. Recommended.'),(300001,125400,2.0,'Yes it\'s great, but I must give the washroom situation two stars!'),(300001,125428,5.0,'Been to Paris before but this was our first time visiting this place due to the long queue but it\'s understandable since it\'s one of the most famous site in Paris. Adorned with beautiful art masterpieces and stunning exterior and interior, this huge museum must be on your top list when in Paris. But please remember that it is huge and expensive with long queue to get inside. But overall, it\'s worth a visit!'),(300002,125009,4.0,'It was very interesting, we loved it.'),(300002,125400,5.0,'Very beautiful museum located in the center of Paris in very beautiful districts, very beautiful collections of art and different styles.'),(400001,125009,5.0,'Must see.'),(400001,138004,2.0,'Excellent museum,terrible experience. Very crowded.'),(400001,201845,5.0,'A must-see in Amsterdam in the magnificent Rijksmuseum. Art-galore of all descriptions including sculptures, a fabulous library, and Rembrandt\'s \"Night Watch\" painting! There is a lot to see.'),(400002,125900,5.0,'The audio tour is a must if you \'re interested in knowing about his life more. The exhibit could \'ve been better tbh, but I most definitely enjoyed it.'),(400002,138004,2.0,'We were disappointed in our trip to Van Gogh. It\'s a huge building with very little to see and giant gift shops. His major works are on display elsewhere.'),(500001,321569,5.0,'If you want to see art, especially more modern are this is great. Klimt, Miro and Warhol are there, plus engravings and colour prints from the 15th century.'),(500002,138004,5.0,'The museum may be closed due to COVID but the gardens of the palace are incredible. Entry is also free.'),(600001,125009,4.0,'Such an important and valuable collection. Fascinating pieces on display. A great day out with friends.'),(600001,125400,5.0,'Enjoyable visit, plenty to see and good range of exhibits.'),(600002,125009,5.0,'Stunning, must visit.'),(600002,346789,5.0,'Not crowded at all. Amazing gallery for an art lover. '),(700001,125900,5.0,'A good collection of modern art. It touches on most major areas of western modern art. A lovely antidote to all the renaissance art you might be seeing. Both give each other context.'),(700001,666794,3.0,'I guess I am in the minority here because I didn\'t see a lot worth seeing.'),(700002,125999,5.0,'Underappreciated');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `musedb`.`reviews_BEFORE_INSERT`
BEFORE INSERT ON `musedb`.`reviews`
FOR EACH ROW
BEGIN
	IF(NEW.stars < 0 OR NEW.stars > 5) THEN
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'stars can not be less than 0 or more than 5';
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule` (
  `scheduleID` int(6) NOT NULL,
  `type` enum('Summer','Winter') DEFAULT NULL,
  `day` enum('MON','TUE','WED','THU','FRI','SAT','SUN') NOT NULL,
  `from` varchar(10) DEFAULT NULL,
  `to` varchar(10) DEFAULT NULL,
  `startDay` varchar(5) DEFAULT NULL,
  `endDay` varchar(5) DEFAULT NULL,
  `museumID` int(6) NOT NULL,
  PRIMARY KEY (`scheduleID`,`museumID`,`day`),
  KEY `fk_Schedule_Museum_idx` (`museumID`),
  CONSTRAINT `FK_museumID_for_schedule` FOREIGN KEY (`museumID`) REFERENCES `museum` (`museumID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES (1,'Winter','TUE','9:00','19:00','21/09','20/03',100001),(1,'Winter','WED','9:00','19:00','21/09','20/03',100002),(1,'Winter','MON','9:00','16:00','21/09','20/03',200001),(1,'Winter','TUE','9:00','18:00','21/09','20/03',200001),(1,'Winter','WED','9:00','16:00','21/09','20/03',200001),(1,'Winter','FRI','9:00','18:00','21/09','20/03',200002),(1,'Winter','TUE','9:00','19:00','21/09','20/03',400002),(1,'Winter','WED','9:00','19:00','21/09','20/03',400002),(2,'Summer','MON','10:00','18:00','21/03','20/09',200001),(2,'Summer','THU','10:00','18:00','21/03','20/09',200001),(2,'Summer','SAT','11:00','18:00','21/03','20/09',200001),(2,'Summer','MON','10:00','18:00','21/03','20/09',300001),(2,'Summer','THU','10:00','18:00','21/03','20/09',300002),(2,'Summer','SAT','11:00','18:00','21/03','20/09',400001),(2,'Summer','WED','9:00','16:00','21/03','20/09',400002),(2,'Summer','FRI','9:00','16:00','21/03','20/09',400002),(2,'Summer','SAT','9:00','16:00','21/03','20/09',400002),(2,'Summer','WED','9:00','16:00','01/03','31/08',500001),(2,'Summer','WED','9:00','16:00','01/03','31/08',500002),(2,'Summer','FRI','9:00','16:00','21/03','20/09',600001),(2,'Summer','SAT','9:00','16:00','01/03','31/08',600002),(2,'Summer','WED','9:00','16:00','21/03','20/09',700001),(2,'Summer','WED','9:00','16:00','21/03','20/09',700002);
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket` (
  `ticketID` int(10) NOT NULL,
  `visitorType` enum('Full','Student','Unemployed') DEFAULT NULL,
  `price` float(5,2) DEFAULT NULL,
  `timeLimitType` enum('Day','Week','Month','6-Months','Year') DEFAULT NULL,
  `from` varchar(10) DEFAULT NULL,
  `to` varchar(10) DEFAULT NULL,
  `museumID` int(6) NOT NULL,
  `userID` int(6) NOT NULL,
  PRIMARY KEY (`ticketID`,`museumID`),
  KEY `fk_Ticket_Museum1_idx` (`museumID`),
  KEY `fk_ticket_user1_idx` (`userID`),
  CONSTRAINT `FK_museumID_for_ticket` FOREIGN KEY (`museumID`) REFERENCES `museum` (`museumID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_userID_for_ticket` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (124532,'Unemployed',0.00,'Day','24-03-2019','24-03-2019',100002,125999),(145712,'Unemployed',2.00,'Day','23-03-2019','23-03-2019',100001,125999),(205287,'Student',2.50,'Day','30-04-2019','30-04-2019',500001,125009),(296574,'Student',20.00,'Month','29-04-2019','28-05-2019',500002,125009),(302641,'Full',12.00,'Day','02-05-2019','02-05-2019',100002,111890),(398541,'Full',6.00,'Day','03-05-2019','03-05-2019',100001,111890),(452112,'Unemployed',5.00,'Day','01-05-2019','01-05-2019',700001,321569),(496342,'Unemployed',2.00,'Day','12-05-2019','12-05-2019',700002,321569),(620378,'Student',12.00,'6-Months','01-01-2019','30-06-2019',600002,666793),(652145,'Student',25.00,'6-Months','01-01-2019','30-06-2019',600001,666793),(1254839201,'Student',0.00,'Day','26-05-2019','26-05-2019',200001,125428),(1283746351,'Student',0.00,'Week','01-05-2019','07-05-2019',200002,125428),(2029384675,'Student',2.50,'Day','30-04-2019','30-04-2019',400001,125400),(2132658478,'Student',50.00,'Year','01-05-2019','30-04-2020',400002,125400);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `tickets_and_schedules_of_museum`
--

DROP TABLE IF EXISTS `tickets_and_schedules_of_museum`;
/*!50001 DROP VIEW IF EXISTS `tickets_and_schedules_of_museum`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `tickets_and_schedules_of_museum` (
  `museumID` tinyint NOT NULL,
  `museum` tinyint NOT NULL,
  `visitor_type` tinyint NOT NULL,
  `price` tinyint NOT NULL,
  `currency` tinyint NOT NULL,
  `schedule` tinyint NOT NULL,
  `day` tinyint NOT NULL,
  `from` tinyint NOT NULL,
  `to` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userID` int(6) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL,
  `nationality` varchar(40) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (111890,'Thodoris Papageorgiou','Male','Albanian','teopapag3@outlook.com'),(125009,'Anastasios Mouratidis','Male','Portuguese','atmourat@ece.auth.gr'),(125400,'Nikos Saoulidis','Male','Egyptian','saouling@ece.auth.gr'),(125428,'Christina Maria Mastralexi','Female','Spanish','cmastral@ece.auth.gr'),(125900,'Eleni Charitou','Female','Italian','charitoue@ece.auth.gr'),(125999,'Panagiotis Tsachiltzis','Other','Albanian','panpan@hotmail.com'),(134500,'Theodora Rasel','Female','Greek','raselara2@gmail.com'),(138004,'Mariagapi Xypolia','Female','Swedish','marialove@gmail.com'),(200205,'Konstantinos Tsentolini','Male','Austrian','tsentol@hotmail.com'),(201845,'Nitsa Poumpoura','Female','Greek','karantinitsa@gmail.com'),(321569,'Samuel Toci','Other','Greek','samuelito@gmail.com'),(346789,'Panagiotis Vasilakos','Male','British','bachelor@outlook.com'),(663568,'Anna Maria Tegou','Female','Greek','metanoeitai@gmail.com'),(666793,'Eirini Alexopoulou','Female','French','irene789@gmail.com'),(666794,'Aggeliki Nikolouli','Female','Ukrainian','fosstotounel@gmail.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `view_reviews`
--

DROP TABLE IF EXISTS `view_reviews`;
/*!50001 DROP VIEW IF EXISTS `view_reviews`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_reviews` (
  `username` tinyint NOT NULL,
  `museum` tinyint NOT NULL,
  `stars` tinyint NOT NULL,
  `comment` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'musedb'
--

--
-- Current Database: `musedb`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `musedb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `musedb`;

--
-- Temporary table structure for view `artlist`
--

DROP TABLE IF EXISTS `artlist`;
/*!50001 DROP VIEW IF EXISTS `artlist`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `artlist` (
  `username` tinyint NOT NULL,
  `Museum` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `cityID` int(6) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `country` varchar(40) DEFAULT NULL,
  `languages` varchar(40) DEFAULT NULL,
  `timeZone` enum('GMT-1','GMT+0','GMT+1','GMT+2') DEFAULT NULL,
  `currency` enum('EUR','AMD','AZN','BYN','BAM','BGN','HRK','CZK','DKK','GEL','HUF','ISK','CHF','MDL','MKD','NOK','PLN','RON','RUB','RSD','SEK','TRY','UAH','GBP') DEFAULT NULL,
  PRIMARY KEY (`cityID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Berlin','Germany','German,English','GMT+1','EUR'),(2,'Athens','Greece','Greek,English','GMT+2','EUR'),(3,'Paris','France','French,English','GMT+1','EUR'),(4,'Amsterdam','Netherlands','Dutch,English','GMT+1','EUR'),(5,'Vienna','Austria','German,English','GMT+1','EUR'),(6,'London','UK','English','GMT+0','GBP'),(7,'Rome','Italy','Italian,English','GMT+1','EUR');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creator`
--

DROP TABLE IF EXISTS `creator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creator` (
  `creatorID` int(6) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `bio` varchar(1000) DEFAULT NULL,
  `nationality` varchar(40) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`creatorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creator`
--

LOCK TABLES `creator` WRITE;
/*!40000 ALTER TABLE `creator` DISABLE KEYS */;
INSERT INTO `creator` VALUES (800000,'Vincent Van Gogh','Vincent Willem van Gogh (30 March 1853 - 29 July 1890) was a Dutch post-impressionist painter who is among the most famous and influential figures in the history of Western art. In just over a decade, he created about 2,100 artworks, including around 860 oil paintings, most of which date from the last two years of his life. They include landscapes, still lifes, portraits and self-portraits, and are characterised by bold colours and dramatic, impulsive and expressive brushwork that contributed to the foundations of modern art. He was not commercially successful, and his suicide at 37 came after years of mental illness, depression and poverty.','Dutch','https://www.holland.com/upload_mm/2/5/2/56781_fullimage_vincent_van_gogh.jpg'),(800001,'Gustav Klimt','Gustav Klimt (July 14, 1862 - February 6, 1918) was an Austrian symbolist painter and one of the most prominent members of the Vienna Secession movement. Klimt is noted for his paintings, murals, sketches, and other objet d\'art. Klimt\'s primary subject was the female body, and his works are marked by a frank eroticism. In addition to his figurative works, which include allegories and portraits, he painted landscapes. Among the artists of the Vienna Secession, Klimt was the most influenced by Japanese art and its methods.','Austrian','https://upload.wikimedia.org/wikipedia/commons/d/d8/Klimt.jpg'),(800002,'Phidias','Phidias or Pheidias was a Greek sculptor, painter, and architect. His Statue of Zeus at Olympia was one of the Seven Wonders of the Ancient World. Phidias also designed the statues of the goddess Athena on the Athenian Acropolis, namely the Athena Parthenos inside the Parthenon, and the Athena Promachos, a colossal bronze which stood between it and the Propylaea, a monumental gateway that served as the entrance to the Acropolis in Athens. Phidias was the son of Charmides of Athens. The ancients believed that his masters were Hegias and Ageladas.','Greek','https://t2.gstatic.com/images?q=tbn:ANd9GcQQ3tEn6ab69VSpWlRNaLNZACuPhmAxb2yvdGeXjzinfTkQ9zgGhcRIYGDvZDqZ'),(800003,'Maja Vukoje','Maja Vukoje is a 51 year old Contemporary artist. Maja Vukoje is a German female artist born in Dusseldorf, Niederrhein, NW (DE) in 1969.','German','https://tirza.at/imgs/i/3n1yv.jpg?705151443'),(800004,'Michelangelo','Michelangelo di Lodovico Buonarroti Simoni (Italian: 6 March 1475 - 18 February 1564), known best as simply Michelangelo, was an Italian sculptor, painter, architect and poet of the High Renaissance born in the Republic of Florence, who exerted an unparalleled influence on the development of Western art. His artistic versatility was of such a high order that he is often considered a contender for the title of the archetypal Renaissance man, along with his rival, the fellow Florentine, Leonardo da Vinci. Several scholars have described Michelangelo as the greatest artist of his age and even as the greatest artist of all time.','Italian','https://www.iellada.gr/sites/default/files/styles/article/public/field/image/28190990_2020432651543002_1953954602_n.jpg?itok=os07s85V'),(800005,'Eduard Angeli','Eduard Angeli was born on July 15, 1942 in Vienna, Austria.','Austrian','https://4.bp.blogspot.com/-4KViDVQHXqY/V-4H_dHvLAI/AAAAAAABHBY/FAG3owsr7kI1LBTAiGcMWVRKwCyRbJH8QCEw/s1600/eduard%2Bangeli.jpg'),(800006,'David Hockney','David Hockney, OM, CH, RA (born 9 July 1937) is an English painter, draftsman, printmaker, stage designer, and photographer. As an important contributor to the pop art movement of the 1960s, he is considered one of the most influential British artists of the 20th century.','British','https://www.irishnews.com/picturesarchive/irishnews/irishnews/2020/01/12/181102402-ac43aec6-4d9d-46cc-9f46-974f2aad07f7.jpg'),(800007,'Edmund de Waal','Edmund Arthur Lowndes de Waal, OBE (born 10 September 1964) is a contemporary English artist, master potter and author. He is known for his large-scale installations of porcelain vessels often created in response to collections and archives or the history of a particular place. In 2011 he was awarded the Order of the British Empire (OBE) for Service to the Arts. De WaalΓò¼├┤Γö£├ºΓö£├╗s book The Hare with Amber Eyes was awarded the Costa Book Award for Biography, Royal Society of Literature Ondaatje Prize in 2011 and WindhamΓò¼├┤Γö£├ºΓö£ΓöñCampbell Literature Prize for Non-Fiction in 2015. De Waal\'s second book The White Road, tracing his journey to discover the history of porcelain was released in 2015.','British','https://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/Edmund_de_Waal_Linz_BHO-9340.jpg/1200px-Edmund_de_Waal_Linz_BHO-9340.jpg9340.jpg'),(800008,'Donatello','Donato di Niccol di Betto Bardi (c.1386 - 13 December 1466), better known as Donatello , was an Italian sculptor of the Renaissance. Born in Florence, he studied classical sculpture and used this to develop a complete Renaissance style in sculpture, whose periods in Rome, Padua and Siena introduced to other parts of Italy a long and productive career. He worked with stone, bronze, wood, clay, stucco and wax, and had several assistants, with four perhaps being a typical number. Though his best-known works were mostly statues in the round, he developed a new, very shallow, type of bas-relief for small works, and a good deal of his output was larger architectural reliefs.','Florentine','https://i.pinimg.com/originals/9e/a5/3d/9ea53d70c9937aeea225f63c114c59f0.jpg'),(800010,'Hans Bol','Hans Bol or Jan Bol (16 December 1534 - 20 November 1593), was a Flemish painter, print artist, miniaturist painter and draftsman. He is known for his landscapes, allegorical and biblical scenes, and genre paintings executed in a late Northern Mannerist style.After a successful career in Flanders, he left his home country for the Dutch Republic during the Siege of Antwerp. His landscape work had an important influence on the next generation of Dutch landscape painters. His prints after his own designs as well as those of Flemish masters such as Pieter Brueghel the Elder contributed to the spread of their themes in the Northern Netherlands.','Flemish ','https://www.jitter-magazin.de/wp/wp-content/uploads/2014/06/o_st_presse_goltzius_muller-post.jpg');
/*!40000 ALTER TABLE `creator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creator_creates_exhibit`
--

DROP TABLE IF EXISTS `creator_creates_exhibit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creator_creates_exhibit` (
  `exhibitID` int(6) NOT NULL,
  `creatorID` int(6) NOT NULL,
  PRIMARY KEY (`exhibitID`,`creatorID`),
  KEY `fk_Exhibit_has_Creator_Creator1_idx` (`creatorID`),
  KEY `fk_Exhibit_has_Creator_Exhibit1_idx` (`exhibitID`),
  CONSTRAINT `FK_creatorID_for_cce` FOREIGN KEY (`creatorID`) REFERENCES `creator` (`creatorID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_exhibitID_for_cce` FOREIGN KEY (`exhibitID`) REFERENCES `exhibit` (`exhibitID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creator_creates_exhibit`
--

LOCK TABLES `creator_creates_exhibit` WRITE;
/*!40000 ALTER TABLE `creator_creates_exhibit` DISABLE KEYS */;
INSERT INTO `creator_creates_exhibit` VALUES (123,800000),(900000,800000),(900001,800006),(900002,800002),(900003,800010),(900004,800004),(900005,800001),(900006,800003),(900007,800007),(900008,800005),(900009,800008);
/*!40000 ALTER TABLE `creator_creates_exhibit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `creators_in_exhibition`
--

DROP TABLE IF EXISTS `creators_in_exhibition`;
/*!50001 DROP VIEW IF EXISTS `creators_in_exhibition`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `creators_in_exhibition` (
  `exhibition` tinyint NOT NULL,
  `creator` tinyint NOT NULL,
  `bio` tinyint NOT NULL,
  `photo` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `exhibit`
--

DROP TABLE IF EXISTS `exhibit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exhibit` (
  `exhibitID` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) DEFAULT NULL,
  `type` enum('Painting','Sculpture','Fossil','Photograph','Other') DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `photo` varchar(250) DEFAULT NULL,
  `exhibitionID` int(6) NOT NULL,
  PRIMARY KEY (`exhibitID`),
  KEY `fk_exhibit_exhibition1_idx` (`exhibitionID`),
  CONSTRAINT `fk_exhibit_exhibition1` FOREIGN KEY (`exhibitionID`) REFERENCES `exhibition` (`exhibitionID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=900010 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exhibit`
--

LOCK TABLES `exhibit` WRITE;
/*!40000 ALTER TABLE `exhibit` DISABLE KEYS */;
INSERT INTO `exhibit` VALUES (123,'Starry Night Over the Rhone','Painting','Starry Night (September 1888, French: La Nuit ├⌐toil├⌐e), commonly known as Starry Night Over the Rh├┤ne, is one of Vincent van Gogh\'s paintings of Arles at night. It was painted on the bank of the Rh├┤ne that was only a one or two-minute walk from the Yellow House on the Place Lamartine, which Van Gogh was renting at the time. The night sky and the effects of light at night provided the subject for some of van Gogh\'s more famous paintings, including Caf├⌐ Terrace at Night (painted earlier the same month) and the June, 1889, canvas from Saint-Remy, The Starry Night. ','https://static01.nyt.com/images/2019/03/27/arts/26VANGOGH-BRITAIN-1/merlin_152403333_3552f80f-9675-4951-bc32-0b8cbdbfa090-superJumbo.jpg',123456),(356489,'Starry Night','Painting','The Starry Night is an oil on canvas painting by Dutch Post-Impressionist painter Vincent van Gogh. Painted in June 1889, it depicts the view from the east-facing window of his asylum room at Saint-R├⌐my-de-Provence, just before sunrise, with the addition of an imaginary village','https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg/1280px-Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg',123456),(900000,'Almond Blossoms','Painting','Almond Blossoms is from a group of several paintings made in 1888 and 1890 by Vincent van Gogh in Arles and Saint-R╬ô├╢┬ú╬ô├«├ëmy, southern France of blossoming almond trees. Flowering trees were special to van Gogh. They represented awakening and hope. He enjoyed them aesthetically and found joy in painting flowering trees.','https://upload.wikimedia.org/wikipedia/commons/thumb/6/68/Vincent_van_Gogh_-_Almond_blossom_-_Google_Art_Project.jpg/1139px-Vincent_van_Gogh_-_Almond_blossom_-_Google_Art_Project.jpg',129839),(900001,'Under the Trees','Painting','Under the trees is one of his best work of his career.','https://az333960.vo.msecnd.net/images-0/under-the-trees-bigger-david-hockney-2011-2ba020aa.jpg',123456),(900002,'Caryatid','Sculpture','A caryatid is a sculpted female figure serving as an architectural support taking the place of a column or a pillar supporting an entablature on her head. The Greek term karyatides literally means \"maidens of Karyai\", an ancient town on the Peloponnese.','https://www.nationalgeographic.com/content/dam/travel/intelligent-travel/rights-exempt/files/2009/06/nytimes_caryatids-thumb-500x332-480x318.ngsversion.1569326183423.adapt.1900.1.jpg',123457),(900003,'Park Landscape with Castle','Painting','Park Landscape with Castle of Hans Bol.','https://cdn.gallerix.asia/sr/_UNK/3598920208/3554.jpg',123458),(900004,'David','Painting','David is a masterpiece of Renaissance sculpture created in marble between 1501 and 1504 by the Italian artist Michelangelo. David is a 5.17-metre (17.0 ft) marble statue of the Biblical figure David, a favoured subject in the art of Florence.','https://www.italymagazine.com/sites/default/files/david-michelangelo.jpg',124458),(900005,'The Kiss','Painting','The Kiss (in German Der Kuss) is an oil-on-canvas painting with added gold leaf, silver and platinum. by the Austrian Symbolist painter Gustav Klimt. It was painted at some point in 1907 and 1908, during the height of what scholars call his \"Golden Period\".','https://www.gustav-klimt.com/images/paintings/The-Kiss.jpg',129841),(900006,'Patata','Painting','Patata is an artwork of Maja Vukoje.','https://d7hftxdivxxvm.cloudfront.net/?resize_to=fit&width=400&height=256&quality=80&src=https%3A%2F%2Fd32dm0rphc51dk.cloudfront.net%2FHkHwRDB4s-UWKgW360GGRg%2Flarge.jpg',129842),(900007,'The Hare with Amber Eyes','Other','The Hare with Amber Eyes (2010) is a family memoir by British ceramicist Edmund de Waal. De Waal tells the story of his family, the Ephrussi, once a very wealthy European Jewish banking dynasty, centered in Odessa, Vienna and Paris, and peers of the Rothschild family. The Ephrussis lost almost everything in 1938 when the Nazis confiscated their property, and were unable to recover most of their property after the war, including priceless artwork; an easily hidden collection of 264 Japanese netsuke miniature sculptures was saved, tucked away inside a mattress by Anna, a loyal maid at Palais Ephrussi in Vienna during the war years. The collection has been passed down through five generations of the Ephrussi family, providing a common thread for the story of its fortunes from 1871 to 2009.','https://cbsnews3.cbsistatic.com/hub/i/r/2018/11/24/59841d66-8bc4-4eb6-981b-6a2f0d8e094d/thumbnail/640x480/e13e68f734675ac24f6b2f3b50b18e05/edmund-de-waal-netsuke-hare-with-amber-eyes-promo.jpg',129840),(900008,'Das Haus mit dem Lautsprecher,2012','Painting','Das Haus mit dem Lautsprecher,2012 by Eduard Angeli','https://i.pinimg.com/originals/61/c2/59/61c2597f73927d866b9c252fd5c27616.jpg',129838),(900009,'Bust of Niccolo da Uzzano','Sculpture','Bust of Niccolo da Uzzano by Donatello in Museo Nazionale del Bargello, Florence, Italy.','https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Niccolo_da_uzzano_cast_2.jpg/1200px-Niccolo_da_uzzano_cast_2.jpg',124458);
/*!40000 ALTER TABLE `exhibit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exhibition`
--

DROP TABLE IF EXISTS `exhibition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exhibition` (
  `exhibitionID` int(6) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `isTemporary` tinyint(1) DEFAULT NULL,
  `type` enum('Photography','Sculpture','Gallery','Other') DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `director` varchar(40) DEFAULT NULL,
  `website` varchar(70) DEFAULT NULL,
  `museumID` int(6) NOT NULL,
  PRIMARY KEY (`exhibitionID`),
  KEY `fk_Exhibition_Museum1_idx` (`museumID`),
  CONSTRAINT `FK_museumID_for_exhibition` FOREIGN KEY (`museumID`) REFERENCES `museum` (`museumID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exhibition`
--

LOCK TABLES `exhibition` WRITE;
/*!40000 ALTER TABLE `exhibition` DISABLE KEYS */;
INSERT INTO `exhibition` VALUES (123456,'Van Gogh The Joy of Nature',1,'Gallery','In yet another 2019 exhibition bringing together two great artists from very different periods, the Van Gogh Museum in Amsterdam is putting on Hockney Γò¼├┤Γö£├ºΓö£Γöñ Van Gogh: The Joy of Nature. David Hockney, with his strikingly colourful and colossal paintings has been deeply inspired by Van Gogh throughout his career, and this exhibition explores the parallels between the two artists','David Hockney','vangoghmuseum.nl/en/stories/hockney-van-gogh-two-painters-one-love#2',400002),(123457,'Acropolis Museum Main Exhibition',0,'Sculpture','After crossing the ground floor lobby towards the turn styles of the Museum, the first collection lies before the visitor. An ascending, wide glass-floored gallery houses finds from the slopes of the Acropolis. The occasionally transparent floor provides a view of the archaeological excavation, while its upward slope alludes to the ascent to the Acropolis.','Ministry of Culture','theacropolismuseum.gr/en/content/gallery-slopes-acropolis',200001),(123458,'Art of Islamic Cultures Main Exhibition',0,'Other','The broad spectrum of the collection includes architectural decorations, applied arts and crafts, jewelry, and rare illuminated and calligraphed manuscripts. The architectural decorations represent one of the major attractions, conveying also typical concepts of space and environments in various media: stone (the fa╬ô├╢┬úΓö¼Γòæade from Mshatta), stuccoes (archaeological finds from Samarra), painted wooden panelling (Aleppo Room) and wall ceramics in various techniques (prayer niches from Kashan and Konya).','Museum of Islamic Art Director','smb.museum/en/museums-institutions/pergamonmuseumexhibitions/',100002),(124458,'Body and Soul',1,'Sculpture','The Body and Soul exhibition, organized in collaboration with the Castello Sforzesco Museum in Milan, seeks to bring to light the main themes and ideas developed in Italy during the second half of the Quattrocento.','Marc Bormand','louvre.fr/en/expositions/body-and-soul-italian-renaissance-sculpture',300001),(129838,'Black White & Grey',1,'Gallery','In this exhibition, the ALBERTINA Museum presents large-format works from its own collection. Whether using pencil, ink, chalk, wire, or the moving imageΓò¼├┤Γö£├ºΓö£Γòóhere, drawing expands familiar dimensions by far.','Alois Mosbacher ','albertina.at/en/exhibitions/black-white-and-grey/',500001),(129839,'Van Gogh\'s Masterpieces',0,'Gallery','Explore Vincent van Gogh\'s masterpieces in the museum\'s permanent exhibition. See his development as an artist in the museum galleries. Get to know his ideas and ambitions and step into Van Gogh\'s world.','Van Gogh Museum Director','https://www.vangoghmuseum.nl/en/visit/whats-on/',400002),(129840,'Edmund de Waal',1,'Other','Created as a \'space to sit and read and be\', library of exile is an installation by British artist and writer, Edmund de Waal, housing more than 2,000 books in translation, written by exiled authors.','Hartwig Fischer','britishmuseum.org/exhibitions/edmund-de-waal-library-exile',600001),(129841,'Belvedere Main Exhibition',0,'Other','Get ready for a short vacation at the Upper Belvedere Γò¼├┤Γö£├ºΓö£Γöñ visit with old acquaintances and make new friends: You are invited to do just that by exploring some 430 exhibits from 800 years of art history. Crucial Austrian works by Rueland Frueauf the Elder, Elena Luksch-Makowsky, Gustav Klimt, Egon Schiele, Helene Funke, and Oskar Kokoschka stand alongside international highlights by Vincent van Gogh and Auguste Rodin. ','Austrian Gallery Belvedere Director','https://www.belvedere.at/en/permanent-collection',500002),(129842,'Maja Vukoje',1,'Gallery','In her painting Maja Vukoje explores cultural hybridity and transculturality as basic conditions of our globalized lives. Over various stages of her artistic career, Vukoje has developed a distinct artistic language in which she not only focuses on the mixture and fusion of elements of different cultures as visual motifs. Vukoje also reflects these hybrid phenomena in the materials and artistic methods she applies, thus blurring the boundaries of painting as a medium.','Luisa Ziaja','https://www.belvedere.at/en/maja-vukoje',500002);
/*!40000 ALTER TABLE `exhibition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `exhibitions_in_city`
--

DROP TABLE IF EXISTS `exhibitions_in_city`;
/*!50001 DROP VIEW IF EXISTS `exhibitions_in_city`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `exhibitions_in_city` (
  `exhibition` tinyint NOT NULL,
  `city` tinyint NOT NULL,
  `museum` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likes` (
  `userID` int(6) NOT NULL,
  `museumID` int(6) NOT NULL,
  PRIMARY KEY (`userID`,`museumID`),
  KEY `fk_user_has_museum_museum1_idx` (`museumID`),
  KEY `fk_user_has_museum_user1_idx` (`userID`),
  CONSTRAINT `fk_user_has_museum_museum1` FOREIGN KEY (`museumID`) REFERENCES `museum` (`museumID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_has_museum_user1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (111890,400001),(125009,400001),(125009,600002),(125400,200002),(125400,300002),(125400,600001),(125428,100002),(125428,200001),(125428,300001),(125900,400002),(125900,700001),(125999,100001),(125999,700002),(134500,500001),(138004,500002),(200205,200002),(201845,200002),(201845,400001),(321569,400001),(321569,500001),(346789,100002),(346789,600002),(663568,100002),(666793,200002),(666794,100002),(666794,700001);
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `museum`
--

DROP TABLE IF EXISTS `museum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `museum` (
  `museumID` int(6) NOT NULL,
  `name` varchar(80) NOT NULL,
  `type` enum('Archaeological','Art','History','War','Science','Natural History','Wax','Historic Houses','Enthographic','Virtual','Cultural','Gallery','Other') NOT NULL,
  `address` varchar(150) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `ownership` enum('state-owned','local-owned','private-owned') DEFAULT NULL,
  `annuaNumberlOfVisitors` int(10) DEFAULT NULL,
  `staff` int(6) DEFAULT NULL,
  `website` varchar(70) DEFAULT NULL,
  `cityID` int(6) NOT NULL,
  `description` varchar(3000) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`museumID`),
  KEY `fk_Museum_City1_idx` (`cityID`),
  CONSTRAINT `FK_cityID_for_museum` FOREIGN KEY (`cityID`) REFERENCES `city` (`cityID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `museum`
--

LOCK TABLES `museum` WRITE;
/*!40000 ALTER TABLE `museum` DISABLE KEYS */;
INSERT INTO `museum` VALUES (1234,'Vatican Museums','Gallery',' 00120 Vatican City','info@vaticanmuseums.com','002541236589','state-owned',NULL,120,'museivaticani.va',2,'The Vatican Museums trace their origin to one marble sculpture, purchased in the 16th century: Laoco├╢n and His Sons was discovered on 14 January 1506, in a vineyard near the basilica of Santa Maria Maggiore in Rome. Pope Julius II sent Giuliano da Sangallo and Michelangelo Buonarroti, who were working at the Vatican, to examine the discovery. On their recommendation, the pope immediately purchased the sculpture from the vineyard owner. The pope put the sculpture, which depicts the Trojan priest Laoco├╢n and his two sons being attacked by giant serpents, on public display at the Vatican exactly one month after its discovery.  Benedict XIV founded the Museum Christianum, and some of the Vatican collections formed the Lateran Museum, which Pius IX founded by decree in 1854.','https://upload.wikimedia.org/wikipedia/commons/3/31/Musei_Vaticani._Braccio_Nuovo.JPG'),(100001,'Nationalgalerie','Gallery','Genthiner Str. 38, 10785 Berlin, Germany','info@nationalgalerie.de','004930266424242','state-owned',240000,124,'smb.museum/en/museums-institutions/nationalgalerie',1,'The Alte Nationalgalerie (English: Old National Gallery) is a listed building on the Museum Island in the historic centre of Berlin and part of the UNESCO World Heritage. It was built from 1862 to 1876 by order of King Frederick William IV of Prussia according to plans by Friedrich August St├╝ler and Johann Heinrich Strack in Neoclassical and Renaissance Revival styles. The building\'s outside stair features a memorial to Frederick William IV.[1] Currently, the Alte Nationalgalerie is home to paintings and sculptures of the 19th century.','https://www.inexhibit.com/wp-content/uploads/2014/09/Alte-Nationalgalerie-Berlin-01.jpg'),(100002,'Pergamonmuseum','Archaeological',' Genthiner Str. 38, 10785 Berlin, Germany','info@pergamonmuseum.de','004930266424242','state-owned',600150,102,'smb.museum/museen-einrichtungen/pergamonmuseum',1,'The Pergamonmuseum (pronounced [╦êp╔¢╩ü.╔ía.m╔ön.mu╦îze╦É.╩èm] (About this soundlisten), English: Pergamon Museum) is a listed building on the Museum Island in the historic centre of Berlin and part of the UNESCO World Heritage. It was built from 1910 to 1930 by order of German Emperor William II according to plans by Alfred Messel and Ludwig Hoffmann in Stripped Classicism style.[1] Currently, the Pergamonmuseum is home to the Antikensammlung including the famous Pergamon Altar, the Vorderasiatisches Museum and the Museum f├╝r Islamische Kunst. Parts of the building are closed for renovation until 2023','https://www.dw.com/image/38208004_403.jpg'),(200001,'Acropolis Museum','Archaeological','15 Dionysiou Areopagitou Street, Athens 11742','info@theacropolismuseum.gr','00302109000900','state-owned',100000,273,'theacropolismuseum.gr',2,'The Acropolis Museum (Greek: ╬£╬┐╧à╧â╬╡╬»╬┐ ╬æ╬║╧ü╧î╧Ç╬┐╬╗╬╖╧é, Mouseio Akropolis) is an archaeological museum focused on the findings of the archaeological site of the Acropolis of Athens. The museum was built to house every artifact found on the rock and on the surrounding slopes, from the Greek Bronze Age to Roman and Byzantine Greece. It also lies over the ruins of a part of Roman and early Byzantine Athens.','https://www.inexhibit.com/wp-content/uploads/2014/07/acropolis-museum-athens-11.jpg'),(200002,'Benaki Museum','Cultural','1 Koumbari St. & Vas. Sofias Ave., 106 74 Athens','benaki@benaki.gr','00302126875275','state-owned',20000,32,'benaki.org',2,'The Benaki Museum, established and endowed in 1930 by Antonis Benakis in memory of his father Emmanuel Benakis, is housed in the Benakis family mansion in downtown Athens, Greece. The museum houses Greek works of art from the prehistorical to the modern times, an extensive collection of Asian art, hosts periodic exhibitions and maintains a state-of-the-art restoration and conservation workshop. Although the museum initially housed a collection that included Islamic art, Chinese porcelain and exhibits on toys, its 2000 re-opening led to the creation of satellite museums that focused on specific collections, allowing the main museum to focus on Greek culture over the span of the country\'s history.','https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/Benaki_Museum_Athens.JPG/390px-Benaki_Museum_Athens.JPG'),(300001,'Louvre Museum','Art','Rue de Rivoli,75001 Paris, France','handicap@louvre.fr','0033140205990','state-owned',1652123,1453,'louvre.fr',3,'The Louvre (English: /╦êlu╦Év(r╔Ö)/ LOOV(-r╔Ö)[3]), or the Louvre Museum (French: Mus├⌐e du Louvre [myze dy luv╩ü] (About this soundlisten)), is the world\'s largest art museum and a historic monument in Paris, France. A central landmark of the city, it is located on the Right Bank of the Seine in the city\'s 1st arrondissement (district or ward). Approximately 38,000 objects from prehistory to the 21st century are exhibited over an area of 72,735 square meters (782,910 square feet).[4] In 2019, the Louvre received 9.6 million visitors, making it the most visited museum in the world.','https://www.airtecnics.com/media/6385/Louvre-museum-in-Paris.jpg'),(300002,'Orsay Museum','Art','1 Rue de la Legion d\'Honneur, 75007 Paris, France','info@dorsay.fr','0033140494814','state-owned',100000,123,'musee-orsay.fr',3,'The museum building was originally a railway station, Gare d\'Orsay, constructed for the Chemin de Fer de Paris ├á Orl├⌐ans and finished in time for the 1900 Exposition Universelle to the design of three architects: Lucien Magne, ├ëmile B├⌐nard and Victor Laloux. It was the terminus for the railways of southwestern France until 1939.','https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Pont_Royal_and_Mus%C3%A9e_d%27Orsay%2C_Paris_10_July_2020.jpg/345px-Pont_Royal_and_Mus%C3%A9e_d%27Orsay%2C_Paris_10_July_2020.jpg'),(400001,'Rijksmuseum','Cultural','Museumstraat 1, 1071 XX Amsterdam, Netherlands','info@rijksmuseum.nl','0031206747000','state-owned',32000,23,'rijksmuseum.nl',4,'The Rijksmuseum is the museum of the Netherlands. Its world-famous masterworks from the Dutch Golden Age include the Milkmaid by Vermeer and Rembrandt\'s Night Watch. The Rijksmuseum itself is also a masterpiece. The collection is presented in a stunning building with amazing interior design. In 80 galleries 8,000 objects tell the story of 800 years of Dutch art and history, from the Middle Ages to Mondrian.','https://www.iefimerida.gr/sites/default/files/archive-files/ethniko_moyseio_the_rijksmuseum_amsterntam.jpg'),(400002,'Van Gogh Museum','Gallery','Museumplein 6, 1071, DJ Amsterdam, Netherlands','info@vangoghmuseum.nl','0031020505200','state-owned',320000,325,'vangogh.nl',4,'The Van Gogh Museum in Amsterdam houses the largest collection of artworks by Vincent van Gogh (1853-1890) in the world. The permanent collection includes over 200 paintings by Vincent van Gogh, 500 drawings and more than 750 letters. The museum also presents exhibitions on various subjects from 19th-century art history.','https://losthink.com/wp-content/uploads/2020/09/museum-losthink.com_.jpg'),(500001,'Albertina','Gallery','Albertinaplatz 1, 1010 Wien, Austria','besucher@albertina.at','43153483540','state-owned',150000,203,'albertina.at',5,'Located in the historical heart of Vienna, the Albertina combines imperial flair and masterpieces of art. What used to be the city\'s largest residential palace during the Habsburg monarchy is now an art museum of international renown whose name is also associated with one of the worlds most important graphic art collections and which attracts cultural travelers and city tourists from around the globe. ','https://upload.wikimedia.org/wikipedia/commons/f/f8/Albertina1.JPG'),(500002,'Austrian Gallery Belvedere','Gallery','Prinz Eugen-Stra╬ô├╢┬úΓò₧├åe 27, 1030 Wien, Austria','info@belvedere.at','431795570','state-owned',300000,382,'belvedere.at',5,'The Upper Belvedere houses the impressive collection of Austrian art dating from the Middle Ages to the present day. At the heart of the displays of art around 1900 is the worldΓÇÖs largest Gustav Klimt collection. The glittering highlights are KlimtΓÇÖs golden pictures Kiss and Judith, and masterpieces by Schiele and Kokoschka. Prominent works by the French Impressionists and the outstanding collection of Viennese Biedermeier paintings are further attractions at the Upper Belvedere.','https://travelen.eu/wp-content/uploads/2018/01/Bevedere-Palace-Front-View-Garden-Vienna-Travelen.jpg'),(600001,'British Museum','Other','Great Russell St, Bloomsbury, London WC1B 3DG, UK','info@britishmuseum.uk','4402073238000','state-owned',800000,350,'britishmuseum.org',6,'The British MuseumΓÇÖs remarkable collection spans over two million years of human history and culture. Over 6 million visitors every year experience the collection, including world-famous objects such as the Rosetta Stone, the Parthenon sculptures, and Egyptian mummies.','https://dmdlnu87i51n1.cloudfront.net/v1/uk/cjy5s86xz4dcg0195lvydm4of/0x120:1163x611/1200x630/2279ne_for_front_british_museum_the_trustees_of_the_british_museum.jpg'),(600002,'The National Gallery','Gallery','Trafalgar Square, Charing Cross, London WC2N 5DN, UK','information@ng-london.org.uk','4402077472885','state-owned',500000,102,'nationalgallery.org.uk',6,'The National Gallery Collection contains over 2,300 works, including many famous works, such as van EyckΓÇÖs \'Arnolfini Portrait\', Vel├ízquezΓÇÖs \'Rokeby Venus\', TurnerΓÇÖs \'Fighting Temeraire\' and Van GoghΓÇÖs \'Sunflowers\'.','https://i2.wp.com/londontopia.net/wp-content/uploads/2015/03/National_Gallery_London_2013_March.jpg?fit=2560%2C1280&ssl=1'),(700001,'La Galleria Nazionale d\'Arte Moderna E Contemporanea','Gallery','Viale delle Belle Arti, 131, 00197 Roma RM, Italy',' info@gallerianazionalemoderna.it','3906322981','state-owned',55000,62,'lagallerianazionale.com',7,'The Galleria Nazionale d\'Arte Moderna e Contemporanea (\"national gallery of modern and contemporary art\"), also known as La Galleria Nazionale, is an art gallery in Rome, Italy. It was founded in 1883 on the initiative of the then Minister Guido Baccelli and is dedicated to modern and contemporary art. The museum displays about 1100 paintings and sculptures of the nineteenth and twentieth centuries, of which it has the largest collection in Italy. Among the Italian artists represented are Giacomo Balla, Umberto Boccioni, Alberto Burri, Antonio Canova, Giorgio de Chirico, Lucio Fontana, Amedeo Modigliani, Giacomo Manz├╣, Vittorio Matteo Corcos and Giorgio Morandi. ','https://turismoroma.it/sites/default/files/lagallerianazionale_0.jpg'),(700002,'Galleria Nazionale d\'Arte Antica in Palazzo Barberini','Gallery','Via delle Quattro Fontane, 13, 00184 Roma RM, Italy',' info@pallazobarberini.it','3965214578','state-owned',80000,65,'barberinicorsini.org',7,'The Galleria Nazionale d\'Arte Antica (GNAA), or National Gallery of Ancient Art, is an art gallery in Rome, Italy, the main national collection of older (broadly, pre-1800) paintings in Rome. It has two sites: the Palazzo Barberini and the Palazzo Corsini.','https://pbs.twimg.com/media/EoKW6mMUwAYzYr1.jpg');
/*!40000 ALTER TABLE `museum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `museumID` int(6) NOT NULL,
  `userID` int(6) NOT NULL,
  `stars` float(2,1) DEFAULT NULL,
  `comment` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`museumID`,`userID`),
  KEY `fk_Museum_has_User1_User1_idx` (`userID`),
  KEY `fk_Museum_has_User1_Museum1_idx` (`museumID`),
  CONSTRAINT `FK_museumID_for_reviews` FOREIGN KEY (`museumID`) REFERENCES `museum` (`museumID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_userID_for_reviews` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (100001,125009,5.0,'A visit in this stunning museum is a must. It is a massive museum so make sure you have plenty of time to spend.'),(100001,125428,4.0,'We loved it!'),(100001,125999,4.0,'Classic!'),(100002,125428,5.0,'One of the best museums I\'ve seen, you will be greeted with huge pieces of history, among which an impressive grand babylonian gate.'),(200001,125400,4.0,'Gorgeous architecture. So much history & so much to see. The museum is enormous with rooms halls filled with statues & art. Very worthwhile seeing.'),(200001,125428,5.0,'Amazing!'),(200002,125400,4.0,'The Benaki Museum offers visitors an insight into Greek culture and an opportunity to discover the fascinating history of this culture.'),(200002,321569,1.0,'The building is beautiful and there is much to see, but we felt uncomfortable beacause of poor Corona virus measures.'),(300001,111890,4.0,'I\'m not massively into Art but WOW. So much to look at, make sure you have an entire day to view all of the beauty inside. Very busy, so especially due to COVID be masked up! Pre book online to avoid the very long queue! So much history. Best section for me was the Napoleon Apartments! '),(300001,125009,5.0,'A visit in this stunning museum is a must. It is a massive museum so make sure you have plenty of time to spend. Luckily it wasn\'t really busy so we could enjoy and admire every part of it. Recommended.'),(300001,125400,2.0,'Yes it\'s great, but I must give the washroom situation two stars!'),(300001,125428,5.0,'Been to Paris before but this was our first time visiting this place due to the long queue but it\'s understandable since it\'s one of the most famous site in Paris. Adorned with beautiful art masterpieces and stunning exterior and interior, this huge museum must be on your top list when in Paris. But please remember that it is huge and expensive with long queue to get inside. But overall, it\'s worth a visit!'),(300002,125009,4.0,'It was very interesting, we loved it.'),(300002,125400,5.0,'Very beautiful museum located in the center of Paris in very beautiful districts, very beautiful collections of art and different styles.'),(400001,125009,5.0,'Must see.'),(400001,138004,2.0,'Excellent museum,terrible experience. Very crowded.'),(400001,201845,5.0,'A must-see in Amsterdam in the magnificent Rijksmuseum. Art-galore of all descriptions including sculptures, a fabulous library, and Rembrandt\'s \"Night Watch\" painting! There is a lot to see.'),(400002,125900,5.0,'The audio tour is a must if you \'re interested in knowing about his life more. The exhibit could \'ve been better tbh, but I most definitely enjoyed it.'),(400002,138004,2.0,'We were disappointed in our trip to Van Gogh. It\'s a huge building with very little to see and giant gift shops. His major works are on display elsewhere.'),(500001,321569,5.0,'If you want to see art, especially more modern are this is great. Klimt, Miro and Warhol are there, plus engravings and colour prints from the 15th century.'),(500002,138004,5.0,'The museum may be closed due to COVID but the gardens of the palace are incredible. Entry is also free.'),(600001,125009,4.0,'Such an important and valuable collection. Fascinating pieces on display. A great day out with friends.'),(600001,125400,5.0,'Enjoyable visit, plenty to see and good range of exhibits.'),(600002,125009,5.0,'Stunning, must visit.'),(600002,346789,5.0,'Not crowded at all. Amazing gallery for an art lover. '),(700001,125900,5.0,'A good collection of modern art. It touches on most major areas of western modern art. A lovely antidote to all the renaissance art you might be seeing. Both give each other context.'),(700001,666794,3.0,'I guess I am in the minority here because I didn\'t see a lot worth seeing.'),(700002,125999,5.0,'Underappreciated');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `musedb`.`reviews_BEFORE_INSERT`
BEFORE INSERT ON `musedb`.`reviews`
FOR EACH ROW
BEGIN
	IF(NEW.stars < 0 OR NEW.stars > 5) THEN
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'stars can not be less than 0 or more than 5';
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule` (
  `scheduleID` int(6) NOT NULL,
  `type` enum('Summer','Winter') DEFAULT NULL,
  `day` enum('MON','TUE','WED','THU','FRI','SAT','SUN') NOT NULL,
  `from` varchar(10) DEFAULT NULL,
  `to` varchar(10) DEFAULT NULL,
  `startDay` varchar(5) DEFAULT NULL,
  `endDay` varchar(5) DEFAULT NULL,
  `museumID` int(6) NOT NULL,
  PRIMARY KEY (`scheduleID`,`museumID`,`day`),
  KEY `fk_Schedule_Museum_idx` (`museumID`),
  CONSTRAINT `FK_museumID_for_schedule` FOREIGN KEY (`museumID`) REFERENCES `museum` (`museumID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES (1,'Winter','TUE','9:00','19:00','21/09','20/03',100001),(1,'Winter','WED','9:00','19:00','21/09','20/03',100002),(1,'Winter','MON','9:00','16:00','21/09','20/03',200001),(1,'Winter','TUE','9:00','18:00','21/09','20/03',200001),(1,'Winter','WED','9:00','16:00','21/09','20/03',200001),(1,'Winter','FRI','9:00','18:00','21/09','20/03',200002),(1,'Winter','TUE','9:00','19:00','21/09','20/03',400002),(1,'Winter','WED','9:00','19:00','21/09','20/03',400002),(2,'Summer','MON','10:00','18:00','21/03','20/09',200001),(2,'Summer','THU','10:00','18:00','21/03','20/09',200001),(2,'Summer','SAT','11:00','18:00','21/03','20/09',200001),(2,'Summer','MON','10:00','18:00','21/03','20/09',300001),(2,'Summer','THU','10:00','18:00','21/03','20/09',300002),(2,'Summer','SAT','11:00','18:00','21/03','20/09',400001),(2,'Summer','WED','9:00','16:00','21/03','20/09',400002),(2,'Summer','FRI','9:00','16:00','21/03','20/09',400002),(2,'Summer','SAT','9:00','16:00','21/03','20/09',400002),(2,'Summer','WED','9:00','16:00','01/03','31/08',500001),(2,'Summer','WED','9:00','16:00','01/03','31/08',500002),(2,'Summer','FRI','9:00','16:00','21/03','20/09',600001),(2,'Summer','SAT','9:00','16:00','01/03','31/08',600002),(2,'Summer','WED','9:00','16:00','21/03','20/09',700001),(2,'Summer','WED','9:00','16:00','21/03','20/09',700002);
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket` (
  `ticketID` int(10) NOT NULL,
  `visitorType` enum('Full','Student','Unemployed') DEFAULT NULL,
  `price` float(5,2) DEFAULT NULL,
  `timeLimitType` enum('Day','Week','Month','6-Months','Year') DEFAULT NULL,
  `from` varchar(10) DEFAULT NULL,
  `to` varchar(10) DEFAULT NULL,
  `museumID` int(6) NOT NULL,
  `userID` int(6) NOT NULL,
  PRIMARY KEY (`ticketID`,`museumID`),
  KEY `fk_Ticket_Museum1_idx` (`museumID`),
  KEY `fk_ticket_user1_idx` (`userID`),
  CONSTRAINT `FK_museumID_for_ticket` FOREIGN KEY (`museumID`) REFERENCES `museum` (`museumID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_userID_for_ticket` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (124532,'Unemployed',0.00,'Day','24-03-2019','24-03-2019',100002,125999),(145712,'Unemployed',2.00,'Day','23-03-2019','23-03-2019',100001,125999),(205287,'Student',2.50,'Day','30-04-2019','30-04-2019',500001,125009),(296574,'Student',20.00,'Month','29-04-2019','28-05-2019',500002,125009),(302641,'Full',12.00,'Day','02-05-2019','02-05-2019',100002,111890),(398541,'Full',6.00,'Day','03-05-2019','03-05-2019',100001,111890),(452112,'Unemployed',5.00,'Day','01-05-2019','01-05-2019',700001,321569),(496342,'Unemployed',2.00,'Day','12-05-2019','12-05-2019',700002,321569),(620378,'Student',12.00,'6-Months','01-01-2019','30-06-2019',600002,666793),(652145,'Student',25.00,'6-Months','01-01-2019','30-06-2019',600001,666793),(1254839201,'Student',0.00,'Day','26-05-2019','26-05-2019',200001,125428),(1283746351,'Student',0.00,'Week','01-05-2019','07-05-2019',200002,125428),(2029384675,'Student',2.50,'Day','30-04-2019','30-04-2019',400001,125400),(2132658478,'Student',50.00,'Year','01-05-2019','30-04-2020',400002,125400);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `tickets_and_schedules_of_museum`
--

DROP TABLE IF EXISTS `tickets_and_schedules_of_museum`;
/*!50001 DROP VIEW IF EXISTS `tickets_and_schedules_of_museum`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `tickets_and_schedules_of_museum` (
  `museumID` tinyint NOT NULL,
  `museum` tinyint NOT NULL,
  `visitor_type` tinyint NOT NULL,
  `price` tinyint NOT NULL,
  `currency` tinyint NOT NULL,
  `schedule` tinyint NOT NULL,
  `day` tinyint NOT NULL,
  `from` tinyint NOT NULL,
  `to` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userID` int(6) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL,
  `nationality` varchar(40) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (111890,'Thodoris Papageorgiou','Male','Albanian','teopapag3@outlook.com'),(125009,'Anastasios Mouratidis','Male','Portuguese','atmourat@ece.auth.gr'),(125400,'Nikos Saoulidis','Male','Egyptian','saouling@ece.auth.gr'),(125428,'Christina Maria Mastralexi','Female','Spanish','cmastral@ece.auth.gr'),(125900,'Eleni Charitou','Female','Italian','charitoue@ece.auth.gr'),(125999,'Panagiotis Tsachiltzis','Other','Albanian','panpan@hotmail.com'),(134500,'Theodora Rasel','Female','Greek','raselara2@gmail.com'),(138004,'Mariagapi Xypolia','Female','Swedish','marialove@gmail.com'),(200205,'Konstantinos Tsentolini','Male','Austrian','tsentol@hotmail.com'),(201845,'Nitsa Poumpoura','Female','Greek','karantinitsa@gmail.com'),(321569,'Samuel Toci','Other','Greek','samuelito@gmail.com'),(346789,'Panagiotis Vasilakos','Male','British','bachelor@outlook.com'),(663568,'Anna Maria Tegou','Female','Greek','metanoeitai@gmail.com'),(666793,'Eirini Alexopoulou','Female','French','irene789@gmail.com'),(666794,'Aggeliki Nikolouli','Female','Ukrainian','fosstotounel@gmail.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `view_reviews`
--

DROP TABLE IF EXISTS `view_reviews`;
/*!50001 DROP VIEW IF EXISTS `view_reviews`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_reviews` (
  `username` tinyint NOT NULL,
  `museum` tinyint NOT NULL,
  `stars` tinyint NOT NULL,
  `comment` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'musedb'
--

--
-- Current Database: `musedb`
--

USE `musedb`;

--
-- Final view structure for view `artlist`
--

/*!50001 DROP TABLE IF EXISTS `artlist`*/;
/*!50001 DROP VIEW IF EXISTS `artlist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `artlist` AS (select `user`.`name` AS `username`,`museum`.`name` AS `Museum` from ((`user` join `likes` on((`user`.`userID` = `likes`.`userID`))) join `museum` on((`likes`.`museumID` = `museum`.`museumID`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `creators_in_exhibition`
--

/*!50001 DROP TABLE IF EXISTS `creators_in_exhibition`*/;
/*!50001 DROP VIEW IF EXISTS `creators_in_exhibition`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `creators_in_exhibition` AS (select `exhibition`.`name` AS `exhibition`,`creator`.`name` AS `creator`,`creator`.`bio` AS `bio`,`creator`.`photo` AS `photo` from (((`exhibition` join `exhibit` on((`exhibition`.`exhibitionID` = `exhibit`.`exhibitionID`))) join `creator_creates_exhibit` on((`creator_creates_exhibit`.`exhibitID` = `exhibit`.`exhibitID`))) join `creator` on((`creator_creates_exhibit`.`creatorID` = `creator`.`creatorID`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `exhibitions_in_city`
--

/*!50001 DROP TABLE IF EXISTS `exhibitions_in_city`*/;
/*!50001 DROP VIEW IF EXISTS `exhibitions_in_city`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `exhibitions_in_city` AS (select `exhibition`.`name` AS `exhibition`,`city`.`name` AS `city`,`museum`.`name` AS `museum` from ((`city` join `museum` on((`museum`.`cityID` = `city`.`cityID`))) join `exhibition` on((`exhibition`.`museumID` = `museum`.`museumID`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tickets_and_schedules_of_museum`
--

/*!50001 DROP TABLE IF EXISTS `tickets_and_schedules_of_museum`*/;
/*!50001 DROP VIEW IF EXISTS `tickets_and_schedules_of_museum`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tickets_and_schedules_of_museum` AS (select `museum`.`museumID` AS `museumID`,`museum`.`name` AS `museum`,`ticket`.`visitorType` AS `visitor_type`,`ticket`.`price` AS `price`,`city`.`currency` AS `currency`,`schedule`.`type` AS `schedule`,`schedule`.`day` AS `day`,`schedule`.`from` AS `from`,`schedule`.`to` AS `to` from (((`city` join `museum` on((`city`.`cityID` = `museum`.`cityID`))) join `ticket` on((`museum`.`museumID` = `ticket`.`museumID`))) join `schedule` on((`museum`.`museumID` = `schedule`.`museumID`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_reviews`
--

/*!50001 DROP TABLE IF EXISTS `view_reviews`*/;
/*!50001 DROP VIEW IF EXISTS `view_reviews`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_reviews` AS (select `user`.`name` AS `username`,`museum`.`name` AS `museum`,`reviews`.`stars` AS `stars`,`reviews`.`comment` AS `comment` from ((`user` join `reviews` on((`user`.`userID` = `reviews`.`userID`))) join `museum` on((`museum`.`museumID` = `reviews`.`museumID`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Current Database: `musedb`
--

USE `musedb`;

--
-- Final view structure for view `artlist`
--

/*!50001 DROP TABLE IF EXISTS `artlist`*/;
/*!50001 DROP VIEW IF EXISTS `artlist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `artlist` AS (select `user`.`name` AS `username`,`museum`.`name` AS `Museum` from ((`user` join `likes` on((`user`.`userID` = `likes`.`userID`))) join `museum` on((`likes`.`museumID` = `museum`.`museumID`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `creators_in_exhibition`
--

/*!50001 DROP TABLE IF EXISTS `creators_in_exhibition`*/;
/*!50001 DROP VIEW IF EXISTS `creators_in_exhibition`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `creators_in_exhibition` AS (select `exhibition`.`name` AS `exhibition`,`creator`.`name` AS `creator`,`creator`.`bio` AS `bio`,`creator`.`photo` AS `photo` from (((`exhibition` join `exhibit` on((`exhibition`.`exhibitionID` = `exhibit`.`exhibitionID`))) join `creator_creates_exhibit` on((`creator_creates_exhibit`.`exhibitID` = `exhibit`.`exhibitID`))) join `creator` on((`creator_creates_exhibit`.`creatorID` = `creator`.`creatorID`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `exhibitions_in_city`
--

/*!50001 DROP TABLE IF EXISTS `exhibitions_in_city`*/;
/*!50001 DROP VIEW IF EXISTS `exhibitions_in_city`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `exhibitions_in_city` AS (select `exhibition`.`name` AS `exhibition`,`city`.`name` AS `city`,`museum`.`name` AS `museum` from ((`city` join `museum` on((`museum`.`cityID` = `city`.`cityID`))) join `exhibition` on((`exhibition`.`museumID` = `museum`.`museumID`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tickets_and_schedules_of_museum`
--

/*!50001 DROP TABLE IF EXISTS `tickets_and_schedules_of_museum`*/;
/*!50001 DROP VIEW IF EXISTS `tickets_and_schedules_of_museum`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tickets_and_schedules_of_museum` AS (select `museum`.`museumID` AS `museumID`,`museum`.`name` AS `museum`,`ticket`.`visitorType` AS `visitor_type`,`ticket`.`price` AS `price`,`city`.`currency` AS `currency`,`schedule`.`type` AS `schedule`,`schedule`.`day` AS `day`,`schedule`.`from` AS `from`,`schedule`.`to` AS `to` from (((`city` join `museum` on((`city`.`cityID` = `museum`.`cityID`))) join `ticket` on((`museum`.`museumID` = `ticket`.`museumID`))) join `schedule` on((`museum`.`museumID` = `schedule`.`museumID`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_reviews`
--

/*!50001 DROP TABLE IF EXISTS `view_reviews`*/;
/*!50001 DROP VIEW IF EXISTS `view_reviews`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_reviews` AS (select `user`.`name` AS `username`,`museum`.`name` AS `museum`,`reviews`.`stars` AS `stars`,`reviews`.`comment` AS `comment` from ((`user` join `reviews` on((`user`.`userID` = `reviews`.`userID`))) join `museum` on((`museum`.`museumID` = `reviews`.`museumID`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-09 13:20:35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `lms_ljps` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `lms_ljps`;

-- --------------------------------------------------------

-- Database: LMS

-- --------------------------------------------------------

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO role VALUES
    (1,'Admin'),
    (2,'User'),
    (3,'Manager'),
    (4,'Trainer');

DROP TABLE IF EXISTS `staff`;
CREATE TABLE IF NOT EXISTS `staff` (
  `staff_id` int NOT NULL AUTO_INCREMENT,
  `staff_fname` varchar(50) NOT NULL,
  `staff_lname` varchar(50) NOT NULL,
  `dept` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`staff_id`),
  FOREIGN KEY (role_id) REFERENCES role(role_id)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO staff VALUES
    (130001,'John','Sim','Chariman','jack.sim@allinone.com.sg',1),
    (130002,'Jack','Sim','CEO','jack.sim@allinone.com.sg',1),
    (140001,'Derek','Tan','Sales','Derek.Tan@allinone.com.sg',3),
    (140002,'Susan','Goh','Sales','Susan.Goh@allinone.com.sg',2),
    (140003,'Janice','Chan','Sales','Janice.Chan@allinone.com.sg',2),
    (140004,'Mary','Teo','Sales','Mary.Teo@allinone.com.sg',2),
    (140008,'Jaclyn','Lee','Sales','Jaclyn.Lee@allinone.com.sg',2),
    (140015,'Oliva','Lim','Sales','Oliva.Lim@allinone.com.sg',2),
    (140025,'Emma','Heng','Sales','Emma.Heng@allinone.com.sg',2),
    (140036,'Charlotte','Wong','Sales','Charlotte.Wong@allinone.com.sg',2),
    (140078,'Amelia','Ong','Sales','Amelia.Ong@allinone.com.sg',2),
    (140102,'Eva','Yong','Sales','Eva.Yong@allinone.com.sg',2),
    (140103,'Sophia','Toh','Sales','Sophia.Toh@allinone.com.sg',2),
    (140108,'Liam','The','Sales','Liam.The@allinone.com.sg',2),
    (140115,'Noah','Ng','Sales','Noah.Ng@allinone.com.sg',2),
    (140525,'Oliver','Tan','Sales','Oliver.Tan@allinone.com.sg',2),
    (140736,'William','Fu','Sales','William.Fu@allinone.com.sg',2),
    (140878,'James','Tong','Sales','James.Tong@allinone.com.sg',2),
    (150008,'Eric','Loh','Ops','Eric.Loh@allinone.com.sg',3),
    (150065,'Noah','Goh','Ops','Noah.Goh@allinone.com.sg',4),
    (150075,'Liam','Tan','Ops','Liam.Tan@allinone.com.sg',4),
    (150076,'Oliver','Chan','Ops','Oliver.Chan@allinone.com.sg',4),
    (150085,'Michael','Ng','Ops','Michael.Ng@allinone.com.sg',4),
    (150095,'Alexander','The','Ops','Alexander.The@allinone.com.sg',4),
    (150096,'Ethan','Tan','Ops','Ethan.Tan@allinone.com.sg',4),
    (150115,'Jaclyn','Lee','Ops','Jaclyn.Lee@allinone.com.sg',4),
    (150118,'William','Teo','Ops','William.Teo@allinone.com.sg',4),
    (150125,'Mary','Teo','Ops','Mary.Teo@allinone.com.sg',4),
    (150126,'Oliva','Lim','Ops','Oliva.Lim@allinone.com.sg',2),
    (150138,'Daniel','Fu','Ops','Daniel.Fu@allinone.com.sg',4),
    (150142,'James','Lee','Ops','James.Lee@allinone.com.sg',4),
    (150143,'John','Lim','Ops','John.Lim@allinone.com.sg',4),
    (150148,'Jack','Heng','Ops','Jack.Heng@allinone.com.sg',4),
    (150155,'Derek','Wong','Ops','Derek.Wong@allinone.com.sg',4),
    (150162,'Jacob','Tong','Ops','Jacob.Tong@allinone.com.sg',4),
    (150163,'Logan','Loh','Ops','Logan.Loh@allinone.com.sg',4),
    (150165,'Oliver','Tan','Ops','Oliver.Tan@allinone.com.sg',2),
    (150166,'William','Fu','Ops','William.Fu@allinone.com.sg',2),
    (150168,'Jackson','Tan','Ops','Jackson.Tan@allinone.com.sg',4),
    (150175,'Aiden','Tan','Ops','Aiden.Tan@allinone.com.sg',4),
    (150192,'Emma','Heng','Ops','Emma.Heng@allinone.com.sg',2),
    (150193,'Charlotte','Wong','Ops','Charlotte.Wong@allinone.com.sg',2),
    (150198,'Amelia','Ong','Ops','Amelia.Ong@allinone.com.sg',2),
    (150205,'Eva','Yong','Ops','Eva.Yong@allinone.com.sg',2),
    (150208,'James','Tong','Ops','James.Tong@allinone.com.sg',2),
    (150215,'Michael','Lee','Ops','Michael.Lee@allinone.com.sg',2),
    (150216,'Ethan','Lim','Ops','Ethan.Lim@allinone.com.sg',2),
    (150232,'John','Loh','Ops','John.Loh@allinone.com.sg',2),
    (150233,'Jack','Tan','Ops','Jack.Tan@allinone.com.sg',2),
    (150238,'Derek','Tan','Ops','Derek.Tan@allinone.com.sg',2),
    (150245,'Benjamin','Tan','Ops','Benjamin.Tan@allinone.com.sg',2),
    (150258,'Daniel','Heng','Ops','Daniel.Heng@allinone.com.sg',2),
    (150265,'Jaclyn','Tong','Ops','Jaclyn.Tong@allinone.com.sg',2),
    (150275,'Mary','Fu','Ops','Mary.Fu@allinone.com.sg',2),
    (150276,'Oliva','Loh','Ops','Oliva.Loh@allinone.com.sg',2),
    (150282,'Jacob','Wong','Ops','Jacob.Wong@allinone.com.sg',2),
    (150283,'Logan','Ong','Ops','Logan.Ong@allinone.com.sg',2),
    (150288,'Jackson','Yong','Ops','Jackson.Yong@allinone.com.sg',2),
    (150295,'Aiden','Toh','Ops','Aiden.Toh@allinone.com.sg',2),
    (150318,'Emma','Tan','Ops','Emma.Tan@allinone.com.sg',2),
    (150342,'Charlotte','Tan','Ops','Charlotte.Tan@allinone.com.sg',2),
    (150343,'Amelia','Tan','Ops','Amelia.Tan@allinone.com.sg',2),
    (150345,'William','Heng','Ops','William.Heng@allinone.com.sg',2),
    (150348,'Eva','Goh','Ops','Eva.Goh@allinone.com.sg',2),
    (150355,'Sophia','Chan','Ops','Sophia.Chan@allinone.com.sg',2),
    (150356,'James','Wong','Ops','James.Wong@allinone.com.sg',2),
    (150398,'John','Ong','Ops','John.Ong@allinone.com.sg',2),
    (150422,'Jack','Yong','Ops','Jack.Yong@allinone.com.sg',2),
    (150423,'Derek','Toh','Ops','Derek.Toh@allinone.com.sg',2),
    (150428,'Benjamin','The','Ops','Benjamin.The@allinone.com.sg',2),
    (150435,'Lucas','Ng','Ops','Lucas.Ng@allinone.com.sg',2),
    (150445,'Ethan','Loh','Ops','Ethan.Loh@allinone.com.sg',2),
    (150446,'Daniel','Tan','Ops','Daniel.Tan@allinone.com.sg',2),
    (150488,'Jacob','Tan','Ops','Jacob.Tan@allinone.com.sg',2),
    (150512,'Logan','Tan','Ops','Logan.Tan@allinone.com.sg',2),
    (150513,'Jackson','Goh','Ops','Jackson.Goh@allinone.com.sg',2),
    (150518,'Aiden','Chan','Ops','Aiden.Chan@allinone.com.sg',2),
    (150525,'Samuel','Teo','Ops','Samuel.Teo@allinone.com.sg',2),
    (150555,'Jaclyn','Wong','Ops','Jaclyn.Wong@allinone.com.sg',2),
    (150565,'Benjamin','Ong','Ops','Benjamin.Ong@allinone.com.sg',4),
    (150566,'Oliva','Ong','Ops','Oliva.Ong@allinone.com.sg',2),
    (150585,'Samuel','Tan','Ops','Samuel.Tan@allinone.com.sg',4),
    (150608,'Emma','Yong','Ops','Emma.Yong@allinone.com.sg',2),
    (150615,'Sophia','Toh','Ops','Sophia.Toh@allinone.com.sg',2),
    (150632,'Charlotte','Toh','Ops','Charlotte.Toh@allinone.com.sg',2),
    (150633,'Amelia','The','Ops','Amelia.The@allinone.com.sg',2),
    (150638,'Eva','Ng','Ops','Eva.Ng@allinone.com.sg',2),
    (150645,'Sophia','Tan','Ops','Sophia.Tan@allinone.com.sg',2),
    (150655,'Lucas','Goh','Ops','Lucas.Goh@allinone.com.sg',2),
    (150695,'William','Tan','Ops','William.Tan@allinone.com.sg',2),
    (150705,'Samuel','The','Ops','Samuel.The@allinone.com.sg',2),
    (150765,'Liam','Teo','Ops','Liam.Teo@allinone.com.sg',2),
    (150776,'Lucas','Yong','Ops','Lucas.Yong@allinone.com.sg',4),
    (150796,'Susan','Goh','Ops','Susan.Goh@allinone.com.sg',4),
    (150826,'Liam','The','Ops','Liam.The@allinone.com.sg',2),
    (150845,'Henry','Tan','Ops','Henry.Tan@allinone.com.sg',2),
    (150866,'Henry','Chan','Ops','Henry.Chan@allinone.com.sg',2),
    (150916,'Susan','Ng','Ops','Susan.Ng@allinone.com.sg',2),
    (150918,'Henry','Toh','Ops','Henry.Toh@allinone.com.sg',4),
    (150935,'Susan','Lee','Ops','Susan.Lee@allinone.com.sg',2),
    (150938,'Janice','Chan','Ops','Janice.Chan@allinone.com.sg',4),
    (150968,'Noah','Ng','Ops','Noah.Ng@allinone.com.sg',2),
    (150976,'Noah','Lee','Ops','Noah.Lee@allinone.com.sg',2),
    (151008,'Alexander','Teo','Ops','Alexander.Teo@allinone.com.sg',2),
    (151055,'Liam','Fu','Ops','Liam.Fu@allinone.com.sg',2),
    (151056,'Alexander','Fu','Ops','Alexander.Fu@allinone.com.sg',2),
    (151058,'Janice','Tan','Ops','Janice.Tan@allinone.com.sg',2),
    (151118,'Oliver','Lim','Ops','Oliver.Lim@allinone.com.sg',2),
    (151146,'Janice','Lim','Ops','Janice.Lim@allinone.com.sg',2),
    (151198,'Michael','Tong','Ops','Michael.Tong@allinone.com.sg',2),
    (151266,'Noah','Tong','Ops','Noah.Tong@allinone.com.sg',2),
    (151288,'Mary','Heng','Ops','Mary.Heng@allinone.com.sg',2),
    (151408,'Oliver','Loh','Ops','Oliver.Loh@allinone.com.sg',2),
    (160008,'Sally','Loh','HR','Sally.Loh@allinone.com.sg',1),
    (160065,'John','Tan','HR','John.Tan@allinone.com.sg',1),
    (160075,'James','Tan','HR','James.Tan@allinone.com.sg',1),
    (160076,'Jack','Goh','HR','Jack.Goh@allinone.com.sg',1),
    (160118,'Derek','Chan','HR','Derek.Chan@allinone.com.sg',1),
    (160135,'Jaclyn','Ong','HR','Jaclyn.Ong@allinone.com.sg',2),
    (160142,'Benjamin','Teo','HR','Benjamin.Teo@allinone.com.sg',1),
    (160143,'Lucas','Lee','HR','Lucas.Lee@allinone.com.sg',1),
    (160145,'Mary','Wong','HR','Mary.Wong@allinone.com.sg',2),
    (160146,'Oliva','Yong','HR','Oliva.Yong@allinone.com.sg',2),
    (160148,'Henry','Lim','HR','Henry.Lim@allinone.com.sg',1),
    (160155,'Alexander','Heng','HR','Alexander.Heng@allinone.com.sg',1),
    (160188,'Emma','Toh','HR','Emma.Toh@allinone.com.sg',2),
    (160212,'Charlotte','The','HR','Charlotte.The@allinone.com.sg',2),
    (160213,'Amelia','Ng','HR','Amelia.Ng@allinone.com.sg',2),
    (160218,'Eva','Tan','HR','Eva.Tan@allinone.com.sg',2),
    (160225,'Sophia','Fu','HR','Sophia.Fu@allinone.com.sg',2),
    (160258,'Michael','Tong','HR','Michael.Tong@allinone.com.sg',2),
    (160282,'Ethan','Loh','HR','Ethan.Loh@allinone.com.sg',2),
    (170166,'David','Yap','Finance','David.Yap@allinone.com.sg',3),
    (170208,'Daniel','Tan','Finance','Daniel.Tan@allinone.com.sg',2),
    (170215,'Mary','Wong','Finance','Mary.Wong@allinone.com.sg',2),
    (170216,'Jaclyn','Ong','Finance','Jaclyn.Ong@allinone.com.sg',2),
    (170232,'Jacob','Tan','Finance','Jacob.Tan@allinone.com.sg',2),
    (170233,'Logan','Goh','Finance','Logan.Goh@allinone.com.sg',2),
    (170238,'Jackson','Chan','Finance','Jackson.Chan@allinone.com.sg',2),
    (170245,'Aiden','Teo','Finance','Aiden.Teo@allinone.com.sg',2),
    (170655,'Samuel','Lee','Finance','Samuel.Lee@allinone.com.sg',2),
    (170866,'Susan','Lim','Finance','Susan.Lim@allinone.com.sg',2),
    (171008,'Janice','Heng','Finance','Janice.Heng@allinone.com.sg',2);

DROP TABLE IF EXISTS `course`;
CREATE TABLE IF NOT EXISTS `course` (
  `course_id` varchar(20) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `course_desc` varchar(255) DEFAULT NULL,
  `course_status` varchar(15) DEFAULT NULL,
  `course_type` varchar(10) DEFAULT NULL,
  `course_category` varchar(50) NOT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO course VALUES
    ('COR001','Systems Thinking and Design','This foundation module aims to introduce students to the fundamental concepts and underlying principles of systems thinking,','Active','Internal','Core'),
    ('COR002','Lean Six Sigma Green Belt Certification','Apply Lean Six Sigma methodology and statistical tools such as Minitab to be used in process analytics','Active','Internal','Core'),
    ('COR004','Service Excellence','The programme provides the learner with the key foundations of what builds customer confidence in the service industr','Pending','Internal','Core'),
    ('COR006','Manage Change','Identify risks associated with change and develop risk mitigation plans.','Retired','External','Core'),
    ('FIN001','Data Collection and Analysis','Data is meaningless unless insights and analysis can be drawn to provide useful information for business decision-making. It is imperative that data quality, integrity and security ','Active','External','Finance'),
    ('FIN002','Risk and Compliance Reporting','Regulatory reporting is a requirement for businesses from highly regulated sectors to demonstrate compliance with the necessary regulatory provisions.','Active','External','Finance'),
    ('FIN003','Business Continuity Planning','Business continuity planning is essential in any business to minimise loss when faced with potential threats and disruptions.','Retired','External','Finance'),
    ('HRD001','Leading and Shaping a Culture in Learning','This training programme, delivered by the National Centre of Excellence (Workplace Learning), aims to equip participants with the skills and knowledge of the National workplace learning certification framework,','Active','External','HR'),
    ('MGT001','People Management','enable learners to manage team performance and development through effective communication, conflict resolution and negotiation skills.','Active','Internal','Management'),
    ('MGT002','Workplace Conflict Management for Professionals','This course will address the gaps to build consensus and utilise knowledge of conflict management techniques to diffuse tensions and achieve resolutions effectively in the best interests of the organisation.','Active','External','Management'),
    ('MGT003','Enhance Team Performance Through Coaching','The course aims to upskill real estate team leaders in the area of service coaching for performance.','Pending','Internal','Management'),
    ('MGT004','Personal Effectiveness for Leaders','Learners will be able to acquire the skills and knowledge to undertake self-assessment in relation to ones performance and leadership style','Active','External','Management'),
    ('MGT007','Supervisory Management Skills','Supervisors lead teams, manage tasks, solve problems, report up and down the hierarchy, and much more. ','Retired','External','Management'),
    ('SAL001','Risk Management for Smart Business','Apply risk management concepts to digital business','Retired','Internal','Sales'),
    ('SAL002','CoC in Smart Living Solutions','Participants will acquire the knowledge and skills in setting up a smart living solution','Pending','External','Sales'),
    ('SAL003','Optimising Your Brand For The Digital Spaces','Digital has fundamentally shifted communication between brands and their consumers from a one-way broadcast to a two-way dialogue. In a hastened bid to transform their businesses to be digital market-ready,','Active','External','Sales'),
    ('SAL004','Stakeholder Management','Develop a stakeholder engagement plan and negotiate with stakeholders to arrive at mutually-beneficial arrangements.','Active','Internal','Sales'),
    ('tch001','Print Server Setup','Setting up print server in enterprise environment','Retired','Internal','Technical'),
    ('tch002','Canon MFC Setup','Setting up Canon ImageRUNNER series of products','Retired','Internal','Technical'),
    ('tch003','Canon MFC Mainteance and Troubleshooting','Troubleshoot and fixing L2,3 issues of Canon ImageRUNNER series of products','Active','Internal','Technical'),
    ('tch004','Introduction to Open Platform Communications','This course provides the participants with a good in-depth understanding of the SS IEC 62541 standard','Pending','Internal','Technical'),
    ('tch005','An Introduction to Sustainability','The course provides learners with the multi-faceted basic knowledge of sustainability.','Active','External','Technical'),
    ('tch006','Machine Learning DevOps Engineer ','The Machine Learning DevOps Engineer Nanodegree program focuses on the software engineering fundamentals needed to successfully streamline the deployment of data and machine-learning models','Pending','Internal','Technical'),
    ('tch008','Technology Intelligence and Strategy','Participants will be able to gain knowledge and skills on: - establishing technology strategy with technology intelligence framework and tools','Active','External','Technical'),
    ('tch009','Smart Sensing Technology','This course introduces sensors and sensing systems. The 5G infrastructure enables the many fast-growing IoT applications equipped with sensors ','Pending','External','Technical'),
    ('tch012','Internet of Things','The Internet of Things (IoT) is integrating our digital and physical world, opening up new and exciting opportunities to deploy, automate, optimize and secure diverse use cases and applications. ','Active','Internal','Technical'),
    ('tch013','Managing Cybersecurity and Risks','Digital security is the core of our daily lives considering that our dependence on the digital world','Active','Internal','Technical'),
    ('tch014','Certified Information Privacy Professional','The Certified Information Privacy Professional/ Asia (CIPP/A) is the first publicly available privacy certification','Active','External','Technical'),
    ('tch015','Network Security','Understanding of the fundamental knowledge of network security including cryptography, authentication and key distribution. The security techniques at various layers of computer networks are examined.','Active','External','Technical'),
    ('tch018','Professional Project Management','solid foundation in the project management processes from initiating a project, through planning, execution, control,','Active','Internal','Technical'),
    ('tch019','Innovation and Change Management ','the organization that constantly reinvents itself to be relevant has a better chance of making progress','Active','External','Technical');

DROP TABLE IF EXISTS `registration`;
CREATE TABLE IF NOT EXISTS `registration` (
  `reg_id` int NOT NULL AUTO_INCREMENT,
  `course_id` varchar(20) NOT NULL,
  `staff_id` int NOT NULL,
  `reg_status` varchar(20) NOT NULL,
  `completion_status` varchar(20) NOT NULL,
  PRIMARY KEY (`reg_id`),
  FOREIGN KEY (course_id) REFERENCES course(course_id), 
  FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;


 
INSERT INTO registration VALUES
    (1,'COR002',130001,'Registered','Completed'),
    (245,'COR001',130001,'Registered','Completed'),
    (2,'COR002',130002,'Registered','Completed'),
    (3,'COR002',140001,'Registered','Completed'),
    (111,'SAL004',140001,'Registered','Completed'),
    (200,'MGT001',140001,'Registered','Completed'),
    (246,'COR006',140001,'Waitlist',NULL),
    (4,'COR002',140002,'Registered','Completed'),
    (112,'SAL004',140002,'Registered','Completed'),
    (247,'FIN001',140002,'Waitlist',NULL),
    (5,'COR002',140003,'Rejected',NULL),
    (113,'SAL003',140003,'Registered','Completed'),
    (248,'FIN002',140003,'Registered','Completed'),
    (114,'SAL003',140004,'Registered','OnGoing'),
    (203,'COR002',140004,'Registered','Completed'),
    (249,'FIN003',140004,'Registered','OnGoing'),
    (6,'COR002',140008,'Registered','OnGoing'),
    (115,'SAL004',140008,'Rejected',NULL),
    (250,'HRD001',140008,'Registered','OnGoing'),
    (204,'COR002',140015,'Waitlist',NULL),
    (251,'MGT001',140015,'Registered',NULL),
    (7,'COR002',140025,'Registered','OnGoing'),
    (116,'SAL003',140025,'Registered','OnGoing'),
    (252,'MGT002',140025,'Rejected',NULL),
    (8,'COR002',140036,'Waitlist',NULL),
    (253,'MGT004',140036,'Registered',NULL),
    (9,'COR002',140078,'Waitlist',NULL),
    (117,'SAL004',140078,'Registered',NULL),
    (254,'MGT007',140078,'Registered','Completed'),
    (10,'COR002',140102,'Registered',NULL),
    (118,'SAL004',140102,'Waitlist',NULL),
    (255,'SAL001',140102,'Waitlist',NULL),
    (11,'COR002',140103,'Registered',NULL),
    (119,'SAL003',140103,'Waitlist',NULL),
    (12,'COR002',140108,'Registered',NULL),
    (120,'SAL003',140108,'Registered','Completed'),
    (256,'SAL004',140108,'Registered','Completed'),
    (13,'COR002',140115,'Registered','Completed'),
    (121,'SAL004',140115,'Registered','Completed'),
    (257,'tch001',140115,'Registered','Completed'),
    (14,'COR002',140525,'Rejected',NULL),
    (122,'SAL004',140525,'Registered','Completed'),
    (258,'tch002',140525,'Registered','Completed'),
    (123,'SAL003',140736,'Registered','OnGoing'),
    (205,'COR002',140736,'Waitlist',NULL),
    (259,'tch003',140736,'Registered','OnGoing'),
    (15,'COR002',140878,'Registered','Completed'),
    (124,'SAL003',140878,'Rejected',NULL),
    (260,'tch005',140878,'Rejected',NULL),
    (201,'MGT001',150008,'Registered','Completed'),
    (206,'COR002',150008,'Registered','Completed'),
    (261,'tch008',150008,'Registered','OnGoing'),
    (17,'COR002',150065,'Waitlist',NULL),
    (126,'tch003',150065,'Waitlist',NULL),
    (263,'tch013',150065,'Waitlist',NULL),
    (16,'COR002',150075,'Registered','Completed'),
    (125,'tch002',150075,'Registered',NULL),
    (262,'tch012',150075,'Registered',NULL),
    (18,'COR002',150076,'Waitlist',NULL),
    (264,'tch014',150076,'Waitlist',NULL),
    (26,'COR002',150085,'Waitlist',NULL),
    (132,'tch002',150085,'Waitlist',NULL),
    (273,'HRD001',150085,'Registered','OnGoing'),
    (25,'COR002',150095,'Registered',NULL),
    (131,'tch001',150095,'Waitlist',NULL),
    (272,'FIN003',150095,'Waitlist',NULL),
    (27,'COR002',150096,'Waitlist',NULL),
    (133,'tch003',150096,'Registered','Completed'),
    (274,'MGT001',150096,'Registered','OnGoing'),
    (35,'COR002',150115,'Waitlist',NULL),
    (137,'tch001',150115,'Registered','Completed'),
    (284,'tch005',150115,'Registered','Completed'),
    (19,'COR002',150118,'Registered','Completed'),
    (127,'tch005',150118,'Registered','Completed'),
    (265,'tch015',150118,'Registered',NULL),
    (34,'COR002',150125,'Registered','OnGoing'),
    (283,'tch003',150125,'Registered','Completed'),
    (36,'COR002',150126,'Waitlist',NULL),
    (138,'tch002',150126,'Registered','Completed'),
    (285,'tch008',150126,'Registered','OnGoing'),
    (28,'COR002',150138,'Registered','Completed'),
    (275,'MGT002',150138,'Registered',NULL),
    (20,'COR002',150142,'Registered','OnGoing'),
    (266,'tch018',150142,'Registered',NULL),
    (21,'COR002',150143,'Registered','OnGoing'),
    (128,'tch001',150143,'Registered','Completed'),
    (267,'tch019',150143,'Registered','Completed'),
    (22,'COR002',150148,'Registered',NULL),
    (129,'tch002',150148,'Registered','OnGoing'),
    (268,'COR001',150148,'Registered','Completed'),
    (23,'COR002',150155,'Rejected',NULL),
    (130,'tch003',150155,'Rejected',NULL),
    (29,'COR002',150162,'Registered','Completed'),
    (134,'tch005',150162,'Registered','Completed'),
    (276,'MGT004',150162,'Registered',NULL),
    (30,'COR002',150163,'Registered','Completed'),
    (277,'MGT007',150163,'Rejected',NULL),
    (212,'COR002',150165,'Registered','OnGoing'),
    (43,'COR002',150166,'Registered','Completed'),
    (143,'tch005',150166,'Registered','Completed'),
    (189,'FIN001',150166,'Waitlist',NULL),
    (202,'MGT001',150166,'Registered','Completed'),
    (237,'tch003',150166,'Rejected',NULL),
    (293,'COR006',150166,'Registered','OnGoing'),
    (31,'COR002',150168,'Registered','Completed'),
    (135,'tch001',150168,'Rejected',NULL),
    (278,'SAL001',150168,'Registered',NULL),
    (32,'COR002',150175,'Rejected',NULL),
    (279,'SAL003',150175,'Registered','Completed'),
    (37,'COR002',150192,'Registered',NULL),
    (139,'tch003',150192,'Registered','Completed'),
    (286,'tch012',150192,'Rejected',NULL),
    (38,'COR002',150193,'Registered',NULL),
    (287,'tch013',150193,'Registered','OnGoing'),
    (39,'COR002',150198,'Registered',NULL),
    (140,'tch005',150198,'Rejected',NULL),
    (288,'tch014',150198,'Registered',NULL),
    (40,'COR002',150205,'Registered','Completed'),
    (289,'tch015',150205,'Waitlist',NULL),
    (44,'COR002',150208,'Waitlist',NULL),
    (190,'FIN002',150208,'Registered','Completed'),
    (238,'tch005',150208,'Waitlist',NULL),
    (294,'FIN001',150208,'Rejected',NULL),
    (371,'MGT002',150208,'Registered','Completed'),
    (51,'COR002',150215,'Registered',NULL),
    (148,'tch002',150215,'Waitlist',NULL),
    (198,'FIN002',150215,'Registered','Completed'),
    (243,'tch001',150215,'Registered','Completed'),
    (302,'SAL001',150215,'Registered','OnGoing'),
    (379,'tch003',150215,'Waitlist',NULL),
    (110,'COR002',150216,'Waitlist',NULL),
    (149,'tch003',150216,'Registered','Completed'),
    (199,'FIN001',150216,'Registered','OnGoing'),
    (244,'tch005',150216,'Registered','OnGoing'),
    (303,'SAL003',150216,'Rejected',NULL),
    (45,'COR002',150232,'Waitlist',NULL),
    (144,'tch001',150232,'Registered','Completed'),
    (191,'FIN001',150232,'Registered','Completed'),
    (295,'FIN002',150232,'Registered','OnGoing'),
    (372,'MGT004',150232,'Registered','Completed'),
    (46,'COR002',150233,'Registered','Completed'),
    (145,'tch002',150233,'Registered','OnGoing'),
    (192,'FIN002',150233,'Registered','Completed'),
    (296,'FIN003',150233,'Registered',NULL),
    (373,'MGT007',150233,'Registered','Completed'),
    (47,'COR002',150238,'Registered','OnGoing'),
    (146,'tch003',150238,'Rejected',NULL),
    (193,'FIN001',150238,'Registered','OnGoing'),
    (297,'HRD001',150238,'Waitlist',NULL),
    (374,'SAL001',150238,'Registered','OnGoing'),
    (48,'COR002',150245,'Registered','OnGoing'),
    (194,'FIN002',150245,'Rejected',NULL),
    (239,'tch001',150245,'Rejected',NULL),
    (298,'MGT001',150245,'Waitlist',NULL),
    (375,'SAL003',150245,'Rejected',NULL),
    (52,'COR002',150258,'Registered',NULL),
    (304,'SAL004',150258,'Registered',NULL),
    (60,'COR002',150265,'Registered','OnGoing'),
    (153,'tch001',150265,'Registered','Completed'),
    (313,'tch015',150265,'Registered','Completed'),
    (213,'COR002',150275,'Waitlist',NULL),
    (312,'tch014',150275,'Registered','Completed'),
    (154,'tch002',150276,'Registered','Completed'),
    (214,'COR002',150276,'Registered','Completed'),
    (314,'tch018',150276,'Rejected',NULL),
    (53,'COR002',150282,'Waitlist',NULL),
    (150,'tch005',150282,'Registered','Completed'),
    (305,'tch001',150282,'Waitlist',NULL),
    (54,'COR002',150283,'Waitlist',NULL),
    (306,'tch002',150283,'Registered','Completed'),
    (55,'COR002',150288,'Registered','Completed'),
    (151,'tch001',150288,'Rejected',NULL),
    (307,'tch003',150288,'Registered','Completed'),
    (56,'COR002',150295,'Registered','Completed'),
    (308,'tch005',150295,'Registered','OnGoing'),
    (61,'COR002',150318,'Registered','OnGoing'),
    (155,'tch003',150318,'Registered','Completed'),
    (315,'tch019',150318,'Waitlist',NULL),
    (62,'COR002',150342,'Waitlist',NULL),
    (316,'COR001',150342,'Registered','Completed'),
    (63,'COR002',150343,'Waitlist',NULL),
    (156,'tch005',150343,'Rejected',NULL),
    (159,'tch005',150345,'Registered','Completed'),
    (215,'COR002',150345,'Registered',NULL),
    (322,'MGT001',150345,'Registered','Completed'),
    (64,'COR002',150348,'Registered',NULL),
    (317,'COR006',150348,'Registered','Completed'),
    (65,'COR002',150355,'Registered',NULL),
    (318,'FIN001',150355,'Rejected',NULL),
    (69,'COR002',150356,'Registered','Completed'),
    (323,'MGT002',150356,'Registered','OnGoing'),
    (160,'tch001',150398,'Registered','Completed'),
    (216,'COR002',150398,'Registered','Completed'),
    (324,'MGT004',150398,'Registered','Completed'),
    (70,'COR002',150422,'Registered','Completed'),
    (161,'tch002',150422,'Registered','OnGoing'),
    (325,'MGT007',150422,'Registered','Completed'),
    (71,'COR002',150423,'Waitlist',NULL),
    (162,'tch003',150423,'Rejected',NULL),
    (326,'SAL001',150423,'Waitlist',NULL),
    (72,'COR002',150428,'Waitlist',NULL),
    (327,'SAL003',150428,'Waitlist',NULL),
    (73,'COR002',150435,'Registered','Completed'),
    (328,'SAL004',150435,'Registered','Completed'),
    (77,'COR002',150445,'Rejected',NULL),
    (165,'tch003',150445,'Registered','Completed'),
    (332,'tch005',150445,'Rejected',NULL),
    (217,'COR002',150446,'Registered',NULL),
    (333,'tch008',150446,'Registered',NULL),
    (78,'COR002',150488,'Registered',NULL),
    (166,'tch005',150488,'Registered','Completed'),
    (334,'tch012',150488,'Registered','Completed'),
    (218,'COR002',150512,'Registered',NULL),
    (335,'tch013',150512,'Waitlist',NULL),
    (79,'COR002',150513,'Registered','Completed'),
    (167,'tch001',150513,'Rejected',NULL),
    (336,'tch014',150513,'Waitlist',NULL),
    (80,'COR002',150518,'Waitlist',NULL),
    (337,'tch015',150518,'Registered','Completed'),
    (81,'COR002',150525,'Waitlist',NULL),
    (338,'tch018',150525,'Registered','Completed'),
    (85,'COR002',150555,'Registered','OnGoing'),
    (169,'tch001',150555,'Registered','Completed'),
    (341,'COR006',150555,'Registered','OnGoing'),
    (207,'COR002',150565,'Registered',NULL),
    (269,'COR006',150565,'Registered','Completed'),
    (86,'COR002',150566,'Rejected',NULL),
    (170,'tch002',150566,'Registered','Completed'),
    (342,'FIN001',150566,'Registered',NULL),
    (209,'COR002',150585,'Registered','OnGoing'),
    (280,'SAL004',150585,'Waitlist',NULL),
    (171,'tch003',150608,'Registered','Completed'),
    (219,'COR002',150608,'Registered','OnGoing'),
    (343,'FIN002',150608,'Waitlist',NULL),
    (41,'COR002',150615,'Rejected',NULL),
    (290,'tch018',150615,'Waitlist',NULL),
    (87,'COR002',150632,'Registered','OnGoing'),
    (344,'FIN003',150632,'Waitlist',NULL),
    (172,'tch005',150633,'Rejected',NULL),
    (220,'COR002',150633,'Waitlist',NULL),
    (345,'HRD001',150633,'Registered',NULL),
    (88,'COR002',150638,'Registered',NULL),
    (346,'MGT001',150638,'Registered',NULL),
    (89,'COR002',150645,'Waitlist',NULL),
    (347,'MGT002',150645,'Registered','Completed'),
    (49,'COR002',150655,'Registered',NULL),
    (195,'FIN001',150655,'Waitlist',NULL),
    (240,'tch002',150655,'Registered',NULL),
    (299,'MGT002',150655,'Registered','Completed'),
    (376,'SAL004',150655,'Registered','OnGoing');
INSERT INTO registration VALUES
    (93,'COR002',150695,'Registered','Completed'),
    (175,'tch005',150695,'Registered','Completed'),
    (351,'SAL003',150695,'Registered','Completed'),
    (57,'COR002',150705,'Registered','Completed'),
    (309,'tch008',150705,'Rejected',NULL),
    (66,'COR002',150765,'Registered',NULL),
    (157,'tch002',150765,'Registered',NULL),
    (319,'FIN002',150765,'Registered',NULL),
    (24,'COR002',150776,'Registered',NULL),
    (270,'FIN001',150776,'Registered','Completed'),
    (33,'COR002',150796,'Registered','OnGoing'),
    (281,'tch001',150796,'Waitlist',NULL),
    (141,'tch002',150826,'Registered',NULL),
    (211,'COR002',150826,'Rejected',NULL),
    (291,'tch019',150826,'Registered','Completed'),
    (74,'COR002',150845,'Registered','OnGoing'),
    (329,'tch001',150845,'Registered','OnGoing'),
    (50,'COR002',150866,'Rejected',NULL),
    (196,'FIN002',150866,'Registered','Completed'),
    (241,'tch003',150866,'Waitlist',NULL),
    (300,'MGT004',150866,'Registered','Completed'),
    (377,'tch001',150866,'Registered',NULL),
    (58,'COR002',150916,'Registered','Completed'),
    (310,'tch012',150916,'Waitlist',NULL),
    (208,'COR002',150918,'Registered',NULL),
    (271,'FIN002',150918,'Waitlist',NULL),
    (82,'COR002',150935,'Registered','Completed'),
    (339,'tch019',150935,'Registered','Completed'),
    (136,'tch005',150938,'Waitlist',NULL),
    (210,'COR002',150938,'Rejected',NULL),
    (282,'tch002',150938,'Registered','Completed'),
    (42,'COR002',150968,'Registered','Completed'),
    (142,'tch003',150968,'Waitlist',NULL),
    (292,'COR001',150968,'Registered','Completed'),
    (67,'COR002',150976,'Registered','Completed'),
    (158,'tch003',150976,'Waitlist',NULL),
    (320,'FIN003',150976,'Waitlist',NULL),
    (109,'COR002',151008,'Registered',NULL),
    (147,'tch001',151008,'Waitlist',NULL),
    (197,'FIN001',151008,'Registered','Completed'),
    (242,'tch005',151008,'Registered','Completed'),
    (301,'MGT007',151008,'Registered','Completed'),
    (378,'tch002',151008,'Waitlist',NULL),
    (90,'COR002',151055,'Waitlist',NULL),
    (173,'tch002',151055,'Registered',NULL),
    (348,'MGT004',151055,'Registered','Completed'),
    (75,'COR002',151056,'Registered','OnGoing'),
    (163,'tch001',151056,'Waitlist',NULL),
    (330,'tch002',151056,'Registered','OnGoing'),
    (59,'COR002',151058,'Rejected',NULL),
    (152,'tch005',151058,'Waitlist',NULL),
    (311,'tch013',151058,'Waitlist',NULL),
    (68,'COR002',151118,'Rejected',NULL),
    (321,'HRD001',151118,'Registered','Completed'),
    (83,'COR002',151146,'Registered','Completed'),
    (168,'tch005',151146,'Waitlist',NULL),
    (340,'COR001',151146,'Registered','OnGoing'),
    (76,'COR002',151198,'Registered',NULL),
    (164,'tch002',151198,'Waitlist',NULL),
    (331,'tch003',151198,'Registered',NULL),
    (91,'COR002',151266,'Registered',NULL),
    (174,'tch003',151266,'Waitlist',NULL),
    (349,'MGT007',151266,'Rejected',NULL),
    (84,'COR002',151288,'Registered','Completed'),
    (92,'COR002',151408,'Registered',NULL),
    (350,'SAL001',151408,'Registered','Completed'),
    (94,'COR002',160008,'Registered','Completed'),
    (176,'HRD001',160008,'Registered','Completed'),
    (352,'SAL004',160008,'Waitlist',NULL),
    (178,'MGT002',160065,'Registered','Completed'),
    (221,'COR002',160065,'Waitlist',NULL),
    (354,'tch002',160065,'Registered','OnGoing'),
    (95,'COR002',160075,'Rejected',NULL),
    (177,'MGT001',160075,'Registered','Completed'),
    (353,'tch001',160075,'Waitlist',NULL),
    (96,'COR002',160076,'Registered','Completed'),
    (355,'tch003',160076,'Registered','OnGoing'),
    (179,'MGT004',160118,'Rejected',NULL),
    (222,'SAL004',160118,'Registered','Completed'),
    (356,'tch005',160118,'Registered',NULL),
    (102,'COR002',160135,'Registered',NULL),
    (182,'MGT004',160135,'Registered','Completed'),
    (228,'SAL004',160135,'Waitlist',NULL),
    (362,'tch018',160135,'Waitlist',NULL),
    (97,'COR002',160142,'Registered','Completed'),
    (223,'SAL004',160142,'Registered','Completed'),
    (357,'tch008',160142,'Registered',NULL),
    (98,'COR002',160143,'Waitlist',NULL),
    (224,'SAL003',160143,'Registered','Completed'),
    (358,'tch012',160143,'Rejected',NULL),
    (101,'COR002',160145,'Registered','OnGoing'),
    (227,'SAL003',160145,'Registered',NULL),
    (361,'tch015',160145,'Waitlist',NULL),
    (103,'COR002',160146,'Registered',NULL),
    (183,'MGT007',160146,'Registered','Completed'),
    (229,'SAL004',160146,'Registered','Completed'),
    (363,'tch019',160146,'Registered','Completed'),
    (99,'COR002',160148,'Waitlist',NULL),
    (180,'MGT001',160148,'Registered',NULL),
    (225,'SAL003',160148,'Registered','OnGoing'),
    (359,'tch013',160148,'Registered',NULL),
    (100,'COR002',160155,'Registered','OnGoing'),
    (181,'MGT002',160155,'Waitlist',NULL),
    (226,'SAL004',160155,'Rejected',NULL),
    (360,'tch014',160155,'Registered','Completed'),
    (104,'COR002',160188,'Rejected',NULL),
    (184,'HRD001',160188,'Registered','Completed'),
    (230,'SAL003',160188,'Registered','Completed'),
    (364,'COR001',160188,'Registered','Completed'),
    (185,'MGT001',160212,'Registered','OnGoing'),
    (231,'SAL003',160212,'Registered','OnGoing'),
    (365,'COR002',160212,'Registered','Completed'),
    (105,'COR002',160213,'Registered',NULL),
    (186,'MGT002',160213,'Rejected',NULL),
    (232,'SAL004',160213,'Rejected',NULL),
    (366,'COR006',160213,'Registered','OnGoing'),
    (233,'SAL004',160218,'Waitlist',NULL),
    (367,'FIN001',160218,'Rejected',NULL),
    (106,'COR002',160225,'Registered','Completed'),
    (234,'SAL003',160225,'Waitlist',NULL),
    (368,'FIN002',160225,'Registered','OnGoing'),
    (107,'COR002',160258,'Waitlist',NULL),
    (187,'MGT007',160258,'Registered',NULL),
    (235,'SAL003',160258,'Registered','Completed'),
    (369,'FIN003',160258,'Registered',NULL),
    (108,'COR002',160282,'Waitlist',NULL),
    (188,'MGT001',160282,'Waitlist',NULL),
    (236,'tch002',160282,'Registered','Completed'),
    (370,'HRD001',160282,'Waitlist',NULL);

-- --------------------------------------------------------

-- Database: LJPS

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `job_role`;
CREATE TABLE IF NOT EXISTS `job_role` (
  	`role_id` int NOT NULL AUTO_INCREMENT,
	`role_name` varchar(256) NOT NULL, 
	`is_role_deleted` boolean NOT NULL,
	PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `job_role` (`role_id`, `role_name`, `is_role_deleted`) VALUES
(1, "Software Developer", False),
(2, "Software Engineer", False),
(3, "Data Analyst", False),
(4, "Web Developer", False),
(5, "Programmer", False),
(6, "IT Support", False),
(7, "Sales Marketing", False);
COMMIT;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
CREATE TABLE IF NOT EXISTS `skill` (
  	`skill_id` int NOT NULL AUTO_INCREMENT,
	`skill_name` varchar(256) NOT NULL, 
	`is_skill_deleted` boolean NOT NULL,
	PRIMARY KEY (`skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `skill`
--

INSERT INTO `skill` (`skill_id`, `skill_name`, `is_skill_deleted`) VALUES
(1, "Leadership", False),
(2, "Analytics", False),
(3, "Troubleshooting", False),
(4, "Accounting", False),
(5, "Programming", False),
(6, "Database Management", False);
COMMIT;

--
-- Table structure for table `skill_role`
--

DROP TABLE IF EXISTS `skill_role`;
CREATE TABLE IF NOT EXISTS `skill_role` (
  	`sr_id` int NOT NULL AUTO_INCREMENT,
	`role_id` int NOT NULL, 
	`skill_id` int NOT NULL,
	PRIMARY KEY (`sr_id`),
	FOREIGN KEY (role_id) REFERENCES job_role(role_id),
	FOREIGN KEY (skill_id) REFERENCES skill(skill_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `skill_role`
--

INSERT INTO `skill_role` (`sr_id`, `role_id`, `skill_id`) VALUES
(1, 1, 1),
(2, 2, 5),
(3, 2, 6),
(4, 3, 2),
(5, 4, 5),
(6, 6, 3),
(7, 7, 4), 
(8, 2, 1),
(9, 1, 2), 
(10, 1, 3),
(11, 1, 5),
(12, 1, 6);
COMMIT;

--
-- Table structure for table `skill_course`
--

DROP TABLE IF EXISTS `skill_course`;
CREATE TABLE IF NOT EXISTS `skill_course` (
  	`sc_id` int NOT NULL AUTO_INCREMENT,
	`skill_id` int NOT NULL, 
	`course_id` varchar(20) NOT NULL,
	PRIMARY KEY (`sc_id`),
	FOREIGN KEY (skill_id) REFERENCES skill(skill_id),
	FOREIGN KEY (course_id) REFERENCES course(course_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `skill_course`
--

INSERT INTO `skill_course` (`sc_id`, `skill_id`, `course_id`) VALUES
(1, 1, "COR001"),
(2, 2, "COR002"),
(3, 3, "tch002"),
(4, 3, "tch008"),
(5, 4, "FIN002"),
(6, 5, "COR001"),
(7, 6, "COR001"),
(8, 4, "SAL003"),
(9, 1, "MGT004"),
(10, 5, "HRD001");
COMMIT;

--
-- Table structure for table `staff_skill`
--

DROP TABLE IF EXISTS `staff_skill`;
CREATE TABLE IF NOT EXISTS `staff_skill` (
  	`sk_id` int NOT NULL AUTO_INCREMENT,
	`skill_id` int NOT NULL, 
	`staff_id` int NOT NULL,
	PRIMARY KEY (`sk_id`),
	FOREIGN KEY (skill_id) REFERENCES skill(skill_id),
	FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff_skill`
--

INSERT INTO `staff_skill` (`sk_id`, `skill_id`, `staff_id`) VALUES
(1, 1, 130001),
(2, 2, 130001),
(3, 2, 150126);
COMMIT;

--
-- Table structure for table `learning_journey`
--

DROP TABLE IF EXISTS `learning_journey`;
CREATE TABLE IF NOT EXISTS `learning_journey` (
  	`lj_id` int NOT NULL AUTO_INCREMENT,
	`staff_id` int NOT NULL, 
	`role_id` int NOT NULL,
	`skill_id` int NOT NULL,
    `is_learningjourney_completed` boolean NOT NULL,
	PRIMARY KEY (`lj_id`),
	FOREIGN KEY (staff_id) REFERENCES staff(staff_id),
	FOREIGN KEY (role_id) REFERENCES job_role(role_id),
	FOREIGN KEY (skill_id) REFERENCES skill(skill_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `learning_journey`
--

INSERT INTO `learning_journey` (`lj_id`, `staff_id`, `role_id`, `skill_id`, `is_learningjourney_completed`) VALUES
(1, 130001, 1, 1, True),
(2, 130001, 3, 2, True), 
(3, 150126, 3, 2, False),
(4, 150126, 6, 3, False),
(5, 130001, 7, 4, False), 
(6, 150126, 1, 1, False),
(7, 130001, 4, 5, False);
COMMIT;

--
-- Table structure for table `learning_journey_course`
--

DROP TABLE IF EXISTS `learning_journey_course`;
CREATE TABLE IF NOT EXISTS `learning_journey_course` (
  	`ljc_id` int NOT NULL AUTO_INCREMENT,
	`lj_id` int NOT NULL, 
	`course_id` varchar(20) NOT NULL,
  `completion_status` varchar(20) NOT NULL,
  `reg_status` varchar(20) NOT NULL,
	PRIMARY KEY (`ljc_id`),
	FOREIGN KEY (lj_id) REFERENCES learning_journey(lj_id) ON DELETE CASCADE, -- When a learning journey is deleted, the row with that lj_id will be deleted
	FOREIGN KEY (course_id) REFERENCES skill_course(course_id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `learning_journey_course`
--

INSERT INTO `learning_journey_course` (`ljc_id`, `lj_id`, `course_id`, `completion_status`, `reg_status`) VALUES
(1, 1, "COR001", "Completed", "Registered"),
(2, 2, "COR002", "Completed", "Registered"),
(3, 3, "COR002","Not Started", "Waitlist"),
(4, 4, "tch002", "Completed", "Registered"),
(5, 4, "tch008", "OnGoing", "Registered"),
(6, 5, "SAL003", "Not Started", "Not Registered"),
(7, 6, "MGT004", "Not Started", "Not Registered"),
(8, 5, "FIN002", "Not Started", "Not Registered"),
(9, 7, "HRD001", "Not Started", "Not Registered");
COMMIT;
/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MariaDB
 Source Server Version : 100418
 Source Host           : localhost:3306
 Source Schema         : rgce5

 Target Server Type    : MariaDB
 Target Server Version : 100418
 File Encoding         : 65001

 Date: 30/08/2022 22:51:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for course_images
-- ----------------------------
DROP TABLE IF EXISTS `course_images`;
CREATE TABLE `course_images`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `course_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `course_banner` tinyint(1) NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `course_images_course_id_foreign`(`course_id`) USING BTREE,
  CONSTRAINT `course_images_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_images
-- ----------------------------
INSERT INTO `course_images` VALUES (1, 1, NULL, 'course_images/mwtNpVUjVNwN0YAFHhtXxGNyqOIskgiZI62pWyhC.png', 1, 1, '2022-08-28 18:45:53', '2022-08-28 18:45:53');
INSERT INTO `course_images` VALUES (2, 1, NULL, 'course_images/ocdE9TenMJ3A6girfqOxSX7Hkytgx5p1zl0MUd6K.png', NULL, 1, '2022-08-28 18:48:25', '2022-08-28 18:48:25');
INSERT INTO `course_images` VALUES (3, 1, NULL, 'course_images/BgdXjsFWyfc5xHFIutfpAobj1g31noyvuiOdByNR.png', NULL, 1, '2022-08-28 18:48:25', '2022-08-28 18:48:25');
INSERT INTO `course_images` VALUES (4, 1, NULL, 'course_images/0ieUY6JZQmDS5UyiSSPVxvudi3JG5yDXcCvrzngi.png', NULL, 1, '2022-08-28 18:48:25', '2022-08-28 18:48:25');
INSERT INTO `course_images` VALUES (5, 1, NULL, 'course_images/VYW1p4UphGkCmEIED43jvv8GPyH0Ppjv2fDMlfET.png', NULL, 1, '2022-08-28 18:48:25', '2022-08-28 18:48:25');
INSERT INTO `course_images` VALUES (6, 1, NULL, 'course_images/76Np2r0eL2RzJvpz1a7dMdSKUvEZFqP3bLwuKZ14.png', NULL, 1, '2022-08-28 18:48:25', '2022-08-28 18:48:25');
INSERT INTO `course_images` VALUES (7, 1, NULL, 'course_images/yIof99B8lRkgFRPN85rEofCczDDqA462RtFdWbpm.png', NULL, 1, '2022-08-28 18:48:25', '2022-08-28 18:48:25');
INSERT INTO `course_images` VALUES (8, 1, NULL, 'course_images/JIXXIxL9BuWXGl1NfhvWVg2KjBwzKSmSnBc5PsOr.png', NULL, 1, '2022-08-28 18:48:25', '2022-08-28 18:48:25');
INSERT INTO `course_images` VALUES (9, 2, NULL, 'course_images/n5NtyaRlmJSeNazBp0qcGtj0hg7bhRmTouVJFSM3.jpg', 1, 1, '2022-08-28 18:51:21', '2022-08-28 18:51:21');
INSERT INTO `course_images` VALUES (10, 2, 's', 'course_images/rtYzmLAbdCOcST2kk9gqIWOpNGC4NNFyNDS2blM7.png', 0, 1, '2022-08-28 18:51:52', '2022-08-28 18:52:11');
INSERT INTO `course_images` VALUES (11, 3, NULL, 'course_images/c3Dco4A8k9vvlI4vnUXDFQ2nePYolkVjPvioPcYa.png', NULL, 1, '2022-08-28 18:54:00', '2022-08-28 18:54:00');
INSERT INTO `course_images` VALUES (12, 3, NULL, 'course_images/IuBoyjN5KBH41wdVN4BBc3VBTOXHpMZvnTYWn0AP.png', NULL, 1, '2022-08-28 18:54:00', '2022-08-28 18:54:00');
INSERT INTO `course_images` VALUES (13, 4, NULL, 'course_images/puuB7etWJX4Rgqedpg2wmELu4QyJ2gWZb3zkU7wX.jpg', 1, 1, '2022-08-28 18:54:39', '2022-08-28 18:54:39');
INSERT INTO `course_images` VALUES (14, 5, NULL, 'course_images/Gd3cSAqqVJ6nahMR4M5rHFF0Fm14Ia5hYCkYny7B.jpg', 1, 1, '2022-08-28 18:56:57', '2022-08-28 18:56:57');
INSERT INTO `course_images` VALUES (15, 5, NULL, 'course_images/hnL3FKhWeBZ2xrPsMcSuYScj7ruDLIZUypXH6bHu.png', 0, 1, '2022-08-28 18:57:12', '2022-08-28 18:57:12');
INSERT INTO `course_images` VALUES (16, 5, NULL, 'course_images/MnTXPWBTHuVzgn1MsGOmyoMfA3xVWo5wH6DOy25K.png', 0, 1, '2022-08-28 18:57:12', '2022-08-28 18:57:12');
INSERT INTO `course_images` VALUES (17, 5, NULL, 'course_images/qXn1p1KkfcUsqqzY8PhUq8YfxIZF9lPQmvphcupZ.png', 0, 1, '2022-08-28 18:57:12', '2022-08-28 18:57:12');
INSERT INTO `course_images` VALUES (18, 5, NULL, 'course_images/WgKYBIeR8yIsgxcoa8TrMZZlBHL9iOwkpFn93Hci.png', 0, 1, '2022-08-28 18:57:12', '2022-08-28 18:57:12');
INSERT INTO `course_images` VALUES (19, 6, NULL, 'course_images/j69XIitkcdSFjA6EkWaI0SkH6kJOhsvhgG6G7wDn.jpg', 1, 1, '2022-08-28 18:58:39', '2022-08-28 18:58:39');
INSERT INTO `course_images` VALUES (20, 6, NULL, 'course_images/lvbQHgZfmqmyhW7FjHXIwaxIjUKDkzFtjiA0y5e4.png', 0, 1, '2022-08-28 18:58:52', '2022-08-28 18:58:52');
INSERT INTO `course_images` VALUES (21, 6, NULL, 'course_images/VSp4zInqQk4900IzmoQtGEg9PurLVfMxNe98WaoE.png', 0, 1, '2022-08-28 18:58:52', '2022-08-28 18:58:52');
INSERT INTO `course_images` VALUES (22, 6, NULL, 'course_images/YqOVVQMztkuenxUNb0qzw80ikoTV56UXpsFQAX5N.png', 0, 1, '2022-08-28 18:58:52', '2022-08-28 18:58:52');
INSERT INTO `course_images` VALUES (23, 6, NULL, 'course_images/NOZMuCTv4GZd8S9X75jMSRgdENjUC0dTGWzmx94R.png', 0, 1, '2022-08-28 18:58:52', '2022-08-28 18:58:52');
INSERT INTO `course_images` VALUES (24, 6, NULL, 'course_images/d5WevgiqKcQUHZhIZwUav6lbIpAZvMgFv3Wm4v9g.png', 0, 1, '2022-08-28 18:58:52', '2022-08-28 18:58:52');
INSERT INTO `course_images` VALUES (25, 6, NULL, 'course_images/fiUBC7gmkylO3So0otyf1g5zVYQOnMiOazQh9jgO.png', 0, 1, '2022-08-28 18:58:52', '2022-08-28 18:58:52');
INSERT INTO `course_images` VALUES (26, 6, NULL, 'course_images/JFbPZB5YfTgqNiN28W6EFoxAGxTVrLtK1KGpEPUk.png', 0, 1, '2022-08-28 18:58:52', '2022-08-28 18:58:52');
INSERT INTO `course_images` VALUES (27, 7, NULL, 'course_images/ntwMpmn0ZkLNbVMmdcQOhWEgzMq7Dzov06Mxgsvx.jpg', 1, 1, '2022-08-28 19:01:04', '2022-08-28 19:01:04');
INSERT INTO `course_images` VALUES (28, 8, NULL, 'course_images/b3wkdhkY0dY03C7dnhjumA0SplmllKSbpo3Ri0m0.jpg', 1, 1, '2022-08-28 19:03:10', '2022-08-28 19:03:10');
INSERT INTO `course_images` VALUES (29, 8, NULL, 'course_images/tzFOtO8bfTeu7wSC4NudU3oLCsGDX0owWqbVsQJY.png', 0, 1, '2022-08-28 19:03:25', '2022-08-28 19:03:25');
INSERT INTO `course_images` VALUES (30, 8, NULL, 'course_images/Xv8alKSSa3DzYcSY1TxnTdQlG7mmkZ4LUsEd1tqU.png', 0, 1, '2022-08-28 19:03:25', '2022-08-28 19:03:25');
INSERT INTO `course_images` VALUES (31, 8, NULL, 'course_images/kThg2TMgxSHv5Ss3Kns1MEAxpmW6i8CoZLqm9MF4.png', 0, 1, '2022-08-28 19:03:25', '2022-08-28 19:03:25');
INSERT INTO `course_images` VALUES (32, 8, NULL, 'course_images/aGk8JGldyKEoHKbFWwYhzvXYsuasct9HHlgmvi7o.png', 0, 1, '2022-08-28 19:03:25', '2022-08-28 19:03:25');
INSERT INTO `course_images` VALUES (33, 8, NULL, 'course_images/rMHJWCq3CVKcgux9l2iZ3tPOjpbzTqYTE1lpemJV.png', 0, 1, '2022-08-28 19:03:25', '2022-08-28 19:03:25');
INSERT INTO `course_images` VALUES (34, 8, NULL, 'course_images/fv8klSi42KLMOvWfKuP76BOlv9dkeKAbAjqr1777.png', 0, 1, '2022-08-28 19:03:25', '2022-08-28 19:03:25');
INSERT INTO `course_images` VALUES (35, 8, NULL, 'course_images/lzbHVwMhlHjLmnWzMlINkuQkCr0LjJCmbZ0NOL1o.png', 0, 1, '2022-08-28 19:03:25', '2022-08-28 19:03:25');
INSERT INTO `course_images` VALUES (36, 8, NULL, 'course_images/UP0KMr2HJn4e0GqkM2anHfFnziIZZxEzSdHYMKxL.png', 0, 1, '2022-08-28 19:03:25', '2022-08-28 19:03:25');
INSERT INTO `course_images` VALUES (37, 8, NULL, 'course_images/nxf6ivTyvbYPoEoWBJ6QrvpCMSnmafrFRjrAgHHI.png', 0, 1, '2022-08-28 19:03:25', '2022-08-28 19:03:25');
INSERT INTO `course_images` VALUES (38, 8, NULL, 'course_images/gnr5sOQCnwDkv4RMnMqiSpE4Xvcb2q3ZS18lpEiu.png', 0, 1, '2022-08-28 19:03:25', '2022-08-28 19:03:25');
INSERT INTO `course_images` VALUES (39, 8, NULL, 'course_images/UxXujS5yFHN2P30dxZaA1Z6PjrFqO4UKXuAIHbD5.jpg', 0, 1, '2022-08-28 19:03:25', '2022-08-28 19:03:25');
INSERT INTO `course_images` VALUES (40, 9, NULL, 'course_images/1W81CY4uAis4RRanAiUdsjOW74raXQmN04ONxVuM.png', 0, 1, '2022-08-28 19:09:59', '2022-08-28 19:09:59');
INSERT INTO `course_images` VALUES (41, 9, 's', 'course_images/LzMSyKolHFZmOE9Hx1RXwJpItO66MGqop9mCFSDy.jpg', 1, 1, '2022-08-28 19:09:59', '2022-08-28 19:11:25');
INSERT INTO `course_images` VALUES (42, 10, NULL, 'course_images/b3YnxYlHgU3Q6KJK29SJpKRFTjcJpwfJUzv16eAY.png', 0, 1, '2022-08-28 19:10:18', '2022-08-28 19:10:18');
INSERT INTO `course_images` VALUES (43, 10, 's', 'course_images/vmfPHpohdJploP2aAI93WczCfbHmW42xA24MpN5x.jpg', 1, 1, '2022-08-28 19:10:18', '2022-08-28 19:11:35');
INSERT INTO `course_images` VALUES (44, 11, NULL, 'course_images/bgwjFLl3J10A8I5aliySzyGISS15NhdzmIgrRrtt.jpg', 1, 1, '2022-08-28 19:10:35', '2022-08-28 19:10:35');
INSERT INTO `course_images` VALUES (45, 12, NULL, 'course_images/M1I6dwgmwNjRupsFXE685usaXubN4NYNLansNd7F.jpg', 1, 1, '2022-08-28 19:10:57', '2022-08-28 19:10:57');

-- ----------------------------
-- Table structure for courses
-- ----------------------------
DROP TABLE IF EXISTS `courses`;
CREATE TABLE `courses`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `degree` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `specialization` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `spec_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `special_mention` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `special_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of courses
-- ----------------------------
INSERT INTO `courses` VALUES (1, 'B.E', 'Biomedical Engineering', '<p>Biomedical engineering is an eight semester program, which applies the engineering knowledge in the field of medicine. Since it is interdisciplinary in nature, the course has topics related to medicine, electronics, electrical, and computer science. The course also has a two week hospital training program where the students will have a practical knowledge of what they learn in the course. We have faculties from various specializations like medical electronics, applied electronics, nanotechnology, bioinformatics, applied electronics etc. The department also has a doctor to handle subjects like anatomy, physiology, microbiology, pathology and assist devices. With the team of faculties of various specializations we are able to achieve quality education and also provide guidance for the students in their areas of interest in the project work. We have sufficient lab facility where the students can do in house projects implementing their knowledge in the practical applications.</p><p>&nbsp;</p><p>The four year multi-disciplinary programme is designed to mould engineers who can serve in health care industry, medical equipment Manufacturing and servicing industry, in the areas of research where they can invent new machines as well as in IT companies developing medical software. The course prepares the students to work at the cutting edge of technology and advanced biological sciences. Health care professionals increasingly depend upon technology to confront problems and have to turn to the biomedical engineers for assistance.</p><p>&nbsp;</p><p>This course has a great demand in India and in abroad, due to the improvement in the medical equipment’s quality and quantity day by day. Biomedical equipment’s and engineers always serve as a helping hand to the doctors. Biomedical engineering proves its importance by the invention of new devices which help in early diagnosis and safe treatment of various diseases thereby increasing the average lifetime of human beings. Biomedical helps to achieve longer and healthier lifestyle.</p><p>&nbsp;</p><p>The importance of biomedical engineering in fast growing healthcare industry is now well acknowledged and consequently new career options are available to them in health care industries both nationally and internationally. Many of our graduates are employed in super specialty and multi specialty hospitals (both in India as well as Abroad), biomedical equipments manufacturing companies, medical equipment sales and service companies, IT companies and government departments. Many of our Alumni have completed their higher studies in prestigious universities in India, Australia, Singapore, Germany and USA and are now well placed.</p>', 'course_images/su5toIumjKmHcuaqdM2T8FOvBggiupxE6mPcxu7z.png', 'Introduced First Time in TamilNadu', NULL, 1, '2022-08-28 18:36:16', '2022-08-29 09:56:37');
INSERT INTO `courses` VALUES (2, 'B.E', 'Electronics & Communication Engineering', '<p>The Electronics and Communication Engineering department is one among the three departments that were started at the beginning of the college in the year of 2001. The Department offers undergraduate program with an intake of 60 students, and Post graduate program (Specialization - Applied Electronics) introduced in 2010 with an intake of 18 students. State-of-the-art laboratories, a separate department library and highly qualified and well experienced faculty make the department unique.</p><p>The Electronics and Communication Engineering (ECE) Department has a rich tradition in teaching at RGCE.<br>Besides giving a thorough grounding in basic sciences and engineering subjects, the curriculum in Electronics and Communication Engineering lays greater emphasis on deep understanding of fundamental principles and state of the art knowledge about electronic devices and circuits, computer architecture and microprocessors, VLSI and embedded systems, electromagnetic field theory, analog and digital communication, digital signal processing, microwave and broadband communications.</p><p>In addition to the well equipped curriculum related laboratories, the Department has many state of the art facilities for assisting the project works in solid state devices, VLSI, RF Engineering, digital signal processing, image processing and wireless technology.</p><p>Electronics and Communication Engineering is a field that involves complex electronic apparatus, circuits and equipments that help in executing speedy and efficient communication systems. These engineers design, fabricate, maintain, supervise and manufacture electronic equipments used in entertainment industry, computer industry, communication and defense. Ever increasing pace of development in electronics, audio and video communications systems and the automation in industry have made an electronic engineer a catalyst for the change of the modern society. Electronics gadgets and communication systems of present age have tremendously improved the quality of life.</p><p>The department subscribes a number of National and International journals. The students and the Staffs are encouraged to publish their work in various Conferences. Every year the department organizes Technical Symposium, where students from other colleges present their work through paper presentations and exchange ideas. Experts from Industries and Academicians from premier Institutes are invited to deliver guest lectures about cutting edge technologies. Industrial visits and In-plant trainings are arranged for the students for industrial exposure.</p>', 'course_images/9IIgpfY9QS9rkg6rbr3YIr6RHDDUEwaspDX1bMdk.png', '', '', 1, '2022-08-28 18:36:51', '2022-08-29 10:05:52');
INSERT INTO `courses` VALUES (3, 'B.E', 'Computer Science & Engineering', '<p>The Department of Computer Science has proudly been a pillar of RGCE growth. It’s existence emerged right from the birth of RGCE i.e. from 2001 onwards with an intake of 60 students. The Department has grown rapidly ever since its establishment and has also started the post graduate programme M.E Computer Science and Engineering with an intake of 18 students in 2010. Eminent faculties and strong leadership are the pulse of this department, which makes it to be a proud associate to this college</p><p>Computer science engineering is a discipline that integrates several fields of electrical engineering and computer science required to develop computer hardware and software. Computer engineers usually have training in electronic engineering, software design, and hardware-software integration. Computer engineers are involved in many hardware and software aspects of computing, from the design of individual microprocessors, personal computers, and supercomputers, to circuit design. This field of engineering not only focuses on how computer systems themselves work, but also how they integrate into the larger picture.</p><p>Usual tasks involving computer engineers include writing software and firmware for embedded microcontrollers, designing VLSI chips, designing analog sensors, designing mixed signal circuit boards, and designing operating systems. Computer engineers are also suited for robotics research, which relies heavily on using digital systems to control and monitor electrical systems like motors, communications and sensors.</p><p>The dynamic faculties, meritorious students, specialized labs are the strengths of the department.</p><p>Computer engineers are concerned with analyzing and solving computer-oriented problems. It is the heart of all &nbsp;high tech applications such as intelligent game playing, mobile applications, smart robots, cloud computing, data security, social networks, or bioinformatics.</p><p>The Computer Science and engineering offers exciting, intellectually challenging, and rapidly growing career opportunities. Computer engineers typically have the highest starting salaries in engineering and have the option of moving into hardware as well as to software positions.<br>The industries hiring computer engineers include multinational companies, financial services, computer manufacturers, chemical companies, defense contractors, transportation, manufacturing, and consumer goods.</p>', 'course_images/oHCZQnXDqQfWWCZ3dUtUso51KU5wZaFBQNg8EjsB.png', NULL, NULL, 1, '2022-08-28 18:38:26', '2022-08-29 10:06:34');
INSERT INTO `courses` VALUES (4, 'B.E', 'Civil Engineering', '<p>Civil Engineering deals with the design, analysis, construction, operation, quality control and maintenance aspects of both natural and artificially built structures. It is the basic branch of engineering which can provide infrastructure such as buildings, highways, Railways, Airports, Bridges and hydro power plants. Civil engineers are in greater demand in recent years. They is the ones who are in need to design special rail beds for magnetic levitation trains in future.<br><br>The department has well equipped state-of-art laboratories for surveying, Soil testing, Cement and concrete testing, Highway material testing, Quality testing of water and waste water samples.<br><br>The department has faculty members from almost all specializations of Civil engineering like Structural engineering, Environmental engineering and geological engineering.<br><br>Most civil engineer’s careers are established in Industrial Organizations especially in the areas of designing, maintenance and research. Civil Engineers are highly required in construction field across different states and countries.<br><br>Amongst all branches of engineering, the range and application of civil engineering is the broadest and the most visible. In fact, the entire infrastructural framework of a modern nation is the creation of Civil Engineers. In the past few years, the demand for Civil Engineers has exceeded the supply. The growth in economy and exceeding demand for well qualified and experienced civil engineers has resulted in towering pay levels.</p>', 'course_images/Bs0QmbT7ZGJBUfX14UzNfkV9rRCDPBS222xJrbO7.png', '', '', 1, '2022-08-28 18:38:47', '2022-08-28 18:55:01');
INSERT INTO `courses` VALUES (5, 'B.E', 'Electrical & Electronics Engineering', '<p>The Department of Electrical and Electronics Engineering was started in the year of 2005, with the objective to produce quality and competent engineers to the society. Electrical engineering is a field of engineering that generally deals with the study and application of electricity, electronics, and electromagnetism. The department has excellent faculties who provide quality education to the students.</p><p>Electrical engineering is now subdivided into a wide range of subfields including electronics, digital computers, power engineering, telecommunications, control systems, RF engineering, signal processing, instrumentation, and microelectronics. The subject of electronic engineering is often treated as its own subfield but it intersects with all the other subfields, including the power electronics of power engineering</p><p><br>The students &nbsp;are provided with the necessary skills and practical experience to fulfill their professional duties and technical leadership. Our students are placed in various reputed organizations like CTS, HCL, and WIPRO. etc., Many students are pursuing higher studies in reputed universities. Students are having active affiliation Society of Electrical Engineers. We make the students to be in a position to practice in various positions in industries.</p>', 'course_images/5QUVI63P7KDqk2RkM7195cdzew56CbFyoPYqEZgA.png', '', '', 1, '2022-08-28 18:39:09', '2022-08-29 10:07:29');
INSERT INTO `courses` VALUES (6, 'B.E', 'Mechanical Engineering', '<p>The Department of Mechanical Engineering was started in the year of 2005 with an intake of 60 and increased to 120 in the year 2012. Mechanical Engineering is a fast growing discipline in tune with the demands in the areas of infrastructure and Manufacturing. The department has well equipped laboratories as per university norms with an emphasis on practical approach and skills. The department has well qualified and dedicated faculties.</p><p>Of the many engineering disciplines, mechanical engineering is the broadest, encompassing a wide variety of engineering fields and many specialties. Although it is commonly assumed that Mechanical Engineers are automotive engineers and Manufacturing Engineers in fact, Mechanical Engineers are employed in an enormous range of technical areas including: Acoustics, Air-conditioning, Automatic controls, Engineering Design, Computer-Aided design, Energy Management, Fluid Dynamics, Tribology, Robotics, Biomechanics, and Turbo Machinery, Nanotechnology and Mechatronics etc. Mechanical Engineering is a challenging, rewarding, and highly respected profession.</p><p>We enable the student to acquire practical experience through our Design and Fabrication centre and Projects and also by MOU with the major Training centers in the area of Mechanical Engineering.</p><p>Mechanical Engineering offers a variety of career opportunities for the job aspirants. Top notch core MNC’s conduct Campus Interviews in the college premises and hire deserving academically sound students with attractive pay. Many public undertaking companies, automobile companies and construction companies offer jobs for fresh Mechanical Engineer Graduates. Apart from these companies software companies also hire Mechanical Engineers on par with software and IT professionals.</p><p>Necessary skills and practical experience is provided to the students to fulfill their professional duties and responsibilities in teamwork, ethics, technical leadership, business acumen and lifelong learning. We make the students be in a position to practice professionally in various positions in industry or government and succeed in graduate or other professional schools.</p><p>The students are molded to become future Engineers, Scientists, Researchers, and Innovators and thereby make substantial contributions to the society of mechanical engineers. We prepare the students to be successful Engineers meeting the global industrial requirements. Constant efforts &nbsp;are made to improve their living quality.</p>', 'course_images/oYKsp333MsfatK387t49SHBIRO2Nuj250kh302xE.png', '', '', 1, '2022-08-28 18:39:31', '2022-08-29 10:08:16');
INSERT INTO `courses` VALUES (7, 'B.E', 'Automobile Engineering', '<p>Modern automotive engineering, along with aerospace engineering and marine engineering, is a branch of vehicle engineering, incorporating elements of mechanical, electrical, electronic, software &amp; safety engineering as applied to the design, manufacture &amp; operation of motorcycles, automobiles, buses &amp; trucks and their respective engineering sub-systems. Chennai is the fourth largest metropolitan city of INDIA. Since, Rajiv Gandhi College of Engineering is located in Sriperumbudur, the automobile hub, undergraduate programme,&nbsp;<strong>“Automobile Engineering”&nbsp;</strong>has been introduced from the academic year 2012-’13 with the hope of molding the students in &amp; around Chennai as a proficient automobile engineers. It is a profession which requires a lot of hard work, dedication, determination &amp; commitment which college aspires to impart.</p><p>Automobile or Automotive Engineering has gained recognition and importance ever since motor vehicles capable for transporting passengers has been in vogue. Now, due to the rapid growth of auto component manufacturers &amp; automobile industries, there is a great demand for Automobile Engineers.</p><p>Automobile Engineering alias Automotive Engineering or Vehicle Engineering is one of the most challenging careers in the field of engineering with a wide scope. This branch deals with the designing, developing, manufacturing, testing, repairing &amp; servicing automobiles such as cars, trucks, motorcycles, scooters etc... For the perfect blend of manufacturing &amp; designing automobiles, Automobile Engineering uses the features of different elements of Engineering such as mechanical, electrical, electronic, software &amp;safety engineering.&nbsp;</p><p>The major task of an Automobile Engineer is the designing, developing, manufacturing and testing of vehicles from the concept stage to the production stage. This broad field of engineering has many sub sections and the areas of specialization include engine systems, electronics and control systems, fluid mechanics, thermodynamics, aerodynamics, supply chain management etc. It involves understanding the mechanism of vehicle chassis, internal combustion Engine, electrical systems, Motor transport affairs, workshop technology, research and design.</p><p>Automobile Engineers are mainly classified into three streams like Product or Design Engineers, Development Engineers &amp; Manufacturing Engineers. Product Engineers or Design Engineers are those who deal with the designing, testing of the components &amp; systems of automobiles. They design &amp; test each part of the visualized automobile, seeing that it meets all requirements, performs as required, that the material meets desired durability &amp; so on. Manufacturing Engineers deal with activities like how to create &amp; assemble the whole parts of automobiles. They have to design &amp; layout the equipment, machine rates &amp; line rates, specification of automation equipment&amp; manufacturing safety procedures.&nbsp;</p>', 'course_images/S74kfmmPTnS1OtLqF853WPR48RYV14vwtx5e3Oig.png', '', '', 1, '2022-08-28 18:39:53', '2022-08-29 10:08:55');
INSERT INTO `courses` VALUES (8, 'B.Tech', 'Petroleum Engineering', '<p>The department of Petroleum Engineering was introduced in the year 2005 with an intake of 60 and increased to 90 in the year 2014. The field overlaps with many of the engineering disciplines, such as: geosciences, mechanical, chemical, and civil engineering. It is basically concerned with the activities related to the exploration, drilling, and production of hydrocarbons from onshore and offshore areas.</p><p>The Petroleum engineers are imparted &nbsp;knowledge on areas like geophysics, petroleum geology, formation evaluation (well logging), drilling, reservoir simulation, reservoir engineering, artificial lift systems, completions, and oil and gas facilities engineering enhanced oil recovery, onshore / offshore engineering</p><p>Petroleum engineers locate, recover and maintain the world’s oil and gas supplies. They are the innovators who use cutting-edge technology to create new methods of discovering and drilling for oil.</p><p>The breadth and depth of petroleum engineering is unique and is multi disciplinary. The same is designed to prepare each graduate for a successful career with both technical competence and managerial ability. To maintain leadership in current and future technology, the program has included various guest lectures by practicing engineers and earth scientists in the field, in addition to field visits and field training.</p><p>The petroleum and allied industries have lauded the launching of this programme and the popularity of the programme is reflected in the quite a large number of applicants for admissions for the same. A few of our students have been provided scholarship from oil MNC’s for their four years study in our institution and they will be taken by the companies on successful completion of their programme.</p><p>Department is affiliated with international associations like Society of Petroleum Engineers (SPE) and Association of Petroleum Geologists (APG). Society of Petroleum Engineers (SPE) with international members recognized the student chapter of SPE in our department during the academic year 2008-2009. SPE chapter has round the year events including participation of faculty and students in international conferences like ADIPEC, SPE Indian conference, IPTC and in line with in – chapter and section events like lecturer programs, technical field trips, quiz programs, technical workshop, ambassador lecture programme, environmental protection initiatives, personal development and soft skill.</p><p>The students and faculty have made appreciable steps in raising the standards of academic achievements by publishing papers, participating and winning in technical competitions. The department has also facilitated the students with esteemed foreign and Indian speakers on core petroleum engineering subjects.</p><p>Students are deputed for industrial training/project work to the reputed industries like: Reliance, Essar Oil, ONGC, Oil India, HPCL, BPCL, Weatherford etc. Regular field visits are organized to oilfields to broaden their understanding.</p>', 'course_images/t8VKUJWd1WQdkK2Yf1zNmQAZ3dT7KeXgwBHK0RKf.png', 'Introduced First Time in South India', NULL, 1, '2022-08-28 18:41:17', '2022-08-28 19:03:56');
INSERT INTO `courses` VALUES (9, 'M.E', 'Applied Electronics', '<p>M.E Applied Electronics has been introduced in the Department of Electronics and Communication Engineering in the academic year 2010 - 2011. This is a 2-year master’s degree programme which comprises of four semesters.<br><br>The course provides a sound foundation for electronics engineers, interested in pursuing a career in Electronics Engineering, Signal Processing, Control System Engineering, Image Processing, etc. The emphasis is on thorough theoretical skills and practical experience, presented in the context of real time application.<br><br>The Department is equipped with the state of art laboratories, separate department library to cater to the syllabus and research requirements.<br><br>Modules of this program is to train the student to plan, design, install, operate, control and maintain complex systems that produce finished products as useful one in day to day life.<br><br>The Department has highly qualified and motivated faculty members, having extensive teaching / research experience and has several International / National Journal and Conference publications to their credit. The department has always strived to maintain its high standards.</p>', 'course_images/Xx5Jd7WNTkHkCbGEPEiFpyPpggqCityxgiRTPSst.png', '', '', 1, '2022-08-28 18:42:22', '2022-08-28 19:05:07');
INSERT INTO `courses` VALUES (10, 'M.E', 'Computer Science & Engineering', '<p>The department of Computer Science and Engineering has evolved into a higher dimension by adding a PG degree program to its credit. Since the inception of the ME program on 2010 with an intake of 18 students, the department excelled and enhanced its status in a short period of time. Dedicated and committed Faculty members help students in best possible way to enhance their technical knowhow. Student project have been presented in both International and National Conferences and Journals.<br><br>An exclusive air-conditioned lab is provided for the students for their academic commitment.<br><br>Flexible requirements make it possible to realize a broad range of CS-related career possibilities. The program is energized by the diversity of research within the department and across the campus. Apart from this our faculty member have multi expertisation in areas like Network Security, Grid Computing, Cloud computing Image Processing, Multimedia Systems and Embedded Systems etc.,</p>', 'course_images/OoFxuMhPiUe1rhjruhrVf7xNCck1Rfb5OJ3qFo6n.png', '', '', 1, '2022-08-28 18:42:52', '2022-08-28 19:07:06');
INSERT INTO `courses` VALUES (11, 'M.E', 'Communication & Networking', '<p>M.E Communication &amp; Networking has been introduced in the Department of Electronics &amp; Communication Engineering from the academic year 2012-’13. This is a 2-year master’s degree programme in engineering offered on a semester pattern under affiliation with Anna University.<br><br>Computer Communications are pervasive in every walk of life. This is an advanced programme in Communication Networking. The goal of the programme is to provide a ladder for understanding, &amp; performing research in networking. The programme emphasizes the concepts and issues underlying the design and implementation of various networks.<br><br>Master degree in Communication &amp; Networking consists of a series of distinctive courses in Computer Networks High Performance Computer Networks &amp; related areas. The focus is on key operational &amp; technical aspects of Computer Communication Systems &amp; relevant security issues enabling one to appreciate emerging technologies. The programme introduces the concepts of Computer Network Technology &amp; the principles that make it work. Technologies used in Wide Area Networks (WAN), Metropolitan Area Networks (MAN) &amp; Local Area Networks (LAN) are the main features of the programme.<br><br>A comprehensive, effectively organized treatment of core engineering issues in Communication Networking is the scope of the programme. One would learn how to adopt an engineering approach to design and implement Computer Communication Systems in the context of real application.<br><br>A basic knowledge of networking concepts such as various link layers and framing concepts in an undergraduate networking programme is sufficient background for this programme.</p>', 'course_images/LEJBkex0BC5sotuAMINXHpSq2rx15rXBXfjAlmyB.png', '', '', 1, '2022-08-28 18:43:17', '2022-08-28 19:07:55');
INSERT INTO `courses` VALUES (12, 'M.E', 'Embedded System Technologies', '<p>M.E Embedded System Technologies has been introduced in Department of Electrical and Electronics Engineering in the academic year 2012 - 2013. This is a 2-year master’s degree course in engineering offered on a semester pattern by the affiliating Anna University Chennai.<br><br>Embedded systems will be the pathway for the next generation’s new inventions. The Programme is committed to impart research and industry based quality education for developing innovative Embedded Engineers. This course will provide a platform for the budding engineers and graduates to pay more attention over Research and Development. Embedded revolution has begun to creep into every aspect of modern life. It has begun to transform the shape and form of the technological society forever right from microchip devices to futuristic software solutions for handheld units.<br><br>Embedded systems arena is also dominated by some of the top players and most of the top software companies in India and Abroad.. The Indian semiconductor and embedded design industry is projected to grow from $3.3 billion in 2005 to $43 billion in 2015. This tremendous rate of growth will require a large number of skilled professionals.<br><br>The department is equipped with the state of the art laboratories, separate department library to cater to the research and syllabus requirement. The Department has highly qualified and motivated faculty members, having extensive teaching / research experience and has several International / National Journal and Conference publications to their credit. Departments’ collaboration with Industries will help the students to interact with the practicing engineers and get the expertise about the cutting edge technologies.</p>', 'course_images/gxGo0Tj6vF1Hrkh419kqElm5MpQPPLi54EmMz1Ks.png', '', '', 1, '2022-08-28 18:43:35', '2022-08-28 19:08:36');

-- ----------------------------
-- Table structure for document_attachments
-- ----------------------------
DROP TABLE IF EXISTS `document_attachments`;
CREATE TABLE `document_attachments`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `document_id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `highlight` tinyint(1) NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `document_attachments_document_id_foreign`(`document_id`) USING BTREE,
  CONSTRAINT `document_attachments_document_id_foreign` FOREIGN KEY (`document_id`) REFERENCES `documents` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of document_attachments
-- ----------------------------

-- ----------------------------
-- Table structure for documents
-- ----------------------------
DROP TABLE IF EXISTS `documents`;
CREATE TABLE `documents`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `document_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of documents
-- ----------------------------

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for galleries
-- ----------------------------
DROP TABLE IF EXISTS `galleries`;
CREATE TABLE `galleries`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `gallery_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `highlight` tinyint(1) NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 138 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of galleries
-- ----------------------------
INSERT INTO `galleries` VALUES (1, 'Infrastructure Facilities', NULL, 'gallery_image/bjvUruIP8mE9KtC3yxhOF0GNRODvAj9IBndchWwH.jpg', 0, 1, '2022-08-28 20:23:40', '2022-08-28 20:23:40');
INSERT INTO `galleries` VALUES (2, 'Sports and Games', NULL, 'gallery_image/CdWddCLTQaGPjknKrKfXv8qdQGEWkTctqEgsD4bf.jpg', 1, 1, '2022-08-28 20:25:51', '2022-08-29 09:13:17');
INSERT INTO `galleries` VALUES (3, 'Cultural Activities', NULL, 'gallery_image/tDf3IkMNIuMdBcehH11IBAJBugPkqVXBH55ehY2E.jpg', 1, 1, '2022-08-28 20:26:46', '2022-08-29 08:58:20');
INSERT INTO `galleries` VALUES (4, 'Social Service', NULL, 'gallery_image/JjiDcL7m2z4Cizd7z2YaU57TmWO3kQLs7JR8w7pU.jpg', 0, 1, '2022-08-28 20:28:11', '2022-08-28 20:28:11');
INSERT INTO `galleries` VALUES (5, 'Lab Facilities', NULL, 'gallery_image/hkhFdx0oHaqvIEZ3xbidZrp6LWqZxFT2klukIBCr.jpg', 0, 1, '2022-08-28 20:29:08', '2022-08-28 20:29:08');
INSERT INTO `galleries` VALUES (6, 'Others', NULL, 'gallery_image/AHhitbzm6qnwWWJRMBZWSOHg9kaYGbVlt5WqnwPd.jpg', 0, 1, '2022-08-28 20:30:19', '2022-08-28 20:30:19');
INSERT INTO `galleries` VALUES (7, '10th Graduation', 'd', 'gallery_image/D2QEEZP6OzBd1QjHHaE54kTZUk0rxMZUTisXxxQX.jpg', 1, 1, '2022-08-28 20:32:21', '2022-08-29 09:10:06');
INSERT INTO `galleries` VALUES (8, '9th Graduation', NULL, 'gallery_image/lG1KqlWU6A2ygbjnRz2vGpk5tFx85i9qm19Xncmy.jpg', 1, 1, '2022-08-28 20:34:16', '2022-08-29 09:13:42');
INSERT INTO `galleries` VALUES (9, '14th Annual Day & Sports Day', NULL, 'gallery_image/9kWXP3E0zvKwxOsD8pdsRI7v2HrK6uicQLV2H0rZ.jpg', 0, 1, '2022-08-28 20:36:53', '2022-08-28 20:36:53');
INSERT INTO `galleries` VALUES (10, 'ELALVEUS 2020 - National Tech Confest focused, on “Recent Trends in Petroleum Industry”', NULL, 'gallery_image/Xx6zUlMZBhSvC9324t6Hj0ODOblWrGwqLjACAyMQ.jpg', 0, 1, '2022-08-28 20:39:24', '2022-08-28 20:39:24');
INSERT INTO `galleries` VALUES (11, '14th Graduation Day', NULL, 'gallery_image/dMSlnM37BtbNZxYfzLIUtGJVb0pi1EIDwvfj76Jh.jpg', 1, 1, '2022-08-28 20:40:31', '2022-08-29 09:13:50');
INSERT INTO `galleries` VALUES (12, 'Automobile Students Symposium - Saveetha Engineering College', '', 'gallery_image/LQlliGpgf5spHwtNKZRRpFCDxYhaP0F77ahk1TmP.jpg', 0, 1, '2022-08-28 20:41:40', '2022-08-28 20:41:40');
INSERT INTO `galleries` VALUES (13, 'Industrial Visit to “Technocraft Solutions” Chennai', NULL, 'gallery_image/kpaz4ZBqZXuGtNYdyWZ1SdBh4J7PBdLKUAyDYAsR.jpg', 0, 1, '2022-08-28 20:42:43', '2022-08-28 20:42:43');
INSERT INTO `galleries` VALUES (14, 'Workshop on “Importance of Water Management on Construction Activities” at Anna University', NULL, 'gallery_image/ePmyYRLypRlgHWlw1O07RdqLbfWAURlpfHyUFcfq.jpg', 0, 1, '2022-08-28 20:44:16', '2022-08-28 20:44:16');
INSERT INTO `galleries` VALUES (15, 'Campus Drive by Justdial', NULL, 'gallery_image/55O6X3nxO3YVjUHC12GUbO4igS260srMQSlc5980.jpg', 0, 1, '2022-08-28 20:45:04', '2022-08-28 20:45:04');
INSERT INTO `galleries` VALUES (16, 'Seminar on “Energy Conservation”, organised by Petroleum Conservation Research Association, New Delhi', '', 'gallery_image/LXvUW3P8XgV77so517xRugiZW5SQthMwUSOTiCyf.jpg', 0, 1, '2022-08-28 20:45:48', '2022-08-28 20:45:48');
INSERT INTO `galleries` VALUES (17, 'Hospital Training at “RYO COSMO Foundation”', '', 'gallery_image/RcKNu07ZMVrdCJWJ45cxS6XycZwFoyS1Sht2DxOr.jpg', 0, 1, '2022-08-28 20:46:32', '2022-08-28 20:46:32');
INSERT INTO `galleries` VALUES (18, 'All India AICTE Internship Rank 359/2700', '', 'gallery_image/ofjGk8DLZasb8eGyeXnZNHKYNc5GQ4vemOY8pFY8.jpg', 0, 1, '2022-08-28 20:47:14', '2022-08-28 20:47:14');
INSERT INTO `galleries` VALUES (19, 'Industrial Visit to Integral Coach Factory, Chennai ', '', 'gallery_image/1VPUEkViJ8QAGFtsSpVJoXV9E1h4NLzmTctv5iCp.jpg', 0, 1, '2022-08-28 20:47:52', '2022-08-28 20:47:52');
INSERT INTO `galleries` VALUES (20, 'Field Visit to “Regional Geological Lab” ONGC Chennai', '', 'gallery_image/PMOWijP2GLu1TCgdbrWZE2e8x4bQlJPR8gMi63IJ.jpg', 0, 1, '2022-08-28 20:48:35', '2022-08-28 20:48:35');
INSERT INTO `galleries` VALUES (21, 'Mr. Vimalnath Pandian (Automobile Engg Stdnt) won Gold Medal in Silambam (Martial Arts) at 5th Malaysia International Wushu Tournament, Titiwangsa, Kuala Lumpur', '', 'gallery_image/H8TqdCKr1EodRmsq1PcK55rt5Byxe1cgFmBn5r2Y.jpg', 1, 1, '2022-08-28 20:49:53', '2022-08-29 09:10:52');
INSERT INTO `galleries` VALUES (22, 'Guest Lecture by Dr. Shivram Poigai Arunachalam (Research Scientist - Mayo Clinic(USA)) & Mr. N. Jayachandran (Director - Ernst & Young)', '', 'gallery_image/cYuKfAHP4RpnvjXKGqyAK6NyBTafSVrOXwg4w4IX.jpg', 0, 1, '2022-08-28 20:50:32', '2022-08-28 20:50:32');
INSERT INTO `galleries` VALUES (23, 'Field Visit to “Geologist Site Golden Bed” at Sathyavedu, AP', NULL, 'gallery_image/kKleUXxZZ6RdbsopqVmo1rMopMWzani7uBLc7PYm.jpg', 0, 1, '2022-08-28 20:51:37', '2022-08-28 20:51:37');
INSERT INTO `galleries` VALUES (24, 'Seminar on “Tools and Techniques” by Diagonal CADD', '', 'gallery_image/cx32I0RBEE4v5Bt50wwzqzcytH7HRKqLUEPXz3Gt.jpg', 0, 1, '2022-08-28 20:52:32', '2022-08-28 20:52:32');
INSERT INTO `galleries` VALUES (25, 'Industrial Visit to “MITSUBHISHI Heavy Industries”, Ranipet', '', 'gallery_image/nuzgeWmgWancJp1s5wdS08LcffTuJruoGVza6UHQ.jpg', 0, 1, '2022-08-28 20:53:25', '2022-08-28 20:53:25');
INSERT INTO `galleries` VALUES (26, '“Excellence Teaching Awards” for Department of Petroleum Engineering & Bio-Medical Engineering, RGCE by Education Matters & TNSFC (On Anna University Ranks)', '', 'gallery_image/6NzQcxvNBzvsTthxFeLsDXsQvWVqs5pICJLfD4L4.jpg', 0, 1, '2022-08-28 20:54:13', '2022-08-28 20:54:13');
INSERT INTO `galleries` VALUES (27, 'NSS Camp “Swachh Bharat Abhiyan” at St.Anne’s Convent, Valarpuram', '', 'gallery_image/o66rhinEjM4RVb1HfMkvL82COMKqttiC2GqtqfBY.jpg', 0, 1, '2022-08-28 20:54:54', '2022-08-28 20:54:54');
INSERT INTO `galleries` VALUES (28, 'Field Visit to “Geology Section” at Vellore', '', 'gallery_image/Sh8noJufdQ8VidGmN6A3zJvkKURyhyv2R07fEQuK.jpg', 0, 1, '2022-08-28 20:55:37', '2022-08-28 20:55:37');
INSERT INTO `galleries` VALUES (29, 'Field Visit to “Geologist Site Golden Bed” at Sathyavedu, AP', '', 'gallery_image/7l90EzzKgpcAaXSIIgfT3lAx4xGbQCVCH2AGV252.jpg', 0, 1, '2022-08-28 20:56:15', '2022-08-28 20:56:15');
INSERT INTO `galleries` VALUES (30, 'Seminar on “Interview Etiquette and Soft Skills” by Barclays & Ripe', '', 'gallery_image/Yy7kfS69ywlNv9sHtduAp4QSCEdJ6NokJhGg9oDD.jpg', 0, 1, '2022-08-28 20:56:55', '2022-08-28 20:56:55');
INSERT INTO `galleries` VALUES (31, 'Industrial Visit to “Sansbound Networking School” at Chennai', '', 'gallery_image/wYKG7aDQzPKXrUUuLvvCPGCUTTYwvmwHor8TFkTv.jpg', 0, 1, '2022-08-28 20:57:29', '2022-08-28 20:57:29');
INSERT INTO `galleries` VALUES (32, 'Seminar on “How to Solve Aptitude Questions easily” by Super Sede', NULL, 'gallery_image/R4f0w5S1GQ3dNaon4lKOfJsV28LnFCUaScvqIJvZ.jpg', 0, 1, '2022-08-28 20:58:32', '2022-08-28 20:58:32');
INSERT INTO `galleries` VALUES (33, 'Guest Lecture on “Recent trends in Electronics” Dr.Nirmal Kumar, Anna university, CEG Campus', '', 'gallery_image/avxX7WEc9ptxWpRk92ubdpsYkM0b0KaWf8Op4vUE.jpg', 0, 1, '2022-08-28 20:59:23', '2022-08-28 20:59:23');
INSERT INTO `galleries` VALUES (34, 'Seminar on “Python Programming” at SSI Technologies, Chennai', NULL, 'gallery_image/8c7Iw0xjfutorASRGBzXMriAikzvRYsPsjgmmdZd.jpg', 1, 1, '2022-08-28 21:01:50', '2022-08-29 09:11:36');
INSERT INTO `galleries` VALUES (35, 'Guest lecture on “Latest Trends on Ready-Mix Concrete” presented by Mr.N.Arivusudar, Regional Manager, Parex Construction Chemicals, Banglore', NULL, 'gallery_image/MdyQEbgvqaVQY0aqlEsVhpflSWZOcYMPWWvm86ZW.jpg', 0, 1, '2022-08-28 21:37:14', '2022-08-28 21:37:14');
INSERT INTO `galleries` VALUES (36, 'BME Association – Guest Lecture and Magazine Release Function', '', 'gallery_image/Ft4VB26s3j2vTQOkYU6Id6Y7mj2DZMVFQcpduwgy.jpg', 0, 1, '2022-08-28 21:38:38', '2022-08-28 21:38:38');
INSERT INTO `galleries` VALUES (37, 'PE SPE Association – Guest Lecture and Magazine Release Function', '', 'gallery_image/Y6oTh2EZ6TsV5bDwBbD3hkYqaBOFBa69UTUPxyTI.jpg', 0, 1, '2022-08-28 21:40:22', '2022-08-28 21:40:22');
INSERT INTO `galleries` VALUES (38, 'RGCE - NSS - Plastic Free Campus Awareness Program', '', 'gallery_image/TT1MXC5BBy9hGPJw5IfYDdvOG3x5LlaLkQACji6D.jpg', 0, 1, '2022-08-28 21:41:37', '2022-08-28 21:41:37');
INSERT INTO `galleries` VALUES (39, 'International Women’s Day Celebrations', '', 'gallery_image/irr7leUT5HQJvpDLp8O8PMq0VlioWXnvtFwcRyqe.jpg', 0, 1, '2022-08-28 21:42:50', '2022-08-28 21:42:50');
INSERT INTO `galleries` VALUES (40, 'RGCE Student - Martial Arts Awards', '', 'gallery_image/f4y09AMWpPa6YzCiJVcaYvQ1MhzrY6gmXxEreDGp.jpg', 0, 1, '2022-08-28 21:44:14', '2022-08-28 21:44:14');
INSERT INTO `galleries` VALUES (41, 'RGCE Students - Athletics Awards', '', 'gallery_image/nKUSDevzlpoUZvWqF1dsicKgIHVoKhdlSS34NiP8.jpg', 0, 1, '2022-08-28 21:45:22', '2022-08-28 21:45:22');
INSERT INTO `galleries` VALUES (42, 'Anna University Zone-II Chess Tournament (Men & Women)', '', 'gallery_image/1Oabg41E7gaWyglvWfVJqSiA1tCMYba4ryhAd9lV.jpg', 0, 1, '2022-08-28 21:46:31', '2022-08-28 21:46:31');
INSERT INTO `galleries` VALUES (43, 'S.Nandhakumar, PD RGCE, Coach for Anna University Weight Lifting & Best Physique Competition', '', 'gallery_image/epLqmtMe20G2ivaoJKEWP3QktwsIrxFfdBGrbSGN.jpg', 0, 1, '2022-08-28 21:48:05', '2022-08-28 21:48:05');
INSERT INTO `galleries` VALUES (44, 'Anna University Archery Competition', '', 'gallery_image/UuO5c5ylXEg38wPKlNJppWuEGF8nnvXemNhDYXkL.jpg', 0, 1, '2022-08-28 21:49:12', '2022-08-28 21:49:12');
INSERT INTO `galleries` VALUES (45, 'Anna University Weight Lifting & Best Physique – Nagapatinam District', '', 'gallery_image/2Xkg0Dny9FuA4Gt90bpuBwKfJSOimtN1upxxbCYD.jpg', 0, 1, '2022-08-28 21:50:08', '2022-08-28 21:50:08');
INSERT INTO `galleries` VALUES (46, 'National Silambam Meet at Jammu & Kashmir', '', 'gallery_image/lnJxm2UwmjHFGNLWE7DVo2rjNGy77aUYM8y2HYQY.jpg', 0, 1, '2022-08-28 21:51:04', '2022-08-28 21:51:04');
INSERT INTO `galleries` VALUES (47, 'Rural Games Tamilnadu State Championship 2018 (Silambam)', NULL, 'gallery_image/wneXgPJFbiahQHlhMgfOqaXur51WQr5MMrIbiVd4.jpg', 0, 1, '2022-08-29 05:18:27', '2022-08-29 05:18:27');
INSERT INTO `galleries` VALUES (48, 'Industrial Visit to Embware Technologies, by Dept of ECE', '', 'gallery_image/xzuz3rvYXGRrHmepwoJECROrhoRUnDx98GhjgK01.jpg', 0, 1, '2022-08-29 05:19:20', '2022-08-29 05:19:20');
INSERT INTO `galleries` VALUES (49, 'The Bharat Rathna Dr. APJ. Abdul Kalam’s Birthday', '', 'gallery_image/CN4kut4fA1mLM7FfIw4OQY2dHVlVU45HSGSkmZi2.jpg', 1, 1, '2022-08-29 05:20:36', '2022-08-29 09:12:29');
INSERT INTO `galleries` VALUES (50, '13th Graduation Day', '', 'gallery_image/w2Epi5tJxwihk8LgfQt31ycmeryuVXWkt585ZcTE.jpg', 0, 1, '2022-08-29 05:29:05', '2022-08-29 05:29:05');
INSERT INTO `galleries` VALUES (51, 'Seminar on \"Higher Education Abroad\" by Global Reach, Adyar', '', 'gallery_image/ZyZbBnKRq07N5vvRIAACxlUHl6gj9xpsjwi4l1SM.jpg', 0, 1, '2022-08-29 05:40:01', '2022-08-29 05:40:01');
INSERT INTO `galleries` VALUES (52, 'Seminar on \"Android App Development\", organized by Pantech Solutions and Dept of CSE', '', 'gallery_image/wydWcfPJRD1uGapUG12Ec434Rt4iHbojNRpKtcJo.jpg', 0, 1, '2022-08-29 05:41:04', '2022-08-29 05:41:04');
INSERT INTO `galleries` VALUES (53, 'Seminar from E-Advisors on \"Awareness on Opportunities In Digital Marketing\"', '', 'gallery_image/RCQj9aOk4IkVUcu0R5Ywd6M90tqswF3GHOxRnKBu.jpg', 0, 1, '2022-08-29 05:42:03', '2022-08-29 05:42:03');
INSERT INTO `galleries` VALUES (54, 'Seminar on \"Self Motivation and Safe Training\" from Aharam Services and XBHP Team', '', 'gallery_image/S964jGuGGelIXrXNei6PjRFSYt0yGK1lDHat02lD.jpg', 0, 1, '2022-08-29 05:42:39', '2022-08-29 05:42:39');
INSERT INTO `galleries` VALUES (55, 'Hospital Visit Dept of BME', '', 'gallery_image/kUPxhMW71bJAM4MLdZgkySRII8kNBBC8aSZJes1a.jpg', 0, 1, '2022-08-29 05:43:30', '2022-08-29 05:43:30');
INSERT INTO `galleries` VALUES (56, 'Industrial Visit to RYA Cosmo Foundation, organized by Dept of BME', '', 'gallery_image/d5mwLVcQnPDbugrEJ8ZZKPawf1ZC5v02dDDZ7w02.jpg', 0, 1, '2022-08-29 05:44:47', '2022-08-29 05:44:47');
INSERT INTO `galleries` VALUES (57, 'Internship on \"Computer Training\" at Sansbound Technologies, organized by Dept of CSE , ECE , EEE', '', 'gallery_image/Q0TAavaXI3NR0oqhJkF4X24oDSXro5Y1k4derIsi.jpg', 0, 1, '2022-08-29 05:45:34', '2022-08-29 05:45:34');
INSERT INTO `galleries` VALUES (58, 'Seminar on \"Social Entrepreneurs For Social Change\" organized by Dept of CSE and BME, RGNIYD', '', 'gallery_image/oZllq7w6FuKfRwe8Z1Kxt1jtkRZ8g5vqSYwsoGvh.jpg', 0, 1, '2022-08-29 05:51:03', '2022-08-29 05:51:03');
INSERT INTO `galleries` VALUES (59, 'Seminar from Infogro Technologies on \"Ethical Hacking\" organized by Dept of CSE', '', 'gallery_image/Om1TXyjvHoj17Bj1PPvqnXeHgMWMX7H71WrAd6yI.jpg', 0, 1, '2022-08-29 05:52:40', '2022-08-29 05:52:40');
INSERT INTO `galleries` VALUES (60, 'Independence Day at RGCE', '', 'gallery_image/hFJXxnSDS6ayBqD86eBH3KmEloSrLm08lb5IvAiM.jpg', 0, 1, '2022-08-29 05:53:52', '2022-08-29 05:53:52');
INSERT INTO `galleries` VALUES (61, 'Seminar on \"Opportunities in Mastercam\" by Institute on Industrial Design Dept of Automobile and Mechanical', '', 'gallery_image/BV5BBcSVshyhn2t96k1KWfcn4XG9nXLMsXZI51uN.jpg', 0, 1, '2022-08-29 05:54:32', '2022-08-29 05:54:32');
INSERT INTO `galleries` VALUES (62, 'MTC Vehicle Reconditioning Centre organized by Dept of Automobile', '', 'gallery_image/tbybVTwyYfa785pWFOXkDKNBtBEtW4iLMpyNJR5h.jpg', 0, 1, '2022-08-29 05:57:43', '2022-08-29 05:57:43');
INSERT INTO `galleries` VALUES (63, 'Industrial Visit to \"Gondwana Formation BED\", Sathyavedu, organized by Dept of Petroleum Engineering', '', 'gallery_image/B2y3ctPznoCJ0OvmrtAUvkTvZ1prs0FWUXGsmn4j.jpg', 0, 1, '2022-08-29 05:59:05', '2022-08-29 05:59:05');
INSERT INTO `galleries` VALUES (64, 'Industrial Visit to Bio - Vision organized by Dept of BME', '', 'gallery_image/jnOTAZlEjywQUHNjr5WT4w8KqcP1gnNF2H4VoCOf.jpg', 0, 1, '2022-08-29 05:59:49', '2022-08-29 05:59:49');
INSERT INTO `galleries` VALUES (65, 'Industrial Visit to Mitsubishi organized by Dept of Mechanical Engineering', '', 'gallery_image/PqPTrQzPIEcsIWKzZVMR6oqG5THv92ZmQCmtVNcm.jpg', 0, 1, '2022-08-29 06:00:36', '2022-08-29 06:00:36');
INSERT INTO `galleries` VALUES (66, 'Field Visit to Pazhaverkadu organized by Dept of Petroleum Engineering', '', 'gallery_image/hl1h8aHJ98myYukcW1dKHRFxjYRHhXvFFzd1mVt4.jpg', 0, 1, '2022-08-29 06:02:03', '2022-08-29 06:02:03');
INSERT INTO `galleries` VALUES (67, 'Seminar on \"Software Deelopment and Entrepreneurship\" From Nutpam Technologies organized by Dept of CSE , ECE , EEE', '', 'gallery_image/hxylSBTN3wPaVjCOSXAIU1sGaNW3NJcVTVeycYG9.jpg', 0, 1, '2022-08-29 06:02:50', '2022-08-29 06:02:50');
INSERT INTO `galleries` VALUES (68, 'Site Work Visit to RGNIYD, organized by Department Of Civil', '', 'gallery_image/oWjzQjPDwBGxqaStRo5aZBZXk0PktPwxgpuNqhnn.jpg', 0, 1, '2022-08-29 06:04:24', '2022-08-29 06:04:24');
INSERT INTO `galleries` VALUES (69, 'Aptitude Training, organized by of Dept CSE and BME', 's', 'gallery_image/YAhLuDUNVG5IfmuZQDqGFXSjblUqi6LTTIuZUxeT.jpg', 0, 1, '2022-08-29 06:05:42', '2022-08-29 06:07:27');
INSERT INTO `galleries` VALUES (70, 'Industrial Visit to Barclays', '', 'gallery_image/ic2dPUUTIaAwduvXoqMwhyWltoIKIKKPL5zDeFCh.jpg', 0, 1, '2022-08-29 06:09:48', '2022-08-29 06:09:48');
INSERT INTO `galleries` VALUES (71, 'Seminar on Onshore and Offshore Engineering and Technology for Hydrocarbon Exploration and Exploitation by Dr.P.D.Thomas, GM (Retd.),ONGC, organized by Dept of Petroleum Engineering', '', 'gallery_image/GOgGl48TYifSSeCxbo7HFHzaORpBtBkJmoY5A8N7.jpg', 0, 1, '2022-08-29 06:10:40', '2022-08-29 06:10:40');
INSERT INTO `galleries` VALUES (72, 'Industrial Visit at Chembarambakkam Water Treatment Plant organized by Dept of Civil Engineering', '', 'gallery_image/u22lJJpYFI1fwuFygcwkTtlTG5nuEtw2DuphT1LJ.jpg', 0, 1, '2022-08-29 06:12:32', '2022-08-29 06:12:32');
INSERT INTO `galleries` VALUES (73, 'Seminar from CADDAM Technologies organized by Dept of Automobile, Civil & Mechanical Engineering', '', 'gallery_image/ek7guQxZVZOX4KVFXiplcAOVbpBoVCVLnNMa5lJT.jpg', 0, 1, '2022-08-29 06:13:30', '2022-08-29 06:13:30');
INSERT INTO `galleries` VALUES (74, 'Seminar on \"Awareness on Road Safety and Signs\" by Vishnu Motors', '', 'gallery_image/DFKI37iCzWcxOXsVvNvMATobA9pEh9La7rrsl0iq.jpg', 0, 1, '2022-08-29 06:14:32', '2022-08-29 06:14:32');
INSERT INTO `galleries` VALUES (75, 'Industrial Visit to National Fossil Wood Park, organized by Dept of Petroleum Engineering', '', 'gallery_image/6fMhkXZp8YrENwbzVfyIN1PBqje0Kqrupo2s0WhX.jpg', 0, 1, '2022-08-29 06:15:41', '2022-08-29 06:15:41');
INSERT INTO `galleries` VALUES (76, 'Teacher\'s Day Contest by IBS', '', 'gallery_image/Rr6zvETljI6oxVUyffG6loKThjY6b1yx1uu5qbjW.jpg', 0, 1, '2022-08-29 06:16:32', '2022-08-29 06:16:32');
INSERT INTO `galleries` VALUES (77, 'Expert Lecture on Internet of Things, organized by Dept of CSE, ECE & EEE', NULL, 'gallery_image/hpCCggUSQ3V51sPgWNMROqwLqiPBDlna7qcfJK2E.jpg', 0, 1, '2022-08-29 06:29:14', '2022-08-29 06:29:14');
INSERT INTO `galleries` VALUES (78, 'Depatment of Civil Association Function, organized by Dept of Civil', '', 'gallery_image/KNV3OcFTxVrbeugyrxRsCpoPNPczxfOUYcUQYO0q.jpg', 0, 1, '2022-08-29 06:31:05', '2022-08-29 06:31:05');
INSERT INTO `galleries` VALUES (79, 'Petro Expo 2018, organized by Dept of Petroleum', 's', 'gallery_image/ijSkBfjLbP04g2wSDLKNT2kHSREdjUs0xu3J310v.jpg', 0, 1, '2022-08-29 06:32:57', '2022-08-29 06:34:04');
INSERT INTO `galleries` VALUES (80, 'Seminar on Entrepreneurship And Its Importance, Main Seminar Hall, RGCE Campus, organized by Dept of Training & Placement', '', 'gallery_image/wV2ELTbD1K25PQwnghvtYLl6JCuLUB3yHLWpsGtJ.jpg', 0, 1, '2022-08-29 06:35:30', '2022-08-29 06:35:30');
INSERT INTO `galleries` VALUES (81, 'On Campus Drive, Reva Phoenix Engineers & Consultants India Private Limited, Chennai, organized by Dept of Training & Placement', '', 'gallery_image/Svufo4qJcRig3KvIACsW2ZFe5Wl6O7XW2Et102Xy.jpg', 0, 1, '2022-08-29 06:36:52', '2022-08-29 06:36:52');
INSERT INTO `galleries` VALUES (82, '2nd Intercollege Softball Championship, organized by Dept of Physical Education', '', 'gallery_image/Eh1o0fqlZBZHVIQnsmVEzTaKWpNMp3pE8PqAgMks.jpg', 0, 1, '2022-08-29 06:38:00', '2022-08-29 06:38:00');
INSERT INTO `galleries` VALUES (83, 'Placement Training Program, organized by Dept of Training & Placement', '', 'gallery_image/InHB4Jo3un9xRfyLFUa14WS9LiNuNGl0c2ATzyCF.jpg', 0, 1, '2022-08-29 06:39:32', '2022-08-29 06:39:32');
INSERT INTO `galleries` VALUES (84, 'National Silambam Championship 2018, organized by Dept of Physical Education', '', 'gallery_image/T3lI1ymGi8nux9ZNRbCUkuBwOWjQpCk8exST7aI0.jpg', 0, 1, '2022-08-29 06:41:37', '2022-08-29 06:41:37');
INSERT INTO `galleries` VALUES (85, 'Industrial visit to Barclays Pvt Ltd at DLF, Porur, Chennai, organized by Dept of Training & Placement', '', 'gallery_image/Topx3JlODF4qafuduOoApSzii4AlUvy0W2sK6dRY.jpg', 0, 1, '2022-08-29 06:44:37', '2022-08-29 06:44:37');
INSERT INTO `galleries` VALUES (86, 'Science Expo’18 at B.M Birla Planetarium, Chennai, organized by Dept of Humanities & Science', '', 'gallery_image/NBXyvs6a4zDIvVk7tWPcu4Q93F51uTGQsAmwzruj.jpg', 0, 1, '2022-08-29 06:47:03', '2022-08-29 06:47:03');
INSERT INTO `galleries` VALUES (87, 'Placement Training Program, RIPE Solutions Pvt Ltd, organized by Dept of Training and Placement', '', 'gallery_image/OySTyt86WkhS0F7iKB2LzpMpQiLvQHkXuV5qvXko.jpg', 0, 1, '2022-08-29 06:49:00', '2022-08-29 06:49:00');
INSERT INTO `galleries` VALUES (88, 'Seminar Program on Current Trends in Engineering Industry, organized by Dept of Training and Placement', '', 'gallery_image/Z3l9EZh6FlVQyGpDO69SXAJyL2ib3Zxjq1WIaZ3L.jpg', 0, 1, '2022-08-29 06:50:28', '2022-08-29 06:50:28');
INSERT INTO `galleries` VALUES (89, 'Employment Opportunities on Government Sector, organized by Dept of Training and Placement', 's', 'gallery_image/p47s1uGeAen631CvY9Y5zezD00rCCxQjfVmkAdQJ.jpg', 0, 1, '2022-08-29 06:52:24', '2022-08-29 06:53:24');
INSERT INTO `galleries` VALUES (90, 'Industrial Visit to Barclays Pvt Ltd at DLF, Porur, Chennai, organized by Dept of Training and Placement', NULL, 'gallery_image/x0ABNDof2LwVl0C2A438v5lwMxkhGYjW51t0dfbE.jpg', 0, 1, '2022-08-29 06:56:02', '2022-08-29 06:56:02');
INSERT INTO `galleries` VALUES (91, '39th Senior National Softball Championship, organized by Dept of Physical Education', '', 'gallery_image/y4dz7WXGxTuST6WeM6Z0XLpaBy4d7RnK2fBZR5uO.jpg', 0, 1, '2022-08-29 06:56:58', '2022-08-29 06:56:58');
INSERT INTO `galleries` VALUES (92, 'Project Management, organized by Dept of ECE', '', 'gallery_image/3mKOUdWYiBI5B7SLqK5vM7U5t7K34NtqTx2EAGug.jpg', 0, 1, '2022-08-29 06:58:43', '2022-08-29 06:58:43');
INSERT INTO `galleries` VALUES (93, 'Anna University Inter-Zone Boxing Competition', '', 'gallery_image/S5qnZeKhKW5u8vKvQ77GE21M2JSPtG0gp6KYpm6D.jpg', 0, 1, '2022-08-29 06:59:51', '2022-08-29 06:59:51');
INSERT INTO `galleries` VALUES (94, '7th Senior State Softball Championship, organized by Dept of Physical Education', 's', 'gallery_image/H7bcAJYrDEODhyNlHmMqUoCPoouR8HCTiJQjF4q5.jpg', 0, 1, '2022-08-29 07:00:41', '2022-08-29 07:03:05');
INSERT INTO `galleries` VALUES (95, '12th Graduation Day', NULL, 'gallery_image/Yw51uQIMIkTAqWXqUBPAKqL2b8M7irQ4apaVJXuI.jpg', 0, 1, '2022-08-29 07:04:38', '2022-08-29 07:04:38');
INSERT INTO `galleries` VALUES (96, 'Inter College Softball Tournament Rajiv Gandhi Memorial Trophy, organized by Dept of Physical Education', '', 'gallery_image/0an57t4uGeparImfRdiPzlHU11HbMr4642xj0wTi.jpg', 0, 1, '2022-08-29 07:09:13', '2022-08-29 07:09:13');
INSERT INTO `galleries` VALUES (97, 'Visit to Special HR Concepts Training, Barclays Pvt Ltd at DLF, Porur, Chennai, organized by Dept of Training & Placement', '', 'gallery_image/IE44oHFdNMrl00Z5CBIrG6svdXQW4fg8JkNSo9ii.jpg', 0, 1, '2022-08-29 07:10:18', '2022-08-29 07:10:18');
INSERT INTO `galleries` VALUES (98, 'Entrepreneurship Seminar, organized by Dept of Training & Placement', '', 'gallery_image/F3B9iXrPDVKIMO0VpnTPSn3SCpJxbONCaam3Tgvo.jpg', 0, 1, '2022-08-29 07:11:08', '2022-08-29 07:11:08');
INSERT INTO `galleries` VALUES (99, 'Off Campus Recruitment Program, organized by Dept of Training & Placement', '', 'gallery_image/dKcxCtTDFiVqL5uKTtg8PwGHOxtGOfabOugfO5p1.jpg', 0, 1, '2022-08-29 07:11:51', '2022-08-29 07:11:51');
INSERT INTO `galleries` VALUES (100, 'National South Zone Soft Ball Championship, organized by Dept of Physical Education', '', 'gallery_image/asbHz6FaN0QnoFKTkOw0k8ltxxc5HAumR0g2NY2t.jpg', 0, 1, '2022-08-29 07:14:35', '2022-08-29 07:14:35');
INSERT INTO `galleries` VALUES (101, 'South Asian Silambam Championship, organized by Dept of Physical Education', '', 'gallery_image/rM20tMMGUavBKK0g4HIh7FSQrPJdo5nxsT5waWUD.jpg', 0, 1, '2022-08-29 07:15:23', '2022-08-29 07:15:23');
INSERT INTO `galleries` VALUES (102, 'Expert Lecture on Drilling, Well Completion & Work Operations, organized by Dept of Petroleum Engg', '', 'gallery_image/O0aAz93KpwLBt1Bn71jPKF7HKQ9xE3uLHPtHOLfT.jpg', 0, 1, '2022-08-29 07:16:27', '2022-08-29 07:16:27');
INSERT INTO `galleries` VALUES (103, 'One Day Visit at Oiltech Meridian School of Oil & Gas Company (III Year), organized by Dept of Petroleum Engg', '', 'gallery_image/pzPOHC7yvxxzn7P56StdJpEUAf4Rma4IEusnaWY6.jpg', 0, 1, '2022-08-29 07:17:24', '2022-08-29 07:17:24');
INSERT INTO `galleries` VALUES (104, 'ONGC Cauvery Basin-Drilling Site at Karaikal, organized by Dept of Petroleum Engg (II, III & IV Year)', '', 'gallery_image/vRp5kK48eDtMyXFp3mo3fyY7zI3Oc1gtDTvPz8os.jpg', 0, 1, '2022-08-29 07:18:14', '2022-08-29 07:18:14');
INSERT INTO `galleries` VALUES (105, 'Expert Lecture, Recent Advancement in Biomedical Equipments, organized by Dept of Biomedical', '', 'gallery_image/g6OFSppkWxcG659u3RVrarxCL1mSbeufKV1Gkgfw.jpg', 0, 1, '2022-08-29 07:19:22', '2022-08-29 07:19:22');
INSERT INTO `galleries` VALUES (106, 'Women Empowerment Program (Confidence Building)', '', 'gallery_image/jNWVSziDuhTfKgkGFhGLJ24w307MG0awdgjTh8XT.jpg', 0, 1, '2022-08-29 07:20:16', '2022-08-29 07:20:16');
INSERT INTO `galleries` VALUES (107, 'Freshers Day, organized by 1st Year B.E / B.Tech Students', '', 'gallery_image/h3ZePHvPS8EQacWv7Fc2TiC8al8onwG7PorTLdRL.jpg', 0, 1, '2022-08-29 07:21:08', '2022-08-29 07:21:08');
INSERT INTO `galleries` VALUES (108, 'Anna University Zone-II Chess Tournament (Men & Women)', '', 'gallery_image/A0dfy8lvaB6c7bUTZ8ZifUVWwmocmvdFJMr5GEQo.jpg', 0, 1, '2022-08-29 07:22:42', '2022-08-29 07:22:42');
INSERT INTO `galleries` VALUES (109, 'Visit Report Global Techno Solutions', '', 'gallery_image/n6up5QclRzu8HsBeZNiWrTecuZIi9GjH4XIDfPMS.jpg', 0, 1, '2022-08-29 07:23:35', '2022-08-29 07:23:35');
INSERT INTO `galleries` VALUES (110, 'One Day Workshop Hands on Training in Arduino Based System Design, organized by Dept of ECE', '', 'gallery_image/sMT6I7G0AZQ6HsXU4yQOmc8eB6qatzt0SWjwIdc1.jpg', 0, 1, '2022-08-29 07:24:19', '2022-08-29 07:24:19');
INSERT INTO `galleries` VALUES (111, 'One Day Workshop on Basics of Exploration & Offshore Platforms, organized by Dept of Petroleum', '', 'gallery_image/eJ1fZSqt6uBR6tUTf4xuQ8xpNTY4OE21kgVRtpHZ.jpg', 0, 1, '2022-08-29 07:25:02', '2022-08-29 07:25:02');
INSERT INTO `galleries` VALUES (112, 'Department of Biomedical Engineering Hospital Visit', '', 'gallery_image/59tRbw5hm4EdO87IWHOL4Po6MYCCnrbE8NcieWai.jpg', 0, 1, '2022-08-29 07:25:58', '2022-08-29 07:25:58');
INSERT INTO `galleries` VALUES (113, 'Blood Donation Camp, organized by Dept of Bio-Medical', '', 'gallery_image/ONGtQP3F4k5DRQaKBXS4Pop3jplYoS2Y5lm0UmWS.jpg', 0, 1, '2022-08-29 07:26:39', '2022-08-29 07:26:39');
INSERT INTO `galleries` VALUES (114, 'Industrial Visit - Sansbound Solution Private Ltd, organized by Dept of CSE', '', 'gallery_image/5dddwa8LlQp9RrWkeq4MtqummfgdbVHe6fqfGaKl.jpg', 0, 1, '2022-08-29 07:33:20', '2022-08-29 07:33:20');
INSERT INTO `galleries` VALUES (115, 'SPE South Asia Regional Student Paper Contest 2017', '', 'gallery_image/OhdrPeZTbavrWudHUF4BdwJWom5uyugDn4Zl1kRV.jpg', 0, 1, '2022-08-29 07:34:37', '2022-08-29 07:34:37');
INSERT INTO `galleries` VALUES (116, 'First National Conference on Recent Trends & Emerging Technologies (NCRTET’17)', '', 'gallery_image/Zi9o6jdvTRAdn13n4ix1vm2e85hzWSbLoGBkhFbK.jpg', 0, 1, '2022-08-29 07:35:52', '2022-08-29 07:35:52');
INSERT INTO `galleries` VALUES (117, 'COMMUNIQUEST’17, organized by Dept of ECE', '', 'gallery_image/otkmK03Yu4E75yKxPUwMqYJGfNQVmZOukGIEjzO9.jpg', 0, 1, '2022-08-29 07:37:17', '2022-08-29 07:37:17');
INSERT INTO `galleries` VALUES (118, 'Sports Day', '', 'gallery_image/R8LO9HYyptXBzhWXPkb3AeZe26SJRu5myM3TDB27.jpg', 0, 1, '2022-08-29 07:38:10', '2022-08-29 07:38:10');
INSERT INTO `galleries` VALUES (119, 'Industrial Visits of EEE Department', '', 'gallery_image/UJVYSnWiPr7xNmA2MfbWOGzHX08yxiuizlzQ96vi.jpg', 0, 1, '2022-08-29 07:39:41', '2022-08-29 07:39:41');
INSERT INTO `galleries` VALUES (120, 'Petroleum Engineering Dept Industrial Visits', '', 'gallery_image/3IDYraWNoQKJcf1AzXh7x3ODBejyKP26Wf4lNDaA.jpg', 0, 1, '2022-08-29 07:40:53', '2022-08-29 07:40:53');
INSERT INTO `galleries` VALUES (121, 'Petro Expro 2k17', '', 'gallery_image/WzgD5vsUPhPE8neLajX9syvWjECYRzCGhWz0Lx8x.jpg', 0, 1, '2022-08-29 07:41:43', '2022-08-29 07:41:43');
INSERT INTO `galleries` VALUES (122, 'International Womens Day', '', 'gallery_image/tAsYwzehaDSLxJcBKWQFHVkExYvwMOoTBQRDfO5q.jpg', 0, 1, '2022-08-29 07:44:17', '2022-08-29 07:44:17');
INSERT INTO `galleries` VALUES (123, 'National Level Technical Symposium MECHUJJWAL-2K17', '', 'gallery_image/u9WHU7cyHtbL6O4ejaPHuyvDMrQ5ApwhPysuIDnx.jpg', 0, 1, '2022-08-29 07:45:09', '2022-08-29 07:45:09');
INSERT INTO `galleries` VALUES (124, 'RGCE SPE Student Chapter is Awarded \'Outstanding Chapter Award\' by SPE at on 27th September during ATCE Dubai', '', 'gallery_image/OJZaLykujBFtnzW5iC2q3iAvKvrkm9Jla7dvuyr5.jpg', 0, 1, '2022-08-29 07:46:05', '2022-08-29 07:46:05');
INSERT INTO `galleries` VALUES (125, 'Inter College Soft Ball Champioship, organized by Dept of Physical Education', '', 'gallery_image/sVb43sXuVpMfDDAGDmsse7gZi4tBVLZ8AwnNfACv.jpg', 0, 1, '2022-08-29 07:47:02', '2022-08-29 07:47:02');
INSERT INTO `galleries` VALUES (126, 'Technofun’16 – International Literacy Day', '', 'gallery_image/4qe3vN3YIliB2wEIg9aacgnp6IDJaiW6t2gtwJwM.jpg', 0, 1, '2022-08-29 07:47:55', '2022-08-29 07:47:55');
INSERT INTO `galleries` VALUES (127, '6th Senior State Soft Ball Championship, organized by Dept of Physical Education', '', 'gallery_image/aIUxAEic5Tq8SM2C5epf4fOexSs5RUZoNYB9Z8ce.jpg', 0, 1, '2022-08-29 07:48:45', '2022-08-29 07:48:45');
INSERT INTO `galleries` VALUES (128, 'BIO-ALPHA 2K16 – Mini Project Exhibition, organized by Dept of Biomedical', '', 'gallery_image/lIJt56c1TiQYGqQiatb46w5o74nGumoprLaKtNQB.jpg', 0, 1, '2022-08-29 07:49:26', '2022-08-29 07:49:26');
INSERT INTO `galleries` VALUES (129, 'One Day Technical Seminar on Recent Trends in Traction Motors', '', 'gallery_image/ADY4IxUwZrjUYBu5kYfkpn50kGxgRNMhtuSotOIC.jpg', 0, 1, '2022-08-29 07:51:20', '2022-08-29 07:51:20');
INSERT INTO `galleries` VALUES (130, 'Report on Blood Donation Camp', '', 'gallery_image/Z2Og0Lu4VvSVKuPZlvuEudSHLwXUDjW2zG5bVU4S.jpg', 0, 1, '2022-08-29 07:51:56', '2022-08-29 07:51:56');
INSERT INTO `galleries` VALUES (131, 'SPE & APG RGCE Student Chapters Participation in ONGC WALKTHATHO’16, organized by Dept of Petroleum Engineering', '', 'gallery_image/CM8JpAvszOboRyUI0v6H4ueTH3ptwafLHN1NF4yD.jpg', 0, 1, '2022-08-29 07:52:36', '2022-08-29 07:52:36');
INSERT INTO `galleries` VALUES (132, 'Body Building Championship', '', 'gallery_image/Fs6CMCXb7wLJvPUuFDVy1pquTOAGtoomWSzeBWtF.jpg', 0, 1, '2022-08-29 07:53:34', '2022-08-29 07:53:34');
INSERT INTO `galleries` VALUES (133, '11th Graduation Day', '', 'gallery_image/FOfSXM7o9s2qE0u85fCYAsYMe6dtomh14DvMQgqn.jpg', 0, 1, '2022-08-29 07:54:59', '2022-08-29 07:54:59');
INSERT INTO `galleries` VALUES (134, 'Petroexpro’16 Has Been A Grand Success', '', 'gallery_image/FaLiXRRz2MnjNF0ol7XcPRsY6NI56O0mTnrUSD5f.jpg', 0, 1, '2022-08-29 07:57:51', '2022-08-29 07:57:51');
INSERT INTO `galleries` VALUES (135, 'NSS Outreach Programme', '', 'gallery_image/aUAbm5BlFOIET1MWuLCGTfOLQkZQzk2hS1UexwJV.jpg', 0, 1, '2022-08-29 07:59:06', '2022-08-29 07:59:06');
INSERT INTO `galleries` VALUES (136, 'National Voters Day', '', 'gallery_image/V6ILEKkk3v8zgVb4W8xuGF8wlHSl1mZsE0SukIJm.jpg', 0, 1, '2022-08-29 08:06:11', '2022-08-29 08:06:11');
INSERT INTO `galleries` VALUES (137, 'Republic Day Celebration', '', 'gallery_image/WPjvzmC6ZbqZaBFcmW94uik6ZRD2IB3Bx2YU0tPy.jpg', 0, 1, '2022-08-29 08:06:55', '2022-08-29 08:06:55');

-- ----------------------------
-- Table structure for gallery_images
-- ----------------------------
DROP TABLE IF EXISTS `gallery_images`;
CREATE TABLE `gallery_images`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `gallery_id` bigint(20) UNSIGNED NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `gallery_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `gallery_images_gallery_id_foreign`(`gallery_id`) USING BTREE,
  CONSTRAINT `gallery_images_gallery_id_foreign` FOREIGN KEY (`gallery_id`) REFERENCES `galleries` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 876 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gallery_images
-- ----------------------------
INSERT INTO `gallery_images` VALUES (1, 1, NULL, 'gallery_image/rJiI9BJpalUQkem2Y3b8jff0c0E80JQtfpd7G58V.jpg', 1, '2022-08-28 20:24:34', '2022-08-28 20:24:34');
INSERT INTO `gallery_images` VALUES (2, 1, NULL, 'gallery_image/IRCBOm9c7Ol36BJ00j7vqJgUvKgtA3NiHVk9Qrq4.jpg', 1, '2022-08-28 20:24:34', '2022-08-28 20:24:34');
INSERT INTO `gallery_images` VALUES (3, 1, NULL, 'gallery_image/rSZ9Np2CATHPLwDJbola26YJXwIsAfebfanNtaAB.jpg', 1, '2022-08-28 20:24:34', '2022-08-28 20:24:34');
INSERT INTO `gallery_images` VALUES (4, 1, NULL, 'gallery_image/YkaEgBt2L10T0crSdXUZBqxYi5prpA27FVg4t5K2.jpg', 1, '2022-08-28 20:24:34', '2022-08-28 20:24:34');
INSERT INTO `gallery_images` VALUES (5, 1, NULL, 'gallery_image/QGBkJrEBDORuOkpiTZMGpBpzJmKb6CsDUsQ6DQ2e.jpg', 1, '2022-08-28 20:24:34', '2022-08-28 20:24:34');
INSERT INTO `gallery_images` VALUES (6, 1, NULL, 'gallery_image/Q4P6rRtoOzuc5ct3tlMh5rm2ZZARTT38q6Rkgcc3.jpg', 1, '2022-08-28 20:24:34', '2022-08-28 20:24:34');
INSERT INTO `gallery_images` VALUES (7, 1, NULL, 'gallery_image/w4KyG1LQYWfuNNm19y1NniVAl5h6lMACPnvTyEpK.jpg', 1, '2022-08-28 20:24:34', '2022-08-28 20:24:34');
INSERT INTO `gallery_images` VALUES (8, 1, NULL, 'gallery_image/bGvWWknStdfLqGrha3ekbEf136Ku5V7ULZw9N9t3.jpg', 1, '2022-08-28 20:24:34', '2022-08-28 20:24:34');
INSERT INTO `gallery_images` VALUES (9, 1, NULL, 'gallery_image/nsYqEELPuFhGMYkbzAwuBF0j6k4vMQJSCp4g3XGS.jpg', 1, '2022-08-28 20:24:34', '2022-08-28 20:24:34');
INSERT INTO `gallery_images` VALUES (10, 1, NULL, 'gallery_image/PvqxFBIN4DYwFwZ7jLIcSoU6F1taAVm4ecVzrufO.jpg', 1, '2022-08-28 20:24:34', '2022-08-28 20:24:34');
INSERT INTO `gallery_images` VALUES (11, 1, NULL, 'gallery_image/98B92YYNLproASWw30eSlCn00N0dPuNmtaBcelyg.jpg', 1, '2022-08-28 20:24:34', '2022-08-28 20:24:34');
INSERT INTO `gallery_images` VALUES (12, 1, NULL, 'gallery_image/RgUOcVcc4tqlXyUQUFs5fsqyGOlc1pemb6rAfCu0.jpg', 1, '2022-08-28 20:24:34', '2022-08-28 20:24:34');
INSERT INTO `gallery_images` VALUES (13, 2, NULL, 'gallery_image/Kb88eZqoSwgF9sRXigVKV6JqkQbJD3ZVoBvPppVd.jpg', 1, '2022-08-28 20:26:18', '2022-08-28 20:26:18');
INSERT INTO `gallery_images` VALUES (14, 2, NULL, 'gallery_image/utRifnID5a88EYxe3QYdnVbmsBqPpzLf2eomygSy.jpg', 1, '2022-08-28 20:26:18', '2022-08-28 20:26:18');
INSERT INTO `gallery_images` VALUES (15, 2, NULL, 'gallery_image/E8ruyNZVLpFxFbEBpEiocfzqGyGXeA1dP16VrjPg.jpg', 1, '2022-08-28 20:26:18', '2022-08-28 20:26:18');
INSERT INTO `gallery_images` VALUES (16, 2, NULL, 'gallery_image/mbhuKwaLP0EhwhVofQ3Uz5XAcwT4j2iSNoymxh2y.jpg', 1, '2022-08-28 20:26:18', '2022-08-28 20:26:18');
INSERT INTO `gallery_images` VALUES (17, 4, NULL, 'gallery_image/HGAFkwpam8sz4uHLFFqGr38N5ARb2GA0GL3h0vtz.jpg', 1, '2022-08-28 20:28:27', '2022-08-28 20:28:27');
INSERT INTO `gallery_images` VALUES (18, 4, NULL, 'gallery_image/65tFyzZPVb7an4OrsvryrjefJaP2OTQhwtDxCNH2.jpg', 1, '2022-08-28 20:28:27', '2022-08-28 20:28:27');
INSERT INTO `gallery_images` VALUES (19, 4, NULL, 'gallery_image/g07gSpFDt7nXDEau8CUvcOmacqI8nwV3J2s3wylV.jpg', 1, '2022-08-28 20:28:27', '2022-08-28 20:28:27');
INSERT INTO `gallery_images` VALUES (20, 4, NULL, 'gallery_image/3TIlUeKp5ESSbX665wigwDpNAwMlh9fTaMQqFAJu.jpg', 1, '2022-08-28 20:28:27', '2022-08-28 20:28:27');
INSERT INTO `gallery_images` VALUES (21, 6, NULL, 'gallery_image/5fKIDwIic74uSCENZQWNF0hURPAKWIwo7YSnuJqn.jpg', 1, '2022-08-28 20:31:04', '2022-08-28 20:31:04');
INSERT INTO `gallery_images` VALUES (22, 6, NULL, 'gallery_image/XzatDtDRzmRUQOTiCNwp98aDpkNPwFo7O0a9jK5W.jpg', 1, '2022-08-28 20:31:04', '2022-08-28 20:31:04');
INSERT INTO `gallery_images` VALUES (23, 6, NULL, 'gallery_image/PaLOMe6dZIC2PM6fUj4LhlwXdvtttJo7CFYSjiFa.jpg', 1, '2022-08-28 20:31:04', '2022-08-28 20:31:04');
INSERT INTO `gallery_images` VALUES (24, 6, NULL, 'gallery_image/nLKExDBTP42owNIe5kOX1mkWGBZKKYQ8lyOmG40r.jpg', 1, '2022-08-28 20:31:04', '2022-08-28 20:31:04');
INSERT INTO `gallery_images` VALUES (25, 6, NULL, 'gallery_image/dk9OWrOkg1G7Scv5UsGeSh2rniUWkbLgkmj1wmYw.jpg', 1, '2022-08-28 20:31:04', '2022-08-28 20:31:04');
INSERT INTO `gallery_images` VALUES (26, 6, NULL, 'gallery_image/9MStaGSKrycWovLzwbZpBAZESbAcjEs8gkjVeQeq.jpg', 1, '2022-08-28 20:31:04', '2022-08-28 20:31:04');
INSERT INTO `gallery_images` VALUES (27, 6, NULL, 'gallery_image/QdlkUIzLmzAQrg4m3XZB6W3yXuPhAk20MHj1M4oM.jpg', 1, '2022-08-28 20:31:04', '2022-08-28 20:31:04');
INSERT INTO `gallery_images` VALUES (28, 6, NULL, 'gallery_image/nLhxqc9yibXfe4IX3BU9iTJOFDpCKGzRm2yRwvsh.jpg', 1, '2022-08-28 20:31:04', '2022-08-28 20:31:04');
INSERT INTO `gallery_images` VALUES (29, 7, NULL, 'gallery_image/rUlL2Cp1j2hb8uhiGUQLeh6o2wgzXRpOObvg0jUn.jpg', 1, '2022-08-28 20:32:50', '2022-08-28 20:32:50');
INSERT INTO `gallery_images` VALUES (30, 7, NULL, 'gallery_image/bdsj0u8WLSk7KuKkimRwaKt31Pgc96I6MbyVa4iO.jpg', 1, '2022-08-28 20:32:50', '2022-08-28 20:32:50');
INSERT INTO `gallery_images` VALUES (31, 7, NULL, 'gallery_image/iR5AYNlfjwnzZeLpVoxj3KWgbgDViH6rxH4si3J4.jpg', 1, '2022-08-28 20:32:50', '2022-08-28 20:32:50');
INSERT INTO `gallery_images` VALUES (32, 7, NULL, 'gallery_image/zCNonRrFD8AbtmeU0PprBDUR3qBARfbcpZ1nzOlq.jpg', 1, '2022-08-28 20:32:50', '2022-08-28 20:32:50');
INSERT INTO `gallery_images` VALUES (33, 7, NULL, 'gallery_image/WX3THrdTIfmikW9WEmYkrZ4kYhfkKuUqVIeyMZ7a.jpg', 1, '2022-08-28 20:32:50', '2022-08-28 20:32:50');
INSERT INTO `gallery_images` VALUES (34, 7, NULL, 'gallery_image/FkKW5CgYpOmbKzcnaZ6uv1Veo5KjrjkHr1vGyBVX.jpg', 1, '2022-08-28 20:32:50', '2022-08-28 20:32:50');
INSERT INTO `gallery_images` VALUES (35, 7, NULL, 'gallery_image/PIr9TGEdgQ2tcc6Y6VBe5N4E5JIGX2oxYNIiZViY.jpg', 1, '2022-08-28 20:32:50', '2022-08-28 20:32:50');
INSERT INTO `gallery_images` VALUES (36, 7, NULL, 'gallery_image/WjEcZKnV5E1dqJ26YzSf2cyuKC2tnLZ6goPc9Bh2.jpg', 1, '2022-08-28 20:32:50', '2022-08-28 20:32:50');
INSERT INTO `gallery_images` VALUES (37, 7, NULL, 'gallery_image/BpXoGWPfkRlf5EBswqor8lT0ZmlG3E8eNkFrGZL6.jpg', 1, '2022-08-28 20:32:50', '2022-08-28 20:32:50');
INSERT INTO `gallery_images` VALUES (38, 7, NULL, 'gallery_image/kNcb4Ac4W1nAymn09v4GSQTiccedKmJQgPxYMiKz.jpg', 1, '2022-08-28 20:32:50', '2022-08-28 20:32:50');
INSERT INTO `gallery_images` VALUES (39, 7, NULL, 'gallery_image/aKpoPckgnUnltPuHR2zGR1J9WMi1aygcFnRB91eE.jpg', 1, '2022-08-28 20:32:50', '2022-08-28 20:32:50');
INSERT INTO `gallery_images` VALUES (40, 7, NULL, 'gallery_image/b8G9Ed7g5kByfsgJy6Ht6Oaxqn1uREOtsUuyMCdw.jpg', 1, '2022-08-28 20:32:50', '2022-08-28 20:32:50');
INSERT INTO `gallery_images` VALUES (41, 7, NULL, 'gallery_image/bWSHSDHaftpoEmPLfBcdn4ki59AYKWHQLcVr0U5b.jpg', 1, '2022-08-28 20:32:50', '2022-08-28 20:32:50');
INSERT INTO `gallery_images` VALUES (42, 7, NULL, 'gallery_image/Vlb29FXD7makTT6WZF4PY5BTdJlPcuA5nuLa2wL1.jpg', 1, '2022-08-28 20:32:50', '2022-08-28 20:32:50');
INSERT INTO `gallery_images` VALUES (43, 7, NULL, 'gallery_image/QSn7ojZAu2MJMBE99UuexEk8GCbo5DpR5uTCVoXQ.jpg', 1, '2022-08-28 20:32:50', '2022-08-28 20:32:50');
INSERT INTO `gallery_images` VALUES (44, 7, NULL, 'gallery_image/NbUE9Tavdj5xAZtFBSSNiIJTvamT4NRKdMPTqVjB.jpg', 1, '2022-08-28 20:32:50', '2022-08-28 20:32:50');
INSERT INTO `gallery_images` VALUES (45, 7, NULL, 'gallery_image/Oudj2KtLJkhWbbP1dRcWzXYroZgKggcmR9oHnM3f.jpg', 1, '2022-08-28 20:32:50', '2022-08-28 20:32:50');
INSERT INTO `gallery_images` VALUES (46, 7, NULL, 'gallery_image/zqQ2vOSwdWT5A8RqZHyxrnHKuqmZy9m9bkpdfpeN.jpg', 1, '2022-08-28 20:32:50', '2022-08-28 20:32:50');
INSERT INTO `gallery_images` VALUES (47, 7, NULL, 'gallery_image/FkyvXBICrOty1lUETy90RkhGhtHy2GXdymbl3OlF.jpg', 1, '2022-08-28 20:32:50', '2022-08-28 20:32:50');
INSERT INTO `gallery_images` VALUES (48, 9, NULL, 'gallery_image/1sCMbH1eM6qaf9VgoVsbkL6Jp7LyWJ4rpPi2roLY.jpg', 1, '2022-08-28 20:37:12', '2022-08-28 20:37:12');
INSERT INTO `gallery_images` VALUES (49, 9, NULL, 'gallery_image/HuhJ1LbzgJ3DUvNIHV9Uxgem2aJTKAbrAfouUyGl.jpg', 1, '2022-08-28 20:37:12', '2022-08-28 20:37:12');
INSERT INTO `gallery_images` VALUES (50, 9, NULL, 'gallery_image/7fvGsn9MN5IVbwJvrBSX1pCYwoYmTEWAfoBgnZjJ.jpg', 1, '2022-08-28 20:37:12', '2022-08-28 20:37:12');
INSERT INTO `gallery_images` VALUES (51, 9, NULL, 'gallery_image/0Rh9zFZadiTnKCapPTUGwmPxFzuRVXV9PIa6Ksi8.jpg', 1, '2022-08-28 20:37:12', '2022-08-28 20:37:12');
INSERT INTO `gallery_images` VALUES (52, 9, NULL, 'gallery_image/ILbkOnWB9DzXObyXl3yV6TYqMj5fwhQKHJCCZCXY.jpg', 1, '2022-08-28 20:37:12', '2022-08-28 20:37:12');
INSERT INTO `gallery_images` VALUES (53, 9, NULL, 'gallery_image/EQmvb7QJITdLkoVpUvQODhVtwqHqJ8QetbI0kb0v.jpg', 1, '2022-08-28 20:37:12', '2022-08-28 20:37:12');
INSERT INTO `gallery_images` VALUES (54, 9, NULL, 'gallery_image/Vy0eFx5a7i2JaUy8AUzcc3r94fUn1L9XHeLbSXbE.jpg', 1, '2022-08-28 20:37:12', '2022-08-28 20:37:12');
INSERT INTO `gallery_images` VALUES (55, 9, NULL, 'gallery_image/ggXapUOwswy6BGdWzAixRcbHIMjCj1ClmVzuCoek.jpg', 1, '2022-08-28 20:37:12', '2022-08-28 20:37:12');
INSERT INTO `gallery_images` VALUES (56, 9, NULL, 'gallery_image/VoV6EgXugYCtjBYViljNJEwmEWoggys9cHfIQraB.jpg', 1, '2022-08-28 20:37:12', '2022-08-28 20:37:12');
INSERT INTO `gallery_images` VALUES (57, 9, NULL, 'gallery_image/UhCZ2csKQYguYahPVU7lpjtVbUi8MJE75WmwIJtO.jpg', 1, '2022-08-28 20:37:12', '2022-08-28 20:37:12');
INSERT INTO `gallery_images` VALUES (58, 9, NULL, 'gallery_image/wJZym5lojHcsPZnlSnTWXCeqmzMhGsGNT3nUHQ8G.jpg', 1, '2022-08-28 20:37:12', '2022-08-28 20:37:12');
INSERT INTO `gallery_images` VALUES (59, 9, NULL, 'gallery_image/uZKNDv89YQtWReU9Z8KlMCatgKAhP52rRM9b3NR4.jpg', 1, '2022-08-28 20:37:12', '2022-08-28 20:37:12');
INSERT INTO `gallery_images` VALUES (60, 9, NULL, 'gallery_image/wvzz8uHmCvDDLdSoh3RsIN4Xu9qyYHkSq9cGZvEm.jpg', 1, '2022-08-28 20:37:12', '2022-08-28 20:37:12');
INSERT INTO `gallery_images` VALUES (61, 9, NULL, 'gallery_image/MBPEcwFPdyTrlDmIoLzh9v3o3KlWOBkudnOblhZE.jpg', 1, '2022-08-28 20:37:12', '2022-08-28 20:37:12');
INSERT INTO `gallery_images` VALUES (62, 9, NULL, 'gallery_image/t7GwM2B0JkRO8z5I6OP5wrmCJwVRyGf3A4z0GRW2.jpg', 1, '2022-08-28 20:37:12', '2022-08-28 20:37:12');
INSERT INTO `gallery_images` VALUES (63, 9, NULL, 'gallery_image/Okr6xA6e6mzEgGsfE7hFzZZILPm85XU0OoOIelQm.jpg', 1, '2022-08-28 20:37:12', '2022-08-28 20:37:12');
INSERT INTO `gallery_images` VALUES (64, 9, NULL, 'gallery_image/EtxC57FghZrzUurs1PXwWAHVcgIWGqiXJPsZBcEp.jpg', 1, '2022-08-28 20:37:12', '2022-08-28 20:37:12');
INSERT INTO `gallery_images` VALUES (65, 9, NULL, 'gallery_image/BPUO5Ljr5XyM0vipoHfsuemvVf06qxl8Yh7xsIfu.jpg', 1, '2022-08-28 20:37:12', '2022-08-28 20:37:12');
INSERT INTO `gallery_images` VALUES (66, 9, NULL, 'gallery_image/kUDXT1r5mt9hnQg1thGkvXdmjqJLjxnHZAUWfXj5.jpg', 1, '2022-08-28 20:37:12', '2022-08-28 20:37:12');
INSERT INTO `gallery_images` VALUES (67, 9, NULL, 'gallery_image/U84qOG3ciTFhv0MRJypnFMa57GIxwJupjsMy5hX9.jpg', 1, '2022-08-28 20:37:12', '2022-08-28 20:37:12');
INSERT INTO `gallery_images` VALUES (68, 10, NULL, 'gallery_image/QxpKqkrVGXvFvqyM6CBGzTGJjehbdFIMUqfCE3BF.jpg', 1, '2022-08-28 20:39:46', '2022-08-28 20:39:46');
INSERT INTO `gallery_images` VALUES (69, 10, NULL, 'gallery_image/Iu8wSDaN6qDwu7geXXyAMldw1AfVpRY4UH1gJIKK.jpg', 1, '2022-08-28 20:39:46', '2022-08-28 20:39:46');
INSERT INTO `gallery_images` VALUES (70, 10, NULL, 'gallery_image/PlaYeMfdFIaxTXDCSAAYq52QzFEXozBTfKOuVkUs.jpg', 1, '2022-08-28 20:39:46', '2022-08-28 20:39:46');
INSERT INTO `gallery_images` VALUES (71, 10, NULL, 'gallery_image/DJv0YijdrScbBM57blKnSy3BfMROk7bSlsAst05X.jpg', 1, '2022-08-28 20:39:46', '2022-08-28 20:39:46');
INSERT INTO `gallery_images` VALUES (72, 10, NULL, 'gallery_image/gAgjeSZEyWRgyzQyzKbgt9sXWSVJmZj9OBaA1fhb.jpg', 1, '2022-08-28 20:39:46', '2022-08-28 20:39:46');
INSERT INTO `gallery_images` VALUES (73, 10, NULL, 'gallery_image/a9tOOOweOqrr53YyffmL0QVixesTc9sO33Ggfz1B.jpg', 1, '2022-08-28 20:39:46', '2022-08-28 20:39:46');
INSERT INTO `gallery_images` VALUES (74, 10, NULL, 'gallery_image/M5U8c2axpdWPDn4MP8SHl7N6TsxSLxU4sr2UsEuP.jpg', 1, '2022-08-28 20:39:46', '2022-08-28 20:39:46');
INSERT INTO `gallery_images` VALUES (75, 10, NULL, 'gallery_image/9u4MMc9h0EdgqtQc9jpJ5VoemK2goN3YIuV4R3GZ.jpg', 1, '2022-08-28 20:39:46', '2022-08-28 20:39:46');
INSERT INTO `gallery_images` VALUES (76, 10, NULL, 'gallery_image/4UXbBr6VXmn94JMtm0UqhPLKiWI4DntFj6B2zRkr.jpg', 1, '2022-08-28 20:39:46', '2022-08-28 20:39:46');
INSERT INTO `gallery_images` VALUES (77, 10, NULL, 'gallery_image/lCUBrz3SvR9zQIAwp1YaETtl6rHVhuhORGSKMI7h.jpg', 1, '2022-08-28 20:39:46', '2022-08-28 20:39:46');
INSERT INTO `gallery_images` VALUES (78, 10, NULL, 'gallery_image/45mHENB7EYfN5D059OOEMAXYga27X1GYzxAHiAKN.jpg', 1, '2022-08-28 20:39:46', '2022-08-28 20:39:46');
INSERT INTO `gallery_images` VALUES (79, 10, NULL, 'gallery_image/3Rcqu0G1CPdRnKJBNSmVwP8rcgysFmHLbjmot0pF.jpg', 1, '2022-08-28 20:39:46', '2022-08-28 20:39:46');
INSERT INTO `gallery_images` VALUES (80, 10, NULL, 'gallery_image/2TiUBCmatiHJ0GJ6DlFc2RP9dIjl2kqFQ3tGxkZ8.jpg', 1, '2022-08-28 20:39:46', '2022-08-28 20:39:46');
INSERT INTO `gallery_images` VALUES (81, 10, NULL, 'gallery_image/Tz0lqNMeLZLZOSmnfp9SZlot4HhEpBdHEgZ0K0kn.jpg', 1, '2022-08-28 20:39:46', '2022-08-28 20:39:46');
INSERT INTO `gallery_images` VALUES (82, 12, NULL, 'gallery_image/G7k9iBLiMpd6OCaGXo1SUfwupWJ7AgORpanUVori.jpg', 1, '2022-08-28 20:41:59', '2022-08-28 20:41:59');
INSERT INTO `gallery_images` VALUES (83, 13, NULL, 'gallery_image/8ZzuHiOmGul3CDcv9VfQaCBI2QlT7TGp4vA6oZmF.jpg', 1, '2022-08-28 20:43:31', '2022-08-28 20:43:31');
INSERT INTO `gallery_images` VALUES (84, 14, NULL, 'gallery_image/DuNPDM2AcYPerUxr7f22qNMF7vb4V656ZOJucoLK.jpg', 1, '2022-08-28 20:44:40', '2022-08-28 20:44:40');
INSERT INTO `gallery_images` VALUES (85, 15, NULL, 'gallery_image/EJP9kXpS2JAaggyZqBK5dOb88PDSmvEseme97RmY.jpg', 1, '2022-08-28 20:45:18', '2022-08-28 20:45:18');
INSERT INTO `gallery_images` VALUES (86, 15, NULL, 'gallery_image/CoFnyGlUc9kgGWeiNay8lASqvUGULMg0Wvq93jY7.jpg', 1, '2022-08-28 20:45:18', '2022-08-28 20:45:18');
INSERT INTO `gallery_images` VALUES (87, 16, NULL, 'gallery_image/k5BVi9eHwTlnpydy74qBFwd0kPu9wYAZoC069TuF.jpg', 1, '2022-08-28 20:46:09', '2022-08-28 20:46:09');
INSERT INTO `gallery_images` VALUES (88, 17, NULL, 'gallery_image/M36imRBY77MyLjgCuxR1Q7i9dHCTZ3x9DnMylbrr.jpg', 1, '2022-08-28 20:46:50', '2022-08-28 20:46:50');
INSERT INTO `gallery_images` VALUES (89, 17, NULL, 'gallery_image/JaVrxok9FRujrws66xZDjQCxtacEaYinzQbe1sfd.jpg', 1, '2022-08-28 20:46:50', '2022-08-28 20:46:50');
INSERT INTO `gallery_images` VALUES (90, 18, NULL, 'gallery_image/GndHyPRmYUAyUay6sHasTZLcysn3hXxWohBBzyGY.jpg', 1, '2022-08-28 20:47:28', '2022-08-28 20:47:28');
INSERT INTO `gallery_images` VALUES (91, 18, NULL, 'gallery_image/FimhezIJNp5G3UIfbCnzxKeTsvxH2gaI394wUyn9.jpg', 1, '2022-08-28 20:47:28', '2022-08-28 20:47:28');
INSERT INTO `gallery_images` VALUES (92, 19, NULL, 'gallery_image/qmic6nzAbSjZXOxao0D7hPFu2KUvbNqH1aN9rUzh.jpg', 1, '2022-08-28 20:48:08', '2022-08-28 20:48:08');
INSERT INTO `gallery_images` VALUES (93, 20, NULL, 'gallery_image/FkzQsplMvOMBuVYbUNyYOgsC8Rmj4elSbHEFcEGT.jpg', 1, '2022-08-28 20:49:24', '2022-08-28 20:49:24');
INSERT INTO `gallery_images` VALUES (94, 20, NULL, 'gallery_image/AxSJwxPnkGu8bwAvty60wrPBvkRzFFeIHDKJUstC.jpg', 1, '2022-08-28 20:49:24', '2022-08-28 20:49:24');
INSERT INTO `gallery_images` VALUES (95, 20, NULL, 'gallery_image/jwqj3VCyFLW2AUQf4PBRvM6PcklGjZpHlb5BBR2i.jpg', 1, '2022-08-28 20:49:24', '2022-08-28 20:49:24');
INSERT INTO `gallery_images` VALUES (96, 20, NULL, 'gallery_image/nf1cnr73EsGZqvhDv6uZJhH8EIqD7J60YUey5It2.jpg', 1, '2022-08-28 20:49:24', '2022-08-28 20:49:24');
INSERT INTO `gallery_images` VALUES (97, 20, NULL, 'gallery_image/VbQfqgee5jFYWSFyc0emlNeJbBNL0a0xN1EkqT3P.jpg', 1, '2022-08-28 20:49:24', '2022-08-28 20:49:24');
INSERT INTO `gallery_images` VALUES (98, 21, NULL, 'gallery_image/2ucBfN0yDL86Iidxy49cTHRzRXlXwgSDfA4mkUtl.jpg', 1, '2022-08-28 20:50:07', '2022-08-28 20:50:07');
INSERT INTO `gallery_images` VALUES (99, 21, NULL, 'gallery_image/XUml178AaYo0xzgh2e7bL8jwgbNVOlPRP5CVyAkh.jpg', 1, '2022-08-28 20:50:07', '2022-08-28 20:50:07');
INSERT INTO `gallery_images` VALUES (100, 22, NULL, 'gallery_image/RprinbmMdTbR23xMqiqTtfiKYdwZeQ8UhcfyNc5i.jpg', 1, '2022-08-28 20:51:03', '2022-08-28 20:51:03');
INSERT INTO `gallery_images` VALUES (101, 22, NULL, 'gallery_image/Y6Mt8hoWy7dMypWPQtw0y0yBMNVm1yP7UEG5iRlr.jpg', 1, '2022-08-28 20:51:03', '2022-08-28 20:51:03');
INSERT INTO `gallery_images` VALUES (102, 22, NULL, 'gallery_image/9pIYVcQdGRTiVjLjyymkQrPX9Fq1ncQveu9lN1x6.jpg', 1, '2022-08-28 20:51:03', '2022-08-28 20:51:03');
INSERT INTO `gallery_images` VALUES (103, 23, NULL, 'gallery_image/LxkPMyz6B4Gp4vqugBwWWjXCEbjWs1efClRymauU.jpg', 1, '2022-08-28 20:51:54', '2022-08-28 20:51:54');
INSERT INTO `gallery_images` VALUES (104, 23, NULL, 'gallery_image/YJj1JVuoKKUWd5MjdwMnUxQuWt3NEQWaimz8MKjE.jpg', 1, '2022-08-28 20:51:54', '2022-08-28 20:51:54');
INSERT INTO `gallery_images` VALUES (105, 24, NULL, 'gallery_image/5u5OmOlotA7XWDfUG2JQ70Zrrh3W5HNRD0tkGPDo.jpg', 1, '2022-08-28 20:52:47', '2022-08-28 20:52:47');
INSERT INTO `gallery_images` VALUES (106, 24, NULL, 'gallery_image/NGbUSqA5JYlxVIQRLfbpYjo9Tw4Yu5P3RmMBWBGG.jpg', 1, '2022-08-28 20:52:47', '2022-08-28 20:52:47');
INSERT INTO `gallery_images` VALUES (107, 25, NULL, 'gallery_image/LvSeqdmEY4Lw8j1XF83QFaZwb5wcmxIAP2PHj8Ug.jpg', 1, '2022-08-28 20:53:53', '2022-08-28 20:53:53');
INSERT INTO `gallery_images` VALUES (108, 25, NULL, 'gallery_image/rpZMC9LzxKlmq5G7fveq7ga4bTvcVA1poOH4TQqx.jpg', 1, '2022-08-28 20:53:53', '2022-08-28 20:53:53');
INSERT INTO `gallery_images` VALUES (109, 26, NULL, 'gallery_image/ZyZhEGtfzBAUNkl3YStsH1J056w7792JHtuEXblG.jpg', 1, '2022-08-28 20:54:29', '2022-08-28 20:54:29');
INSERT INTO `gallery_images` VALUES (110, 26, NULL, 'gallery_image/mo3XL6c4FlfyeWi1tELlCCTdAkvqDyqTXPtOKcou.jpg', 1, '2022-08-28 20:54:29', '2022-08-28 20:54:29');
INSERT INTO `gallery_images` VALUES (111, 27, NULL, 'gallery_image/JZcCLknFCQaOCQV6TC6OPsAltR0oGtcCVnOl7vjZ.jpg', 1, '2022-08-28 20:55:14', '2022-08-28 20:55:14');
INSERT INTO `gallery_images` VALUES (112, 27, NULL, 'gallery_image/IQ9mnSouECnmBF5qNhqbdr9PWiwHgpjdgcO2PCiC.jpg', 1, '2022-08-28 20:55:14', '2022-08-28 20:55:14');
INSERT INTO `gallery_images` VALUES (113, 27, NULL, 'gallery_image/9rQNR3cvOe9xlucSg7vPHWauyYCViy6I2M1xILEe.jpg', 1, '2022-08-28 20:55:14', '2022-08-28 20:55:14');
INSERT INTO `gallery_images` VALUES (114, 27, NULL, 'gallery_image/FFpQ6XkUmeF2lbpmkGYby7r4VTpVG9sE4snpADK3.jpg', 1, '2022-08-28 20:55:14', '2022-08-28 20:55:14');
INSERT INTO `gallery_images` VALUES (115, 29, NULL, 'gallery_image/wxBCZJphnBE3M6pzLg7b8pAO6xXC2kUcOjTn81T6.jpg', 1, '2022-08-28 20:56:35', '2022-08-28 20:56:35');
INSERT INTO `gallery_images` VALUES (116, 29, NULL, 'gallery_image/5dpj3H0M0oiOld3mrUBoI2T3uZanDW8sYJ66ZSP0.jpg', 1, '2022-08-28 20:56:35', '2022-08-28 20:56:35');
INSERT INTO `gallery_images` VALUES (117, 30, NULL, 'gallery_image/QQMMRvtZllUcy2jGyHUvTeutm2qKEDn7cLyicO78.jpg', 1, '2022-08-28 20:57:11', '2022-08-28 20:57:11');
INSERT INTO `gallery_images` VALUES (118, 30, NULL, 'gallery_image/1rQ1VubMTGWYgf6NZoToh5iv9BnBSYZTp1sQuUqm.jpg', 1, '2022-08-28 20:57:11', '2022-08-28 20:57:11');
INSERT INTO `gallery_images` VALUES (119, 31, NULL, 'gallery_image/oBwnNxYkPDR9I35oNBOVHjbENmeObo83yFflMm32.jpg', 1, '2022-08-28 20:58:08', '2022-08-28 20:58:08');
INSERT INTO `gallery_images` VALUES (120, 31, NULL, 'gallery_image/sPwD3kvO7U53UJyWwHeyvBNyUP7N0IPhNvvrlYQS.jpg', 1, '2022-08-28 20:58:08', '2022-08-28 20:58:08');
INSERT INTO `gallery_images` VALUES (121, 32, NULL, 'gallery_image/AwpDsgYjmDnyW62cDob9dV5QaTovOB3WsZb9LgVk.jpg', 1, '2022-08-28 20:59:05', '2022-08-28 20:59:05');
INSERT INTO `gallery_images` VALUES (122, 32, NULL, 'gallery_image/3RUuGACzd5kSCadJhasDHr1Ag0J3EoUU6CR8n7Oz.jpg', 1, '2022-08-28 20:59:05', '2022-08-28 20:59:05');
INSERT INTO `gallery_images` VALUES (123, 33, NULL, 'gallery_image/44W67QEPV3Mbqqo0ce8tolwDxpcyy7wM0eOr6c6z.jpg', 1, '2022-08-28 20:59:36', '2022-08-28 20:59:36');
INSERT INTO `gallery_images` VALUES (124, 34, NULL, 'gallery_image/kQwCqZWM7rhXQrtfY5XVOxmWqSx4EDVucHBEbeFz.jpg', 1, '2022-08-28 21:02:10', '2022-08-28 21:02:10');
INSERT INTO `gallery_images` VALUES (125, 34, NULL, 'gallery_image/He5KxXCvSdqGixTUMVMxAghOQe6cTvW6CCFInt12.jpg', 1, '2022-08-28 21:02:10', '2022-08-28 21:02:10');
INSERT INTO `gallery_images` VALUES (126, 3, NULL, 'gallery_image/OFoTS7gAs3tcucxGJX6YyUrnIVoxa0QA1Zfu5yUK.jpg', 1, '2022-08-28 21:08:10', '2022-08-28 21:08:10');
INSERT INTO `gallery_images` VALUES (127, 3, NULL, 'gallery_image/8KBWRrnMGWvLEYjydXza44utlBJXHWKX7yBrzb6J.jpg', 1, '2022-08-28 21:08:10', '2022-08-28 21:08:10');
INSERT INTO `gallery_images` VALUES (128, 3, NULL, 'gallery_image/otYfD3yALRw9zT6Jfx1nhJ2aqSZxQhoozSMMkGbm.jpg', 1, '2022-08-28 21:08:10', '2022-08-28 21:08:10');
INSERT INTO `gallery_images` VALUES (129, 3, NULL, 'gallery_image/3338FV9gB4J6Z71XK9LwpeRhVjJ6f1o2gQPZMJmK.jpg', 1, '2022-08-28 21:08:10', '2022-08-28 21:08:10');
INSERT INTO `gallery_images` VALUES (130, 3, NULL, 'gallery_image/QtwQ1FkDiWnnnGzE2eNrWmhIzRYG0ruvUMjskKLm.jpg', 1, '2022-08-28 21:08:10', '2022-08-28 21:08:10');
INSERT INTO `gallery_images` VALUES (131, 3, NULL, 'gallery_image/RxeFQvIkdbQcUt0DwlLaqqs1c7LkR4opiyzAT9bR.jpg', 1, '2022-08-28 21:08:10', '2022-08-28 21:08:10');
INSERT INTO `gallery_images` VALUES (132, 3, NULL, 'gallery_image/NAmr43PMrz2etMKhT3k157NihWsTqxZjyVzwF5Vn.jpg', 1, '2022-08-28 21:08:10', '2022-08-28 21:08:10');
INSERT INTO `gallery_images` VALUES (133, 3, NULL, 'gallery_image/l1QEXnhAUIlABH6YWyJa97qyoHThmzfByMcGsaM6.jpg', 1, '2022-08-28 21:08:10', '2022-08-28 21:08:10');
INSERT INTO `gallery_images` VALUES (134, 3, NULL, 'gallery_image/Ef2pKkXuuOZgTRlOaf2ZJjSvMCYKVhOXbI5Vp8Mz.jpg', 1, '2022-08-28 21:08:36', '2022-08-28 21:08:36');
INSERT INTO `gallery_images` VALUES (135, 3, NULL, 'gallery_image/9lhR5UhbcwrbMtmwilOFYs4utnVDy4z8H6pX84Dd.jpg', 1, '2022-08-28 21:08:36', '2022-08-28 21:08:36');
INSERT INTO `gallery_images` VALUES (136, 3, NULL, 'gallery_image/oby5PBoxw01U243Xip6GaLGaRyrS6U9W4w7ohz8d.jpg', 1, '2022-08-28 21:08:36', '2022-08-28 21:08:36');
INSERT INTO `gallery_images` VALUES (137, 3, NULL, 'gallery_image/z3pK0wufjcKL8Bu3Dc54U5UBGgUqpZuVjSFHgwhn.jpg', 1, '2022-08-28 21:08:36', '2022-08-28 21:08:36');
INSERT INTO `gallery_images` VALUES (138, 3, NULL, 'gallery_image/6vG8VWwOjjppNd8jpm9ujiQlTWMbMkO8nn78s2l1.jpg', 1, '2022-08-28 21:08:36', '2022-08-28 21:08:36');
INSERT INTO `gallery_images` VALUES (139, 3, NULL, 'gallery_image/ITtW2PCA6CNZ7woMXeCSG85LqFVYPNE9mTLyGRCP.jpg', 1, '2022-08-28 21:08:36', '2022-08-28 21:08:36');
INSERT INTO `gallery_images` VALUES (140, 3, NULL, 'gallery_image/IuvDwDNhXwtCgBqwfNg27siZTEa1pNtR88rQ1TEy.jpg', 1, '2022-08-28 21:08:36', '2022-08-28 21:08:36');
INSERT INTO `gallery_images` VALUES (141, 3, NULL, 'gallery_image/bWP3wy85oFZVGDREcHGs6eHPKYlC7EqsUP31GMWd.jpg', 1, '2022-08-28 21:08:36', '2022-08-28 21:08:36');
INSERT INTO `gallery_images` VALUES (142, 3, NULL, 'gallery_image/zT3tu1fV7wqH4caCie1SGp35KBqFHSGjGYiPv3cn.jpg', 1, '2022-08-28 21:08:36', '2022-08-28 21:08:36');
INSERT INTO `gallery_images` VALUES (143, 3, NULL, 'gallery_image/XrTaR9ldEeIN8IYVB5Bt1E01YBxEAHbOT8GXiSCz.jpg', 1, '2022-08-28 21:09:04', '2022-08-28 21:09:04');
INSERT INTO `gallery_images` VALUES (144, 3, NULL, 'gallery_image/kzacntSLK7dkX0gyK9weUoIo5fZzkQySkD0fX5Sx.jpg', 1, '2022-08-28 21:09:04', '2022-08-28 21:09:04');
INSERT INTO `gallery_images` VALUES (145, 3, NULL, 'gallery_image/kkEjRwL7mZlXx22KjTyANec3WmlzlujOwdW0BvVb.jpg', 1, '2022-08-28 21:09:04', '2022-08-28 21:09:04');
INSERT INTO `gallery_images` VALUES (146, 3, NULL, 'gallery_image/bCE9bsN3dp9L3jOCm3ADAvrFhUwJn4b6SyRvdN0g.jpg', 1, '2022-08-28 21:09:04', '2022-08-28 21:09:04');
INSERT INTO `gallery_images` VALUES (147, 3, NULL, 'gallery_image/EK11BzBqZnhDZDAdNX4aDnmvpHxwdg7sIK9HXwAR.jpg', 1, '2022-08-28 21:09:04', '2022-08-28 21:09:04');
INSERT INTO `gallery_images` VALUES (148, 3, NULL, 'gallery_image/gjPrRnqSnpZpC6Skc1Fxl0dmAEaySyCsD5WWoc1z.jpg', 1, '2022-08-28 21:09:04', '2022-08-28 21:09:04');
INSERT INTO `gallery_images` VALUES (149, 3, NULL, 'gallery_image/YyVy3htZt5GqUVwOMACFym3hP7SAphlVaQaujZu3.jpg', 1, '2022-08-28 21:09:04', '2022-08-28 21:09:04');
INSERT INTO `gallery_images` VALUES (150, 3, NULL, 'gallery_image/M2aC4Eber29NF8Xb8vd19l6S3njS7CA6sX0urMFF.jpg', 1, '2022-08-28 21:09:04', '2022-08-28 21:09:04');
INSERT INTO `gallery_images` VALUES (151, 3, NULL, 'gallery_image/SbiAvkkKfm9OYbwJdzClMQrNLZpnjRCfY0u8IuIy.jpg', 1, '2022-08-28 21:09:04', '2022-08-28 21:09:04');
INSERT INTO `gallery_images` VALUES (152, 5, NULL, 'gallery_image/MINVJkgNl5dIWMD2SfhqsSoZ2j4mA4k5FbSQKZSH.jpg', 1, '2022-08-28 21:11:30', '2022-08-28 21:11:30');
INSERT INTO `gallery_images` VALUES (153, 5, NULL, 'gallery_image/qTZATysTA0viqkHQv3LyUpitDeL63ozByUaGeFK7.jpg', 1, '2022-08-28 21:11:30', '2022-08-28 21:11:30');
INSERT INTO `gallery_images` VALUES (154, 5, NULL, 'gallery_image/vGKd2mYqqUHOSac2NlOHlCXu9ee9X9EeaU7IbHCU.jpg', 1, '2022-08-28 21:11:30', '2022-08-28 21:11:30');
INSERT INTO `gallery_images` VALUES (155, 5, NULL, 'gallery_image/ALHxaG0omN3B0uX5iwzSKqtJ13LhtAvG8tHsqTEu.jpg', 1, '2022-08-28 21:11:30', '2022-08-28 21:11:30');
INSERT INTO `gallery_images` VALUES (156, 5, NULL, 'gallery_image/z3LldfuSYnz5arJFiyH2NhsCzQ7RnaLXFh2WoySC.jpg', 1, '2022-08-28 21:11:30', '2022-08-28 21:11:30');
INSERT INTO `gallery_images` VALUES (157, 5, NULL, 'gallery_image/pDVgtKqcAT6TDx31JgGuEBPi52YPYkJZ77hxsbyL.jpg', 1, '2022-08-28 21:11:30', '2022-08-28 21:11:30');
INSERT INTO `gallery_images` VALUES (158, 5, NULL, 'gallery_image/4ioNmZ08yQMnPzgMZn3JaVI7sxDaPJhZPhsgxhpu.jpg', 1, '2022-08-28 21:11:30', '2022-08-28 21:11:30');
INSERT INTO `gallery_images` VALUES (159, 5, NULL, 'gallery_image/di9ifKX3v35I9lt4EQNaVV8MaPHjUaBOiC20ankt.jpg', 1, '2022-08-28 21:11:30', '2022-08-28 21:11:30');
INSERT INTO `gallery_images` VALUES (160, 5, NULL, 'gallery_image/QysxZ10Wu0C67DqE74Ltzo1YQJk5yOvyeVygWwOC.jpg', 1, '2022-08-28 21:11:30', '2022-08-28 21:11:30');
INSERT INTO `gallery_images` VALUES (161, 5, NULL, 'gallery_image/JhfAkBk2BmOQM6MrY7CLMcpct8QRP0IJBzKoKZEb.jpg', 1, '2022-08-28 21:11:30', '2022-08-28 21:11:30');
INSERT INTO `gallery_images` VALUES (162, 5, NULL, 'gallery_image/CONDM52DmFUs3Lli8FwkDB9tCR1uwbrRzSwFJjKe.jpg', 1, '2022-08-28 21:11:30', '2022-08-28 21:11:30');
INSERT INTO `gallery_images` VALUES (163, 5, NULL, 'gallery_image/zltHXhegLrGdXp7jttaHYXxijNqAMyouAoVf3rU6.jpg', 1, '2022-08-28 21:11:30', '2022-08-28 21:11:30');
INSERT INTO `gallery_images` VALUES (164, 5, NULL, 'gallery_image/bcNsRK3oPu9PiQDu7PEgfVFrof1eFGPE8TyB2oNg.jpg', 1, '2022-08-28 21:11:30', '2022-08-28 21:11:30');
INSERT INTO `gallery_images` VALUES (165, 5, NULL, 'gallery_image/wvqmj7ULDgLdcxOllBWZDbQGZnpeQxSMIIfFmetK.jpg', 1, '2022-08-28 21:11:30', '2022-08-28 21:11:30');
INSERT INTO `gallery_images` VALUES (166, 5, NULL, 'gallery_image/XlFGHNmtW0kGJJObWykf9ozx8LvHWpSyWopUQu4K.jpg', 1, '2022-08-28 21:11:30', '2022-08-28 21:11:30');
INSERT INTO `gallery_images` VALUES (167, 5, NULL, 'gallery_image/V2AWj9u91UYfCDctYze059CihUnf4QzEOJ7r39Xf.jpg', 1, '2022-08-28 21:11:30', '2022-08-28 21:11:30');
INSERT INTO `gallery_images` VALUES (168, 5, NULL, 'gallery_image/uLJfC7uPju9XuHfP3gIZMKNlL3oRnIybXFrWMSQl.jpg', 1, '2022-08-28 21:11:30', '2022-08-28 21:11:30');
INSERT INTO `gallery_images` VALUES (169, 5, NULL, 'gallery_image/6cLl00VMEoadFrUZeINWYrHFrQyfbvg1zi3CgWjD.jpg', 1, '2022-08-28 21:11:30', '2022-08-28 21:11:30');
INSERT INTO `gallery_images` VALUES (170, 5, NULL, 'gallery_image/XNX3YM8V7ltgBICvKIKNmxkLOYxDKvz7hGtUqTwn.jpg', 1, '2022-08-28 21:12:00', '2022-08-28 21:12:00');
INSERT INTO `gallery_images` VALUES (171, 5, NULL, 'gallery_image/MAdXHTYX0Qie3ftcvv1KHBw12zBYzcpPr3G7gxfU.jpg', 1, '2022-08-28 21:12:00', '2022-08-28 21:12:00');
INSERT INTO `gallery_images` VALUES (172, 5, NULL, 'gallery_image/uPpstOSEGPenXNSKv3ZkRhVtYsE39tALK9vOsZBQ.jpg', 1, '2022-08-28 21:12:00', '2022-08-28 21:12:00');
INSERT INTO `gallery_images` VALUES (173, 5, NULL, 'gallery_image/oEYcW33fgm08pFWC4BAVEgSPuDfLpXv6jlzP5obb.jpg', 1, '2022-08-28 21:12:00', '2022-08-28 21:12:00');
INSERT INTO `gallery_images` VALUES (174, 5, NULL, 'gallery_image/deXil08iieNjO28wkbp3VIkyUH8TrvwSWsjgv5G8.jpg', 1, '2022-08-28 21:12:00', '2022-08-28 21:12:00');
INSERT INTO `gallery_images` VALUES (175, 5, NULL, 'gallery_image/67CgFTPXIRXYhJdg8mHwjv4vO5k6VnnjPEIWYXvW.jpg', 1, '2022-08-28 21:12:00', '2022-08-28 21:12:00');
INSERT INTO `gallery_images` VALUES (176, 5, NULL, 'gallery_image/IyP4cWfa0czQyy7QrBahgVT8lQRpZ2sUZg8F6ibh.jpg', 1, '2022-08-28 21:12:00', '2022-08-28 21:12:00');
INSERT INTO `gallery_images` VALUES (177, 5, NULL, 'gallery_image/v7KLwL23b9KCN7dP9suxxivYefWfqD079Rhb5CZJ.jpg', 1, '2022-08-28 21:12:00', '2022-08-28 21:12:00');
INSERT INTO `gallery_images` VALUES (178, 5, NULL, 'gallery_image/EZyRpfbMzSBuZ25YxwdTYE5PTL3dUJ8oDC6puh69.jpg', 1, '2022-08-28 21:12:00', '2022-08-28 21:12:00');
INSERT INTO `gallery_images` VALUES (179, 5, NULL, 'gallery_image/doY2OhV5A1W09MRxScMdeITLaqBNh59r8JnzTKSf.jpg', 1, '2022-08-28 21:12:00', '2022-08-28 21:12:00');
INSERT INTO `gallery_images` VALUES (180, 5, NULL, 'gallery_image/0W4YBpAv72Y04mNPeTgHyDECqH5b27ujEGTGhYPb.jpg', 1, '2022-08-28 21:12:00', '2022-08-28 21:12:00');
INSERT INTO `gallery_images` VALUES (181, 5, NULL, 'gallery_image/TJHDYxN5z3bWzgvT2c5L5qDOvrYA620OQVhIFYkG.jpg', 1, '2022-08-28 21:12:00', '2022-08-28 21:12:00');
INSERT INTO `gallery_images` VALUES (182, 5, NULL, 'gallery_image/nqnex9veT4v0iAtsTQSXgN6N7x8X6KvAJ6dxRuT1.jpg', 1, '2022-08-28 21:12:00', '2022-08-28 21:12:00');
INSERT INTO `gallery_images` VALUES (183, 5, NULL, 'gallery_image/3MTkL4CAWH5ZIbku6rmRYY8ZTI1XnN0e7rh2nfFI.jpg', 1, '2022-08-28 21:12:00', '2022-08-28 21:12:00');
INSERT INTO `gallery_images` VALUES (184, 5, NULL, 'gallery_image/qEQNlFTDNsCQk1UaB3Dbki8TbiogCFevQwVGv2S0.jpg', 1, '2022-08-28 21:12:00', '2022-08-28 21:12:00');
INSERT INTO `gallery_images` VALUES (185, 5, NULL, 'gallery_image/TppAocag9HPHVgxzJbtTxi7h2s2MpUdy6xB58m8B.jpg', 1, '2022-08-28 21:12:00', '2022-08-28 21:12:00');
INSERT INTO `gallery_images` VALUES (186, 5, NULL, 'gallery_image/Jtuf9Hzr5pco4zeQdKWgQfQiXqJb4rQwr0qD6sKZ.jpg', 1, '2022-08-28 21:12:00', '2022-08-28 21:12:00');
INSERT INTO `gallery_images` VALUES (187, 5, NULL, 'gallery_image/645us3KdXrRLWw3h5G4VG0bBnRMCwI0iVWJskSYd.jpg', 1, '2022-08-28 21:12:00', '2022-08-28 21:12:00');
INSERT INTO `gallery_images` VALUES (188, 5, NULL, 'gallery_image/EnBaa7nuXyEDr22AuBc9XPyMpX3YLN2twWiGzoGo.jpg', 1, '2022-08-28 21:12:21', '2022-08-28 21:12:21');
INSERT INTO `gallery_images` VALUES (189, 5, NULL, 'gallery_image/dm7oJfRXbtAk61ZbQlMX0fNr1iWPximTL31twDg6.jpg', 1, '2022-08-28 21:12:21', '2022-08-28 21:12:21');
INSERT INTO `gallery_images` VALUES (190, 5, NULL, 'gallery_image/HiDiGGuCxuIB2nLCuMI2YOYRrd0qo4lYM1JGAOLq.jpg', 1, '2022-08-28 21:12:21', '2022-08-28 21:12:21');
INSERT INTO `gallery_images` VALUES (191, 5, NULL, 'gallery_image/MOammkGUeEcwG1quUg1hMyRIBGXqzztWZku0UAKq.jpg', 1, '2022-08-28 21:12:21', '2022-08-28 21:12:21');
INSERT INTO `gallery_images` VALUES (192, 5, NULL, 'gallery_image/CM9aSnHc3uHkoAE96ot3Pd8juz5E3fP6gocqnSdn.jpg', 1, '2022-08-28 21:12:21', '2022-08-28 21:12:21');
INSERT INTO `gallery_images` VALUES (193, 5, NULL, 'gallery_image/k5jPvZ0jKLitCNyjWk1WoFQvOt1PkZuIJyXaQWkg.jpg', 1, '2022-08-28 21:12:21', '2022-08-28 21:12:21');
INSERT INTO `gallery_images` VALUES (194, 5, NULL, 'gallery_image/oUYNWcst85MBDqHvWFx5KYOtbsV4NJ6g6E2QXuYV.jpg', 1, '2022-08-28 21:12:21', '2022-08-28 21:12:21');
INSERT INTO `gallery_images` VALUES (195, 5, NULL, 'gallery_image/vmNbg8oXn84paG38AuSFOGdNCVOzKTuebONxWuvc.jpg', 1, '2022-08-28 21:12:21', '2022-08-28 21:12:21');
INSERT INTO `gallery_images` VALUES (196, 5, NULL, 'gallery_image/9gyFX32FKBkKBZ0qDCoMfvkvkgnPrDW5Ck7fchlg.jpg', 1, '2022-08-28 21:12:21', '2022-08-28 21:12:21');
INSERT INTO `gallery_images` VALUES (197, 5, NULL, 'gallery_image/sOFkYvPvHiVf1tz0mBsQK9DtxRx19Y50UxttSKhb.jpg', 1, '2022-08-28 21:12:21', '2022-08-28 21:12:21');
INSERT INTO `gallery_images` VALUES (198, 5, NULL, 'gallery_image/nKRaIB8uiO8HZNqufvn3apUp1ZhQHKXpfBd9IdaF.jpg', 1, '2022-08-28 21:12:21', '2022-08-28 21:12:21');
INSERT INTO `gallery_images` VALUES (199, 5, NULL, 'gallery_image/ZM3bjCAFHwAF5vCJnAl8xl3xqAOdBiUZVvyjiASy.jpg', 1, '2022-08-28 21:12:21', '2022-08-28 21:12:21');
INSERT INTO `gallery_images` VALUES (200, 5, NULL, 'gallery_image/8P7krS2yfzDtM49HHiukRZAozVuyUoZmgYdDzZl4.jpg', 1, '2022-08-28 21:12:21', '2022-08-28 21:12:21');
INSERT INTO `gallery_images` VALUES (201, 5, NULL, 'gallery_image/uxVgtxWIAtBcJR73QthAiPVXiYbeybfexSPyE9OI.jpg', 1, '2022-08-28 21:12:21', '2022-08-28 21:12:21');
INSERT INTO `gallery_images` VALUES (202, 5, NULL, 'gallery_image/UlbktB2hGu58BDRUKlhTAq515mBneI0YY3kcoQr3.jpg', 1, '2022-08-28 21:12:21', '2022-08-28 21:12:21');
INSERT INTO `gallery_images` VALUES (203, 5, NULL, 'gallery_image/RyzlYeeVjLEbCtfHCxYDTMKSNXhFb2yvzgcH5tJj.jpg', 1, '2022-08-28 21:12:21', '2022-08-28 21:12:21');
INSERT INTO `gallery_images` VALUES (204, 5, NULL, 'gallery_image/MHEygiLjDgBGHVFF719SiyS7OeOD0wOAx9t0slUA.jpg', 1, '2022-08-28 21:12:21', '2022-08-28 21:12:21');
INSERT INTO `gallery_images` VALUES (205, 5, NULL, 'gallery_image/TEfSLwd5HioZYGJwCYPuceJL25N24nLK3GEg36ws.jpg', 1, '2022-08-28 21:12:21', '2022-08-28 21:12:21');
INSERT INTO `gallery_images` VALUES (206, 5, NULL, 'gallery_image/OLVEItrB3pO01naBTdEr1pPD1avoiWcF3BwGgDzs.jpg', 1, '2022-08-28 21:12:58', '2022-08-28 21:12:58');
INSERT INTO `gallery_images` VALUES (207, 5, NULL, 'gallery_image/lrFdAOuyAsc429aTWwufJ3eyzAatjWtT4xoTB9RQ.jpg', 1, '2022-08-28 21:12:58', '2022-08-28 21:12:58');
INSERT INTO `gallery_images` VALUES (208, 5, NULL, 'gallery_image/5Fizmwc7DcaEMiUzj4fAPcMQ5msMtMFgMFFa4apr.jpg', 1, '2022-08-28 21:12:58', '2022-08-28 21:12:58');
INSERT INTO `gallery_images` VALUES (209, 5, NULL, 'gallery_image/Znv4w73BeoBw4ldBSlSlazhJ40xTYVKkBgdN8c2l.jpg', 1, '2022-08-28 21:12:58', '2022-08-28 21:12:58');
INSERT INTO `gallery_images` VALUES (210, 5, NULL, 'gallery_image/AcBx31WzcH6QZz4kH4oFVfOi5EJurkjUgA7s5Gyp.jpg', 1, '2022-08-28 21:12:58', '2022-08-28 21:12:58');
INSERT INTO `gallery_images` VALUES (211, 5, NULL, 'gallery_image/C3AGvCd8Yu9oPUQHzyCgXKt3GMxCc7jiZRjB0KGR.jpg', 1, '2022-08-28 21:12:58', '2022-08-28 21:12:58');
INSERT INTO `gallery_images` VALUES (212, 5, NULL, 'gallery_image/65ocm0qXuG6ApIS2YzjudpNxbaXRk7MRrx7bynus.jpg', 1, '2022-08-28 21:12:58', '2022-08-28 21:12:58');
INSERT INTO `gallery_images` VALUES (213, 5, NULL, 'gallery_image/yOD8iMdZ2afW7G5nd6L2gZ1EUAfBBWfjRVbwtSc5.jpg', 1, '2022-08-28 21:12:58', '2022-08-28 21:12:58');
INSERT INTO `gallery_images` VALUES (214, 5, NULL, 'gallery_image/z6LHOMkgFcyZVQNCQvzy2HVUcjA7AcaWAbHWu7Uy.jpg', 1, '2022-08-28 21:12:58', '2022-08-28 21:12:58');
INSERT INTO `gallery_images` VALUES (215, 8, NULL, 'gallery_image/bprk11ngSqFd6p3CQVglKR3Zm0MNV01U8iuYkmni.jpg', 1, '2022-08-28 21:15:33', '2022-08-28 21:15:33');
INSERT INTO `gallery_images` VALUES (216, 8, NULL, 'gallery_image/4da9ezjaasaYt4B1SVQ4CElNZZ8rBjIGXmgkI1u4.jpg', 1, '2022-08-28 21:15:33', '2022-08-28 21:15:33');
INSERT INTO `gallery_images` VALUES (217, 8, NULL, 'gallery_image/ArguaFGQar6yJhl2voTJunH0nkD5KSm1Nf4ovdIb.jpg', 1, '2022-08-28 21:15:33', '2022-08-28 21:15:33');
INSERT INTO `gallery_images` VALUES (218, 8, NULL, 'gallery_image/siiIECchfCFU31FvnWlnvCOcUvFDRDlhSPk5z1Er.jpg', 1, '2022-08-28 21:15:33', '2022-08-28 21:15:33');
INSERT INTO `gallery_images` VALUES (219, 8, NULL, 'gallery_image/wIJfbSnqm5Wpt59nOaKaZNVS81loIO5sR4huNdaF.jpg', 1, '2022-08-28 21:15:33', '2022-08-28 21:15:33');
INSERT INTO `gallery_images` VALUES (220, 8, NULL, 'gallery_image/2njHMnw8IR9vTtsGyEHh6PZw9crF6fEdFzPIX1df.jpg', 1, '2022-08-28 21:15:33', '2022-08-28 21:15:33');
INSERT INTO `gallery_images` VALUES (221, 8, NULL, 'gallery_image/lbFoXCWC4k1iZqXVhrZWg1LTEPDHPCXFlzHznLJR.jpg', 1, '2022-08-28 21:15:33', '2022-08-28 21:15:33');
INSERT INTO `gallery_images` VALUES (222, 8, NULL, 'gallery_image/d8ZZ2wk4x7DRTEZ2Ow3WZH9RgUW3pAOCq0njxPge.jpg', 1, '2022-08-28 21:15:33', '2022-08-28 21:15:33');
INSERT INTO `gallery_images` VALUES (223, 8, NULL, 'gallery_image/VGXGwRozpxIZsT7OC1P8UMORcYqc05YxI5ItxtYp.jpg', 1, '2022-08-28 21:15:33', '2022-08-28 21:15:33');
INSERT INTO `gallery_images` VALUES (224, 8, NULL, 'gallery_image/hChPkT2JJjSG6KPXjE1bDKCjP6Jl75B8xYXzbhb2.jpg', 1, '2022-08-28 21:15:33', '2022-08-28 21:15:33');
INSERT INTO `gallery_images` VALUES (225, 8, NULL, 'gallery_image/ff0lFaMV9IUHkronVuQC9IJn0aHnUrTHdYk9N3nq.jpg', 1, '2022-08-28 21:15:33', '2022-08-28 21:15:33');
INSERT INTO `gallery_images` VALUES (226, 8, NULL, 'gallery_image/zj4ZL7fq2IiMEiJCb1BiAIjM7N608DfB6ysuO24P.jpg', 1, '2022-08-28 21:15:33', '2022-08-28 21:15:33');
INSERT INTO `gallery_images` VALUES (227, 8, NULL, 'gallery_image/cG8ga2QSkLOol74cQbeFHF0rNDXLqFCneAznt179.jpg', 1, '2022-08-28 21:15:33', '2022-08-28 21:15:33');
INSERT INTO `gallery_images` VALUES (228, 8, NULL, 'gallery_image/WQDHdz14wgnvn5Pxl3TNFySXSWn80iHtpfIEcLEc.jpg', 1, '2022-08-28 21:15:33', '2022-08-28 21:15:33');
INSERT INTO `gallery_images` VALUES (229, 8, NULL, 'gallery_image/XKppsCJkrYuXypw0KIKkWpiHjvv61BLE4L1xg9b9.jpg', 1, '2022-08-28 21:15:33', '2022-08-28 21:15:33');
INSERT INTO `gallery_images` VALUES (230, 8, NULL, 'gallery_image/xto0czPaC4OKyqHltcD1wZ8IB8NK8U106f5Jgr7w.jpg', 1, '2022-08-28 21:15:33', '2022-08-28 21:15:33');
INSERT INTO `gallery_images` VALUES (231, 8, NULL, 'gallery_image/QSraylKQsh94KGIII1T4NU0jdO8xhulNF5jhSVFM.jpg', 1, '2022-08-28 21:15:33', '2022-08-28 21:15:33');
INSERT INTO `gallery_images` VALUES (232, 8, NULL, 'gallery_image/jcPV6ExdKC7ELyu769D2Pd890mgf7ltYeQylShed.jpg', 1, '2022-08-28 21:15:33', '2022-08-28 21:15:33');
INSERT INTO `gallery_images` VALUES (233, 8, NULL, 'gallery_image/8dT5s8xLgZ1D1agLl460gvisprj73fACDWwEcEUP.jpg', 1, '2022-08-28 21:15:47', '2022-08-28 21:15:47');
INSERT INTO `gallery_images` VALUES (234, 8, NULL, 'gallery_image/UwamveEIVBL7PV9cWpKqOzoEAD8GVTwvhtUfQI3O.jpg', 1, '2022-08-28 21:15:47', '2022-08-28 21:15:47');
INSERT INTO `gallery_images` VALUES (235, 8, NULL, 'gallery_image/gAv0XI3QWYZGQePYQqfidjoYcfU9pNHdQcBOIdj3.jpg', 1, '2022-08-28 21:15:47', '2022-08-28 21:15:47');
INSERT INTO `gallery_images` VALUES (236, 8, NULL, 'gallery_image/xaOtbpJ6RgvWTugEKaSSUd0piutgxWCAs8y0nLC8.jpg', 1, '2022-08-28 21:15:47', '2022-08-28 21:15:47');
INSERT INTO `gallery_images` VALUES (237, 8, NULL, 'gallery_image/lrMKju5DU2LRVrAx7JMHbegUSRU4QpT1cpCCh8ie.jpg', 1, '2022-08-28 21:15:47', '2022-08-28 21:15:47');
INSERT INTO `gallery_images` VALUES (238, 8, NULL, 'gallery_image/1cnmbd6IiNPcqmywb2wXuyx5MBbAkSHRYVIKijN9.jpg', 1, '2022-08-28 21:15:47', '2022-08-28 21:15:47');
INSERT INTO `gallery_images` VALUES (239, 8, NULL, 'gallery_image/PoU4Uv4z0q7Fnnm6O3t52pXzpQ4x4PzPW0YcA6uI.jpg', 1, '2022-08-28 21:15:47', '2022-08-28 21:15:47');
INSERT INTO `gallery_images` VALUES (240, 8, NULL, 'gallery_image/7Q556SSab2lJ9WKBHU8XxVj3KdyC4koQCPsubH6q.jpg', 1, '2022-08-28 21:15:47', '2022-08-28 21:15:47');
INSERT INTO `gallery_images` VALUES (241, 8, NULL, 'gallery_image/0Cp7KTVRBWcmWVKLn3YoWDubTKf9wvuxmZVXGFdo.jpg', 1, '2022-08-28 21:15:47', '2022-08-28 21:15:47');
INSERT INTO `gallery_images` VALUES (242, 8, NULL, 'gallery_image/LZM6R2BCNaAZWNjEQm81wDyCqU2IXGJSyFO8HaF4.jpg', 1, '2022-08-28 21:15:47', '2022-08-28 21:15:47');
INSERT INTO `gallery_images` VALUES (243, 11, NULL, 'gallery_image/Zc6ygeGfUqqVlmG5fRK9AezrRPK9x8wHf8FKdiL4.jpg', 1, '2022-08-28 21:17:47', '2022-08-28 21:17:47');
INSERT INTO `gallery_images` VALUES (244, 11, NULL, 'gallery_image/PHgfG7oV64W8fUaghq1bQy30b56XoevyCGSwoHvb.jpg', 1, '2022-08-28 21:17:47', '2022-08-28 21:17:47');
INSERT INTO `gallery_images` VALUES (245, 11, NULL, 'gallery_image/d9uO9BQsixSkMchNWg8f0Jvc28OZP0i09PKxQzCO.jpg', 1, '2022-08-28 21:17:47', '2022-08-28 21:17:47');
INSERT INTO `gallery_images` VALUES (246, 11, NULL, 'gallery_image/CuFw8VgJUdZBrGsFAkgR2djrzArUPG6Qv1q8jCv8.jpg', 1, '2022-08-28 21:17:47', '2022-08-28 21:17:47');
INSERT INTO `gallery_images` VALUES (247, 11, NULL, 'gallery_image/qC5kMXltPWNtwVfGFBQ0slEV7ESmuzNiri7cGbUj.jpg', 1, '2022-08-28 21:17:47', '2022-08-28 21:17:47');
INSERT INTO `gallery_images` VALUES (248, 11, NULL, 'gallery_image/elSruU2vO4ES6i5W2H05WuFjnh75y6GzZN1rz2ND.jpg', 1, '2022-08-28 21:17:47', '2022-08-28 21:17:47');
INSERT INTO `gallery_images` VALUES (249, 11, NULL, 'gallery_image/Zpj0K9EmgoFmSe6wYo2a99LFfQmxL2mgAhwXW28e.jpg', 1, '2022-08-28 21:17:47', '2022-08-28 21:17:47');
INSERT INTO `gallery_images` VALUES (250, 11, NULL, 'gallery_image/j3jdjP09S7axLEHOP4kHw15DOemenHqZs5rFXXXi.jpg', 1, '2022-08-28 21:17:47', '2022-08-28 21:17:47');
INSERT INTO `gallery_images` VALUES (251, 11, NULL, 'gallery_image/MMsQiilKBPZQVn0jMUlgbDOqwfj8EjUpgtFimNfV.jpg', 1, '2022-08-28 21:17:47', '2022-08-28 21:17:47');
INSERT INTO `gallery_images` VALUES (252, 11, NULL, 'gallery_image/W0vXdIZ46niB3tdc8zun3eosnEVpx7yHDWkA1MdK.jpg', 1, '2022-08-28 21:17:47', '2022-08-28 21:17:47');
INSERT INTO `gallery_images` VALUES (253, 11, NULL, 'gallery_image/Yg5bBkM8LKlvUZg196XzUy30Sryu8SQdRPdPMPwG.jpg', 1, '2022-08-28 21:17:47', '2022-08-28 21:17:47');
INSERT INTO `gallery_images` VALUES (254, 11, NULL, 'gallery_image/9haz0vvBbmte9UnrmjlO1XDC7zk0Lj4dTsDLgitk.jpg', 1, '2022-08-28 21:18:19', '2022-08-28 21:18:19');
INSERT INTO `gallery_images` VALUES (255, 11, NULL, 'gallery_image/SNwqVhCgIWyGhovEGpNkAmBg2OCpUEXm1do09rJB.jpg', 1, '2022-08-28 21:18:19', '2022-08-28 21:18:19');
INSERT INTO `gallery_images` VALUES (256, 11, NULL, 'gallery_image/jo1Usv6IEGZf38jNWDf4BXXMc5A3j1daKBh9z6Ey.jpg', 1, '2022-08-28 21:18:19', '2022-08-28 21:18:19');
INSERT INTO `gallery_images` VALUES (257, 11, NULL, 'gallery_image/iMlUa8Tfecrb718qRp82Am0epWfinRbLVOhc2wg6.jpg', 1, '2022-08-28 21:18:19', '2022-08-28 21:18:19');
INSERT INTO `gallery_images` VALUES (258, 11, NULL, 'gallery_image/aVH0zp9FcFnzrxXrilgoLpRxeKSVXAixH9iGGpFi.jpg', 1, '2022-08-28 21:18:19', '2022-08-28 21:18:19');
INSERT INTO `gallery_images` VALUES (259, 11, NULL, 'gallery_image/1MEjkfc4RbkUQX2a0IW9trFHyvozkWIwl8d8oS4S.jpg', 1, '2022-08-28 21:18:19', '2022-08-28 21:18:19');
INSERT INTO `gallery_images` VALUES (260, 11, NULL, 'gallery_image/dtTHnGNdefPxsqIqY02Ry5p3kKoWA0aevycylRDu.jpg', 1, '2022-08-28 21:18:19', '2022-08-28 21:18:19');
INSERT INTO `gallery_images` VALUES (261, 11, NULL, 'gallery_image/ejep1iAhOx2EwAcHcdqVYyHGGdeqh3KWvfu7xcaY.jpg', 1, '2022-08-28 21:18:19', '2022-08-28 21:18:19');
INSERT INTO `gallery_images` VALUES (262, 11, NULL, 'gallery_image/MdTwIBKFR1hf3d4n8tKyDBTbsuUE3Tpmj7zKLrZB.jpg', 1, '2022-08-28 21:18:19', '2022-08-28 21:18:19');
INSERT INTO `gallery_images` VALUES (263, 11, NULL, 'gallery_image/Cc0vtL9f7ZmQcKVLlcqykzcIbjMGZietAoB4zG9d.jpg', 1, '2022-08-28 21:18:19', '2022-08-28 21:18:19');
INSERT INTO `gallery_images` VALUES (264, 11, NULL, 'gallery_image/DIY2NHstyLwJ8vb5YsP6ITrfuArKUWM637lGvDke.jpg', 1, '2022-08-28 21:18:19', '2022-08-28 21:18:19');
INSERT INTO `gallery_images` VALUES (265, 11, NULL, 'gallery_image/q3hQZ4dFjT7fNU9PWHaRlJ8h8naHIkEomsi6UYFW.jpg', 1, '2022-08-28 21:18:19', '2022-08-28 21:18:19');
INSERT INTO `gallery_images` VALUES (266, 11, NULL, 'gallery_image/0a5U0RF8uGyWg7Xuw4dCXM5DYMal8iQWedAxGCrm.jpg', 1, '2022-08-28 21:18:19', '2022-08-28 21:18:19');
INSERT INTO `gallery_images` VALUES (267, 11, NULL, 'gallery_image/haGg7tA8j2JLjZk6CVX4YZXOmCfdgZiH1Db3zp8j.jpg', 1, '2022-08-28 21:18:19', '2022-08-28 21:18:19');
INSERT INTO `gallery_images` VALUES (268, 11, NULL, 'gallery_image/RrFS85z0q6if7RctdO6KF9Wij2IWhkVbstvXP65T.jpg', 1, '2022-08-28 21:18:19', '2022-08-28 21:18:19');
INSERT INTO `gallery_images` VALUES (269, 11, NULL, 'gallery_image/2LJCpEc6ZejfVz0AOTyeV4CmjoOEprWVRP3ULg0i.jpg', 1, '2022-08-28 21:18:19', '2022-08-28 21:18:19');
INSERT INTO `gallery_images` VALUES (270, 11, NULL, 'gallery_image/M3wZHaqsdr62AaKfvMJD9istRglyeEWbHqsBgO8e.jpg', 1, '2022-08-28 21:18:19', '2022-08-28 21:18:19');
INSERT INTO `gallery_images` VALUES (271, 11, NULL, 'gallery_image/lcbo63heiaZtfvupnbeCCDpgcepXNUDKjPXN9Rup.jpg', 1, '2022-08-28 21:18:19', '2022-08-28 21:18:19');
INSERT INTO `gallery_images` VALUES (272, 11, NULL, 'gallery_image/vIt3jXhiJYXIpOP3iDfgiX4FlpN6BfNWA8lK9mzK.jpg', 1, '2022-08-28 21:18:19', '2022-08-28 21:18:19');
INSERT INTO `gallery_images` VALUES (273, 11, NULL, 'gallery_image/mdDCzjoqul8nu2LEluiCmuCXvBjQ74QVyxaJEnfN.jpg', 1, '2022-08-28 21:18:20', '2022-08-28 21:18:20');
INSERT INTO `gallery_images` VALUES (274, 28, NULL, 'gallery_image/iJ0SZQrFU2O6HJO4lgzzJAnL60LOPFEIRPYxxCyt.jpg', 1, '2022-08-28 21:20:40', '2022-08-28 21:20:40');
INSERT INTO `gallery_images` VALUES (275, 28, NULL, 'gallery_image/60To5l1HERNjf505RRGVdCy6dpNDOBmc8vJeejmB.jpg', 1, '2022-08-28 21:20:40', '2022-08-28 21:20:40');
INSERT INTO `gallery_images` VALUES (276, 35, NULL, 'gallery_image/eJIxIYCKCHoV5SwYRStxFxE6DJTNUTyMBP4eYGsx.jpg', 1, '2022-08-28 21:37:53', '2022-08-28 21:37:53');
INSERT INTO `gallery_images` VALUES (277, 35, NULL, 'gallery_image/ky3JTI4C90L3CPdlDZWlOPtf5R9mpHseTe3i2kCy.jpg', 1, '2022-08-28 21:37:53', '2022-08-28 21:37:53');
INSERT INTO `gallery_images` VALUES (278, 35, NULL, 'gallery_image/NH8ZVkYXsynz7u6DhxpNoZ0AuL8JVTaevDO3SAEj.jpg', 1, '2022-08-28 21:37:53', '2022-08-28 21:37:53');
INSERT INTO `gallery_images` VALUES (279, 35, NULL, 'gallery_image/dWsM2nu6DXYpIgZTCNO5RvZ2mQT8q15JCvXIvUBk.jpg', 1, '2022-08-28 21:37:53', '2022-08-28 21:37:53');
INSERT INTO `gallery_images` VALUES (280, 36, NULL, 'gallery_image/Fp0NcKwp0mnoZx7mmzfziabamJMGxXzmSmc6W2tF.jpg', 1, '2022-08-28 21:39:04', '2022-08-28 21:39:04');
INSERT INTO `gallery_images` VALUES (281, 36, NULL, 'gallery_image/PMSUYH9KKvkVARqMDCSgAw9KoYrQLJt9eTNzmVvG.jpg', 1, '2022-08-28 21:39:04', '2022-08-28 21:39:04');
INSERT INTO `gallery_images` VALUES (282, 36, NULL, 'gallery_image/0QbSF2HycGPkSMwEPS2ledSuH1VzjogQKpTuMtOt.jpg', 1, '2022-08-28 21:39:04', '2022-08-28 21:39:04');
INSERT INTO `gallery_images` VALUES (283, 36, NULL, 'gallery_image/atGNgNzDDNpySZfrFy8YvcyFSFekR8aNVf7Al7N3.jpg', 1, '2022-08-28 21:39:04', '2022-08-28 21:39:04');
INSERT INTO `gallery_images` VALUES (284, 36, NULL, 'gallery_image/MzjBgXI4bihiP7eTrlS0tx29FWDQkomRw20Z6UB7.jpg', 1, '2022-08-28 21:39:04', '2022-08-28 21:39:04');
INSERT INTO `gallery_images` VALUES (285, 36, NULL, 'gallery_image/XDvege2qLOi794F5W2ItWEp0zPe6LKYXzx0qpswK.jpg', 1, '2022-08-28 21:39:04', '2022-08-28 21:39:04');
INSERT INTO `gallery_images` VALUES (286, 37, NULL, 'gallery_image/1sXlXQJ6R0Oun4qkYEXgixLev42qGjlCQSMNbzGO.jpg', 1, '2022-08-28 21:41:04', '2022-08-28 21:41:04');
INSERT INTO `gallery_images` VALUES (287, 37, NULL, 'gallery_image/dGoXtH3xobnMTgHrwjHwU1kdjvkWSv4vfdh0Xez6.jpg', 1, '2022-08-28 21:41:04', '2022-08-28 21:41:04');
INSERT INTO `gallery_images` VALUES (288, 37, NULL, 'gallery_image/sgaNqfoj3LycOWA6Cn6ZoqAWEeooe1gdfjpsaRMM.jpg', 1, '2022-08-28 21:41:04', '2022-08-28 21:41:04');
INSERT INTO `gallery_images` VALUES (289, 37, NULL, 'gallery_image/BREo0tFack5KtBY7o4SJEdG6pNWQ7K85P8lU1JKn.jpg', 1, '2022-08-28 21:41:04', '2022-08-28 21:41:04');
INSERT INTO `gallery_images` VALUES (290, 37, NULL, 'gallery_image/4HTmCafIeuhFuJN1iTmK4aYYstRdg1DzRG2Murhl.jpg', 1, '2022-08-28 21:41:04', '2022-08-28 21:41:04');
INSERT INTO `gallery_images` VALUES (291, 37, NULL, 'gallery_image/vrpkzSbAhbcXJ88MoKtQGw7CUBXTUqQ8IlWSoO1T.jpg', 1, '2022-08-28 21:41:04', '2022-08-28 21:41:04');
INSERT INTO `gallery_images` VALUES (292, 38, NULL, 'gallery_image/C2BpLSKw1tGLA43tUt2RhxHnINEkiQzoYkd3drEq.jpg', 1, '2022-08-28 21:42:22', '2022-08-28 21:42:22');
INSERT INTO `gallery_images` VALUES (293, 38, NULL, 'gallery_image/ctWqcG5bPb3eavvdJJ5Fd8qESyVHxBeAyZviH02S.jpg', 1, '2022-08-28 21:42:22', '2022-08-28 21:42:22');
INSERT INTO `gallery_images` VALUES (294, 38, NULL, 'gallery_image/0zOaCg71X1G5OFCOZccnE7wJ18n4lOPrS9NShbZX.jpg', 1, '2022-08-28 21:42:22', '2022-08-28 21:42:22');
INSERT INTO `gallery_images` VALUES (295, 38, NULL, 'gallery_image/q46vh34mLcsLFuJW9zSNYMyGxXBw1q8o2QGpgqiW.jpg', 1, '2022-08-28 21:42:22', '2022-08-28 21:42:22');
INSERT INTO `gallery_images` VALUES (296, 39, NULL, 'gallery_image/ZXYAjCYwGUZ5u4iYZJ9ddpLdl9nL6D59SPRDt7Ht.jpg', 1, '2022-08-28 21:43:22', '2022-08-28 21:43:22');
INSERT INTO `gallery_images` VALUES (297, 39, NULL, 'gallery_image/lVDGhFJBqB9nLWmh9aJ2t2JqcBVOfnBoZ21iEHsp.jpg', 1, '2022-08-28 21:43:22', '2022-08-28 21:43:22');
INSERT INTO `gallery_images` VALUES (298, 39, NULL, 'gallery_image/LgEp0xQ73VE6p0WAifFhZjgrTUVkGhkInNHeyxqy.jpg', 1, '2022-08-28 21:43:22', '2022-08-28 21:43:22');
INSERT INTO `gallery_images` VALUES (299, 39, NULL, 'gallery_image/fRrR81l4gIprw2a7EOSe986jXl7081nl3sIcAA75.jpg', 1, '2022-08-28 21:43:22', '2022-08-28 21:43:22');
INSERT INTO `gallery_images` VALUES (300, 39, NULL, 'gallery_image/cziE7zSn9KGPwqfFkyk0RlaRayj7fhloMBwgF8ez.jpg', 1, '2022-08-28 21:43:22', '2022-08-28 21:43:22');
INSERT INTO `gallery_images` VALUES (301, 39, NULL, 'gallery_image/UrBTLjnmfGOSQdEelinEwLPCJs01v7KxYWoZeLXM.jpg', 1, '2022-08-28 21:43:22', '2022-08-28 21:43:22');
INSERT INTO `gallery_images` VALUES (302, 39, NULL, 'gallery_image/hw7Z7uAPpd3b9wDOFRBwPp7ZzU49iqlRF3CqgSAe.jpg', 1, '2022-08-28 21:43:22', '2022-08-28 21:43:22');
INSERT INTO `gallery_images` VALUES (303, 39, NULL, 'gallery_image/7vrmWj7iP9p7zLaaGquEygahdriNGtqB1N9Wxveh.jpg', 1, '2022-08-28 21:43:22', '2022-08-28 21:43:22');
INSERT INTO `gallery_images` VALUES (304, 39, NULL, 'gallery_image/QGiTveTOh4FdG39PFw9OhoQdvh8r3COcgllcuWDw.jpg', 1, '2022-08-28 21:43:22', '2022-08-28 21:43:22');
INSERT INTO `gallery_images` VALUES (305, 40, NULL, 'gallery_image/n7x970ZlRMbKUiig33CuTzl90j0bUFdqRYOdRs2p.jpg', 1, '2022-08-28 21:44:42', '2022-08-28 21:44:42');
INSERT INTO `gallery_images` VALUES (306, 40, NULL, 'gallery_image/W8hHtpvCu1otcAPPQk8ImySYzLswm4G0sDlxtQzl.jpg', 1, '2022-08-28 21:44:42', '2022-08-28 21:44:42');
INSERT INTO `gallery_images` VALUES (307, 40, NULL, 'gallery_image/pBG26Ia9aSmWYRD6sihqWRPygtvlUy2fRPBrFPJE.jpg', 1, '2022-08-28 21:44:42', '2022-08-28 21:44:42');
INSERT INTO `gallery_images` VALUES (308, 41, NULL, 'gallery_image/FUtcicmK2qXdiWapXQhNscS8AI69d8qSujV6lVHM.jpg', 1, '2022-08-28 21:45:50', '2022-08-28 21:45:50');
INSERT INTO `gallery_images` VALUES (309, 41, NULL, 'gallery_image/u9fKV1fTQUJ5L3VvNWNutQohQS48u2efEoIga6ha.jpg', 1, '2022-08-28 21:45:50', '2022-08-28 21:45:50');
INSERT INTO `gallery_images` VALUES (310, 42, NULL, 'gallery_image/YJyZASr58QbPSOUBfiSbv54L4nvyBXIl7Rj88IA1.jpg', 1, '2022-08-28 21:47:30', '2022-08-28 21:47:30');
INSERT INTO `gallery_images` VALUES (311, 42, NULL, 'gallery_image/eLVbhk3HA0Ndf3ywtdqwQ39aJIFqD5KsA8H0qd7N.jpg', 1, '2022-08-28 21:47:30', '2022-08-28 21:47:30');
INSERT INTO `gallery_images` VALUES (312, 42, NULL, 'gallery_image/4IUorD0gjNLF2C3fziMMhR1v6NMHOHYtOYCtYppl.jpg', 1, '2022-08-28 21:47:30', '2022-08-28 21:47:30');
INSERT INTO `gallery_images` VALUES (313, 42, NULL, 'gallery_image/Kj5NzV0hpbxHKFfFdPvJHie0lqh4c26eBWCVN1yJ.jpg', 1, '2022-08-28 21:47:30', '2022-08-28 21:47:30');
INSERT INTO `gallery_images` VALUES (314, 42, NULL, 'gallery_image/Oj4tBm9xNKat0aZ79WT0M5hKaxMAklli5BbxubM8.jpg', 1, '2022-08-28 21:47:30', '2022-08-28 21:47:30');
INSERT INTO `gallery_images` VALUES (315, 43, NULL, 'gallery_image/phX21QcLP8DR0c0T5yLufSZEU2IhdJY1YykalqCA.jpg', 1, '2022-08-28 21:48:39', '2022-08-28 21:48:39');
INSERT INTO `gallery_images` VALUES (316, 44, NULL, 'gallery_image/DyfDFtS2nyWILxJxdxaSqnZlGVel1rKAz3cr0XNg.jpg', 1, '2022-08-28 21:49:30', '2022-08-28 21:49:30');
INSERT INTO `gallery_images` VALUES (317, 45, NULL, 'gallery_image/DDS9qGT7h43EiNMuoLM27iAbSAQPHrhDGEU4RAuU.jpg', 1, '2022-08-28 21:50:34', '2022-08-28 21:50:34');
INSERT INTO `gallery_images` VALUES (318, 46, NULL, 'gallery_image/09bY2tNYAj4REGauMyLmm5rjkTYTOkzyqgSg1C91.jpg', 1, '2022-08-28 21:51:39', '2022-08-28 21:51:39');
INSERT INTO `gallery_images` VALUES (319, 46, NULL, 'gallery_image/lJhp3NdBH5UXTDgEJIZT9qBDIzlrqY80lTSAyyZy.jpg', 1, '2022-08-28 21:51:39', '2022-08-28 21:51:39');
INSERT INTO `gallery_images` VALUES (320, 46, NULL, 'gallery_image/JUvVJ5Xa2ksc8c0O1GBxMu8b7qJg0qL0scR0ircP.jpg', 1, '2022-08-28 21:51:39', '2022-08-28 21:51:39');
INSERT INTO `gallery_images` VALUES (321, 47, NULL, 'gallery_image/edfdTCAF0KYKt8QYlBH0kgaiRmt9DLRJicb3KcJZ.jpg', 1, '2022-08-29 05:18:50', '2022-08-29 05:18:50');
INSERT INTO `gallery_images` VALUES (322, 48, NULL, 'gallery_image/kV19XtrzCHUORJnijm6wKSP9I4xnOS9K0jpiF6Zk.jpg', 1, '2022-08-29 05:19:57', '2022-08-29 05:19:57');
INSERT INTO `gallery_images` VALUES (323, 48, NULL, 'gallery_image/1igAWfnACoHvK5nfTXea9noYn3kdQtVzf0x8hZVS.jpg', 1, '2022-08-29 05:19:57', '2022-08-29 05:19:57');
INSERT INTO `gallery_images` VALUES (324, 49, NULL, 'gallery_image/CcRn5xUw97mz0v7I5nZqufC7mWxsTKjPUroxHzyI.jpg', 1, '2022-08-29 05:25:12', '2022-08-29 05:25:12');
INSERT INTO `gallery_images` VALUES (325, 49, NULL, 'gallery_image/ohV8eqO8C6jBqPn1p7QXiqkJtWbboP5EK1hreP8q.jpg', 1, '2022-08-29 05:25:12', '2022-08-29 05:25:12');
INSERT INTO `gallery_images` VALUES (326, 49, NULL, 'gallery_image/iBAPWesadGyegEtJ5irqHOYv4MrCDYqSs5EXzlWl.jpg', 1, '2022-08-29 05:25:12', '2022-08-29 05:25:12');
INSERT INTO `gallery_images` VALUES (327, 49, NULL, 'gallery_image/dfnVtLXIo0icTey6bovdAbWpCSQWAfOlD5ShiyHO.jpg', 1, '2022-08-29 05:25:12', '2022-08-29 05:25:12');
INSERT INTO `gallery_images` VALUES (328, 49, NULL, 'gallery_image/Ruzt07KTwFaYHy1VY9cqWno8EHEXTX4y8uZeioWo.jpg', 1, '2022-08-29 05:25:12', '2022-08-29 05:25:12');
INSERT INTO `gallery_images` VALUES (337, 49, NULL, 'gallery_image/gYb1eeOgiMkIxpuuFlLIRnafHyTIWwAUUuhtr2A7.jpg', 1, '2022-08-29 05:25:55', '2022-08-29 05:25:55');
INSERT INTO `gallery_images` VALUES (338, 49, NULL, 'gallery_image/wQaM7OeIuE1aRJdD9pEwh4lnUKNatZeEFJ9JIOzI.jpg', 1, '2022-08-29 05:25:55', '2022-08-29 05:25:55');
INSERT INTO `gallery_images` VALUES (339, 49, NULL, 'gallery_image/dzezOwBPGbwTzd6KGswUBC9EK4Plyy0mPkk61odm.jpg', 1, '2022-08-29 05:26:59', '2022-08-29 05:26:59');
INSERT INTO `gallery_images` VALUES (340, 49, NULL, 'gallery_image/4jGfNoKWP7ioIlo5bzIDWQnAGZxxMlByHGOkBXvj.jpg', 1, '2022-08-29 05:26:59', '2022-08-29 05:26:59');
INSERT INTO `gallery_images` VALUES (341, 49, NULL, 'gallery_image/F5CTJEDYEuxmnEPYhtYfgxD5Ti0noOO27DMIybra.jpg', 1, '2022-08-29 05:26:59', '2022-08-29 05:26:59');
INSERT INTO `gallery_images` VALUES (342, 49, NULL, 'gallery_image/6LVoOz5tvoy6u5CsuN4F4Nc2x2FuUthZPzPSfXNC.jpg', 1, '2022-08-29 05:26:59', '2022-08-29 05:26:59');
INSERT INTO `gallery_images` VALUES (343, 49, NULL, 'gallery_image/bpYXMWyTUqWOFbEkHiAa4gqzqh24Mz4e0NRv3v9A.jpg', 1, '2022-08-29 05:26:59', '2022-08-29 05:26:59');
INSERT INTO `gallery_images` VALUES (344, 49, NULL, 'gallery_image/8zmqAacEZawgLpempdpwAJTpPTSFU6PgE38zAtov.jpg', 1, '2022-08-29 05:26:59', '2022-08-29 05:26:59');
INSERT INTO `gallery_images` VALUES (345, 49, NULL, 'gallery_image/onpluNB3GfctlULB9ND4EgmMeh4mdOoMvzzJgRuJ.jpg', 1, '2022-08-29 05:26:59', '2022-08-29 05:26:59');
INSERT INTO `gallery_images` VALUES (346, 49, NULL, 'gallery_image/lvrq7MLHpIH9AdFVV9UosDphxqtpoyvFoPpVpEqS.jpg', 1, '2022-08-29 05:26:59', '2022-08-29 05:26:59');
INSERT INTO `gallery_images` VALUES (347, 50, NULL, 'gallery_image/7PnBsyVELdecEooUPNq4o6ZBw7fWQKVAvtNZJqVQ.jpg', 1, '2022-08-29 05:29:47', '2022-08-29 05:29:47');
INSERT INTO `gallery_images` VALUES (348, 50, NULL, 'gallery_image/ZHaFp3AqBDKwBIWp2EkJYjUr67cwNLnoMtHRJmBk.jpg', 1, '2022-08-29 05:29:47', '2022-08-29 05:29:47');
INSERT INTO `gallery_images` VALUES (349, 50, NULL, 'gallery_image/FaTZYhwf6y71fSPbBZrXX4CaM7WQMn2eNZZEU01p.jpg', 1, '2022-08-29 05:29:47', '2022-08-29 05:29:47');
INSERT INTO `gallery_images` VALUES (350, 50, NULL, 'gallery_image/WCaN4m5BWvtu6SPmpzW4vkgcmwFCpVUuKRG3j19v.jpg', 1, '2022-08-29 05:29:47', '2022-08-29 05:29:47');
INSERT INTO `gallery_images` VALUES (351, 50, NULL, 'gallery_image/78v56gQvdFRTsx84qGLnvRWAVmm5kqXwVtRrNvZE.jpg', 1, '2022-08-29 05:29:47', '2022-08-29 05:29:47');
INSERT INTO `gallery_images` VALUES (352, 50, NULL, 'gallery_image/t8WOTRG1jogU5rBWtSQ4eE0LN58oVodNRQKIXlP0.jpg', 1, '2022-08-29 05:29:47', '2022-08-29 05:29:47');
INSERT INTO `gallery_images` VALUES (353, 50, NULL, 'gallery_image/Onkzl19ITU07rWZgNQGO7Ip4KEixuPaqFBn4Pwh8.jpg', 1, '2022-08-29 05:29:47', '2022-08-29 05:29:47');
INSERT INTO `gallery_images` VALUES (354, 50, NULL, 'gallery_image/kG6WSOohwf1rj2QRMdLySvT5FcK1o3fcsPfBtqA6.jpg', 1, '2022-08-29 05:29:47', '2022-08-29 05:29:47');
INSERT INTO `gallery_images` VALUES (355, 50, NULL, 'gallery_image/v7D50NaHErBd1kIA5gRIc7RFQ63RVFXwnZY3sjhP.jpg', 1, '2022-08-29 05:31:03', '2022-08-29 05:31:03');
INSERT INTO `gallery_images` VALUES (356, 50, NULL, 'gallery_image/E4HGuYOFNlRQoyjeMOYWgIqkEw7pFzqfOgXyn6Nn.jpg', 1, '2022-08-29 05:31:03', '2022-08-29 05:31:03');
INSERT INTO `gallery_images` VALUES (357, 50, NULL, 'gallery_image/eWlGMHZhSgJ5J1hRC35eMLTBGfAiz5VBegaGkzMn.jpg', 1, '2022-08-29 05:31:03', '2022-08-29 05:31:03');
INSERT INTO `gallery_images` VALUES (358, 50, NULL, 'gallery_image/PTMuKcMI1YGRnZjWElkXgs4Q4lL9eibxA9aSi3cw.jpg', 1, '2022-08-29 05:31:03', '2022-08-29 05:31:03');
INSERT INTO `gallery_images` VALUES (359, 50, NULL, 'gallery_image/tuXzYbAwm6BdOaNqUZEnBcTKwZz7MKS4AizexuMV.jpg', 1, '2022-08-29 05:31:03', '2022-08-29 05:31:03');
INSERT INTO `gallery_images` VALUES (360, 50, NULL, 'gallery_image/d3nBQcMoDvI6VHiD0kIYVlOhFeWRY7veRhlNHbVo.jpg', 1, '2022-08-29 05:31:03', '2022-08-29 05:31:03');
INSERT INTO `gallery_images` VALUES (361, 50, NULL, 'gallery_image/x9zFviF1xVNP7namXqlIAtHp4QJrcAtfRG4bkWHs.jpg', 1, '2022-08-29 05:31:03', '2022-08-29 05:31:03');
INSERT INTO `gallery_images` VALUES (362, 50, NULL, 'gallery_image/TOApzg4VEwnwRmZ9R7yg29Y3nTWYRyHUOVLmRYjX.jpg', 1, '2022-08-29 05:31:03', '2022-08-29 05:31:03');
INSERT INTO `gallery_images` VALUES (363, 50, NULL, 'gallery_image/GO4WBnD7YDi4Q5Y4bsweCvbST3Z2CiKV8swQTLgT.jpg', 1, '2022-08-29 05:31:24', '2022-08-29 05:31:24');
INSERT INTO `gallery_images` VALUES (364, 50, NULL, 'gallery_image/HToh4eZgrAZS8dq7cnXQP09eXDAMzbXoJyNG4WFp.jpg', 1, '2022-08-29 05:31:24', '2022-08-29 05:31:24');
INSERT INTO `gallery_images` VALUES (365, 50, NULL, 'gallery_image/zyVaNjxbSjj9udsyaO6XdbZh9CzEto2716xuAFQ3.jpg', 1, '2022-08-29 05:31:24', '2022-08-29 05:31:24');
INSERT INTO `gallery_images` VALUES (366, 50, NULL, 'gallery_image/N6c2VVrWE8jgwS3fZVA4LS4UYY6t6rNJW89tBOzM.jpg', 1, '2022-08-29 05:31:24', '2022-08-29 05:31:24');
INSERT INTO `gallery_images` VALUES (367, 50, NULL, 'gallery_image/tYlsWe0jbNSQUoQwMtETxBJEQMKSdkfUJB2UUK53.jpg', 1, '2022-08-29 05:31:24', '2022-08-29 05:31:24');
INSERT INTO `gallery_images` VALUES (368, 50, NULL, 'gallery_image/Sl0bR9iYm5r83kcVahy5DXW8tIgdnp5N8wyPjqTH.jpg', 1, '2022-08-29 05:31:24', '2022-08-29 05:31:24');
INSERT INTO `gallery_images` VALUES (369, 50, NULL, 'gallery_image/5DnOKn98wwugRNZK5JwI2rMkWlVF3TN7XgE5gNsC.jpg', 1, '2022-08-29 05:31:24', '2022-08-29 05:31:24');
INSERT INTO `gallery_images` VALUES (370, 50, NULL, 'gallery_image/lurHYjtWHKn3KhTRQWjcUyjkvU9wNIancdlqv9S0.jpg', 1, '2022-08-29 05:31:24', '2022-08-29 05:31:24');
INSERT INTO `gallery_images` VALUES (371, 50, NULL, 'gallery_image/QIPPQvNq1d7he71r2fmgw45CKTqwTyHtd2ooEZzb.jpg', 1, '2022-08-29 05:31:41', '2022-08-29 05:31:41');
INSERT INTO `gallery_images` VALUES (372, 50, NULL, 'gallery_image/PdlaCRKeysyiw8MXUz7ovtqVz6o0L3wJPsokeeNu.jpg', 1, '2022-08-29 05:31:41', '2022-08-29 05:31:41');
INSERT INTO `gallery_images` VALUES (373, 50, NULL, 'gallery_image/tArGvqnL1yOUStrSN1zKuMn3gW8NJSuLcbDzaE8M.jpg', 1, '2022-08-29 05:31:41', '2022-08-29 05:31:41');
INSERT INTO `gallery_images` VALUES (374, 50, NULL, 'gallery_image/AncsKZ2Pyqly5l7mOGFnfdrKC9bHNbEHQKxCd9ff.jpg', 1, '2022-08-29 05:31:41', '2022-08-29 05:31:41');
INSERT INTO `gallery_images` VALUES (375, 50, NULL, 'gallery_image/a0mDBoLeLL0i0OyjqubXHDRqAM7fGsn80ltiymXg.jpg', 1, '2022-08-29 05:31:41', '2022-08-29 05:31:41');
INSERT INTO `gallery_images` VALUES (376, 50, NULL, 'gallery_image/5O0dHrLQ7mf4stTH0Mn3zLWbXdlDamai1RZq0xtB.jpg', 1, '2022-08-29 05:31:41', '2022-08-29 05:31:41');
INSERT INTO `gallery_images` VALUES (377, 50, NULL, 'gallery_image/PcGKi4Mvx18P4tiJkG80msQVsYh1sbe9yqeLGJU8.jpg', 1, '2022-08-29 05:31:41', '2022-08-29 05:31:41');
INSERT INTO `gallery_images` VALUES (378, 50, NULL, 'gallery_image/h0eUpiBllvz0ItRzLAJV2oymbpq2QaPKWoSP4SqR.jpg', 1, '2022-08-29 05:31:41', '2022-08-29 05:31:41');
INSERT INTO `gallery_images` VALUES (387, 50, NULL, 'gallery_image/3oPHxgXpgfcM918a1addV7TlXCZZ07Ufsqj4Tacs.jpg', 1, '2022-08-29 05:37:30', '2022-08-29 05:37:30');
INSERT INTO `gallery_images` VALUES (388, 50, NULL, 'gallery_image/ix8usvBxzDTi21YHB3s494U2mXeXSAEmdEng7DxV.jpg', 1, '2022-08-29 05:37:30', '2022-08-29 05:37:30');
INSERT INTO `gallery_images` VALUES (389, 50, NULL, 'gallery_image/Tg01Xho5pd5kvpS1vgoun9qEKopv9FDl8utg6Fik.jpg', 1, '2022-08-29 05:37:30', '2022-08-29 05:37:30');
INSERT INTO `gallery_images` VALUES (390, 50, NULL, 'gallery_image/y7b08egKNu9iWiU2hNAQ8KKt0J1SsIAdezRodiM3.jpg', 1, '2022-08-29 05:37:30', '2022-08-29 05:37:30');
INSERT INTO `gallery_images` VALUES (391, 50, NULL, 'gallery_image/ZM8FIz7CoImhuJpXZbQnBOndJfNvPgONcvPRhH4G.jpg', 1, '2022-08-29 05:37:30', '2022-08-29 05:37:30');
INSERT INTO `gallery_images` VALUES (392, 50, NULL, 'gallery_image/xADcPlQzYynoqMZb8J4Efb7iwGr9U6qPe4dn2Tv6.jpg', 1, '2022-08-29 05:37:30', '2022-08-29 05:37:30');
INSERT INTO `gallery_images` VALUES (393, 50, NULL, 'gallery_image/DKfyTRu6E3Z69s9LZnKyD90nForFBXl3BEdAWjP0.jpg', 1, '2022-08-29 05:37:30', '2022-08-29 05:37:30');
INSERT INTO `gallery_images` VALUES (394, 50, NULL, 'gallery_image/Ge10w9HzvjsfMFqCOKC74Nw5OGOrZTcvu3H7Jm6b.jpg', 1, '2022-08-29 05:37:30', '2022-08-29 05:37:30');
INSERT INTO `gallery_images` VALUES (395, 50, NULL, 'gallery_image/N9O7cMgrzGc6jcDHSQX4aFZHpdwF4HK07VdXuo9d.jpg', 1, '2022-08-29 05:38:02', '2022-08-29 05:38:02');
INSERT INTO `gallery_images` VALUES (396, 50, NULL, 'gallery_image/rKxwSuQUV1SFJiRtMVLxVBrx93KEmRKqlDG2uEXH.jpg', 1, '2022-08-29 05:38:02', '2022-08-29 05:38:02');
INSERT INTO `gallery_images` VALUES (397, 50, NULL, 'gallery_image/OUmI0mVwqG1TNg7hiORtFBKu5rGWwPcFpeeFvdMi.jpg', 1, '2022-08-29 05:38:02', '2022-08-29 05:38:02');
INSERT INTO `gallery_images` VALUES (398, 50, NULL, 'gallery_image/u1IGdspxHcwwdYMZ2NW0Cewgc10MsfKbcyS7lbOi.jpg', 1, '2022-08-29 05:38:02', '2022-08-29 05:38:02');
INSERT INTO `gallery_images` VALUES (399, 50, NULL, 'gallery_image/ikeFdvkHCsLFUSQxrClGYNgID1AsT4iMi6k8BfwH.jpg', 1, '2022-08-29 05:38:02', '2022-08-29 05:38:02');
INSERT INTO `gallery_images` VALUES (400, 50, NULL, 'gallery_image/FaQTlAA6gwsoTnEAg90v4PUwR3WwQyybh1gPE1d8.jpg', 1, '2022-08-29 05:38:02', '2022-08-29 05:38:02');
INSERT INTO `gallery_images` VALUES (401, 50, NULL, 'gallery_image/wrtpnSeKp0Fnb7M3jsuygi0hY0fv9Du2htWrNVWf.jpg', 1, '2022-08-29 05:38:02', '2022-08-29 05:38:02');
INSERT INTO `gallery_images` VALUES (402, 50, NULL, 'gallery_image/KoiKAUUrSceuS38IFDLmwE3upRAr76gfQBfLpHz8.jpg', 1, '2022-08-29 05:38:02', '2022-08-29 05:38:02');
INSERT INTO `gallery_images` VALUES (403, 50, NULL, 'gallery_image/ODRCYU2bHTayU35OdMmv3FayBqQaz465Nfv6T3W3.jpg', 1, '2022-08-29 05:38:34', '2022-08-29 05:38:34');
INSERT INTO `gallery_images` VALUES (404, 50, NULL, 'gallery_image/aIfLucVyKHWsaCcKCq3xV9T2uA4wbrIoFMwqmjhj.jpg', 1, '2022-08-29 05:38:34', '2022-08-29 05:38:34');
INSERT INTO `gallery_images` VALUES (405, 50, NULL, 'gallery_image/DXknnzvFq7jIl00AZwBjIb7ldWT6TjLrJxY7hJi0.jpg', 1, '2022-08-29 05:38:34', '2022-08-29 05:38:34');
INSERT INTO `gallery_images` VALUES (406, 50, NULL, 'gallery_image/RahhxdHlldOpvJbYxlzyV2hMiegvRYHbjbmLop9M.jpg', 1, '2022-08-29 05:38:34', '2022-08-29 05:38:34');
INSERT INTO `gallery_images` VALUES (407, 50, NULL, 'gallery_image/DlyzSNaOaGeVQIim30Wb7N6CrCYDGpNbGfoAlIuy.jpg', 1, '2022-08-29 05:38:34', '2022-08-29 05:38:34');
INSERT INTO `gallery_images` VALUES (408, 50, NULL, 'gallery_image/ZuSMIudzQ0rZN4COqGjwvfEaZUoAeiDVP4VwvW26.jpg', 1, '2022-08-29 05:38:34', '2022-08-29 05:38:34');
INSERT INTO `gallery_images` VALUES (409, 50, NULL, 'gallery_image/0oU1bILekLgMf6ZNhR3rEhUWo4LX3BXw7EdO630y.jpg', 1, '2022-08-29 05:38:34', '2022-08-29 05:38:34');
INSERT INTO `gallery_images` VALUES (410, 50, NULL, 'gallery_image/MGlagR4asYg0fuEjrZgWmYFFnbgE6XLVqAbVXw4O.jpg', 1, '2022-08-29 05:38:34', '2022-08-29 05:38:34');
INSERT INTO `gallery_images` VALUES (411, 50, NULL, 'gallery_image/dxAOeQ3zLZJuzI0jrAR6JCJrUqKyZth3hzpVQ1XV.jpg', 1, '2022-08-29 05:39:30', '2022-08-29 05:39:30');
INSERT INTO `gallery_images` VALUES (412, 50, NULL, 'gallery_image/HlSjDoG0NEIbYrMPcj8Tnnx4xkKCPEHJqGAFqupi.jpg', 1, '2022-08-29 05:39:30', '2022-08-29 05:39:30');
INSERT INTO `gallery_images` VALUES (413, 50, NULL, 'gallery_image/Asba62pjNnZscUlpyvKMnWatsucRVQgl1kdPVDyh.jpg', 1, '2022-08-29 05:39:30', '2022-08-29 05:39:30');
INSERT INTO `gallery_images` VALUES (414, 51, NULL, 'gallery_image/siyT7cV4PeLhS0OU5QMX45RjgNWwxNNDt9HEEPl9.jpg', 1, '2022-08-29 05:40:29', '2022-08-29 05:40:29');
INSERT INTO `gallery_images` VALUES (415, 51, NULL, 'gallery_image/o0HMwDWwI8w4RBlNM2MmrdjHjSVos7mhUmILxiJK.jpg', 1, '2022-08-29 05:40:29', '2022-08-29 05:40:29');
INSERT INTO `gallery_images` VALUES (416, 52, NULL, 'gallery_image/BD2EGNixDR9MVFlFLTIyhq8yvQcpYDpEfwCvrmpa.jpg', 1, '2022-08-29 05:41:29', '2022-08-29 05:41:29');
INSERT INTO `gallery_images` VALUES (417, 53, NULL, 'gallery_image/RVyTT5O6BzXWlBhYAOZWFceoqiv5bfrAqwXWPtdL.jpg', 1, '2022-08-29 05:42:20', '2022-08-29 05:42:20');
INSERT INTO `gallery_images` VALUES (418, 53, NULL, 'gallery_image/Dq0wstzkrOk4W1cgo5ibu3z88RDEcjU9X5KlFSFL.jpg', 1, '2022-08-29 05:42:20', '2022-08-29 05:42:20');
INSERT INTO `gallery_images` VALUES (419, 53, NULL, 'gallery_image/uqecp8fvXxJArSKDDuPXCY8YcJHlQQoiJIlRk72J.jpg', 1, '2022-08-29 05:42:20', '2022-08-29 05:42:20');
INSERT INTO `gallery_images` VALUES (420, 54, NULL, 'gallery_image/Kt8Kc8p3j6fI0WA2sj3Tl6f2BcAWY7DEjzggRtTw.jpg', 1, '2022-08-29 05:42:55', '2022-08-29 05:42:55');
INSERT INTO `gallery_images` VALUES (421, 54, NULL, 'gallery_image/rE1pc0V5oY2yDQRHxNz6Xh7QAcIDCXCTHcZU9c3X.jpg', 1, '2022-08-29 05:42:55', '2022-08-29 05:42:55');
INSERT INTO `gallery_images` VALUES (422, 54, NULL, 'gallery_image/bBC6PBpJhMJ38QmBLbq4WO27VSESuHkVZrIjQKMK.jpg', 1, '2022-08-29 05:42:55', '2022-08-29 05:42:55');
INSERT INTO `gallery_images` VALUES (423, 55, NULL, 'gallery_image/omjPXo3YCXkfeMlPAVExEQNnbywqDY7bDoXhSiug.jpg', 1, '2022-08-29 05:44:01', '2022-08-29 05:44:01');
INSERT INTO `gallery_images` VALUES (424, 55, NULL, 'gallery_image/u6ZgtAoqAMlTsZH2WMNXhg8UIvrtTuiZRLiaKUOV.jpg', 1, '2022-08-29 05:44:01', '2022-08-29 05:44:01');
INSERT INTO `gallery_images` VALUES (425, 55, NULL, 'gallery_image/ENImZLFNSmH1WNBzrKlGmWHEMCg1divW9v8praaw.jpg', 1, '2022-08-29 05:44:01', '2022-08-29 05:44:01');
INSERT INTO `gallery_images` VALUES (426, 55, NULL, 'gallery_image/HUGYGc6Cjo4dsbmDbOWYF8qn5PEKH2FpuGzsrVzO.jpg', 1, '2022-08-29 05:44:01', '2022-08-29 05:44:01');
INSERT INTO `gallery_images` VALUES (427, 56, NULL, 'gallery_image/kMDUuQNUbgK4SDnDsO79IjMWS1z303ewEYsaTE1R.jpg', 1, '2022-08-29 05:45:05', '2022-08-29 05:45:05');
INSERT INTO `gallery_images` VALUES (428, 56, NULL, 'gallery_image/WSoveUnLdGaHhDrCvZWS52OBcTOAoDj3udBsXL7G.jpg', 1, '2022-08-29 05:45:05', '2022-08-29 05:45:05');
INSERT INTO `gallery_images` VALUES (429, 57, NULL, 'gallery_image/FjIsq7zNGbDRZ2vGd9oTdeD2wtCGIVF81xAj2e0J.jpg', 1, '2022-08-29 05:45:53', '2022-08-29 05:45:53');
INSERT INTO `gallery_images` VALUES (430, 57, NULL, 'gallery_image/E9I5jbpwAqDhyQH3E9xsTfYnww39qEZGCoM4BYfS.jpg', 1, '2022-08-29 05:45:53', '2022-08-29 05:45:53');
INSERT INTO `gallery_images` VALUES (431, 58, NULL, 'gallery_image/WtfuU5KCf0k2gn3jYB4AJeiWArCqKv1tSeIzlDiG.jpg', 1, '2022-08-29 05:51:37', '2022-08-29 05:51:37');
INSERT INTO `gallery_images` VALUES (432, 58, NULL, 'gallery_image/HRVr5ACjh9wWCcYubDorkliX5xoVAiHn5mBX3CJw.jpg', 1, '2022-08-29 05:51:37', '2022-08-29 05:51:37');
INSERT INTO `gallery_images` VALUES (433, 58, NULL, 'gallery_image/6C7W8FGEop7bRFyx6ouCqnpl009KrkHquDwy4qaz.jpg', 1, '2022-08-29 05:51:37', '2022-08-29 05:51:37');
INSERT INTO `gallery_images` VALUES (434, 59, NULL, 'gallery_image/Lc5koqErkQxmkf946tsEUL9SlFXArqC9zt8lCQAh.jpg', 1, '2022-08-29 05:53:03', '2022-08-29 05:53:03');
INSERT INTO `gallery_images` VALUES (435, 60, NULL, 'gallery_image/uoGbbHiR0geEhZqCNWUvrgw0IGtSCZb9KZcGk4K9.jpg', 1, '2022-08-29 05:54:07', '2022-08-29 05:54:07');
INSERT INTO `gallery_images` VALUES (436, 61, NULL, 'gallery_image/U7t9oH71rkgt8dy2Zbt7iFI4q6yne0XHZpnHpFu5.jpg', 1, '2022-08-29 05:54:55', '2022-08-29 05:54:55');
INSERT INTO `gallery_images` VALUES (437, 61, NULL, 'gallery_image/t93lgh3wjd0cqXjp7dzZBYytOriEQlxQ65z6Dhx8.jpg', 1, '2022-08-29 05:54:55', '2022-08-29 05:54:55');
INSERT INTO `gallery_images` VALUES (438, 62, NULL, 'gallery_image/ZIdCSVFTaCH6R1Z5Y307WYte8Z6aIBB1Y7dT1tUz.jpg', 1, '2022-08-29 05:58:10', '2022-08-29 05:58:10');
INSERT INTO `gallery_images` VALUES (439, 62, NULL, 'gallery_image/powXduyAMt2LpNDXWAlHDQXtcG97XSHzjTCiXId3.jpg', 1, '2022-08-29 05:58:10', '2022-08-29 05:58:10');
INSERT INTO `gallery_images` VALUES (440, 62, NULL, 'gallery_image/OklzpCxq1jBDpe6ovDID8zdHjwPgfbN95tGmxy15.jpg', 1, '2022-08-29 05:58:10', '2022-08-29 05:58:10');
INSERT INTO `gallery_images` VALUES (441, 63, NULL, 'gallery_image/HGFMu8tSxeidDhr72Q3SrsWbwxDQrpZ7Wr6ZGJ4p.jpg', 1, '2022-08-29 05:59:20', '2022-08-29 05:59:20');
INSERT INTO `gallery_images` VALUES (442, 64, NULL, 'gallery_image/96xN21iww76RPHSaERAGuZP2kY7794eg06xVoYDj.jpg', 1, '2022-08-29 06:00:16', '2022-08-29 06:00:16');
INSERT INTO `gallery_images` VALUES (443, 64, NULL, 'gallery_image/40vPoFRK3VVjn6t4nr3XO2zec3El5z7d0HN9XnY8.jpg', 1, '2022-08-29 06:00:16', '2022-08-29 06:00:16');
INSERT INTO `gallery_images` VALUES (444, 64, NULL, 'gallery_image/ROvxEQbdUBXFuMGQ4yULoqVQv9gnfJTD7M25S1Gw.jpg', 1, '2022-08-29 06:00:16', '2022-08-29 06:00:16');
INSERT INTO `gallery_images` VALUES (445, 65, NULL, 'gallery_image/1g2eKhkjRGfZTVHgpPtSCrOdoMfV9RCFDOZF8WZs.jpg', 1, '2022-08-29 06:01:37', '2022-08-29 06:01:37');
INSERT INTO `gallery_images` VALUES (446, 66, NULL, 'gallery_image/Od7oqOVKgrzSrVl1xm1WdGLEJNpk1SlcZjkfXut5.jpg', 1, '2022-08-29 06:02:22', '2022-08-29 06:02:22');
INSERT INTO `gallery_images` VALUES (447, 66, NULL, 'gallery_image/SCPZtEv3Iw4lpSdmmtZxN5RQaKN69men6eS7Gvl2.jpg', 1, '2022-08-29 06:02:22', '2022-08-29 06:02:22');
INSERT INTO `gallery_images` VALUES (448, 67, NULL, 'gallery_image/7vw6SfJZgd2RubvIHr7FlUbC9yTECQnWnPWqHQTw.jpg', 1, '2022-08-29 06:03:09', '2022-08-29 06:03:09');
INSERT INTO `gallery_images` VALUES (449, 67, NULL, 'gallery_image/U8YXhSg9Mh7NzuJ7uwnxSpYZWBTonyQEvgk9VSrJ.jpg', 1, '2022-08-29 06:03:09', '2022-08-29 06:03:09');
INSERT INTO `gallery_images` VALUES (450, 68, NULL, 'gallery_image/eWDWiMLgfj7Wuxn4gRgy0ihmGaxaSR8Q6Co7ZrHY.jpg', 1, '2022-08-29 06:04:44', '2022-08-29 06:04:44');
INSERT INTO `gallery_images` VALUES (451, 68, NULL, 'gallery_image/UnusmG2zSXlnYQjY76j6P8SgEipkWVha8nupnCnI.jpg', 1, '2022-08-29 06:04:45', '2022-08-29 06:04:45');
INSERT INTO `gallery_images` VALUES (452, 68, NULL, 'gallery_image/lYDwoULF0jNkXMpmfVKOeu081FzmdiTyo52RRFPO.jpg', 1, '2022-08-29 06:04:45', '2022-08-29 06:04:45');
INSERT INTO `gallery_images` VALUES (453, 69, NULL, 'gallery_image/2fWC41pZI7y7mJIej9HWkYHINYVB7zIMgZpRvuI0.jpg', 1, '2022-08-29 06:06:37', '2022-08-29 06:06:37');
INSERT INTO `gallery_images` VALUES (454, 69, NULL, 'gallery_image/qyEQTU4n8K9uu6d0BAMKtFKTtKvgnfY5JSA3K6yS.jpg', 1, '2022-08-29 06:06:37', '2022-08-29 06:06:37');
INSERT INTO `gallery_images` VALUES (455, 69, NULL, 'gallery_image/fDtCx9GvLqZNiSVWotRit7CDIcKpAl2IsbWR5XSl.jpg', 1, '2022-08-29 06:09:16', '2022-08-29 06:09:16');
INSERT INTO `gallery_images` VALUES (456, 69, NULL, 'gallery_image/0HK4zcwEUcrTCGsyEHk2ZbkNhaftgc1uTkj0GiZ3.jpg', 1, '2022-08-29 06:09:16', '2022-08-29 06:09:16');
INSERT INTO `gallery_images` VALUES (457, 69, NULL, 'gallery_image/j0wbFUa1PLQu8EJ8mCixgScRvQHNIJr23tH6Wyzz.jpg', 1, '2022-08-29 06:09:16', '2022-08-29 06:09:16');
INSERT INTO `gallery_images` VALUES (458, 69, NULL, 'gallery_image/uUc8Xt0Sv7FeStowfScuXwSq5qLcTbsEGmITLqmg.jpg', 1, '2022-08-29 06:09:16', '2022-08-29 06:09:16');
INSERT INTO `gallery_images` VALUES (459, 70, NULL, 'gallery_image/wBP9th0Sylx41zWwwBFfb1dwBpJEf7eMOsn5QAET.jpg', 1, '2022-08-29 06:10:15', '2022-08-29 06:10:15');
INSERT INTO `gallery_images` VALUES (460, 70, NULL, 'gallery_image/HqKc4SME6XLa93tUul3dZNn4gcogJBq8ZKw5utTJ.jpg', 1, '2022-08-29 06:10:15', '2022-08-29 06:10:15');
INSERT INTO `gallery_images` VALUES (461, 70, NULL, 'gallery_image/tu3pKLZsgIOJDBCt4uoFFkGsyhGEgIu90R4m2Adh.jpg', 1, '2022-08-29 06:10:15', '2022-08-29 06:10:15');
INSERT INTO `gallery_images` VALUES (462, 70, NULL, 'gallery_image/z8sJ94rsexdtrIPhYuLa31kpr6ZKVYawrGHl022O.jpg', 1, '2022-08-29 06:10:16', '2022-08-29 06:10:16');
INSERT INTO `gallery_images` VALUES (463, 71, NULL, 'gallery_image/91FWJQSaq4JDTVGMVXivOJSZ933McSFgoghh89Fa.jpg', 1, '2022-08-29 06:11:57', '2022-08-29 06:11:57');
INSERT INTO `gallery_images` VALUES (464, 71, NULL, 'gallery_image/BTtbRRPvaYijHOSQ5oyo6U72KeoHkRAZEyWNOTZv.jpg', 1, '2022-08-29 06:11:57', '2022-08-29 06:11:57');
INSERT INTO `gallery_images` VALUES (465, 72, NULL, 'gallery_image/G6ylOvMWWn8SuDLQz0WY3o7tqAcwEBfYo83R3Jy9.jpg', 1, '2022-08-29 06:13:03', '2022-08-29 06:13:03');
INSERT INTO `gallery_images` VALUES (466, 72, NULL, 'gallery_image/aZ5LOmNGQTbCL7NOHSMMkyhDf4aSDiXcUjrx1UVs.jpg', 1, '2022-08-29 06:13:03', '2022-08-29 06:13:03');
INSERT INTO `gallery_images` VALUES (467, 72, NULL, 'gallery_image/An1GlrBGSUFLYaTAXqYQYLFAr2ZJNiheHrnJIjyP.jpg', 1, '2022-08-29 06:13:03', '2022-08-29 06:13:03');
INSERT INTO `gallery_images` VALUES (468, 72, NULL, 'gallery_image/DzPlD7LGTqBUVlIlwrGgmXcFxfyiWbr64EO0h0PW.jpg', 1, '2022-08-29 06:13:03', '2022-08-29 06:13:03');
INSERT INTO `gallery_images` VALUES (469, 73, NULL, 'gallery_image/j6e9YYTbzJXblSw1TYHgT0wfrULY4Mf3AXIF5mVT.jpg', 1, '2022-08-29 06:13:58', '2022-08-29 06:13:58');
INSERT INTO `gallery_images` VALUES (470, 73, NULL, 'gallery_image/t7JufE49EBVLn3uLCESaG2AKlfFvSXnVhlftm9yU.jpg', 1, '2022-08-29 06:13:58', '2022-08-29 06:13:58');
INSERT INTO `gallery_images` VALUES (471, 73, NULL, 'gallery_image/zG8Z83AJ61OmCQBc7FvCCh1gk52KCMzBHzJvQXxJ.jpg', 1, '2022-08-29 06:13:58', '2022-08-29 06:13:58');
INSERT INTO `gallery_images` VALUES (472, 73, NULL, 'gallery_image/KnenQBQX9FN5qTw5TzTfpa2LAtAr9Aeczhn38C33.jpg', 1, '2022-08-29 06:13:58', '2022-08-29 06:13:58');
INSERT INTO `gallery_images` VALUES (473, 74, NULL, 'gallery_image/EmGFziUCvBBKFonuEthZbwdq8WXHYi4fipYuY87u.jpg', 1, '2022-08-29 06:15:11', '2022-08-29 06:15:11');
INSERT INTO `gallery_images` VALUES (474, 74, NULL, 'gallery_image/gBtbcwcbPTFRMPjdwrq69ydeWCPSvSjFA2Qbxyvh.jpg', 1, '2022-08-29 06:15:11', '2022-08-29 06:15:11');
INSERT INTO `gallery_images` VALUES (475, 75, NULL, 'gallery_image/KHVkWA4hfAy0IPjPCZI8Uw1RgJM0CH8LZuI0vrkr.jpg', 1, '2022-08-29 06:16:00', '2022-08-29 06:16:00');
INSERT INTO `gallery_images` VALUES (476, 75, NULL, 'gallery_image/jHOGOBLjnhk73tKeFoYQvYDntKBX5nxQuyiEJxlQ.jpg', 1, '2022-08-29 06:16:00', '2022-08-29 06:16:00');
INSERT INTO `gallery_images` VALUES (477, 75, NULL, 'gallery_image/1BdmOUGh15yE7ZCFxFhPk8vuv51cAdmSi0radFUa.jpg', 1, '2022-08-29 06:16:00', '2022-08-29 06:16:00');
INSERT INTO `gallery_images` VALUES (478, 75, NULL, 'gallery_image/OmvoZOywsZ97kd5haIS1bEKqwMHdsyEknyGpimcB.jpg', 1, '2022-08-29 06:16:00', '2022-08-29 06:16:00');
INSERT INTO `gallery_images` VALUES (479, 76, NULL, 'gallery_image/Bdpd3g6AAqX4eB27NuoQgFt45OCkFs1yi4lwG5W2.jpg', 1, '2022-08-29 06:17:35', '2022-08-29 06:17:35');
INSERT INTO `gallery_images` VALUES (480, 76, NULL, 'gallery_image/hr9mKqPqFaA0xOqMkN4eeIhwMioNSLKHk5M13mdu.jpg', 1, '2022-08-29 06:17:35', '2022-08-29 06:17:35');
INSERT INTO `gallery_images` VALUES (481, 77, NULL, 'gallery_image/77/42kyQnvMbBqYQLt2LNwlbweS2362U5ESewpINYa4.jpg', 1, '2022-08-29 06:29:47', '2022-08-29 06:29:47');
INSERT INTO `gallery_images` VALUES (482, 77, NULL, 'gallery_image/77/1IPW7jbjqHuDsHfEE7NjDQ8m6urMXcVaDuuwgypG.jpg', 1, '2022-08-29 06:29:47', '2022-08-29 06:29:47');
INSERT INTO `gallery_images` VALUES (483, 77, NULL, 'gallery_image/77/mRVKXo0mRocjMnG961bHVXBEDyvS89PLv7H2GsGj.jpg', 1, '2022-08-29 06:29:47', '2022-08-29 06:29:47');
INSERT INTO `gallery_images` VALUES (484, 77, NULL, 'gallery_image/77/rkwblGsJfgc8bOkY2pupR8iSz4bYqjoMmZJ6ywzr.jpg', 1, '2022-08-29 06:29:47', '2022-08-29 06:29:47');
INSERT INTO `gallery_images` VALUES (485, 77, NULL, 'gallery_image/77/rGZ0VxMYvBJVxx9FgXE04tDNanFaqvBNYh6eOcNM.jpg', 1, '2022-08-29 06:29:47', '2022-08-29 06:29:47');
INSERT INTO `gallery_images` VALUES (486, 77, NULL, 'gallery_image/77/YktlKyntIjJOUy2r8aGj8Qy5oe1w9LmUKOX4bMP3.jpg', 1, '2022-08-29 06:29:47', '2022-08-29 06:29:47');
INSERT INTO `gallery_images` VALUES (487, 77, NULL, 'gallery_image/77/Ln3E6vjYPsTYhhFbavrMOmeULqk3xWR2NqjVoaxX.jpg', 1, '2022-08-29 06:29:47', '2022-08-29 06:29:47');
INSERT INTO `gallery_images` VALUES (488, 77, NULL, 'gallery_image/77/LJtsjAxDl6WnKZvuFz4XeQCWK5ICfVkMTloQ2C0A.jpg', 1, '2022-08-29 06:29:47', '2022-08-29 06:29:47');
INSERT INTO `gallery_images` VALUES (489, 78, NULL, 'gallery_image/78/bxt5ZXmbVZRSa4weqC2P8WoGrpY3CdoBMNCPf1fV.jpg', 1, '2022-08-29 06:31:40', '2022-08-29 06:31:40');
INSERT INTO `gallery_images` VALUES (490, 78, NULL, 'gallery_image/78/uyCQOikwrDmk967jLanVdfatEQDatgQ2AyJbxgvl.jpg', 1, '2022-08-29 06:31:40', '2022-08-29 06:31:40');
INSERT INTO `gallery_images` VALUES (491, 78, NULL, 'gallery_image/78/67WbsbyFeQEh2rhvK7aBm7gQKfhZMweWqeOCHQI8.jpg', 1, '2022-08-29 06:31:41', '2022-08-29 06:31:41');
INSERT INTO `gallery_images` VALUES (492, 78, NULL, 'gallery_image/78/6NxTMQd1qWkXqX1SitWyXGXXk0Ey0MGnX41IxR62.jpg', 1, '2022-08-29 06:31:41', '2022-08-29 06:31:41');
INSERT INTO `gallery_images` VALUES (493, 78, NULL, 'gallery_image/78/K7ExKc5bf1yuuZxHXQPSNMpi9Zzy59xdnRgzmfrP.jpg', 1, '2022-08-29 06:31:41', '2022-08-29 06:31:41');
INSERT INTO `gallery_images` VALUES (494, 78, NULL, 'gallery_image/78/Qc19rXl4uJAx2t3nQesQuhLqpdB9WanCbYO4NWJy.jpg', 1, '2022-08-29 06:31:41', '2022-08-29 06:31:41');
INSERT INTO `gallery_images` VALUES (495, 78, NULL, 'gallery_image/78/xRV2Zy7Uwx5fL50oyZDTH5lqvjwJCZu1wvZYwuN9.jpg', 1, '2022-08-29 06:31:41', '2022-08-29 06:31:41');
INSERT INTO `gallery_images` VALUES (496, 78, NULL, 'gallery_image/78/jWciLhfmdpL3SDUWhOEyyc333Rjyz5hx6nmYKV1s.jpg', 1, '2022-08-29 06:31:41', '2022-08-29 06:31:41');
INSERT INTO `gallery_images` VALUES (497, 78, NULL, 'gallery_image/78/Bnx2gFsYUtKK3XkalzfZNeUEadFjaBPs4lEOuyvW.jpg', 1, '2022-08-29 06:31:41', '2022-08-29 06:31:41');
INSERT INTO `gallery_images` VALUES (498, 78, NULL, 'gallery_image/78/gpKWFmrJaUGl67uA5UpKeQXTGMaHDGHhgykUqBso.jpg', 1, '2022-08-29 06:31:41', '2022-08-29 06:31:41');
INSERT INTO `gallery_images` VALUES (499, 79, NULL, 'gallery_image/79/Me4l1JqCarytYXX1v5dQZYZIP3Vkw7WzETMJ1ESy.jpg', 1, '2022-08-29 06:33:26', '2022-08-29 06:33:26');
INSERT INTO `gallery_images` VALUES (500, 79, NULL, 'gallery_image/79/cSmarQOcVVI3nr0Rjx9TOxlZ1M1G1q4j5lpyqLvn.jpg', 1, '2022-08-29 06:33:26', '2022-08-29 06:33:26');
INSERT INTO `gallery_images` VALUES (501, 79, NULL, 'gallery_image/79/wS3dxhZGePEnF7sQzIlU5UDAdxKdkFVS8ZWNFppF.jpg', 1, '2022-08-29 06:33:26', '2022-08-29 06:33:26');
INSERT INTO `gallery_images` VALUES (502, 79, NULL, 'gallery_image/79/XlUMw8XLek66c6Hkc2ceMFAzbJrqKlGzJl8d7x1I.jpg', 1, '2022-08-29 06:33:26', '2022-08-29 06:33:26');
INSERT INTO `gallery_images` VALUES (503, 79, NULL, 'gallery_image/79/RdHWnZKN5eFXDj30xA2CvuD3JCh37IA0EJZ9yHaJ.jpg', 1, '2022-08-29 06:33:26', '2022-08-29 06:33:26');
INSERT INTO `gallery_images` VALUES (504, 79, NULL, 'gallery_image/79/aQXMMOHcCtXHZtEuDeBVkjYrqnTPEcQEX5wkoaih.jpg', 1, '2022-08-29 06:33:26', '2022-08-29 06:33:26');
INSERT INTO `gallery_images` VALUES (505, 79, NULL, 'gallery_image/79/OCtoTkvVXaUKJQc1EMXvTll1yM9sZ4MtGxBwrxvm.jpg', 1, '2022-08-29 06:33:26', '2022-08-29 06:33:26');
INSERT INTO `gallery_images` VALUES (506, 79, NULL, 'gallery_image/79/dLBVpRS1h0ai2270TLgNQDbQ0XHdQYI2aFGvyeIf.jpg', 1, '2022-08-29 06:33:26', '2022-08-29 06:33:26');
INSERT INTO `gallery_images` VALUES (507, 79, NULL, 'gallery_image/79/jGtZs4cMcIxH6eZFklS2qhpqakdOuAOEFZl1io5T.jpg', 1, '2022-08-29 06:33:26', '2022-08-29 06:33:26');
INSERT INTO `gallery_images` VALUES (508, 79, NULL, 'gallery_image/79/8uwjYUIRs7UWqJTCGn0xFb1mMIuu251tKuZOx175.jpg', 1, '2022-08-29 06:33:26', '2022-08-29 06:33:26');
INSERT INTO `gallery_images` VALUES (509, 79, NULL, 'gallery_image/79/KjoUTfYYBV5NqrKDOEJm1dIwRQhEKiAO7EIxe7Cc.jpg', 1, '2022-08-29 06:33:26', '2022-08-29 06:33:26');
INSERT INTO `gallery_images` VALUES (510, 79, NULL, 'gallery_image/79/QzUC9LlVMvr8pnhyBTCpC9fPSyTvx2hzQEyz00Pb.jpg', 1, '2022-08-29 06:33:26', '2022-08-29 06:33:26');
INSERT INTO `gallery_images` VALUES (511, 79, NULL, 'gallery_image/79/2pFIe5uSnESmpcjw0hLWJU2SDb4ZKCRHzEkTRf7N.jpg', 1, '2022-08-29 06:33:26', '2022-08-29 06:33:26');
INSERT INTO `gallery_images` VALUES (512, 79, NULL, 'gallery_image/79/4HsLhcWPV58lWkH3twssumKRZeU3i5DJT1SSu4NA.jpg', 1, '2022-08-29 06:33:26', '2022-08-29 06:33:26');
INSERT INTO `gallery_images` VALUES (513, 80, NULL, 'gallery_image/80/MeG3kgeVE8SmL0fSIJ4IO6hENV3rc5AfO4ZGiPNQ.jpg', 1, '2022-08-29 06:36:17', '2022-08-29 06:36:17');
INSERT INTO `gallery_images` VALUES (514, 80, NULL, 'gallery_image/80/H9yRYuMBxEPoIA2fEMN00TNfIfFfPfYtPD90xldr.jpg', 1, '2022-08-29 06:36:17', '2022-08-29 06:36:17');
INSERT INTO `gallery_images` VALUES (515, 80, NULL, 'gallery_image/80/P9817Tn8ZApcEzbahW3w42XEuvtvb5vw3Hx3bfVO.jpg', 1, '2022-08-29 06:36:17', '2022-08-29 06:36:17');
INSERT INTO `gallery_images` VALUES (516, 81, NULL, 'gallery_image/81/QJXJHzNjkZ6bMMlpAciUpXpdqw9tiVNtUY46GUIM.jpg', 1, '2022-08-29 06:37:32', '2022-08-29 06:37:32');
INSERT INTO `gallery_images` VALUES (517, 81, NULL, 'gallery_image/81/5lp1OjlHh0YAXJE6SA8gl9yFw9d84e3OY7FGf9SW.jpg', 1, '2022-08-29 06:37:32', '2022-08-29 06:37:32');
INSERT INTO `gallery_images` VALUES (518, 81, NULL, 'gallery_image/81/Ez8gdMK7tUWQFt0ARi5LsvkQN6jTm5zaaRvWKDQ2.jpg', 1, '2022-08-29 06:37:32', '2022-08-29 06:37:32');
INSERT INTO `gallery_images` VALUES (519, 81, NULL, 'gallery_image/81/zvPqyTJK6KiUdfKnRBVZyOql2vD5Wlfb9Be9EAVz.jpg', 1, '2022-08-29 06:37:32', '2022-08-29 06:37:32');
INSERT INTO `gallery_images` VALUES (520, 81, NULL, 'gallery_image/81/3zGMFFRjt9LTFZtcXM2hKHKIvp1Gf9fsdXyXkO5h.jpg', 1, '2022-08-29 06:37:32', '2022-08-29 06:37:32');
INSERT INTO `gallery_images` VALUES (521, 82, NULL, 'gallery_image/82/DMdxBLu8NVY4sh2yU5BrS00ULiyeQ9iL4u8SXI6n.jpg', 1, '2022-08-29 06:38:39', '2022-08-29 06:38:39');
INSERT INTO `gallery_images` VALUES (522, 82, NULL, 'gallery_image/82/dRldEi3r6uCFdQpuhoxgVZ1N7zOkS6XluetC4zg2.jpg', 1, '2022-08-29 06:38:39', '2022-08-29 06:38:39');
INSERT INTO `gallery_images` VALUES (523, 82, NULL, 'gallery_image/82/KIYZur5JPpDUU7XacaWNaFgJx4PAWLucXcUvD08E.jpg', 1, '2022-08-29 06:38:39', '2022-08-29 06:38:39');
INSERT INTO `gallery_images` VALUES (524, 82, NULL, 'gallery_image/82/VwjL9jCan8izLNDxwoPaoxGGVwdtty55k4HdXbG1.jpg', 1, '2022-08-29 06:38:39', '2022-08-29 06:38:39');
INSERT INTO `gallery_images` VALUES (525, 82, NULL, 'gallery_image/82/oHcG2L9Pch9xT10ExKOLJ5i11QOQ85fgINS3vocu.jpg', 1, '2022-08-29 06:38:39', '2022-08-29 06:38:39');
INSERT INTO `gallery_images` VALUES (526, 83, NULL, 'gallery_image/83/XBhQWfT3MlDHqbrWHHatNW5hk6PZU59OT4dCx2a2.jpg', 1, '2022-08-29 06:41:07', '2022-08-29 06:41:07');
INSERT INTO `gallery_images` VALUES (527, 83, NULL, 'gallery_image/83/NfJCAuGf16eZPWgUQMrWIvRNXdDSTO3g9LXFq5wm.jpg', 1, '2022-08-29 06:41:07', '2022-08-29 06:41:07');
INSERT INTO `gallery_images` VALUES (528, 83, NULL, 'gallery_image/83/aZKB3DKsgrulGUEuyKrbB4oCRcn6ZtpuXd0qS7YF.jpg', 1, '2022-08-29 06:41:07', '2022-08-29 06:41:07');
INSERT INTO `gallery_images` VALUES (529, 83, NULL, 'gallery_image/83/zBwUSCVptNMnRKQH2IJXlmiaAOhzWzratIQOcjWY.jpg', 1, '2022-08-29 06:41:07', '2022-08-29 06:41:07');
INSERT INTO `gallery_images` VALUES (530, 83, NULL, 'gallery_image/83/9bQJYtwVnIf1mePrYbtpMMoBjwiRZT4434utWgXy.jpg', 1, '2022-08-29 06:41:07', '2022-08-29 06:41:07');
INSERT INTO `gallery_images` VALUES (531, 83, NULL, 'gallery_image/83/XMFHdkOBdmM1jJg8fhmBs8G11XM9JxiNnulaEnsg.jpg', 1, '2022-08-29 06:41:07', '2022-08-29 06:41:07');
INSERT INTO `gallery_images` VALUES (532, 83, NULL, 'gallery_image/83/v76Cwu9qOiKspLU6RSDpDFlLEe8hkYKQKoMdTL3R.jpg', 1, '2022-08-29 06:41:07', '2022-08-29 06:41:07');
INSERT INTO `gallery_images` VALUES (533, 84, NULL, 'gallery_image/84/b2zyOdHk1X6QHV7eU4VR0jaOl0c3B5xNTWi2wTlu.jpg', 1, '2022-08-29 06:43:10', '2022-08-29 06:43:10');
INSERT INTO `gallery_images` VALUES (534, 84, NULL, 'gallery_image/84/peSn8LOXkMpXSqgPjGxOPORIDwwYGiRnoJ8UVZPn.jpg', 1, '2022-08-29 06:43:10', '2022-08-29 06:43:10');
INSERT INTO `gallery_images` VALUES (535, 84, NULL, 'gallery_image/84/TFdUuwHIeLhaXC2EUsbRzPbDgtwcxj5obPq2Nt1P.jpg', 1, '2022-08-29 06:43:10', '2022-08-29 06:43:10');
INSERT INTO `gallery_images` VALUES (536, 85, NULL, 'gallery_image/85/vH9bJqKdizfp3Bex9kmEoDRc5mHyheyGtkl7O0CP.jpg', 1, '2022-08-29 06:45:17', '2022-08-29 06:45:17');
INSERT INTO `gallery_images` VALUES (537, 85, NULL, 'gallery_image/85/kfGNExIXZEZxEMSBx3mtFzylwC7AXhcYaStlUMlO.jpg', 1, '2022-08-29 06:45:17', '2022-08-29 06:45:17');
INSERT INTO `gallery_images` VALUES (538, 85, NULL, 'gallery_image/85/VgeKjBWOza9TkHf6BEApPsTtF0OkFJqoXLOAPI3L.jpg', 1, '2022-08-29 06:45:17', '2022-08-29 06:45:17');
INSERT INTO `gallery_images` VALUES (539, 86, NULL, 'gallery_image/86/mxYVboqojUCqGDyBvYDaOsX21dKpGy8ZHED253Uy.jpg', 1, '2022-08-29 06:47:43', '2022-08-29 06:47:43');
INSERT INTO `gallery_images` VALUES (540, 86, NULL, 'gallery_image/86/qzBx5Tirf9IPzLb6nMbrjnwhOLcL9qt4AejzHN2U.jpg', 1, '2022-08-29 06:47:43', '2022-08-29 06:47:43');
INSERT INTO `gallery_images` VALUES (541, 86, NULL, 'gallery_image/86/SFwqWqo1Sbs0bMMPnD8DsuytPVuc6nvBJJIofMnE.jpg', 1, '2022-08-29 06:47:43', '2022-08-29 06:47:43');
INSERT INTO `gallery_images` VALUES (542, 86, NULL, 'gallery_image/86/byjA2ueMrvIlDWNh0A707P7nQ2IECc7e11uWH7a4.jpg', 1, '2022-08-29 06:47:43', '2022-08-29 06:47:43');
INSERT INTO `gallery_images` VALUES (543, 86, NULL, 'gallery_image/86/nUd4usDlsZ20OsCZD7qblnI39KHRQYE7i3NTyytp.jpg', 1, '2022-08-29 06:47:43', '2022-08-29 06:47:43');
INSERT INTO `gallery_images` VALUES (544, 87, NULL, 'gallery_image/87/CR38gHtmpcv2yi4HvFDBx7i7NtNnhZYloB9SFe7e.jpg', 1, '2022-08-29 06:49:54', '2022-08-29 06:49:54');
INSERT INTO `gallery_images` VALUES (545, 87, NULL, 'gallery_image/87/LrfUNPeGW96J57yCTOVwcHOpkD0dj9p79Ozncwr7.jpg', 1, '2022-08-29 06:49:54', '2022-08-29 06:49:54');
INSERT INTO `gallery_images` VALUES (546, 87, NULL, 'gallery_image/87/rdbkMa8BBN39D4gLveKPgjgAVmCpZL2xlncfenI8.jpg', 1, '2022-08-29 06:49:54', '2022-08-29 06:49:54');
INSERT INTO `gallery_images` VALUES (547, 87, NULL, 'gallery_image/87/q47YP9mElIBPW9hX3bW5zYmBjedZ05EpGGJ1UnxC.jpg', 1, '2022-08-29 06:49:54', '2022-08-29 06:49:54');
INSERT INTO `gallery_images` VALUES (548, 88, NULL, 'gallery_image/88/h1qGxwcEUeGxwmQA5qBlQLJaQ5xHNWgLtBWp3tYj.jpg', 1, '2022-08-29 06:51:44', '2022-08-29 06:51:44');
INSERT INTO `gallery_images` VALUES (549, 88, NULL, 'gallery_image/88/Szr5dzC1ivvK45vtvndFOvTTWCHtTnNngykKiokX.jpg', 1, '2022-08-29 06:51:44', '2022-08-29 06:51:44');
INSERT INTO `gallery_images` VALUES (550, 88, NULL, 'gallery_image/88/oErAniAXtEVetPuZzMlbs9OT30l0B9AhWYpRPk1E.jpg', 1, '2022-08-29 06:51:44', '2022-08-29 06:51:44');
INSERT INTO `gallery_images` VALUES (551, 89, NULL, 'gallery_image/89/4e0orcBudvDvlYsRWU1n2HTuIJ0ij3arcCmQNn3T.jpg', 1, '2022-08-29 06:55:00', '2022-08-29 06:55:00');
INSERT INTO `gallery_images` VALUES (552, 89, NULL, 'gallery_image/89/hVJyv4xevKReTiVRx5OUM8yq6s4zw5tUmir28VEl.jpg', 1, '2022-08-29 06:55:00', '2022-08-29 06:55:00');
INSERT INTO `gallery_images` VALUES (553, 89, NULL, 'gallery_image/89/TYET3zbumy7QUsPp5N7rh6IADPqlkUtXZJ61xB1q.jpg', 1, '2022-08-29 06:55:00', '2022-08-29 06:55:00');
INSERT INTO `gallery_images` VALUES (554, 89, NULL, 'gallery_image/89/s9EsvgIo7UPx2KFWwFYX7ruBRxdQkFr6n1A55tZN.jpg', 1, '2022-08-29 06:55:00', '2022-08-29 06:55:00');
INSERT INTO `gallery_images` VALUES (555, 90, NULL, 'gallery_image/90/k4IceS6lXqYsLM4JFogZyLntYjsFDiFa8kSiu3vM.jpg', 1, '2022-08-29 06:56:28', '2022-08-29 06:56:28');
INSERT INTO `gallery_images` VALUES (556, 90, NULL, 'gallery_image/90/DouBz95ymwFk8FQWbqUPDuk9b6VBBCkRyDFI17Ax.jpg', 1, '2022-08-29 06:56:28', '2022-08-29 06:56:28');
INSERT INTO `gallery_images` VALUES (557, 90, NULL, 'gallery_image/90/Tb9JMuX3QnsTS365Lfz13qmTcIpEcLeEHHspGiLF.jpg', 1, '2022-08-29 06:56:28', '2022-08-29 06:56:28');
INSERT INTO `gallery_images` VALUES (558, 91, NULL, 'gallery_image/91/KtBjPTMHGJyCrbTZPDXdtG3bN5pBosRIyuihsbrw.jpg', 1, '2022-08-29 06:57:57', '2022-08-29 06:57:57');
INSERT INTO `gallery_images` VALUES (559, 91, NULL, 'gallery_image/91/soj52LBD13dCckWeFIPnGTvhqW6SEGdBIJ8hlV5M.jpg', 1, '2022-08-29 06:57:57', '2022-08-29 06:57:57');
INSERT INTO `gallery_images` VALUES (560, 91, NULL, 'gallery_image/91/86OSGqpzENPeS35GLsm5yB8YtzPkje4BkiZpPbM5.jpg', 1, '2022-08-29 06:57:57', '2022-08-29 06:57:57');
INSERT INTO `gallery_images` VALUES (561, 92, NULL, 'gallery_image/92/tYekQHqw2ev4jGEZiSMStxU8CUINkMOnLKZSySNR.jpg', 1, '2022-08-29 06:59:20', '2022-08-29 06:59:20');
INSERT INTO `gallery_images` VALUES (562, 92, NULL, 'gallery_image/92/4X4YEV64EzY7ZymvtCyXG2z8ocYHb9IgSw7AeguK.jpg', 1, '2022-08-29 06:59:20', '2022-08-29 06:59:20');
INSERT INTO `gallery_images` VALUES (563, 92, NULL, 'gallery_image/92/WnZ8t5uFMtxHCXHqq1qhGgnYbyaeXkGWS2tetTzN.jpg', 1, '2022-08-29 06:59:20', '2022-08-29 06:59:20');
INSERT INTO `gallery_images` VALUES (564, 92, NULL, 'gallery_image/92/0IPzeq13s0PfUugDNFq8RImDVL1z9wTeca0mzrJk.jpg', 1, '2022-08-29 06:59:20', '2022-08-29 06:59:20');
INSERT INTO `gallery_images` VALUES (565, 93, NULL, 'gallery_image/93/3Q2v7S6uYGPC7Pz28lgkS6yR2X7Q9IGPSXcR5pvq.jpg', 1, '2022-08-29 07:00:12', '2022-08-29 07:00:12');
INSERT INTO `gallery_images` VALUES (566, 93, NULL, 'gallery_image/93/ZInn2VX2cHiCxgwezftjIC1owGshnzQdPX2KQdMS.jpg', 1, '2022-08-29 07:00:12', '2022-08-29 07:00:12');
INSERT INTO `gallery_images` VALUES (567, 93, NULL, 'gallery_image/93/NWXm4xGYI7esB79NUaWE6ljOAmiTs0KQI2YMhMMn.jpg', 1, '2022-08-29 07:00:12', '2022-08-29 07:00:12');
INSERT INTO `gallery_images` VALUES (568, 94, NULL, 'gallery_image/94/TazfL2PGO9y3dAvjYzhtVtegtCyZdJyfklrZwui0.jpg', 1, '2022-08-29 07:04:07', '2022-08-29 07:04:07');
INSERT INTO `gallery_images` VALUES (569, 94, NULL, 'gallery_image/94/XLVv3pTofkFb9cYqa9GC3uGebp3K6us22I55KOdZ.jpg', 1, '2022-08-29 07:04:07', '2022-08-29 07:04:07');
INSERT INTO `gallery_images` VALUES (570, 94, NULL, 'gallery_image/94/BJH20x2eVTlKR5hwchcC6YidFTdKSeZkVj21iwkM.jpg', 1, '2022-08-29 07:04:07', '2022-08-29 07:04:07');
INSERT INTO `gallery_images` VALUES (571, 94, NULL, 'gallery_image/94/wMqMCt8NM43GnCVn9UpRTQeXrV39ZA5GR8D2e83F.jpg', 1, '2022-08-29 07:04:07', '2022-08-29 07:04:07');
INSERT INTO `gallery_images` VALUES (572, 94, NULL, 'gallery_image/94/EOWpgBM3gAeenhv5QEhj1zkpikqh4ww6fDFgJqxB.jpg', 1, '2022-08-29 07:04:07', '2022-08-29 07:04:07');
INSERT INTO `gallery_images` VALUES (573, 94, NULL, 'gallery_image/94/KzvyiaFsJaSVX1eedHpi5MMsmBiEhwVrVghT1ZEZ.jpg', 1, '2022-08-29 07:04:07', '2022-08-29 07:04:07');
INSERT INTO `gallery_images` VALUES (574, 95, NULL, 'gallery_image/95/AW2vRrllqSjMwFFiRKq7Iu7TyD1Tmu6olQnGb7eW.jpg', 1, '2022-08-29 07:05:42', '2022-08-29 07:05:42');
INSERT INTO `gallery_images` VALUES (575, 95, NULL, 'gallery_image/95/QUQ85mEEbPlg9QGUfBnDKkb7XGC1JJl8Tq1kX3D7.jpg', 1, '2022-08-29 07:05:42', '2022-08-29 07:05:42');
INSERT INTO `gallery_images` VALUES (576, 95, NULL, 'gallery_image/95/dc8qrMQzbOgAMmBVYjMJDG2Wh5CDNTB0FGspiwnF.jpg', 1, '2022-08-29 07:05:42', '2022-08-29 07:05:42');
INSERT INTO `gallery_images` VALUES (577, 95, NULL, 'gallery_image/95/TF1xYRl10rakVh8v1uG9wFc3M2HKhhLWZHQiAQji.jpg', 1, '2022-08-29 07:05:42', '2022-08-29 07:05:42');
INSERT INTO `gallery_images` VALUES (578, 95, NULL, 'gallery_image/95/he93MFIzyc4wDRe3eLUneF6JO68QTc5Cx4658rH3.jpg', 1, '2022-08-29 07:05:42', '2022-08-29 07:05:42');
INSERT INTO `gallery_images` VALUES (579, 95, NULL, 'gallery_image/95/F6LSHThjTmMynrZsuGNWqq1KUjTYBUZscOdFKdRZ.jpg', 1, '2022-08-29 07:05:42', '2022-08-29 07:05:42');
INSERT INTO `gallery_images` VALUES (580, 95, NULL, 'gallery_image/95/SP7lPQGfaUhYKkNR0U9Zspzqma8of0EvpX0fEzvU.jpg', 1, '2022-08-29 07:05:42', '2022-08-29 07:05:42');
INSERT INTO `gallery_images` VALUES (581, 95, NULL, 'gallery_image/95/DMMzDkREucPpZ8S4VlOYEbUp2FOgUZPMTW6SRpnR.jpg', 1, '2022-08-29 07:05:42', '2022-08-29 07:05:42');
INSERT INTO `gallery_images` VALUES (582, 95, NULL, 'gallery_image/95/DbpEBU2gmUu2oqVepjf7Kd44LKCTtDJBUupgupLg.jpg', 1, '2022-08-29 07:05:42', '2022-08-29 07:05:42');
INSERT INTO `gallery_images` VALUES (583, 95, NULL, 'gallery_image/95/8VsD3KYagQGpXvhi5eI20W5eEjAc8EkxcIEMpiN0.jpg', 1, '2022-08-29 07:06:20', '2022-08-29 07:06:20');
INSERT INTO `gallery_images` VALUES (584, 95, NULL, 'gallery_image/95/U6Ro8fy4D7pkAWGvfxfGYfbj4WTCkl9wYiYemQTb.jpg', 1, '2022-08-29 07:06:20', '2022-08-29 07:06:20');
INSERT INTO `gallery_images` VALUES (585, 95, NULL, 'gallery_image/95/D78ZFJWyJPrG5F6TpEPWviG0Ve08sS74aRgRXcGL.jpg', 1, '2022-08-29 07:06:20', '2022-08-29 07:06:20');
INSERT INTO `gallery_images` VALUES (586, 95, NULL, 'gallery_image/95/PIAIS4477wfZeVt8cLINgB94WVdhZsvWhotUJ34E.jpg', 1, '2022-08-29 07:06:20', '2022-08-29 07:06:20');
INSERT INTO `gallery_images` VALUES (587, 95, NULL, 'gallery_image/95/5MqptiDB8WGnGz88G8YDz7gjYSzdKZvmN5cgAnEH.jpg', 1, '2022-08-29 07:06:20', '2022-08-29 07:06:20');
INSERT INTO `gallery_images` VALUES (588, 95, NULL, 'gallery_image/95/LPOBtnyKmHx7z33LBR3AWAgO9pkouSFAnMwVv02D.jpg', 1, '2022-08-29 07:06:20', '2022-08-29 07:06:20');
INSERT INTO `gallery_images` VALUES (589, 95, NULL, 'gallery_image/95/mcTBpT0CpWHehuK0eTLGCPZpbM66dH84YevAfezO.jpg', 1, '2022-08-29 07:06:20', '2022-08-29 07:06:20');
INSERT INTO `gallery_images` VALUES (590, 95, NULL, 'gallery_image/95/cKyUOdqhpDn89RBxnQ6q5DUkcxlJzGJ9N8CIEPc1.jpg', 1, '2022-08-29 07:06:20', '2022-08-29 07:06:20');
INSERT INTO `gallery_images` VALUES (591, 95, NULL, 'gallery_image/95/L20GPqoFzF9A6uJvBuz8b0RJFcYb1JlsLiXa401C.jpg', 1, '2022-08-29 07:06:46', '2022-08-29 07:06:46');
INSERT INTO `gallery_images` VALUES (592, 95, NULL, 'gallery_image/95/qVutXwY7BJrRJeFwYepLsxIwgRol6oTRfPT8vjOt.jpg', 1, '2022-08-29 07:06:46', '2022-08-29 07:06:46');
INSERT INTO `gallery_images` VALUES (593, 95, NULL, 'gallery_image/95/83tWKEtOJRPIOUpjhiPqiF6xTHTTJKIpz3oq0lCQ.jpg', 1, '2022-08-29 07:06:46', '2022-08-29 07:06:46');
INSERT INTO `gallery_images` VALUES (594, 95, NULL, 'gallery_image/95/Rl4bxplTR0BGPzHlGbKiMio5Tk7xlWK36yIx3GHy.jpg', 1, '2022-08-29 07:06:46', '2022-08-29 07:06:46');
INSERT INTO `gallery_images` VALUES (595, 95, NULL, 'gallery_image/95/x3abIANftZuH1dkOsyfl61D8FOo2J9CZq87Lui6Y.jpg', 1, '2022-08-29 07:06:46', '2022-08-29 07:06:46');
INSERT INTO `gallery_images` VALUES (596, 95, NULL, 'gallery_image/95/sLzzBkNcM4BTB4YIqSLNOfNDUVTPKQIwLggzWIuR.jpg', 1, '2022-08-29 07:06:46', '2022-08-29 07:06:46');
INSERT INTO `gallery_images` VALUES (597, 95, NULL, 'gallery_image/95/7hZb3pRr6mIbDiYIu6bY9IeH6RqsQ09E4zs8IOwX.jpg', 1, '2022-08-29 07:06:46', '2022-08-29 07:06:46');
INSERT INTO `gallery_images` VALUES (598, 95, NULL, 'gallery_image/95/rhnzSLXNVjSxWxIO8y4PYf12qQf2En82aGxKmR3S.jpg', 1, '2022-08-29 07:06:46', '2022-08-29 07:06:46');
INSERT INTO `gallery_images` VALUES (599, 95, NULL, 'gallery_image/95/yVyeS1kp7hUcKD2hWmPQhOD080roriEUUHXICVaA.jpg', 1, '2022-08-29 07:07:05', '2022-08-29 07:07:05');
INSERT INTO `gallery_images` VALUES (600, 95, NULL, 'gallery_image/95/osDQ3E6trr66r97ONxx90gw6XfUYmuwm7lHOsfwT.jpg', 1, '2022-08-29 07:07:05', '2022-08-29 07:07:05');
INSERT INTO `gallery_images` VALUES (601, 95, NULL, 'gallery_image/95/1xLox5kRxFJsvoiTZMXz81QG96SBGqaVLGsHTz5g.jpg', 1, '2022-08-29 07:07:05', '2022-08-29 07:07:05');
INSERT INTO `gallery_images` VALUES (602, 95, NULL, 'gallery_image/95/WwGgABpKwp78JqzISRPzK429dW7hypg1mX15MSbF.jpg', 1, '2022-08-29 07:07:05', '2022-08-29 07:07:05');
INSERT INTO `gallery_images` VALUES (603, 95, NULL, 'gallery_image/95/4Kn5pwjeu6pQYUlEqNGCchSwSONRlpCvJqGdFMbH.jpg', 1, '2022-08-29 07:07:05', '2022-08-29 07:07:05');
INSERT INTO `gallery_images` VALUES (604, 95, NULL, 'gallery_image/95/A9sefaItNFSs63BXYXrL6eeumsFlNGzUbwaUpk9r.jpg', 1, '2022-08-29 07:07:05', '2022-08-29 07:07:05');
INSERT INTO `gallery_images` VALUES (605, 95, NULL, 'gallery_image/95/4lUrXK1gz972tAhvtgCKFUwAB7JFJXsImkl6GKlI.jpg', 1, '2022-08-29 07:07:05', '2022-08-29 07:07:05');
INSERT INTO `gallery_images` VALUES (606, 95, NULL, 'gallery_image/95/8DVqmJ5mOf82PzYjAOpPgCJ14X1ZGrFJ3KFUVxNM.jpg', 1, '2022-08-29 07:07:05', '2022-08-29 07:07:05');
INSERT INTO `gallery_images` VALUES (607, 95, NULL, 'gallery_image/95/B7GL61rZiCWdSS4LdurfZclegL4zi7puQgzV2x2J.jpg', 1, '2022-08-29 07:07:33', '2022-08-29 07:07:33');
INSERT INTO `gallery_images` VALUES (608, 95, NULL, 'gallery_image/95/Qmqvp3Clk9zOEy9izNOs710rPxRXXRtZji5HScxU.jpg', 1, '2022-08-29 07:07:33', '2022-08-29 07:07:33');
INSERT INTO `gallery_images` VALUES (609, 95, NULL, 'gallery_image/95/9x9GwcDqS9XZcosHJ0jzIv5D1BGt4TvXpCGB8E8c.jpg', 1, '2022-08-29 07:07:33', '2022-08-29 07:07:33');
INSERT INTO `gallery_images` VALUES (610, 95, NULL, 'gallery_image/95/KZJC4TWWhM806QppVCI35Wrr3jNSnMER0ThsXHGQ.jpg', 1, '2022-08-29 07:07:33', '2022-08-29 07:07:33');
INSERT INTO `gallery_images` VALUES (611, 95, NULL, 'gallery_image/95/wwV9wmQYyJMJRQWevaaDJhUKVyPyloE76VAmya44.jpg', 1, '2022-08-29 07:07:33', '2022-08-29 07:07:33');
INSERT INTO `gallery_images` VALUES (612, 95, NULL, 'gallery_image/95/SIuBx09m7tUdAFWmUBBJ1pGAdHfJQ8DFvtHejwWT.jpg', 1, '2022-08-29 07:07:33', '2022-08-29 07:07:33');
INSERT INTO `gallery_images` VALUES (613, 95, NULL, 'gallery_image/95/qvkOw893a8Z6ocwi5Ll44x7BKtkaUJIYkP5SN650.jpg', 1, '2022-08-29 07:07:33', '2022-08-29 07:07:33');
INSERT INTO `gallery_images` VALUES (614, 95, NULL, 'gallery_image/95/7L4HencuspTWFIi2asJpFwj4GPgjtlIzE5PB2KQX.jpg', 1, '2022-08-29 07:07:33', '2022-08-29 07:07:33');
INSERT INTO `gallery_images` VALUES (615, 95, NULL, 'gallery_image/95/G7rqCPOW3R1apT7PFfsBBs6V5PwblyLIdI3BDmki.jpg', 1, '2022-08-29 07:08:45', '2022-08-29 07:08:45');
INSERT INTO `gallery_images` VALUES (616, 95, NULL, 'gallery_image/95/jLwyYLOJqhARfmQi6D5QQ5qVgbF0OXtT7DCmnf8I.jpg', 1, '2022-08-29 07:08:45', '2022-08-29 07:08:45');
INSERT INTO `gallery_images` VALUES (617, 95, NULL, 'gallery_image/95/0nlOfoqAsDX6PShu2kEqmFdKv5HBYoPzyslokyjC.jpg', 1, '2022-08-29 07:08:45', '2022-08-29 07:08:45');
INSERT INTO `gallery_images` VALUES (618, 95, NULL, 'gallery_image/95/Swb5laUf3BvQ7XD4WuVAlTiknjY1J5koGZZs20Ln.jpg', 1, '2022-08-29 07:08:45', '2022-08-29 07:08:45');
INSERT INTO `gallery_images` VALUES (619, 95, NULL, 'gallery_image/95/MLjrVbXqT083n23bTc584z5zBeel5MjxwL9gxbwB.jpg', 1, '2022-08-29 07:08:45', '2022-08-29 07:08:45');
INSERT INTO `gallery_images` VALUES (620, 95, NULL, 'gallery_image/95/WOZc1R2DP2GmLKWt7p8pNxlO913HlsOGCHlbDdTD.jpg', 1, '2022-08-29 07:08:45', '2022-08-29 07:08:45');
INSERT INTO `gallery_images` VALUES (621, 95, NULL, 'gallery_image/95/BMuRR77L7poUvMSnLx2xFtdoX3nF2o2OMMg3noEN.jpg', 1, '2022-08-29 07:08:45', '2022-08-29 07:08:45');
INSERT INTO `gallery_images` VALUES (622, 95, NULL, 'gallery_image/95/WX0qe0aMc8QHzz12vyAXA2H4KGyPXv436rnqvFeA.jpg', 1, '2022-08-29 07:08:45', '2022-08-29 07:08:45');
INSERT INTO `gallery_images` VALUES (623, 96, NULL, 'gallery_image/96/pL7yWqTSNDBYSkUCSJGPnIvykysdFIAyndu47BDe.jpg', 1, '2022-08-29 07:09:46', '2022-08-29 07:09:46');
INSERT INTO `gallery_images` VALUES (624, 96, NULL, 'gallery_image/96/lYadMloCuCxPxLyu6NHZQ4S6rtI9ILZGLxah9jCW.jpg', 1, '2022-08-29 07:09:46', '2022-08-29 07:09:46');
INSERT INTO `gallery_images` VALUES (625, 96, NULL, 'gallery_image/96/kbR1Opv9QD3QbNbwE0welqhYW31GGKYc8SlQHdVg.jpg', 1, '2022-08-29 07:09:46', '2022-08-29 07:09:46');
INSERT INTO `gallery_images` VALUES (626, 96, NULL, 'gallery_image/96/1l79L7LlyWdC8SFcVWkrkHMdFkd370oYp5eWTSyo.jpg', 1, '2022-08-29 07:09:46', '2022-08-29 07:09:46');
INSERT INTO `gallery_images` VALUES (627, 96, NULL, 'gallery_image/96/cl1CxjREzoEFuq7OvZXyMoctjTZc59emRTTzrASb.jpg', 1, '2022-08-29 07:09:46', '2022-08-29 07:09:46');
INSERT INTO `gallery_images` VALUES (628, 96, NULL, 'gallery_image/96/thXFUm4222oZYb2UhooGZt1wwwPC5qRNSp6GabOf.jpg', 1, '2022-08-29 07:09:46', '2022-08-29 07:09:46');
INSERT INTO `gallery_images` VALUES (629, 96, NULL, 'gallery_image/96/6EK2AXbjCkMjIc71X4gFbX508m3na9MuEjmOlulz.jpg', 1, '2022-08-29 07:09:46', '2022-08-29 07:09:46');
INSERT INTO `gallery_images` VALUES (630, 97, NULL, 'gallery_image/97/GlivUG35Qon92Xz2EPi0GyzkolBx0Aw5IoEEjzFy.jpg', 1, '2022-08-29 07:10:42', '2022-08-29 07:10:42');
INSERT INTO `gallery_images` VALUES (631, 97, NULL, 'gallery_image/97/wPftblArB9uXiQ1gg7hGLB4sbOjvoY5YXBGQ4nB7.jpg', 1, '2022-08-29 07:10:42', '2022-08-29 07:10:42');
INSERT INTO `gallery_images` VALUES (632, 97, NULL, 'gallery_image/97/G1a81A94m4h026Tcqs2Cd3f40Hw0UMO5NcOXFy0i.jpg', 1, '2022-08-29 07:10:42', '2022-08-29 07:10:42');
INSERT INTO `gallery_images` VALUES (633, 98, NULL, 'gallery_image/98/7HgLMHgtqOVNBHGrxxUqpNDIGFxV5pIIdYhIbJ1N.jpg', 1, '2022-08-29 07:11:25', '2022-08-29 07:11:25');
INSERT INTO `gallery_images` VALUES (634, 98, NULL, 'gallery_image/98/sqWCpXA3N90gih3X2rsradd8CtHl6SWP4YJ773CT.jpg', 1, '2022-08-29 07:11:25', '2022-08-29 07:11:25');
INSERT INTO `gallery_images` VALUES (635, 98, NULL, 'gallery_image/98/nKNRUaoirVyZfJnGpihAvcRByPuDLq8ZH352ibhk.jpg', 1, '2022-08-29 07:11:25', '2022-08-29 07:11:25');
INSERT INTO `gallery_images` VALUES (636, 99, NULL, 'gallery_image/99/zVUiZiHRkhS7guebLLtN0ZnmyKdrufDpq7DE1icC.jpg', 1, '2022-08-29 07:12:27', '2022-08-29 07:12:27');
INSERT INTO `gallery_images` VALUES (637, 99, NULL, 'gallery_image/99/YvEFk3AJPvYvdoFNSHj7RJFpQcfcFLikVRlExnaH.jpg', 1, '2022-08-29 07:12:27', '2022-08-29 07:12:27');
INSERT INTO `gallery_images` VALUES (638, 99, NULL, 'gallery_image/99/qLral9dAHd9m502Q8gm4vjJjXRNJl3SySUIUypQ9.jpg', 1, '2022-08-29 07:12:27', '2022-08-29 07:12:27');
INSERT INTO `gallery_images` VALUES (639, 99, NULL, 'gallery_image/99/7qtHJ3oWF83EScc1R5cSzvPbv8YrHaihECtn3Ggt.jpg', 1, '2022-08-29 07:12:27', '2022-08-29 07:12:27');
INSERT INTO `gallery_images` VALUES (640, 100, NULL, 'gallery_image/100/2hViEZ7HmSUZgXvn2TbDjft5722DGuWrdCoOaUGd.jpg', 1, '2022-08-29 07:15:02', '2022-08-29 07:15:02');
INSERT INTO `gallery_images` VALUES (641, 100, NULL, 'gallery_image/100/LbeKQIMuAQISHDocjtILaPChsEhe6mobeNBeCMPE.jpg', 1, '2022-08-29 07:15:02', '2022-08-29 07:15:02');
INSERT INTO `gallery_images` VALUES (642, 100, NULL, 'gallery_image/100/jm7v8T2A5taoT9nzJF7FMOmvZ7LZJoD4YqR2sri3.jpg', 1, '2022-08-29 07:15:02', '2022-08-29 07:15:02');
INSERT INTO `gallery_images` VALUES (643, 100, NULL, 'gallery_image/100/zft1uZVj2rQqozXrB9Ds1QsEGNOJvvqsfenzhZyK.jpg', 1, '2022-08-29 07:15:02', '2022-08-29 07:15:02');
INSERT INTO `gallery_images` VALUES (644, 101, NULL, 'gallery_image/101/7Uz1jkF5mPSJPQxDfkNbDap8QULGotQKKY5o918x.jpg', 1, '2022-08-29 07:16:04', '2022-08-29 07:16:04');
INSERT INTO `gallery_images` VALUES (645, 101, NULL, 'gallery_image/101/PKtaZd7F2PKNRz85UmxGQ2r68HOQW6f0AjtSV6Ex.jpg', 1, '2022-08-29 07:16:04', '2022-08-29 07:16:04');
INSERT INTO `gallery_images` VALUES (646, 101, NULL, 'gallery_image/101/6AKosqxAkgYJYl3rAdXQWPT5TynFHKhWtgXsbYhn.jpg', 1, '2022-08-29 07:16:04', '2022-08-29 07:16:04');
INSERT INTO `gallery_images` VALUES (647, 101, NULL, 'gallery_image/101/NVZFdlT9esyVjjDCgTROddArnsrhfVGKtkiOoEV1.jpg', 1, '2022-08-29 07:16:04', '2022-08-29 07:16:04');
INSERT INTO `gallery_images` VALUES (648, 101, NULL, 'gallery_image/101/K2ISNUkS5lgylQXPymJRSZ3LkLIPxL2xAeOQqmSB.jpg', 1, '2022-08-29 07:16:04', '2022-08-29 07:16:04');
INSERT INTO `gallery_images` VALUES (649, 101, NULL, 'gallery_image/101/t36L5tILEWCt5v6tMocwI6e74CcFEfx1rTeFouby.jpg', 1, '2022-08-29 07:16:04', '2022-08-29 07:16:04');
INSERT INTO `gallery_images` VALUES (650, 101, NULL, 'gallery_image/101/xwqmNRY90C8cmqz6so6afBeKu3ZObwTWNapPzPfX.jpg', 1, '2022-08-29 07:16:04', '2022-08-29 07:16:04');
INSERT INTO `gallery_images` VALUES (651, 101, NULL, 'gallery_image/101/dQmNxUZhWazjq3ghWkffmOEaJVOPZu7VSxQm6wtE.jpg', 1, '2022-08-29 07:16:04', '2022-08-29 07:16:04');
INSERT INTO `gallery_images` VALUES (652, 102, NULL, 'gallery_image/102/PRh8PcexVf7qGpmCO5DGbS4JpYYajeAjhVKj1yLZ.jpg', 1, '2022-08-29 07:16:58', '2022-08-29 07:16:58');
INSERT INTO `gallery_images` VALUES (653, 102, NULL, 'gallery_image/102/6zHq7SQluISs00UIfiP7d9gyxz8vCINFMCG3yGW7.jpg', 1, '2022-08-29 07:16:58', '2022-08-29 07:16:58');
INSERT INTO `gallery_images` VALUES (654, 102, NULL, 'gallery_image/102/nHFG7gONnWDrKILm46JE3gSm9jukR7rNXclZr3az.jpg', 1, '2022-08-29 07:16:58', '2022-08-29 07:16:58');
INSERT INTO `gallery_images` VALUES (655, 102, NULL, 'gallery_image/102/DwIVouGwMBOidp0VICvRfzYu52RJ11rIkAe5IVAf.jpg', 1, '2022-08-29 07:16:58', '2022-08-29 07:16:58');
INSERT INTO `gallery_images` VALUES (656, 102, NULL, 'gallery_image/102/PlWZv1ZZ71FOhU5rdfweJjkyjBf8bhdksOGeRS7H.jpg', 1, '2022-08-29 07:16:58', '2022-08-29 07:16:58');
INSERT INTO `gallery_images` VALUES (657, 103, NULL, 'gallery_image/103/XCoG9OB1A282cWqYrYSWqznsFuf6T68C3EkFho0s.jpg', 1, '2022-08-29 07:17:52', '2022-08-29 07:17:52');
INSERT INTO `gallery_images` VALUES (658, 103, NULL, 'gallery_image/103/RQaL78G691nMIC27IZCcWysFXTYwzKmMaolaxRiJ.jpg', 1, '2022-08-29 07:17:52', '2022-08-29 07:17:52');
INSERT INTO `gallery_images` VALUES (659, 103, NULL, 'gallery_image/103/FLxyz0nKPd4RCxcr2mqqOC85aLXhAgDXQKnQTiMn.jpg', 1, '2022-08-29 07:17:52', '2022-08-29 07:17:52');
INSERT INTO `gallery_images` VALUES (660, 103, NULL, 'gallery_image/103/fvhvDOe97n2esUi2AH8f8JBt4XCuWePNO1Q3hd0R.jpg', 1, '2022-08-29 07:17:52', '2022-08-29 07:17:52');
INSERT INTO `gallery_images` VALUES (661, 104, NULL, 'gallery_image/104/NULk6kFTObXDN42av79ImjS6n82xPtNcO5RqA52q.jpg', 1, '2022-08-29 07:18:59', '2022-08-29 07:18:59');
INSERT INTO `gallery_images` VALUES (662, 104, NULL, 'gallery_image/104/DJA3GeT6dnHQyaNeVIkTyP17U3skBT7g6HmbvLAt.jpg', 1, '2022-08-29 07:18:59', '2022-08-29 07:18:59');
INSERT INTO `gallery_images` VALUES (663, 104, NULL, 'gallery_image/104/lZNqRTTP94I0kSq6ibw6YKay6bPM0B8yMYZTMyfy.jpg', 1, '2022-08-29 07:18:59', '2022-08-29 07:18:59');
INSERT INTO `gallery_images` VALUES (664, 104, NULL, 'gallery_image/104/M2ouGURt89bBToRuCp8z9Y3HR3efFeuJjUUDj44H.jpg', 1, '2022-08-29 07:18:59', '2022-08-29 07:18:59');
INSERT INTO `gallery_images` VALUES (665, 104, NULL, 'gallery_image/104/uk0jTmpedMpeopP8rYXolKSNgMpfvcL3N5TSoUpb.jpg', 1, '2022-08-29 07:18:59', '2022-08-29 07:18:59');
INSERT INTO `gallery_images` VALUES (666, 105, NULL, 'gallery_image/105/swb3kzerKjFaz1L8WxwW55yNPu7bzCtGoaqTkKsr.jpg', 1, '2022-08-29 07:19:48', '2022-08-29 07:19:48');
INSERT INTO `gallery_images` VALUES (667, 105, NULL, 'gallery_image/105/S9CsUaGTH6a5D09n9klQNXPxp2BRiqtvUQSsaaou.jpg', 1, '2022-08-29 07:19:48', '2022-08-29 07:19:48');
INSERT INTO `gallery_images` VALUES (668, 105, NULL, 'gallery_image/105/Q9pJtFDknj21BdVcpOiih4Sbfc0XfmGSAggY4dKN.jpg', 1, '2022-08-29 07:19:48', '2022-08-29 07:19:48');
INSERT INTO `gallery_images` VALUES (669, 105, NULL, 'gallery_image/105/400ajqg9qViUtAiHwl2huZaH3au3mBIkyKjc5LjC.jpg', 1, '2022-08-29 07:19:48', '2022-08-29 07:19:48');
INSERT INTO `gallery_images` VALUES (670, 106, NULL, 'gallery_image/106/yua0t94EQsj4k9DwiCZQDamvHOAJeDR3ZE9TWS83.jpg', 1, '2022-08-29 07:20:42', '2022-08-29 07:20:42');
INSERT INTO `gallery_images` VALUES (671, 106, NULL, 'gallery_image/106/fcj9cIjhnsfEgfI9fI3zwAYQKvVqfTrqpgUIVeDa.jpg', 1, '2022-08-29 07:20:42', '2022-08-29 07:20:42');
INSERT INTO `gallery_images` VALUES (672, 106, NULL, 'gallery_image/106/UwYA4RLdsah5kCGFK80UzbnkC03a2eWrn8NM9lpy.jpg', 1, '2022-08-29 07:20:42', '2022-08-29 07:20:42');
INSERT INTO `gallery_images` VALUES (673, 106, NULL, 'gallery_image/106/pI2DNLdBTbeccNX35EHhKW4li032Ml6JAQl1H5H1.jpg', 1, '2022-08-29 07:20:42', '2022-08-29 07:20:42');
INSERT INTO `gallery_images` VALUES (674, 107, NULL, 'gallery_image/107/vAPZ5hBGjmjig2dkWjZEl2b4n5f8iF8vs0RIXiOC.jpg', 1, '2022-08-29 07:21:35', '2022-08-29 07:21:35');
INSERT INTO `gallery_images` VALUES (675, 107, NULL, 'gallery_image/107/yYraZDkhmfFQFgiKrpBQfUkIeVbsT3D0iXWUSjiC.jpg', 1, '2022-08-29 07:21:35', '2022-08-29 07:21:35');
INSERT INTO `gallery_images` VALUES (676, 107, NULL, 'gallery_image/107/bzU4JAeVJBcnNGdjJMRgVJeBJSItU7tgEByQRVPI.jpg', 1, '2022-08-29 07:21:35', '2022-08-29 07:21:35');
INSERT INTO `gallery_images` VALUES (677, 107, NULL, 'gallery_image/107/fWQ2HdSrsgJJeo0anXCJFre1xtF2nfcMOAF4Wj3X.jpg', 1, '2022-08-29 07:21:35', '2022-08-29 07:21:35');
INSERT INTO `gallery_images` VALUES (678, 107, NULL, 'gallery_image/107/kE0z7065SUzRAt6vEt8z0Zgs4owCcPzyuIuBJtcb.jpg', 1, '2022-08-29 07:21:35', '2022-08-29 07:21:35');
INSERT INTO `gallery_images` VALUES (679, 107, NULL, 'gallery_image/107/4HxoaVKcqgZpXykxBfdWy5yvLzGNr9aeLQv4v1Ep.jpg', 1, '2022-08-29 07:21:35', '2022-08-29 07:21:35');
INSERT INTO `gallery_images` VALUES (680, 107, NULL, 'gallery_image/107/Z7yLyWvZmVoS8heUFwEMmExQpc0WnAWiEJtH2ziQ.jpg', 1, '2022-08-29 07:21:35', '2022-08-29 07:21:35');
INSERT INTO `gallery_images` VALUES (681, 107, NULL, 'gallery_image/107/7qAf9fWDMzkMqMd8adpR14jUQ8v9vEiw8jsqTq9J.jpg', 1, '2022-08-29 07:21:35', '2022-08-29 07:21:35');
INSERT INTO `gallery_images` VALUES (682, 107, NULL, 'gallery_image/107/sF5eqPCO3KecqiHKoCPysPKy7AAOT6muNlDhFC8U.jpg', 1, '2022-08-29 07:21:35', '2022-08-29 07:21:35');
INSERT INTO `gallery_images` VALUES (683, 107, NULL, 'gallery_image/107/9mINFRaqiFpbvVXlrs5kNSvEEUa6Cl6KQaHvjX2z.jpg', 1, '2022-08-29 07:21:35', '2022-08-29 07:21:35');
INSERT INTO `gallery_images` VALUES (684, 107, NULL, 'gallery_image/107/WVYtVKcJmDB3fNSxkqhY9KZgg8OyDZVAhEhnxxD0.jpg', 1, '2022-08-29 07:21:35', '2022-08-29 07:21:35');
INSERT INTO `gallery_images` VALUES (685, 107, NULL, 'gallery_image/107/HPB03orrDbu7MVRFa8qug30KEFCx0eVBfvNl1K1J.jpg', 1, '2022-08-29 07:21:35', '2022-08-29 07:21:35');
INSERT INTO `gallery_images` VALUES (686, 107, NULL, 'gallery_image/107/r0a9poQFd54bJ8I7buTSc7OEY3HLuPLy1YnDdjZR.jpg', 1, '2022-08-29 07:21:35', '2022-08-29 07:21:35');
INSERT INTO `gallery_images` VALUES (687, 108, NULL, 'gallery_image/108/u2hQ6n4KEE4etSynx2pemOcJELZQqyTSsBUtStho.jpg', 1, '2022-08-29 07:23:17', '2022-08-29 07:23:17');
INSERT INTO `gallery_images` VALUES (688, 108, NULL, 'gallery_image/108/2lVt8MNvaByJAdtoGSAJUfiv0pQEtT5tGmnhlsuY.jpg', 1, '2022-08-29 07:23:17', '2022-08-29 07:23:17');
INSERT INTO `gallery_images` VALUES (689, 109, NULL, 'gallery_image/109/tUpkty62SoAqV1yabKgjy0PYdj4zl68CjbHIHzCT.jpg', 1, '2022-08-29 07:23:51', '2022-08-29 07:23:51');
INSERT INTO `gallery_images` VALUES (690, 109, NULL, 'gallery_image/109/oGGtcMRpM7Pb0vN9TX5RqArIewWVKp4D93VUqq9f.jpg', 1, '2022-08-29 07:23:51', '2022-08-29 07:23:51');
INSERT INTO `gallery_images` VALUES (691, 109, NULL, 'gallery_image/109/OQBjyqc48mi7MFWe6zTlQVS6D7pDn2gWTVx8RbqQ.jpg', 1, '2022-08-29 07:23:51', '2022-08-29 07:23:51');
INSERT INTO `gallery_images` VALUES (692, 110, NULL, 'gallery_image/110/6BJWBhOtq5TIsIeXalmVtFvdMate0neQtzdKgxQ9.jpg', 1, '2022-08-29 07:24:38', '2022-08-29 07:24:38');
INSERT INTO `gallery_images` VALUES (693, 110, NULL, 'gallery_image/110/Hux4ERY4kTEvJlMZ5x5Vc0KD2dkFOyTVALt0YC8r.jpg', 1, '2022-08-29 07:24:38', '2022-08-29 07:24:38');
INSERT INTO `gallery_images` VALUES (694, 110, NULL, 'gallery_image/110/W2qpY8YsoWSQpNW3XdLRnt70OSYAUnCfhqQuRXL0.jpg', 1, '2022-08-29 07:24:38', '2022-08-29 07:24:38');
INSERT INTO `gallery_images` VALUES (695, 111, NULL, 'gallery_image/111/UPTKCGgZNblqZDpLByDYHz76Bf5A2AHb0eZ9tgwv.jpg', 1, '2022-08-29 07:25:30', '2022-08-29 07:25:30');
INSERT INTO `gallery_images` VALUES (696, 111, NULL, 'gallery_image/111/biZ64HmUm45UTPoHeH7gu5lGy5YNqvh1SYZV7wQ5.jpg', 1, '2022-08-29 07:25:30', '2022-08-29 07:25:30');
INSERT INTO `gallery_images` VALUES (697, 112, NULL, 'gallery_image/112/lQlnwEUc5t7Do0eVZc6UOGzohC5j15LLfFTHml6X.jpg', 1, '2022-08-29 07:26:17', '2022-08-29 07:26:17');
INSERT INTO `gallery_images` VALUES (698, 112, NULL, 'gallery_image/112/v3qqggW4Bu5n4J6IUjQUsYZqePBDsVq7GFzR88mX.jpg', 1, '2022-08-29 07:26:17', '2022-08-29 07:26:17');
INSERT INTO `gallery_images` VALUES (699, 112, NULL, 'gallery_image/112/OeLajJQWhNNPDbsJv1xOyuCBr9dNHVoZIOu8C6qv.jpg', 1, '2022-08-29 07:26:17', '2022-08-29 07:26:17');
INSERT INTO `gallery_images` VALUES (700, 112, NULL, 'gallery_image/112/87EQggDufPWdQbJ2znvK90ZDqDmwrYYXwxCLMXeD.jpg', 1, '2022-08-29 07:26:17', '2022-08-29 07:26:17');
INSERT INTO `gallery_images` VALUES (701, 113, NULL, 'gallery_image/113/w9A223kKACQGOKwKHBdCfcsyJ7OL6kUofNY61mi1.jpg', 1, '2022-08-29 07:26:59', '2022-08-29 07:26:59');
INSERT INTO `gallery_images` VALUES (702, 113, NULL, 'gallery_image/113/QOHxUHhmcLUXX1oekWVzcSFg1r0hgXrdVgrYaY8P.jpg', 1, '2022-08-29 07:26:59', '2022-08-29 07:26:59');
INSERT INTO `gallery_images` VALUES (703, 114, NULL, 'gallery_image/114/Mjxt52EpjelGcfHlTZcSyeukNTnKP4uxnFKFnr8X.jpg', 1, '2022-08-29 07:33:50', '2022-08-29 07:33:50');
INSERT INTO `gallery_images` VALUES (704, 114, NULL, 'gallery_image/114/6u0hso6kyJqNBbc8mfGlDPrwjGh4zOQTe4WpYJCC.jpg', 1, '2022-08-29 07:33:50', '2022-08-29 07:33:50');
INSERT INTO `gallery_images` VALUES (705, 114, NULL, 'gallery_image/114/6Yr1aQ2S5qjHbuRH1AzvWUdykQb7bSmyMcUcu9Kk.jpg', 1, '2022-08-29 07:33:50', '2022-08-29 07:33:50');
INSERT INTO `gallery_images` VALUES (706, 115, NULL, 'gallery_image/115/IAkuPRoG73rgA45XZqZFHgr2IrZQREzyVT8rLx0k.jpg', 1, '2022-08-29 07:35:02', '2022-08-29 07:35:02');
INSERT INTO `gallery_images` VALUES (707, 116, NULL, 'gallery_image/116/oBbEXiCRo7RWgvm8IRLCjzAwyB6kXP6VkgC2A6SO.jpg', 1, '2022-08-29 07:36:28', '2022-08-29 07:36:28');
INSERT INTO `gallery_images` VALUES (708, 116, NULL, 'gallery_image/116/6Z8dznhWOFSd42YhlWNl4UMhzKXFvZONt9Kwzc84.jpg', 1, '2022-08-29 07:36:28', '2022-08-29 07:36:28');
INSERT INTO `gallery_images` VALUES (709, 116, NULL, 'gallery_image/116/jic88MDtyWzW256m0kvGnkiwhjYGS5OHESwp7qAd.jpg', 1, '2022-08-29 07:36:28', '2022-08-29 07:36:28');
INSERT INTO `gallery_images` VALUES (710, 116, NULL, 'gallery_image/116/D0gXrVLsoI9AI1QQKXVXNjC3Xtmmpyef92wa7j9m.jpg', 1, '2022-08-29 07:36:28', '2022-08-29 07:36:28');
INSERT INTO `gallery_images` VALUES (711, 116, NULL, 'gallery_image/116/MUxypyU8ETkjxaVlOtDNHEiagvctrPmHhWtGb0bz.jpg', 1, '2022-08-29 07:36:28', '2022-08-29 07:36:28');
INSERT INTO `gallery_images` VALUES (712, 116, NULL, 'gallery_image/116/9buFZBdlwViiT9uL6Q6veewI4rDsf7MgoTvwi3PD.jpg', 1, '2022-08-29 07:36:28', '2022-08-29 07:36:28');
INSERT INTO `gallery_images` VALUES (713, 116, NULL, 'gallery_image/116/N7ZCTK57dZPfWWdHMW2WPxt3jXavNasPcZdg8BP3.jpg', 1, '2022-08-29 07:36:28', '2022-08-29 07:36:28');
INSERT INTO `gallery_images` VALUES (714, 116, NULL, 'gallery_image/116/rWptmc9HEHqi9DqkVOjn2CozNM7i7TtP5tlDMd85.jpg', 1, '2022-08-29 07:36:28', '2022-08-29 07:36:28');
INSERT INTO `gallery_images` VALUES (715, 116, NULL, 'gallery_image/116/qYwKCXJup7RlXIh4DO3flXngD1JT0jUDDgr0J7PN.jpg', 1, '2022-08-29 07:36:28', '2022-08-29 07:36:28');
INSERT INTO `gallery_images` VALUES (716, 116, NULL, 'gallery_image/116/1mVww9s4lW2lWf8pabuHXDN5Bs0r6LOIBZlMFkZi.jpg', 1, '2022-08-29 07:36:28', '2022-08-29 07:36:28');
INSERT INTO `gallery_images` VALUES (717, 116, NULL, 'gallery_image/116/fVoIggUbqjpJQBXE72GxWO27wsEDLFRPvGgtaNtc.jpg', 1, '2022-08-29 07:36:28', '2022-08-29 07:36:28');
INSERT INTO `gallery_images` VALUES (718, 117, NULL, 'gallery_image/117/6onQIvEs7dtaLmAJ7ErzJDph3aQDptIHvck1KzV4.jpg', 1, '2022-08-29 07:37:46', '2022-08-29 07:37:46');
INSERT INTO `gallery_images` VALUES (719, 117, NULL, 'gallery_image/117/mgIEtsqioPqht1Bxp2IPukl32mX5kn7RDf6t6uXZ.jpg', 1, '2022-08-29 07:37:46', '2022-08-29 07:37:46');
INSERT INTO `gallery_images` VALUES (720, 117, NULL, 'gallery_image/117/nZxn20FTKUIhOf0KjbUN1fiMn6wkQhWjtZ6G4FSE.jpg', 1, '2022-08-29 07:37:46', '2022-08-29 07:37:46');
INSERT INTO `gallery_images` VALUES (721, 117, NULL, 'gallery_image/117/XrK0Rh2FsSPbk25EryjUOQiPUo6q5S4YQQWID5ZT.jpg', 1, '2022-08-29 07:37:46', '2022-08-29 07:37:46');
INSERT INTO `gallery_images` VALUES (722, 117, NULL, 'gallery_image/117/a1fVqi89mPBoU4tOIGWSVy8Wmj19fSr4eRUPw4gu.jpg', 1, '2022-08-29 07:37:46', '2022-08-29 07:37:46');
INSERT INTO `gallery_images` VALUES (723, 117, NULL, 'gallery_image/117/0dJGUP44rS45XPgm1K5VavcLDm8m2G3u9JoR9PK2.jpg', 1, '2022-08-29 07:37:46', '2022-08-29 07:37:46');
INSERT INTO `gallery_images` VALUES (724, 117, NULL, 'gallery_image/117/DKPYldbDJ3vG9wfYuGx7oQF67lG7PP2LQLpmJuU3.jpg', 1, '2022-08-29 07:37:46', '2022-08-29 07:37:46');
INSERT INTO `gallery_images` VALUES (725, 117, NULL, 'gallery_image/117/fa1bHLJ5bmaYO99zzrnkeoy7MDYkc3oA2pNVahyc.jpg', 1, '2022-08-29 07:37:46', '2022-08-29 07:37:46');
INSERT INTO `gallery_images` VALUES (726, 117, NULL, 'gallery_image/117/atIjXTszFU5iDqUuuBAufdu6O19vdGzR6iDVGEjC.jpg', 1, '2022-08-29 07:37:46', '2022-08-29 07:37:46');
INSERT INTO `gallery_images` VALUES (727, 118, NULL, 'gallery_image/118/gJJEyAeXcOQ8n4QqlncydkSfdUlLiC8bBpnctYFU.jpg', 1, '2022-08-29 07:38:52', '2022-08-29 07:38:52');
INSERT INTO `gallery_images` VALUES (728, 118, NULL, 'gallery_image/118/zxWhQI5Y0WgDHHrn3RlvwsxRvfehLAhukGulAq6C.jpg', 1, '2022-08-29 07:38:52', '2022-08-29 07:38:52');
INSERT INTO `gallery_images` VALUES (729, 118, NULL, 'gallery_image/118/WIKWQQ9UADFvYgEoF4Std8ys4JGqA4FAY7nKcd4U.jpg', 1, '2022-08-29 07:38:52', '2022-08-29 07:38:52');
INSERT INTO `gallery_images` VALUES (730, 118, NULL, 'gallery_image/118/eCWFIM5eo909TotrhcFMOzwWPJbkqyIMyz4Y3ZkM.jpg', 1, '2022-08-29 07:38:52', '2022-08-29 07:38:52');
INSERT INTO `gallery_images` VALUES (731, 118, NULL, 'gallery_image/118/yCDH5i9UNuzBEC4x97J7XOflG8aVCqKREwcEkmvz.jpg', 1, '2022-08-29 07:38:52', '2022-08-29 07:38:52');
INSERT INTO `gallery_images` VALUES (732, 118, NULL, 'gallery_image/118/QYzShbUqOdzuJFyyCypy8kOhknsS9v8xGHN16L7Z.jpg', 1, '2022-08-29 07:39:10', '2022-08-29 07:39:10');
INSERT INTO `gallery_images` VALUES (733, 118, NULL, 'gallery_image/118/aZxHUKcWbuN4fe7FaWiLfrbvbrq7FXkKbPXKEAZW.jpg', 1, '2022-08-29 07:39:10', '2022-08-29 07:39:10');
INSERT INTO `gallery_images` VALUES (734, 118, NULL, 'gallery_image/118/Ngo9QJbDV7HbHR2OOTeVg1vNv2bV6ypghPwQf0GN.jpg', 1, '2022-08-29 07:39:10', '2022-08-29 07:39:10');
INSERT INTO `gallery_images` VALUES (735, 118, NULL, 'gallery_image/118/r6DZNEH87efMIlu5aUe2oLUtJNv7q1vsCaKXCjFp.jpg', 1, '2022-08-29 07:39:10', '2022-08-29 07:39:10');
INSERT INTO `gallery_images` VALUES (736, 118, NULL, 'gallery_image/118/wCPmBuHxtfeaxPJ98SkG0CcKKWFGyEUPzfV7eWrx.jpg', 1, '2022-08-29 07:39:10', '2022-08-29 07:39:10');
INSERT INTO `gallery_images` VALUES (737, 118, NULL, 'gallery_image/118/ccQdy3lqr9M1ZKnVQxOta4onoCNBAQhPLxVhPrOL.jpg', 1, '2022-08-29 07:39:10', '2022-08-29 07:39:10');
INSERT INTO `gallery_images` VALUES (738, 118, NULL, 'gallery_image/118/0t4L8UokEnJPBp6Na0WgSCmsRTZ3h0CWObgHNfnW.jpg', 1, '2022-08-29 07:39:10', '2022-08-29 07:39:10');
INSERT INTO `gallery_images` VALUES (739, 118, NULL, 'gallery_image/118/ANMLZsgwF8JwVvFuWhVrJ9Bdnh0hIoXPjkSugUJK.jpg', 1, '2022-08-29 07:39:10', '2022-08-29 07:39:10');
INSERT INTO `gallery_images` VALUES (740, 119, NULL, 'gallery_image/119/GFLNm5M7hy9Pq8KYeB3HXUSlxRykZjjVWBGhJPoI.jpg', 1, '2022-08-29 07:40:20', '2022-08-29 07:40:20');
INSERT INTO `gallery_images` VALUES (741, 119, NULL, 'gallery_image/119/FzjGlu5uXXiS2TAVZLXvnTywpCOMS2In5CqpQHAr.jpg', 1, '2022-08-29 07:40:20', '2022-08-29 07:40:20');
INSERT INTO `gallery_images` VALUES (742, 120, NULL, 'gallery_image/120/ghix6kB2euDyt68xsH7932PpxLnWRDI6Q5tSJcrN.jpg', 1, '2022-08-29 07:41:19', '2022-08-29 07:41:19');
INSERT INTO `gallery_images` VALUES (743, 120, NULL, 'gallery_image/120/xNqkdcxW3QtZuDe3TWWAJsWDlt9KgEmLvW2KGWxA.jpg', 1, '2022-08-29 07:41:19', '2022-08-29 07:41:19');
INSERT INTO `gallery_images` VALUES (744, 120, NULL, 'gallery_image/120/Y8ucOm2ndv0yLMGsRLfw34NulOQteiWKFAsLS1NU.jpg', 1, '2022-08-29 07:41:19', '2022-08-29 07:41:19');
INSERT INTO `gallery_images` VALUES (745, 121, NULL, 'gallery_image/121/dc9q6hWubUH9rLSxasdMn7Umcm9MyVDy23asi14O.jpg', 1, '2022-08-29 07:42:26', '2022-08-29 07:42:26');
INSERT INTO `gallery_images` VALUES (746, 121, NULL, 'gallery_image/121/u7vlBVeFRmn9rx8rXdvE5agvyonSZZzNuSRxUvqd.jpg', 1, '2022-08-29 07:42:26', '2022-08-29 07:42:26');
INSERT INTO `gallery_images` VALUES (747, 121, NULL, 'gallery_image/121/2gvegsM0xYlijCk2L5UEX7PsruBa60awuTAlDTGX.jpg', 1, '2022-08-29 07:42:26', '2022-08-29 07:42:26');
INSERT INTO `gallery_images` VALUES (748, 121, NULL, 'gallery_image/121/RNFA2Yn0UJCdAVzuP3ERYFY47Wvlh3wzUueO9MXA.jpg', 1, '2022-08-29 07:42:26', '2022-08-29 07:42:26');
INSERT INTO `gallery_images` VALUES (749, 121, NULL, 'gallery_image/121/qUeLsZ6SXdcNi8UnrwJnKnbj6PdHyyhBTv6bNNA9.jpg', 1, '2022-08-29 07:42:26', '2022-08-29 07:42:26');
INSERT INTO `gallery_images` VALUES (750, 121, NULL, 'gallery_image/121/BPeZsVtavID5gyqVb6BHNCALBatD0dkJ6sv3DLgW.jpg', 1, '2022-08-29 07:42:26', '2022-08-29 07:42:26');
INSERT INTO `gallery_images` VALUES (751, 121, NULL, 'gallery_image/121/9JbZLRV9xmNCHYoGNCnOftHgyk1wfR0cpNB3XxvT.jpg', 1, '2022-08-29 07:42:26', '2022-08-29 07:42:26');
INSERT INTO `gallery_images` VALUES (752, 121, NULL, 'gallery_image/121/ocX8IDc4Wq1y2WqJfoPPhl2861E27gyD0YnRpCNN.jpg', 1, '2022-08-29 07:42:26', '2022-08-29 07:42:26');
INSERT INTO `gallery_images` VALUES (753, 121, NULL, 'gallery_image/121/YqskECZKVfREcAJcXXft3M1BgVJHNzxBTzBPiKZl.jpg', 1, '2022-08-29 07:42:26', '2022-08-29 07:42:26');
INSERT INTO `gallery_images` VALUES (754, 121, NULL, 'gallery_image/121/K3v8ONvmfmked6jRpi54uELnp5qr19d81DLWJOrx.jpg', 1, '2022-08-29 07:42:26', '2022-08-29 07:42:26');
INSERT INTO `gallery_images` VALUES (755, 121, NULL, 'gallery_image/121/8cfhArhvpLtgp2KWsDUhBoSRm6GVZsvJ3ljf9bcs.jpg', 1, '2022-08-29 07:42:26', '2022-08-29 07:42:26');
INSERT INTO `gallery_images` VALUES (756, 121, NULL, 'gallery_image/121/wlQBoAxlVn9SRfCuo6m6TFRQFsVIyQN9LeAPxfsD.jpg', 1, '2022-08-29 07:42:26', '2022-08-29 07:42:26');
INSERT INTO `gallery_images` VALUES (757, 121, NULL, 'gallery_image/121/nbjDuwshklJqncL4LIw5KwE1J1gZyDEAdRgWPpvz.jpg', 1, '2022-08-29 07:43:26', '2022-08-29 07:43:26');
INSERT INTO `gallery_images` VALUES (758, 121, NULL, 'gallery_image/121/aPds9aJvOySDsn4j7S5eBdtKuQlL3JZCAKrKXMoj.jpg', 1, '2022-08-29 07:43:26', '2022-08-29 07:43:26');
INSERT INTO `gallery_images` VALUES (759, 121, NULL, 'gallery_image/121/fOnWGUaeeGCRXxlifIMcp47gr7O5uqvWg1PMIh9y.jpg', 1, '2022-08-29 07:43:26', '2022-08-29 07:43:26');
INSERT INTO `gallery_images` VALUES (760, 121, NULL, 'gallery_image/121/ytkoKZLvN7vU2CI0w9J1VaWnqD3GXJoe5pNQV6xi.jpg', 1, '2022-08-29 07:43:26', '2022-08-29 07:43:26');
INSERT INTO `gallery_images` VALUES (761, 121, NULL, 'gallery_image/121/Z2RtXKDZNeSwDAjaeSBnB1fhdANobyXfZ06QdKL9.jpg', 1, '2022-08-29 07:43:26', '2022-08-29 07:43:26');
INSERT INTO `gallery_images` VALUES (762, 121, NULL, 'gallery_image/121/P57D4G5YXOk7HMOGRHW4Vx8qmKMvlMQfmT349VCT.jpg', 1, '2022-08-29 07:43:26', '2022-08-29 07:43:26');
INSERT INTO `gallery_images` VALUES (763, 121, NULL, 'gallery_image/121/VEfb0OGQUIsycn5nu51RKWOC3pdeMddvwf5FnKBj.jpg', 1, '2022-08-29 07:43:26', '2022-08-29 07:43:26');
INSERT INTO `gallery_images` VALUES (764, 122, NULL, 'gallery_image/122/aFv8462CbtD5eNrjum8kYzU5m8pEktOztikYs9jy.jpg', 1, '2022-08-29 07:44:34', '2022-08-29 07:44:34');
INSERT INTO `gallery_images` VALUES (765, 122, NULL, 'gallery_image/122/cb4o4gPHMCpyV0SULSWPLjjcK3vcOAtVzhP6XBKB.jpg', 1, '2022-08-29 07:44:34', '2022-08-29 07:44:34');
INSERT INTO `gallery_images` VALUES (766, 123, NULL, 'gallery_image/123/u0stuPHfVk3dalzReb71JrSmZVmUYuPURiSrh86Z.jpg', 1, '2022-08-29 07:45:32', '2022-08-29 07:45:32');
INSERT INTO `gallery_images` VALUES (767, 123, NULL, 'gallery_image/123/1Vbg2SHMhQkM38ehmNbtg8zZwk8fMGGSzwhwoqTE.jpg', 1, '2022-08-29 07:45:32', '2022-08-29 07:45:32');
INSERT INTO `gallery_images` VALUES (768, 123, NULL, 'gallery_image/123/Z98puiHFdd9cvSA80tRv5J5WdT4p0fMNZZVl2dtT.jpg', 1, '2022-08-29 07:45:32', '2022-08-29 07:45:32');
INSERT INTO `gallery_images` VALUES (769, 123, NULL, 'gallery_image/123/fn2qfjQv7ibKUiPl381sWar9JdlNj3p7P6nLWemz.jpg', 1, '2022-08-29 07:45:32', '2022-08-29 07:45:32');
INSERT INTO `gallery_images` VALUES (770, 124, NULL, 'gallery_image/124/UX9NGupAzAlYq7nGtuZWXv4lIHffdOOqtURyFbaB.jpg', 1, '2022-08-29 07:46:21', '2022-08-29 07:46:21');
INSERT INTO `gallery_images` VALUES (771, 124, NULL, 'gallery_image/124/wGtTMhi6dQfcXQkZJJzgVz6IfTE8nSb2paS22Cv1.jpg', 1, '2022-08-29 07:46:21', '2022-08-29 07:46:21');
INSERT INTO `gallery_images` VALUES (772, 125, NULL, 'gallery_image/125/xtGz8fKPhp591bNLdOU0jxdLggDDkQlbjpebuKnV.jpg', 1, '2022-08-29 07:47:30', '2022-08-29 07:47:30');
INSERT INTO `gallery_images` VALUES (773, 125, NULL, 'gallery_image/125/5WpoDsvSC60ftYu51UT5GjrOPxzbS1xWTKvUtB3G.jpg', 1, '2022-08-29 07:47:30', '2022-08-29 07:47:30');
INSERT INTO `gallery_images` VALUES (774, 125, NULL, 'gallery_image/125/MZcWxUbS9jbBj1OLWKrEUUN25Ux9WdcTigy2c9tS.jpg', 1, '2022-08-29 07:47:30', '2022-08-29 07:47:30');
INSERT INTO `gallery_images` VALUES (775, 126, NULL, 'gallery_image/126/OaA2VCTRT90wZ93i60EWWP7BjDmYNcL8koenhcmB.jpg', 1, '2022-08-29 07:48:22', '2022-08-29 07:48:22');
INSERT INTO `gallery_images` VALUES (776, 126, NULL, 'gallery_image/126/yWwbS6rk8uGFpJFgTSFqJwIZLmnPSzYieOrCDwTQ.jpg', 1, '2022-08-29 07:48:22', '2022-08-29 07:48:22');
INSERT INTO `gallery_images` VALUES (777, 127, NULL, 'gallery_image/127/YVUOLsJI0buerm39DvcSL98QW6LeyTbjn1zJP8H8.jpg', 1, '2022-08-29 07:49:04', '2022-08-29 07:49:04');
INSERT INTO `gallery_images` VALUES (778, 127, NULL, 'gallery_image/127/Cw9FjF3sFhCdTBOr8FbVzrnsVSPfAJG8hVEycbfX.jpg', 1, '2022-08-29 07:49:04', '2022-08-29 07:49:04');
INSERT INTO `gallery_images` VALUES (779, 128, NULL, 'gallery_image/128/6xHbuah8TMb4B5gIYNaJUgP6IAYoxrOjF4Ocj92M.jpg', 1, '2022-08-29 07:50:01', '2022-08-29 07:50:01');
INSERT INTO `gallery_images` VALUES (780, 128, NULL, 'gallery_image/128/IzFCQnLHhJdt1YALrPP2zsts0JZSNDK7o1GEMQHy.jpg', 1, '2022-08-29 07:50:01', '2022-08-29 07:50:01');
INSERT INTO `gallery_images` VALUES (781, 129, NULL, 'gallery_image/129/EGHtCzEdaDtVpqLPs0NAMABpo1pGRphDCGbQ5hXt.jpg', 1, '2022-08-29 07:51:36', '2022-08-29 07:51:36');
INSERT INTO `gallery_images` VALUES (782, 129, NULL, 'gallery_image/129/q6zpFFwhtETv0VlqAPOD5dDBHGrD8RT38azs4ab2.jpg', 1, '2022-08-29 07:51:36', '2022-08-29 07:51:36');
INSERT INTO `gallery_images` VALUES (783, 130, NULL, 'gallery_image/130/zGy9vR5DmJ5DqB6XtKkzCUqOAJGnAhJQ9AliEn2t.jpg', 1, '2022-08-29 07:52:14', '2022-08-29 07:52:14');
INSERT INTO `gallery_images` VALUES (784, 130, NULL, 'gallery_image/130/xxu657X4M58Fv1XXboelvWnCPYSgtezYHoG6kE3H.jpg', 1, '2022-08-29 07:52:14', '2022-08-29 07:52:14');
INSERT INTO `gallery_images` VALUES (785, 131, NULL, 'gallery_image/131/DwdWklgjQKsVOt5r2JBnWZYVGqLcAP94c9yQxnK9.jpg', 1, '2022-08-29 07:52:52', '2022-08-29 07:52:52');
INSERT INTO `gallery_images` VALUES (786, 131, NULL, 'gallery_image/131/23fgnslpVo0QhjBRwXzMEzrw8DRaduBtLiQPXboA.jpg', 1, '2022-08-29 07:52:52', '2022-08-29 07:52:52');
INSERT INTO `gallery_images` VALUES (787, 132, NULL, 'gallery_image/132/TAC9CdYTKkPUhl9ZVtDeHyWsJsNqHrhxsi96hctp.jpg', 1, '2022-08-29 07:53:49', '2022-08-29 07:53:49');
INSERT INTO `gallery_images` VALUES (788, 132, NULL, 'gallery_image/132/x6ZjSEG9TvH9g4xih79Rwv3c0RvfGAzSOsncnCU5.jpg', 1, '2022-08-29 07:53:49', '2022-08-29 07:53:49');
INSERT INTO `gallery_images` VALUES (789, 133, NULL, 'gallery_image/133/Qz7q1dIFA4baXabfP0wkvididtKe31tiosFw0UAj.jpg', 1, '2022-08-29 07:55:26', '2022-08-29 07:55:26');
INSERT INTO `gallery_images` VALUES (790, 133, NULL, 'gallery_image/133/f03W3L6tPLaHZ2Rz5b43bHnDkbMP6m7eOdQeqZux.jpg', 1, '2022-08-29 07:55:26', '2022-08-29 07:55:26');
INSERT INTO `gallery_images` VALUES (791, 133, NULL, 'gallery_image/133/zcPfL5sIlFlyvScpmDgA5swXlVg2MIxENamR5Drz.jpg', 1, '2022-08-29 07:55:26', '2022-08-29 07:55:26');
INSERT INTO `gallery_images` VALUES (792, 133, NULL, 'gallery_image/133/kiAX6s6icrFSOnOpbboNi0hfcsE98tQBF1DRhd4R.jpg', 1, '2022-08-29 07:55:26', '2022-08-29 07:55:26');
INSERT INTO `gallery_images` VALUES (793, 133, NULL, 'gallery_image/133/NlqF46hFPqMTKG7WNEtWo2WZ20pHUn82PHm6ddON.jpg', 1, '2022-08-29 07:55:26', '2022-08-29 07:55:26');
INSERT INTO `gallery_images` VALUES (794, 133, NULL, 'gallery_image/133/w4ILhPwPsCikvhWz1YmmtN8qLC6rhJUY3iN0Up87.jpg', 1, '2022-08-29 07:55:26', '2022-08-29 07:55:26');
INSERT INTO `gallery_images` VALUES (795, 133, NULL, 'gallery_image/133/KC9uOzQoi64loYbHyj3M2ZTmPFCjN2LmsI2c9hU9.jpg', 1, '2022-08-29 07:55:26', '2022-08-29 07:55:26');
INSERT INTO `gallery_images` VALUES (796, 133, NULL, 'gallery_image/133/Mh7bWhbEmA5426rbodyrnklSi9shPx2CIpTFFX2O.jpg', 1, '2022-08-29 07:55:26', '2022-08-29 07:55:26');
INSERT INTO `gallery_images` VALUES (797, 133, NULL, 'gallery_image/133/Wmf1dwdewg1lptAezzlFbURbKoeyYXz52ZuHPqfM.jpg', 1, '2022-08-29 07:55:26', '2022-08-29 07:55:26');
INSERT INTO `gallery_images` VALUES (798, 133, NULL, 'gallery_image/133/XDkFVd3YqdroIHlkqSOYwCToowG8ZSZJTIfLlt6h.jpg', 1, '2022-08-29 07:55:26', '2022-08-29 07:55:26');
INSERT INTO `gallery_images` VALUES (799, 133, NULL, 'gallery_image/133/4vT6uemMN3NxCxYMmMKdZbudfSn49DjqI5p4Y6S8.jpg', 1, '2022-08-29 07:55:54', '2022-08-29 07:55:54');
INSERT INTO `gallery_images` VALUES (800, 133, NULL, 'gallery_image/133/uECIms01XLyLdXA3tdhwF02hKQJ3Kmak2vB4KWHx.jpg', 1, '2022-08-29 07:55:54', '2022-08-29 07:55:54');
INSERT INTO `gallery_images` VALUES (801, 133, NULL, 'gallery_image/133/jWakW19VbvdPnLvqIpb20GlgZocIZIwXW4hqx3u6.jpg', 1, '2022-08-29 07:55:54', '2022-08-29 07:55:54');
INSERT INTO `gallery_images` VALUES (802, 133, NULL, 'gallery_image/133/3u0JF4cOpU6BBHHOjd2E0pO8Z4Rvm9TJ5lRfpB43.jpg', 1, '2022-08-29 07:55:54', '2022-08-29 07:55:54');
INSERT INTO `gallery_images` VALUES (803, 133, NULL, 'gallery_image/133/yBiz7MjW7gzyjY3QhFED3bV1CRwRTTVR8SaxqVgc.jpg', 1, '2022-08-29 07:55:54', '2022-08-29 07:55:54');
INSERT INTO `gallery_images` VALUES (804, 133, NULL, 'gallery_image/133/c3OGtpbS5qxjxEa4FGapLYwwJEFXoqrZjekGERVI.jpg', 1, '2022-08-29 07:55:54', '2022-08-29 07:55:54');
INSERT INTO `gallery_images` VALUES (805, 133, NULL, 'gallery_image/133/saj42QVi7R1siEGfyNnCa9KZP9bgqI0VlFIEt8Pb.jpg', 1, '2022-08-29 07:55:54', '2022-08-29 07:55:54');
INSERT INTO `gallery_images` VALUES (806, 133, NULL, 'gallery_image/133/LJk1wdFHipypNL0X5Og3eXJDMEg3ZEuwGAZu5wd8.jpg', 1, '2022-08-29 07:55:54', '2022-08-29 07:55:54');
INSERT INTO `gallery_images` VALUES (807, 133, NULL, 'gallery_image/133/PUkW3wI6J9sABwcBbyFCwV9iVqkYuomF65NueFOA.jpg', 1, '2022-08-29 07:55:54', '2022-08-29 07:55:54');
INSERT INTO `gallery_images` VALUES (808, 133, NULL, 'gallery_image/133/3sd3267FQjURixqyV9lxsO0zk1QOJFSegqHOGNOw.jpg', 1, '2022-08-29 07:55:54', '2022-08-29 07:55:54');
INSERT INTO `gallery_images` VALUES (809, 133, NULL, 'gallery_image/133/wTOpOOWdjkmPewVl1eMlQf1B8nLvbSGarMfAxcHO.jpg', 1, '2022-08-29 07:55:54', '2022-08-29 07:55:54');
INSERT INTO `gallery_images` VALUES (810, 133, NULL, 'gallery_image/133/B3Bx1yrRUEkoRWlR3Aec3p3GGt1rhVC9kTp6Xhpz.jpg', 1, '2022-08-29 07:55:54', '2022-08-29 07:55:54');
INSERT INTO `gallery_images` VALUES (811, 133, NULL, 'gallery_image/133/7lTcSpj2o4r4jSRjThldgewFRJWCDDBLTk6amSOe.jpg', 1, '2022-08-29 07:55:54', '2022-08-29 07:55:54');
INSERT INTO `gallery_images` VALUES (812, 133, NULL, 'gallery_image/133/kUD0qEjzoiiF0Qs3orvlQkhquzTne6qkVljcRtDJ.jpg', 1, '2022-08-29 07:55:54', '2022-08-29 07:55:54');
INSERT INTO `gallery_images` VALUES (813, 133, NULL, 'gallery_image/133/n380YZ7dc00vbPBubnsuO90jYMnApqaR9LCDkP2j.jpg', 1, '2022-08-29 07:55:54', '2022-08-29 07:55:54');
INSERT INTO `gallery_images` VALUES (814, 133, NULL, 'gallery_image/133/BYDi5Sy0vr7W9MPbDDHxx5VJ6UXc84WoJrYRdEM8.jpg', 1, '2022-08-29 07:55:54', '2022-08-29 07:55:54');
INSERT INTO `gallery_images` VALUES (815, 133, NULL, 'gallery_image/133/qTJwDZsu1RI69gJH06y4WKZ8rd9QfdOqJ38ek0RR.jpg', 1, '2022-08-29 07:56:24', '2022-08-29 07:56:24');
INSERT INTO `gallery_images` VALUES (816, 133, NULL, 'gallery_image/133/pUYjRbQuaSshblWkoK69Z6sA8jAp5gguMffVfnk1.jpg', 1, '2022-08-29 07:56:24', '2022-08-29 07:56:24');
INSERT INTO `gallery_images` VALUES (817, 133, NULL, 'gallery_image/133/rdBqqkW0BuoiADGWwLmHrFAAiS8FlBnZX74HzaCg.jpg', 1, '2022-08-29 07:56:24', '2022-08-29 07:56:24');
INSERT INTO `gallery_images` VALUES (818, 133, NULL, 'gallery_image/133/YqNmTXCiiLjllU2KhmXkkB9PdViWFOQjZSNG8BJx.jpg', 1, '2022-08-29 07:56:24', '2022-08-29 07:56:24');
INSERT INTO `gallery_images` VALUES (819, 133, NULL, 'gallery_image/133/0FukHx6ruZborI0zoZVgyZTUISh4rdTRbFhIUlvE.jpg', 1, '2022-08-29 07:56:24', '2022-08-29 07:56:24');
INSERT INTO `gallery_images` VALUES (820, 133, NULL, 'gallery_image/133/t3FtHVTY4tp5BYpyfKAMZR1LBWMqRRHPOxx4n0HS.jpg', 1, '2022-08-29 07:56:24', '2022-08-29 07:56:24');
INSERT INTO `gallery_images` VALUES (821, 133, NULL, 'gallery_image/133/6MUdENL9hscDcbwelTOQXAD2RwbUgpxGZ7isbHHT.jpg', 1, '2022-08-29 07:56:24', '2022-08-29 07:56:24');
INSERT INTO `gallery_images` VALUES (822, 133, NULL, 'gallery_image/133/mctXLRutDRqPQITbVMZSkCbqO6ErI9cV56S2brIJ.jpg', 1, '2022-08-29 07:56:24', '2022-08-29 07:56:24');
INSERT INTO `gallery_images` VALUES (823, 133, NULL, 'gallery_image/133/LhH55np9FJXxCluAlpT5wmmX1bgBUb8sphlwWRm3.jpg', 1, '2022-08-29 07:56:24', '2022-08-29 07:56:24');
INSERT INTO `gallery_images` VALUES (824, 133, NULL, 'gallery_image/133/KZGgfJLpjOkl5Rftmdb0eFdb9anso9ikB0CuwuIH.jpg', 1, '2022-08-29 07:56:24', '2022-08-29 07:56:24');
INSERT INTO `gallery_images` VALUES (825, 133, NULL, 'gallery_image/133/yWh1oOPXIK3wxxrXvntb2YpZWgosTxYrj6B0Isil.jpg', 1, '2022-08-29 07:56:24', '2022-08-29 07:56:24');
INSERT INTO `gallery_images` VALUES (826, 133, NULL, 'gallery_image/133/ZyL3Qqe5M9q95PMAttt5R4lL89DTeZP03JnqG4hv.jpg', 1, '2022-08-29 07:56:24', '2022-08-29 07:56:24');
INSERT INTO `gallery_images` VALUES (827, 133, NULL, 'gallery_image/133/fiM5E7l017OXTcGu4cRKPkUDHdq5Wj6ppfKH4mUQ.jpg', 1, '2022-08-29 07:56:24', '2022-08-29 07:56:24');
INSERT INTO `gallery_images` VALUES (828, 133, NULL, 'gallery_image/133/pCga0Er0AK9JHfFhjuxko2HAD1yBhuGCH7tGJ89v.jpg', 1, '2022-08-29 07:56:24', '2022-08-29 07:56:24');
INSERT INTO `gallery_images` VALUES (829, 133, NULL, 'gallery_image/133/LQUYSs4CvTwU6MPzeJoRbtioyrC2SS8m61B2rGbm.jpg', 1, '2022-08-29 07:56:24', '2022-08-29 07:56:24');
INSERT INTO `gallery_images` VALUES (830, 133, NULL, 'gallery_image/133/6qBwc1YE1xIZvHniAiXVdAc1PwxPQ9FvwYrUVSbE.jpg', 1, '2022-08-29 07:56:24', '2022-08-29 07:56:24');
INSERT INTO `gallery_images` VALUES (831, 133, NULL, 'gallery_image/133/SwsUlqVuwl0ousFM3cgcvzmie9ODIC8c5AgPpQVn.jpg', 1, '2022-08-29 07:56:49', '2022-08-29 07:56:49');
INSERT INTO `gallery_images` VALUES (832, 133, NULL, 'gallery_image/133/oJOVnwqkcKGIgva6koJt9QyKH8uIHblsAmOtKKL9.jpg', 1, '2022-08-29 07:56:49', '2022-08-29 07:56:49');
INSERT INTO `gallery_images` VALUES (833, 133, NULL, 'gallery_image/133/As1zJzcb7OW1aXz4JFWaW8JjkxOL0hajLiset0cV.jpg', 1, '2022-08-29 07:56:49', '2022-08-29 07:56:49');
INSERT INTO `gallery_images` VALUES (834, 133, NULL, 'gallery_image/133/HlnzJBK2kmGoeU8itqwHaatvpzURiTA6QfCUOZDo.jpg', 1, '2022-08-29 07:56:49', '2022-08-29 07:56:49');
INSERT INTO `gallery_images` VALUES (835, 133, NULL, 'gallery_image/133/xlMB2EMeLvElVFWNqX45eJTVBnj3r350Tku52HQy.jpg', 1, '2022-08-29 07:56:49', '2022-08-29 07:56:49');
INSERT INTO `gallery_images` VALUES (836, 133, NULL, 'gallery_image/133/PkNnkv5fqILMNDr6sz9mJjvTxA36D3v0kTK7Bn50.jpg', 1, '2022-08-29 07:56:49', '2022-08-29 07:56:49');
INSERT INTO `gallery_images` VALUES (837, 133, NULL, 'gallery_image/133/PZGCpiTvYB2oVbAHClWyVrwzX2YWGtuY68HVIFEn.jpg', 1, '2022-08-29 07:56:49', '2022-08-29 07:56:49');
INSERT INTO `gallery_images` VALUES (838, 134, NULL, 'gallery_image/134/z3EFyfg65kotimVMxSyGkJLghx9iw4XQRyhjZh4i.jpg', 1, '2022-08-29 07:58:32', '2022-08-29 07:58:32');
INSERT INTO `gallery_images` VALUES (839, 134, NULL, 'gallery_image/134/HfQ7WQalmI0Jj4cDCSJX7vRxrMVMEdrRbW4z14Ls.jpg', 1, '2022-08-29 07:58:32', '2022-08-29 07:58:32');
INSERT INTO `gallery_images` VALUES (840, 134, NULL, 'gallery_image/134/gPZeqIU5Bb1v0y5r1QtDYzixfgljqlVZ6ks7zmGJ.jpg', 1, '2022-08-29 07:58:32', '2022-08-29 07:58:32');
INSERT INTO `gallery_images` VALUES (841, 134, NULL, 'gallery_image/134/DhtGhwNiLbZeFrHgVej9DR6MO8FPwYxeaZoKZL4Z.jpg', 1, '2022-08-29 07:58:32', '2022-08-29 07:58:32');
INSERT INTO `gallery_images` VALUES (842, 134, NULL, 'gallery_image/134/xNj80A3igsgKVqyxYjRAIaYKlmERxTR9zyGZEZlk.jpg', 1, '2022-08-29 07:58:32', '2022-08-29 07:58:32');
INSERT INTO `gallery_images` VALUES (843, 134, NULL, 'gallery_image/134/FEVK15kUYH9kOtNfNJL43rEVpSGJ4JJklHune5xH.jpg', 1, '2022-08-29 07:58:32', '2022-08-29 07:58:32');
INSERT INTO `gallery_images` VALUES (844, 134, NULL, 'gallery_image/134/FVK5SnUzULvdW4Pc4UHBvC29kp8RjL25Gylr88s3.jpg', 1, '2022-08-29 07:58:32', '2022-08-29 07:58:32');
INSERT INTO `gallery_images` VALUES (845, 135, NULL, 'gallery_image/135/Em3bw96e6QZ9Ao4FwcSroJ48t8IPjixyjlHxSMqI.jpg', 1, '2022-08-29 08:00:30', '2022-08-29 08:00:30');
INSERT INTO `gallery_images` VALUES (846, 135, NULL, 'gallery_image/135/MCc1qTI7MieFgs5OYetF14z7hkLYAQN8FU4oQ2tO.jpg', 1, '2022-08-29 08:00:30', '2022-08-29 08:00:30');
INSERT INTO `gallery_images` VALUES (847, 135, NULL, 'gallery_image/135/3KLcDsflELsJWqhBONcbQKGXAWVT7XtB4yBnZREZ.jpg', 1, '2022-08-29 08:00:30', '2022-08-29 08:00:30');
INSERT INTO `gallery_images` VALUES (848, 135, NULL, 'gallery_image/135/iE1vquMq5yIKmmaKYWpXC4w824Nh8Ov2OWHphfHN.jpg', 1, '2022-08-29 08:00:30', '2022-08-29 08:00:30');
INSERT INTO `gallery_images` VALUES (849, 135, NULL, 'gallery_image/135/uk8mYgKD3FEnPHchUbxR24vTqiM5yzYcTBhzvytm.jpg', 1, '2022-08-29 08:00:30', '2022-08-29 08:00:30');
INSERT INTO `gallery_images` VALUES (850, 135, NULL, 'gallery_image/135/7ZJD5qfThoka9Noc8skqVzlh0Ugaua1Oy1vpjUVD.jpg', 1, '2022-08-29 08:00:30', '2022-08-29 08:00:30');
INSERT INTO `gallery_images` VALUES (851, 135, NULL, 'gallery_image/135/uwDb5DBMBheGf8YC6rXiWIs15rH1AXOOE99mmH57.jpg', 1, '2022-08-29 08:00:30', '2022-08-29 08:00:30');
INSERT INTO `gallery_images` VALUES (852, 135, NULL, 'gallery_image/135/AASm0FAlZytReerPgyh3O0IMpnO7u7RK22XjK8Vd.jpg', 1, '2022-08-29 08:00:30', '2022-08-29 08:00:30');
INSERT INTO `gallery_images` VALUES (853, 135, NULL, 'gallery_image/135/qnQu7ZVyqHqoLh5TCxkAUMWwLgoshMgH0vM2zXbG.jpg', 1, '2022-08-29 08:00:30', '2022-08-29 08:00:30');
INSERT INTO `gallery_images` VALUES (854, 135, NULL, 'gallery_image/135/hrwplhapawUNOsqcFECvxvfPr6itCDzkFv07I7lN.jpg', 1, '2022-08-29 08:05:34', '2022-08-29 08:05:34');
INSERT INTO `gallery_images` VALUES (855, 135, NULL, 'gallery_image/135/GjPQpCWte01mKAHtRJP8K47LYyVLj58Wu0PbrGXC.jpg', 1, '2022-08-29 08:05:34', '2022-08-29 08:05:34');
INSERT INTO `gallery_images` VALUES (856, 135, NULL, 'gallery_image/135/T5hkh8obGKIbzcOIRli0lIQwhNJWgWkSxQVUz3Pw.jpg', 1, '2022-08-29 08:05:34', '2022-08-29 08:05:34');
INSERT INTO `gallery_images` VALUES (857, 135, NULL, 'gallery_image/135/QrsSJblW0FXCC6tA2aN3b44vlGfFyCgkxCa9ZMbI.jpg', 1, '2022-08-29 08:05:34', '2022-08-29 08:05:34');
INSERT INTO `gallery_images` VALUES (858, 135, NULL, 'gallery_image/135/yc39a0lj1XNTcTErBD5mkpvYIXTxqKmFwsFoqNM5.jpg', 1, '2022-08-29 08:05:34', '2022-08-29 08:05:34');
INSERT INTO `gallery_images` VALUES (859, 135, NULL, 'gallery_image/135/ihSNwwxui2mDtei01syEU9mzMzAeBFe9O70YQA3Q.jpg', 1, '2022-08-29 08:05:34', '2022-08-29 08:05:34');
INSERT INTO `gallery_images` VALUES (860, 135, NULL, 'gallery_image/135/vEE1hBqKZL5FFe10b0qjj5QJ9pHnD5DFVPjfdWEo.jpg', 1, '2022-08-29 08:05:34', '2022-08-29 08:05:34');
INSERT INTO `gallery_images` VALUES (861, 135, NULL, 'gallery_image/135/PHADUxG29rigJpsQXyHLjiH8eoxhAGem5wJk5YkB.jpg', 1, '2022-08-29 08:05:34', '2022-08-29 08:05:34');
INSERT INTO `gallery_images` VALUES (862, 135, NULL, 'gallery_image/135/7tpInEnKCQGSNj2nBgjtEi6IIuqz65FkBdIZju9M.jpg', 1, '2022-08-29 08:05:34', '2022-08-29 08:05:34');
INSERT INTO `gallery_images` VALUES (863, 135, NULL, 'gallery_image/135/teYNvxG4GSWh6pnPOIE0MzIrsyuoziuSQiOTmlGr.jpg', 1, '2022-08-29 08:05:34', '2022-08-29 08:05:34');
INSERT INTO `gallery_images` VALUES (864, 135, NULL, 'gallery_image/135/dMDkqOEbScIHSTOgaU0JY4G1fFsLivHmFYq0LoUk.jpg', 1, '2022-08-29 08:05:34', '2022-08-29 08:05:34');
INSERT INTO `gallery_images` VALUES (865, 135, NULL, 'gallery_image/135/aTtCkrqAzfzDlpPwcLajsqWcUb6npbGqgU4qFy7V.jpg', 1, '2022-08-29 08:05:34', '2022-08-29 08:05:34');
INSERT INTO `gallery_images` VALUES (866, 135, NULL, 'gallery_image/135/RBApY2LT9MS0UoDPQFrthe7gIXGt4h3wdNtNdNYv.jpg', 1, '2022-08-29 08:05:34', '2022-08-29 08:05:34');
INSERT INTO `gallery_images` VALUES (867, 136, NULL, 'gallery_image/136/GBdBE0BTxBOVVnObHhitgWJQZ5aikutX9DqyJDkx.jpg', 1, '2022-08-29 08:06:34', '2022-08-29 08:06:34');
INSERT INTO `gallery_images` VALUES (868, 136, NULL, 'gallery_image/136/B5JlP4mURjIod1C5LGV0JIkZB2BKpfwGX1CGJqUD.jpg', 1, '2022-08-29 08:06:34', '2022-08-29 08:06:34');
INSERT INTO `gallery_images` VALUES (869, 136, NULL, 'gallery_image/136/hLXVGK29hlWN04nIU2yw7k7nw1xXAB7ZZJlykPcP.jpg', 1, '2022-08-29 08:06:34', '2022-08-29 08:06:34');
INSERT INTO `gallery_images` VALUES (870, 136, NULL, 'gallery_image/136/aHIUN7MLvVEp8x0yIvlOj8sXHfgpdMiXhVOBIA4k.jpg', 1, '2022-08-29 08:06:34', '2022-08-29 08:06:34');
INSERT INTO `gallery_images` VALUES (871, 136, NULL, 'gallery_image/136/woT2BnW4ZRyZNN5fJT3etHAZ14hGp1S7LINbaGJX.jpg', 1, '2022-08-29 08:06:34', '2022-08-29 08:06:34');
INSERT INTO `gallery_images` VALUES (872, 137, NULL, 'gallery_image/137/KtGbRUb0xVRxya0yKbRG52adRMMCIlnq4Vg6rRox.jpg', 1, '2022-08-29 08:07:14', '2022-08-29 08:07:14');
INSERT INTO `gallery_images` VALUES (873, 137, NULL, 'gallery_image/137/w2ZTNcZ7gGReGbmyaJT9OL0OSMoWKonc9C9XjmOX.jpg', 1, '2022-08-29 08:07:14', '2022-08-29 08:07:14');
INSERT INTO `gallery_images` VALUES (874, 137, NULL, 'gallery_image/137/fzcyIZ21wnOX1ZRGDc8qCqBzVFLHoAPdxn9YTyWl.jpg', 1, '2022-08-29 08:07:14', '2022-08-29 08:07:14');
INSERT INTO `gallery_images` VALUES (875, 137, NULL, 'gallery_image/137/Lm11QR22FpX1hiviUZYKjwln7OkDQZvBr9trTzOo.jpg', 1, '2022-08-29 08:07:14', '2022-08-29 08:07:14');

-- ----------------------------
-- Table structure for leads
-- ----------------------------
DROP TABLE IF EXISTS `leads`;
CREATE TABLE `leads`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of leads
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2022_08_10_054118_create_news_table', 1);
INSERT INTO `migrations` VALUES (6, '2022_08_10_180316_create_galleries_table', 1);
INSERT INTO `migrations` VALUES (7, '2022_08_10_180340_create_gallery_images_table', 1);
INSERT INTO `migrations` VALUES (8, '2022_08_10_180439_create_leads_table', 1);
INSERT INTO `migrations` VALUES (9, '2022_08_11_182444_create_courses_table', 1);
INSERT INTO `migrations` VALUES (10, '2022_08_13_132516_create_course_images_table', 1);
INSERT INTO `migrations` VALUES (11, '2022_08_18_174737_create_scholarships_table', 1);
INSERT INTO `migrations` VALUES (12, '2022_08_18_175715_create_placement_companies_table', 1);
INSERT INTO `migrations` VALUES (13, '2022_08_18_175807_create_placements_table', 1);
INSERT INTO `migrations` VALUES (14, '2022_08_18_180311_create_university_rankers_table', 1);
INSERT INTO `migrations` VALUES (15, '2022_08_18_181327_create_documents_table', 1);
INSERT INTO `migrations` VALUES (16, '2022_08_18_181505_create_slides_table', 1);
INSERT INTO `migrations` VALUES (17, '2022_08_18_181835_create_document_attachments_table', 1);
INSERT INTO `migrations` VALUES (18, '2022_08_18_182058_create_slide_images_table', 1);
INSERT INTO `migrations` VALUES (19, '2022_08_18_182913_create_web_pages_table', 1);
INSERT INTO `migrations` VALUES (20, '2022_08_18_183819_create_settings_table', 1);
INSERT INTO `migrations` VALUES (21, '2022_08_19_055218_create_website_details_table', 1);
INSERT INTO `migrations` VALUES (22, '2022_08_19_061006_create_website_detail_attachments_table', 1);

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `highlight` tinyint(1) NULL DEFAULT NULL,
  `link_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `last_used_at` timestamp(0) NULL DEFAULT NULL,
  `expires_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for placement_companies
-- ----------------------------
DROP TABLE IF EXISTS `placement_companies`;
CREATE TABLE `placement_companies`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `company_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `highlight` tinyint(1) NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 109 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of placement_companies
-- ----------------------------
INSERT INTO `placement_companies` VALUES (1, 'Cognizant Technology Solutions', 'Cognizant Technology Solutions', 'company_images/GcEb8AAu6tk0P0gmCcYKS157XbKQTlbtpN3Ywkjs.jpg', NULL, 1, '2022-08-28 17:23:35', '2022-08-28 17:23:35');
INSERT INTO `placement_companies` VALUES (2, 'CSS Corp', 'CSS Corp', 'company_images/CZhSX6sy1NezFlauWcpHXURdb9NQbK039ZQNuURm.jpg', 0, 1, '2022-08-28 17:23:55', '2022-08-28 17:23:55');
INSERT INTO `placement_companies` VALUES (3, 'TNQ', 'TNQ', 'company_images/nTYwTXpRFj1ivUP70bvBQ3WooyuN6JBsiK15ZWgu.jpg', 0, 1, '2022-08-28 17:25:00', '2022-08-28 17:25:00');
INSERT INTO `placement_companies` VALUES (4, 'Zifo', 'Zifo', 'company_images/RokkNulskw5KItbP81qmAwyO9mAKT5aAPMF2LE64.jpg', 0, 1, '2022-08-28 17:25:38', '2022-08-28 17:25:38');
INSERT INTO `placement_companies` VALUES (5, 'ENDOTHERM FLUIDS (INDIA) PVT LTD', 'ENDOTHERM FLUIDS (INDIA) PVT LTD', 'company_images/LoUWz1R2Cbx0wxG8mPIxW7bbi3LaEo2Y3v3N0dgT.jpg', 0, 1, '2022-08-28 17:26:34', '2022-08-28 17:26:34');
INSERT INTO `placement_companies` VALUES (6, 'Indian Healthcare BPO', 'Indian Healthcare BPO', 'company_images/557QSy4w7mXXry7epKlFgri3tgIWOqNkV59kVJYT.jpg', 0, 1, '2022-08-28 17:27:13', '2022-08-28 17:27:13');
INSERT INTO `placement_companies` VALUES (7, 'Appasamy Associates', 'Appasamy Associates', 'company_images/Se8ZUzMR90xI8irdPOWFXqL3BE0LHQyJkwC0ajm6.jpg', 0, 1, '2022-08-28 17:27:37', '2022-08-28 17:27:37');
INSERT INTO `placement_companies` VALUES (8, 'Sutherland', 'Sutherland', 'company_images/tDhXAW3j8epkRiT6AosXFKDgs8ZaoqSaFgXJCHiF.jpg', 0, 1, '2022-08-28 17:27:54', '2022-08-28 17:27:54');
INSERT INTO `placement_companies` VALUES (9, 'Visionary RCM', 'Visionary RCM', 'company_images/yu8PSgX1S3HHSaQyaPVZZzaye8alWhLwZuKUDs6Y.jpg', 0, 1, '2022-08-28 17:28:26', '2022-08-28 17:28:26');
INSERT INTO `placement_companies` VALUES (10, 'Scope eKnowledge center', 'Scope eKnowledge center', 'company_images/KrE9kgrb0Ck6JlW3y8x5hcTv9qPC2RvK3ln6vbIG.jpg', 0, 1, '2022-08-28 17:29:03', '2022-08-28 17:29:03');
INSERT INTO `placement_companies` VALUES (11, 'PHA (PyeongHwa Automotive)', 'PHA (PyeongHwa Automotive)', 'company_images/RIE3tKfEaUWtCPsFwBWRVWrkoFc4PfvX7VNOwG47.jpg', 0, 1, '2022-08-28 17:31:13', '2022-08-28 17:31:13');
INSERT INTO `placement_companies` VALUES (12, 'MK Autocomponents India Limited', 'MK Autocomponents India Limited', 'company_images/tfeLQ2rU9vHZcEeMLTgPQ0neN31Lm5HlQiVxLyz9.jpg', 0, 1, '2022-08-28 17:31:57', '2022-08-28 17:31:57');
INSERT INTO `placement_companies` VALUES (13, 'Trishla Gear Industries', 'Trishla Gear Industries', 'company_images/EUWiX5C95GpLivGBNuwhlV5us8j1Qe2t0vBQhOAT.jpg', 0, 1, '2022-08-28 17:32:51', '2022-08-28 17:32:51');
INSERT INTO `placement_companies` VALUES (14, 'LEEYO', 'LEEYO', 'company_images/Jzo92OiPJLzvrF239Ief14lnh56G9VNFRFcqI6HQ.jpg', 0, 1, '2022-08-28 17:33:37', '2022-08-28 17:33:37');
INSERT INTO `placement_companies` VALUES (15, 'Matrix', 'Matrix ', 'company_images/310aHoYkrpOb6fxgO97NDbqN1g0oHYK94GYrpYHL.jpg', 0, 1, '2022-08-28 17:35:47', '2022-08-28 17:35:47');
INSERT INTO `placement_companies` VALUES (16, 'TATA Business Support Services', 'TATA Business Support Services', 'company_images/e9kitj2t5JUgUl8QHVMY58dZNvOFDplZuYib0AWU.jpg', 0, 1, '2022-08-28 17:36:48', '2022-08-28 17:36:48');
INSERT INTO `placement_companies` VALUES (17, 'Sai Mirra', 'Sai Mirra', 'company_images/hOC51227hmDOWbQl9bhuwanQPp8cqhhW5XPijbp7.jpg', 0, 1, '2022-08-28 17:37:48', '2022-08-28 17:37:48');
INSERT INTO `placement_companies` VALUES (18, 'Indian Orthocare Surgicals', 'Indian Orthocare Surgicals', 'company_images/sNAOaHXm1zWQ34tY6wdwNr6BhCeKoGCV6B3VEiyC.jpg', 0, 1, '2022-08-28 17:38:38', '2022-08-28 17:38:38');
INSERT INTO `placement_companies` VALUES (19, 'Mechtron Engineering', 'Mechtron Engineering', 'company_images/oCHJDnQt4amgeQT3TaZ1LbKwJE2bfuDB7ky7QxXS.jpg', 0, 1, '2022-08-28 17:39:14', '2022-08-28 17:39:14');
INSERT INTO `placement_companies` VALUES (20, 'VinChip Systems', 'VinChip Systems', 'company_images/u25ycoe3cryx18d3EbvZBPNglUvsgmnhpprfzoOn.jpg', 0, 1, '2022-08-28 17:39:55', '2022-08-28 17:39:55');
INSERT INTO `placement_companies` VALUES (21, 'Justdial', 'Justdial', 'company_images/3uh4sOTL9gVnmFjhYG8PfQoFcLCtOMiSDMWRK3u9.jpg', 0, 1, '2022-08-28 17:40:11', '2022-08-28 17:40:11');
INSERT INTO `placement_companies` VALUES (22, 'ABHIJAY Hospital Pvt. Ltd', 'ABHIJAY Hospital Pvt. Ltd', 'company_images/pjiR4O2edZIdOTlRAXiz7JYEWqKOrl2sASa9pUPy.jpg', 0, 1, '2022-08-28 17:41:02', '2022-08-28 17:41:02');
INSERT INTO `placement_companies` VALUES (23, 'Hyundai', 'Hyundai', 'company_images/tS6caArN8JLW6EQduM9W8EYXtGESdBoh4CMIpO2q.jpg', 0, 1, '2022-08-28 17:41:22', '2022-08-28 17:41:22');
INSERT INTO `placement_companies` VALUES (24, 'Firstsource', 'Firstsource', 'company_images/NtaCGCuVtqMsyHWHx1Z7pTRf5cqdfEC2r3bvLoPe.jpg', 0, 1, '2022-08-28 17:41:45', '2022-08-28 17:41:45');
INSERT INTO `placement_companies` VALUES (25, 'UNITECH PLASTO COMPONENTS Pvt. Ltd', 'UNITECH PLASTO COMPONENTS Pvt. Ltd', 'company_images/2Afy002MvTMKjY4l57cXiU7a648cn0jDYttGhmwR.jpg', 0, 1, '2022-08-28 17:42:49', '2022-08-28 17:42:49');
INSERT INTO `placement_companies` VALUES (26, 'Bright Autoplast', 'Bright Autoplast', 'company_images/4pCkTWEB9mqrsJ4PSiHiAlUC7LrN5fQLqSqeEKhz.jpg', 0, 1, '2022-08-28 17:43:20', '2022-08-28 17:43:20');
INSERT INTO `placement_companies` VALUES (27, 'Hyundai Glovis', 'Hyundai Glovis', 'company_images/7e7KALzPL91WeazsrTvE5pIUUxVd58RVg4oRgKeB.jpg', 0, 1, '2022-08-28 17:43:44', '2022-08-28 17:43:44');
INSERT INTO `placement_companies` VALUES (28, 'crayon\'d', 'crayon\'d', 'company_images/wJH4brsUMXYFLmpjL7AjE7ORJP4823CP5nGAjKbj.jpg', 0, 1, '2022-08-28 17:44:37', '2022-08-28 17:44:37');
INSERT INTO `placement_companies` VALUES (29, 'Scinnovation Consultants Pvt. Ltd', 'Scinnovation Consultants Pvt. Ltd', 'company_images/8gUuRrCFktf0pt9kowBV4o7QHjTBaBayE47wmqsh.jpg', 0, 1, '2022-08-28 17:45:15', '2022-08-28 17:45:15');
INSERT INTO `placement_companies` VALUES (30, 'Annai Industries', 'Annai Industries', 'company_images/SVy95dcPeqNlFjY9g7Ej3nia2eSEzExxQ2pEvXlR.jpg', 0, 1, '2022-08-28 17:45:36', '2022-08-28 17:45:36');
INSERT INTO `placement_companies` VALUES (31, 'Chennai Autoparts Pvt. Ltd', 'Chennai Autoparts Pvt. Ltd', 'company_images/Y4VhLPntdJ2PleJzp66afcaVd5Mz0eMApd0I7KLX.jpg', 0, 1, '2022-08-28 17:46:12', '2022-08-28 17:46:12');
INSERT INTO `placement_companies` VALUES (32, 'Aditech Engineering', 'Aditech Engineering', 'company_images/AvS45e0dZ3rA7MNi0MhzKr9yQ84v6aV0t3k0srgE.jpg', 0, 1, '2022-08-28 17:46:34', '2022-08-28 17:46:34');
INSERT INTO `placement_companies` VALUES (33, 'Medlotek Health Systems Pvt. Ltd', 'Medlotek Health Systems Pvt. Ltd', 'company_images/yvBUmmH25Y27nL07GeRTBE3XVQjsRQJoo5sIn1jP.jpg', 0, 1, '2022-08-28 17:47:13', '2022-08-28 17:47:13');
INSERT INTO `placement_companies` VALUES (34, 'Sundaram Business Services', 'Sundaram Business Services', 'company_images/Lw1x9YlAyUF7iPp2M4hPllwlXh4rOqmJaz0tpW7N.jpg', 0, 1, '2022-08-28 17:47:46', '2022-08-28 17:47:46');
INSERT INTO `placement_companies` VALUES (35, 'Tech Mahindra', 'Tech Mahindra', 'company_images/g4hzxiZ2jTcbQgGK5AUfAgWV8Pg7UAb58ohDUYmw.jpg', 0, 1, '2022-08-28 17:49:08', '2022-08-28 17:49:08');
INSERT INTO `placement_companies` VALUES (36, 'Sakura Autoparts India Pvt. Ltd', 'Sakura Autoparts India Pvt. Ltd', 'company_images/xWmxRY0kNkfU6IpELVrxn4QPaFfCSjXlQFz0zJfm.jpg', 0, 1, '2022-08-28 17:49:20', '2022-08-28 17:49:20');
INSERT INTO `placement_companies` VALUES (37, 'Concorde (TATA Motors)', 'Concorde (TATA Motors)', 'company_images/Um5qNgu63LzefJiM8FPmxalTze1Ls50epehleHtQ.jpg', 0, 1, '2022-08-28 17:50:07', '2022-08-28 17:50:07');
INSERT INTO `placement_companies` VALUES (38, 'KKR Metal Works Pvt. Ltd', 'KKR Metal Works Pvt. Ltd', 'company_images/p5i6mXyJgHwgP3R4IV9W3CMrAtRSW7HpJ1tdLHpB.jpg', 0, 1, '2022-08-28 17:50:48', '2022-08-28 17:50:48');
INSERT INTO `placement_companies` VALUES (39, 'Aagna Global Solutions Pvt. Ltd', 'Aagna Global Solutions Pvt. Ltd', 'company_images/4Bp1b184UouWyJVNQzmzKs0j7Fim5RJCx7f1Gr2t.jpg', 0, 1, '2022-08-28 17:51:33', '2022-08-28 17:51:33');
INSERT INTO `placement_companies` VALUES (40, 'ALLSEC Technologies', 'ALLSEC Technologies', 'company_images/2wZaQAx7Un2BgYg1Ndm4uAi7eBgrmEuxC4lSfER9.jpg', 0, 1, '2022-08-28 17:52:06', '2022-08-28 17:52:06');
INSERT INTO `placement_companies` VALUES (41, 'IMC', 'IMC', 'company_images/nsCRnzngpxDlJByTrrGlbJssuGeAH3Um8QwCrXKV.jpg', 0, 1, '2022-08-28 17:53:08', '2022-08-28 17:53:08');
INSERT INTO `placement_companies` VALUES (42, 'Biomedical Engineering Company', 'Biomedical Engineering Company', 'company_images/lQ33GdVYBhLhfXbZ4RZUdnvik2iQT4IeJmV7M8N7.jpg', 0, 1, '2022-08-28 17:53:40', '2022-08-28 17:53:40');
INSERT INTO `placement_companies` VALUES (43, 'Hindustan Unilever Limited', 'Hindustan Unilever Limited', 'company_images/G7YAJT16WD96lzExw5NjqYum79dZYvE19fNp8p6z.jpg', 0, 1, '2022-08-28 17:54:22', '2022-08-28 17:54:22');
INSERT INTO `placement_companies` VALUES (44, 'Tubestar', 'Tubestar', 'company_images/lTVpSCYWobUYg13RBWWiqzFfzKUF49XhAoDGOS20.jpg', 0, 1, '2022-08-28 17:54:40', '2022-08-28 17:54:40');
INSERT INTO `placement_companies` VALUES (45, 'VDART Software Service Pvt. Ltd', 'VDART Software Service Pvt. Ltd', 'company_images/uCKPAKLRZX7YLE11X1kvaSSuVTGKOZ8CM5IMKnls.jpg', 0, 1, '2022-08-28 17:55:18', '2022-08-28 17:55:18');
INSERT INTO `placement_companies` VALUES (46, 'Med Health Care Solutions', 'Med Health Care Solutions', 'company_images/HOmQysPAQgKHCnt2ryTHwu6iNmJhtX1WEQwUcycv.jpg', 0, 1, '2022-08-28 17:56:08', '2022-08-28 17:56:08');
INSERT INTO `placement_companies` VALUES (47, 'VEE Technologies', 'VEE Technologies', 'company_images/wzBxRO6Kx1TYeQMwZxyCzLduGYocwi8kwWxfXdyP.jpg', 0, 1, '2022-08-28 17:56:36', '2022-08-28 17:56:36');
INSERT INTO `placement_companies` VALUES (48, 'Group', 'Group', 'company_images/cSPC3V52Qq1eYBrFE6Yr74Pa7sXMJEeSYZ2qfSQ3.jpg', 0, 1, '2022-08-28 17:57:09', '2022-08-28 17:57:09');
INSERT INTO `placement_companies` VALUES (49, 'Health Watch', 'Health Watch', 'company_images/pyS6I9pmeb46jaM4icQBKsU0jjJHzIRJpRt5XPDf.jpg', 0, 1, '2022-08-28 17:57:42', '2022-08-28 17:57:42');
INSERT INTO `placement_companies` VALUES (50, 'OMICS International', 'OMICS International', 'company_images/UnI4NQQphbPIot0ObpVJneKAaK1CZnFdF03yd976.jpg', 0, 1, '2022-08-28 17:58:21', '2022-08-28 17:58:21');
INSERT INTO `placement_companies` VALUES (51, 'Hexaware Technologies', 'Hexaware Technologies', 'company_images/NpzdWS8GPJY871xrxqkiDZZvf4MPzMTlulaQtY0z.jpg', 0, 1, '2022-08-28 17:58:45', '2022-08-28 17:58:45');
INSERT INTO `placement_companies` VALUES (52, 'Om Innovation ', 'Om Innovation ', 'company_images/fVO8z6F31KQQB1V9Ak6QiUwNJT2rF4LUgn5KOibr.jpg', 0, 1, '2022-08-28 17:59:16', '2022-08-28 17:59:16');
INSERT INTO `placement_companies` VALUES (53, 'Intelenet', 'Intelenet', 'company_images/QbQ9Ata0va9OqWD6JiAzdxa2dx0o4rhrnnDrBkQB.jpg', 0, 1, '2022-08-28 17:59:36', '2022-08-28 17:59:36');
INSERT INTO `placement_companies` VALUES (54, 'Berezia Technology', 'Berezia Technology', 'company_images/giFMe3NnVbza9YxJTduXEFQO2qnUGDhxPZwd5hGn.jpg', 0, 1, '2022-08-28 18:00:07', '2022-08-28 18:00:07');
INSERT INTO `placement_companies` VALUES (55, 'TeamLease', 'TeamLease', 'company_images/cotL5PkhdNKbhC6Snbsu5BbGQzpUjF7dpPchrOIR.jpg', 0, 1, '2022-08-28 18:00:30', '2022-08-28 18:00:30');
INSERT INTO `placement_companies` VALUES (56, 'JustSee Quick CMS', 'JustSee Quick CMS', 'company_images/ELLAduMubypGoKjPrCY6X1DZNKFJizfIFbiTzVuZ.jpg', 0, 1, '2022-08-28 18:01:02', '2022-08-28 18:01:02');
INSERT INTO `placement_companies` VALUES (57, 'Surya Informatics', 'Surya Informatics', 'company_images/p62j1WCPypA5jPFSREdPlABl0F7E5CChnyIcPHPZ.jpg', 0, 1, '2022-08-28 18:01:31', '2022-08-28 18:01:31');
INSERT INTO `placement_companies` VALUES (58, 'Eureka Forbes', 'Eureka Forbes', 'company_images/yOZJPZ7Bi8c1pQxn2OUdQ1DQjMwmPkeCm3dkB9BB.jpg', 0, 1, '2022-08-28 18:01:55', '2022-08-28 18:01:55');
INSERT INTO `placement_companies` VALUES (59, 'Rajasri Systems', 'Rajasri Systems', 'company_images/KKT86HQalMiYBDCkNtKyIB5TzrJ0d6Mzqn7IaHbS.jpg', 0, 1, '2022-08-28 18:02:48', '2022-08-28 18:02:48');
INSERT INTO `placement_companies` VALUES (60, 'COSMOS Constructions', 'COSMOS Constructions', 'company_images/INsE9bDf49L3Leao7TTI6CjTfDamHEmWdQP2LlqQ.jpg', 0, 1, '2022-08-28 18:03:13', '2022-08-28 18:03:13');
INSERT INTO `placement_companies` VALUES (61, 'Capgemini', 'Capgemini', 'company_images/C72NPfK52oY8aWTvdAeL9OCazfnnCvoBX93qpm6I.jpg', 0, 1, '2022-08-28 18:03:43', '2022-08-28 18:03:43');
INSERT INTO `placement_companies` VALUES (62, 'Durus Consulting Pvt. Ltd', 'Durus Consulting Pvt. Ltd', 'company_images/JrlRyv17f9vf19IEJA5hFVn46qu23aIrEnLgsprd.jpg', 0, 1, '2022-08-28 18:04:41', '2022-08-28 18:04:41');
INSERT INTO `placement_companies` VALUES (63, 'Unitech Plasto Components Pvt. Ltd', 'Unitech Plasto Components Pvt. Ltd', 'company_images/kZkbe8uYiFPWHaKZpxnnFApN0rqKe7O0hMC9kHCE.jpg', 0, 1, '2022-08-28 18:05:26', '2022-08-28 18:05:26');
INSERT INTO `placement_companies` VALUES (64, 'Air Liquide Healthcare', 'Air Liquide Healthcare', 'company_images/iRm9UpACc1KquLUkr3NPZGN8sqdVOdRTMTXFkjXQ.jpg', 0, 1, '2022-08-28 18:05:59', '2022-08-28 18:05:59');
INSERT INTO `placement_companies` VALUES (65, 'Rane', 'Rane', 'company_images/p4vqbkt4A8hA8cd8q5igpi6faGFChc4PYUqD3eiI.jpg', 0, 1, '2022-08-28 18:06:26', '2022-08-28 18:06:26');
INSERT INTO `placement_companies` VALUES (66, 'Reva Phoenix Engineers Pvt. Ltd', '', 'company_images/JlGbFkPcTWH5wjaRBy8cZHUYUulss9cF2HpCE0Ia.jpg', 0, 1, '2022-08-28 18:07:09', '2022-08-28 18:07:09');
INSERT INTO `placement_companies` VALUES (67, 'Airtel', 'Airtel', 'company_images/WpnCRcHWIgsOm7sdd2yQfO7w6KDBFN9b3jrwOVxe.jpg', 0, 1, '2022-08-28 18:07:28', '2022-08-28 18:07:28');
INSERT INTO `placement_companies` VALUES (68, 'Trimble', 'Trimble', 'company_images/W9NYMVMH2jIgx1wbszQhKU6CpX1PJQJzwEXr0uPP.jpg', 0, 1, '2022-08-28 18:07:45', '2022-08-28 18:07:45');
INSERT INTO `placement_companies` VALUES (69, 'RIPE', 'RIPE', 'company_images/0pZgoxvJffCHyqY8WoLQlcbPFdDGVlcIzBuvooEG.jpg', 0, 1, '2022-08-28 18:08:11', '2022-08-28 18:08:11');
INSERT INTO `placement_companies` VALUES (70, 'EPI', 'EPI', 'company_images/7uqI1vH702oYvjvk6QZD7z18hZDE5GOPVaKEDftE.jpg', 0, 1, '2022-08-28 18:08:40', '2022-08-28 18:08:40');
INSERT INTO `placement_companies` VALUES (71, 'Skyline', 'Skyline', 'company_images/vXar5CzsTXT0rXfrtCkySDI3Uirq3z8urfR9yAWk.jpg', 0, 1, '2022-08-28 18:09:09', '2022-08-28 18:09:09');
INSERT INTO `placement_companies` VALUES (72, 'Grean Creative Solutions', 'Grean Creative Solutions', 'company_images/k0IF8khcJmLmgIoNJPVyt07Kt7aOjTDl6jydW4C6.jpg', 0, 1, '2022-08-28 18:09:40', '2022-08-28 18:09:40');
INSERT INTO `placement_companies` VALUES (73, 'Bankzone', 'Bankzone', 'company_images/m0DDvoXZDwrXBnfSU5KG8KaxiYyAaVfTKgEI5SwJ.jpg', 0, 1, '2022-08-28 18:09:58', '2022-08-28 18:09:58');
INSERT INTO `placement_companies` VALUES (74, 'HM', 'HM', 'company_images/aoAtVcSZVcEol65u4jEkjsdADGagcJkX3eTvVeSN.jpg', 0, 1, '2022-08-28 18:10:55', '2022-08-28 18:10:55');
INSERT INTO `placement_companies` VALUES (75, 'Jata Auto Ancillarys\' - Heat Treatment Expert', 'Jata Auto Ancillarys\' - Heat Treatment Expert', 'company_images/ai9TtiZpx274NrEW6s3yagognyJfHb4E6ecG2S9C.jpg', 0, 1, '2022-08-28 18:12:04', '2022-08-28 18:12:04');
INSERT INTO `placement_companies` VALUES (76, 'Vel Sakthi Engineering Works', 'Vel Sakthi Engineering Works', 'company_images/e1az4D3K8Y4BILQjT0YfLh3z3oEgE7RPCKGsbfTL.jpg', 0, 1, '2022-08-28 18:12:42', '2022-08-28 18:12:42');
INSERT INTO `placement_companies` VALUES (77, 'Everest Heat Treaters', 'Everest Heat Treaters', 'company_images/Fr5y8G8HyIn8ahDKokc6NJPq7BCdY9xcqPK4WfDO.jpg', 0, 1, '2022-08-28 18:13:05', '2022-08-28 18:13:05');
INSERT INTO `placement_companies` VALUES (78, 'Techno Moulds', 'Techno Moulds', 'company_images/Ug9onxINlvgL4OW3NDGDPYkD9GxjxkBb8QGdnxRn.jpg', 0, 1, '2022-08-28 18:13:34', '2022-08-28 18:13:34');
INSERT INTO `placement_companies` VALUES (79, 'Sai Baba Engineering Works', 'Sai Baba Engineering Works', 'company_images/cG6gzdP9iWAJQP2l5l21elSdRQ2IVN0PopDrEaZZ.jpg', 0, 1, '2022-08-28 18:13:58', '2022-08-28 18:13:58');
INSERT INTO `placement_companies` VALUES (80, 'Kani Industries', 'Kani Industries', 'company_images/JQGjsCe0LCb9VJptLi0ShxU83ncBheSQf86lS0r6.jpg', 0, 1, '2022-08-28 18:14:21', '2022-08-28 18:14:21');
INSERT INTO `placement_companies` VALUES (81, 'Veltech Auto Parts (India) Pvt. Ltd', 'Veltech Auto Parts (India) Pvt. Ltd', 'company_images/jMlYyGTWq4lFfJXPM4FhECaKPxjt8YKQqRefKXDv.jpg', 0, 1, '2022-08-28 18:14:50', '2022-08-28 18:14:50');
INSERT INTO `placement_companies` VALUES (82, 'Abbott', 'Abbott', 'company_images/Rt8uGoDnGLXHoji8QiarjFuLVs8YWEwNaZwlTSDS.jpg', 0, 1, '2022-08-28 18:15:05', '2022-08-28 18:15:05');
INSERT INTO `placement_companies` VALUES (83, 'Sri Ramachandra Medical Centre', 'Sri Ramachandra Medical Centre', 'company_images/95GCy7kjEbAzscilqNhRhAkDbSWQ6P8rfulVMmlf.jpg', 0, 1, '2022-08-28 18:15:42', '2022-08-28 18:15:42');
INSERT INTO `placement_companies` VALUES (84, 'JVR Land Surveys', 'JVR Land Surveys', 'company_images/Jel4zx0heHPAXtABPXkdWn3ck5xBnx66UgtOlcQI.jpg', 0, 1, '2022-08-28 18:16:17', '2022-08-28 18:16:17');
INSERT INTO `placement_companies` VALUES (85, 'Infosys', 'Infosys', 'company_images/VRvmrbrJnCDppklTvGKJsHVrBdlM8w6kwKOkc2Hh.jpg', 0, 1, '2022-08-28 18:16:33', '2022-08-28 18:16:33');
INSERT INTO `placement_companies` VALUES (86, 'iprocess', 'iprocess', 'company_images/FUF0fjfMlyWCDT7Y3WIa1yIOB61RaOWuTItlMakD.jpg', 0, 1, '2022-08-28 18:16:51', '2022-08-28 18:16:51');
INSERT INTO `placement_companies` VALUES (87, 'PathFront', 'PathFront', 'company_images/eFxYyTCJurLzuMBsivgz3dC1PkjztYzHrCy8TS80.jpg', 0, 1, '2022-08-28 18:17:17', '2022-08-28 18:17:17');
INSERT INTO `placement_companies` VALUES (88, 'Power Links', 'Power Links', 'company_images/zSPzl83xQunnulmYHYOkoY9TZku7uE3Tx8WfpVvW.jpg', 0, 1, '2022-08-28 18:17:41', '2022-08-28 18:17:41');
INSERT INTO `placement_companies` VALUES (89, 'Trident Wings', 'Trident Wings', 'company_images/w9ztDizPG5634CqXtiQpqvVRYzhrpD1TspyJGtLW.jpg', 0, 1, '2022-08-28 18:18:01', '2022-08-28 18:18:01');
INSERT INTO `placement_companies` VALUES (90, 'QSpiders ', 'QSpiders ', 'company_images/ovDKDfauO7XgKZE51Wb2E4cRWDqn6QKXEJMoIW2c.jpg', 0, 1, '2022-08-28 18:18:45', '2022-08-28 18:18:45');
INSERT INTO `placement_companies` VALUES (91, 'WTT Technology Services India Pvt Ltd', 'WTT Technology Services India Pvt Ltd', 'company_images/pCl63wSAVBCX8HGuT44nI9ThnXj60PnGJhRg9zRm.jpg', 0, 1, '2022-08-28 18:19:27', '2022-08-28 18:19:27');
INSERT INTO `placement_companies` VALUES (92, 'ECS Elcamino Software Pvt Ltd', 'ECS Elcamino Software Pvt Ltd', 'company_images/yI7Tm4yKjqdQnkQ7R3pi5uxEasxnld6SKs7Y3hGs.jpg', 0, 1, '2022-08-28 18:20:16', '2022-08-28 18:20:16');
INSERT INTO `placement_companies` VALUES (93, 'NLMS', 'NLMS', 'company_images/1zoDcinRIOVBrofMwAqzmKd4myzrDMWPeas87WDR.jpg', 0, 1, '2022-08-28 18:20:32', '2022-08-28 18:20:32');
INSERT INTO `placement_companies` VALUES (94, 'SS Groups of Companies and Institutions', 'SS Groups of Companies and Institutions', 'company_images/8UMPGkeq7cRuJyt14KsiMPxQAqVbPQXPfufkGsgb.jpg', 0, 1, '2022-08-28 18:22:51', '2022-08-28 18:22:51');
INSERT INTO `placement_companies` VALUES (95, 'Sai Dev Global Solutions', 'Sai Dev Global Solutions', 'company_images/wMs7jAKf2lAXmQ0pQUDHcL4UIZ37xyVobM6Cs5pX.jpg', 0, 1, '2022-08-28 18:23:20', '2022-08-28 18:23:20');
INSERT INTO `placement_companies` VALUES (96, 'Yesens Heat Treaters', 'Yesens Heat Treaters', 'company_images/zVSRJztLJVquKwKcWIyysWDSPyiIq9M85DA5NLBE.jpg', 0, 1, '2022-08-28 18:24:00', '2022-08-28 18:24:00');
INSERT INTO `placement_companies` VALUES (97, 'VLF', 'VLF', 'company_images/ovop8rvP52In6JT3MBeXUMeqjt4h4HvAdvg6wpZE.jpg', 0, 1, '2022-08-28 18:24:38', '2022-08-28 18:24:38');
INSERT INTO `placement_companies` VALUES (98, 'Arihant Forgings', 'Arihant Forgings', 'company_images/FWXKw4VwBhqCGHFTkNquzrKnOl8H8rwMHnMNb0n0.jpg', 0, 1, '2022-08-28 18:24:53', '2022-08-28 18:24:53');
INSERT INTO `placement_companies` VALUES (99, 'KEMS Forgings Limited', 'KEMS Forgings Limited', 'company_images/lwWMXPxi9Syo5ulPURsJJW5Hezp64icvLfcGGHZG.jpg', 0, 1, '2022-08-28 18:25:26', '2022-08-28 18:25:26');
INSERT INTO `placement_companies` VALUES (100, 'Vetrivel Auto componetns', 'Vetrivel Auto componetns', 'company_images/qdm7sUG1LLGmtodHLkVee5pMw0TZUBlZIGpbdpFf.jpg', 0, 1, '2022-08-28 18:25:47', '2022-08-28 18:25:47');
INSERT INTO `placement_companies` VALUES (101, 'Juno Hr Solutions', 'Juno Hr Solutions', 'company_images/loHO8J6QToK2ixUrBLWtPs4A5xeFCepbZ23lrh8E.jpg', 0, 1, '2022-08-28 18:26:07', '2022-08-28 18:26:07');
INSERT INTO `placement_companies` VALUES (102, 'CATACIT\'E Infraprojects Limited', 'CATACIT\'E Infraprojects Limited', 'company_images/lb48Lb5N1OazXNZcrs0UFTzHuwLnpNFBvxdzrLjL.jpg', 0, 1, '2022-08-28 18:26:57', '2022-08-28 18:26:57');
INSERT INTO `placement_companies` VALUES (103, 'Deep Industries Limited', 'Deep Industries Limited', 'company_images/0OfKPKhFzzMJZoibxhODevhPYoXSYM2dHmXhRrOF.jpg', 0, 1, '2022-08-28 18:27:42', '2022-08-28 18:27:42');
INSERT INTO `placement_companies` VALUES (104, 'ONGC', 'ONGC', 'company_images/eHeiGrzaUdRrjqXF4S9j1nNCRnDaodl4ExLoFW74.jpg', 0, 1, '2022-08-28 18:28:01', '2022-08-28 18:28:01');
INSERT INTO `placement_companies` VALUES (105, 'Ener Engineering Services Pvt. Ltd', 'Ener Engineering Services Pvt. Ltd', 'company_images/JGAUWsTKC91RjAFrzGmLcds23ihSAnSONObUiBt0.jpg', 0, 1, '2022-08-28 18:28:36', '2022-08-28 18:28:36');
INSERT INTO `placement_companies` VALUES (106, 'Epsilon Energy Ltd', 'Epsilon Energy Ltd', 'company_images/GJMT6WU4rDKeINzLDCP8owaP7CneX40weyipKe7i.jpg', 0, 1, '2022-08-28 18:28:59', '2022-08-28 18:28:59');
INSERT INTO `placement_companies` VALUES (107, 'ESSAR', 'ESSAR', 'company_images/q1UJIAPgloMAhsP7hxS7yX1oVi75UCHY1aDTEyHO.jpg', 0, 1, '2022-08-28 18:29:14', '2022-08-28 18:29:14');
INSERT INTO `placement_companies` VALUES (108, 'Oil Field Instrumentation (India) Pvt. Ltd.', 'Oil Field Instrumentation (India) Pvt. Ltd.', 'company_images/PGK0Ki62Xo5enWygtENe6bgmScThfXHBXQFiH81s.jpg', 0, 1, '2022-08-28 18:29:58', '2022-08-28 18:29:58');

-- ----------------------------
-- Table structure for placements
-- ----------------------------
DROP TABLE IF EXISTS `placements`;
CREATE TABLE `placements`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `placement_year` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `course` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `students_placed` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `companies` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of placements
-- ----------------------------
INSERT INTO `placements` VALUES (1, '2016', '2', '61', 'a:0:{}', 1, '2022-08-28 19:20:16', '2022-08-28 19:20:16');
INSERT INTO `placements` VALUES (2, '2016', '5', '6', 'a:0:{}', 1, '2022-08-28 19:21:03', '2022-08-28 19:21:03');
INSERT INTO `placements` VALUES (3, '2016', '3', '18', 'a:0:{}', 1, '2022-08-28 19:21:16', '2022-08-28 19:21:16');
INSERT INTO `placements` VALUES (4, '2016', '1', '51', 'a:0:{}', 1, '2022-08-28 19:21:33', '2022-08-28 19:21:33');
INSERT INTO `placements` VALUES (5, '2016', '6', '58', 'a:0:{}', 1, '2022-08-28 19:21:45', '2022-08-28 19:21:45');
INSERT INTO `placements` VALUES (6, '2016', '8', '44', 'a:0:{}', 1, '2022-08-28 19:22:01', '2022-08-28 19:22:01');
INSERT INTO `placements` VALUES (7, '2016', '7', '5', 'a:0:{}', 1, '2022-08-28 19:22:21', '2022-08-28 19:22:21');
INSERT INTO `placements` VALUES (8, '2017', '1', '60', 'a:0:{}', 1, '2022-08-28 19:22:43', '2022-08-28 19:22:43');
INSERT INTO `placements` VALUES (9, '2017', '3', '13', 'a:0:{}', 1, '2022-08-28 19:22:53', '2022-08-28 19:22:53');
INSERT INTO `placements` VALUES (10, '2017', '7', '12', 'a:0:{}', 1, '2022-08-28 19:23:08', '2022-08-28 19:23:08');
INSERT INTO `placements` VALUES (11, '2017', '2', '8', 'a:0:{}', 1, '2022-08-28 19:23:29', '2022-08-28 19:23:29');
INSERT INTO `placements` VALUES (12, '2017', '6', '60', 'a:0:{}', 1, '2022-08-28 19:24:14', '2022-08-28 19:24:14');
INSERT INTO `placements` VALUES (13, '2017', '8', '75', 'a:0:{}', 1, '2022-08-28 19:24:27', '2022-08-28 19:24:27');
INSERT INTO `placements` VALUES (14, '2017', '4', '10', 'a:0:{}', 1, '2022-08-28 19:24:44', '2022-08-28 19:24:44');
INSERT INTO `placements` VALUES (15, '2018', '1', '39', 'a:0:{}', 1, '2022-08-28 19:24:59', '2022-08-28 19:24:59');
INSERT INTO `placements` VALUES (16, '2018', '3', '23', 'a:0:{}', 1, '2022-08-28 19:25:10', '2022-08-28 19:25:10');
INSERT INTO `placements` VALUES (17, '2018', '7', '12', 'a:0:{}', 1, '2022-08-28 19:25:21', '2022-08-28 19:25:21');
INSERT INTO `placements` VALUES (18, '2018', '2', '25', 'a:0:{}', 1, '2022-08-28 19:25:35', '2022-08-28 19:25:35');
INSERT INTO `placements` VALUES (19, '2018', '6', '95', 'a:0:{}', 1, '2022-08-28 19:25:47', '2022-08-28 19:25:47');
INSERT INTO `placements` VALUES (20, '2018', '8', '52', 'a:0:{}', 1, '2022-08-28 19:25:56', '2022-08-28 19:25:56');
INSERT INTO `placements` VALUES (21, '2018', '4', '9', 'a:0:{}', 1, '2022-08-28 19:26:09', '2022-08-28 19:26:09');
INSERT INTO `placements` VALUES (22, '2018', '5', '16', 'a:0:{}', 1, '2022-08-28 19:26:19', '2022-08-28 19:26:19');

-- ----------------------------
-- Table structure for scholarships
-- ----------------------------
DROP TABLE IF EXISTS `scholarships`;
CREATE TABLE `scholarships`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `scholarship_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `castes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `highlight` tinyint(1) NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scholarships
-- ----------------------------
INSERT INTO `scholarships` VALUES (1, 'Government Scholarship	', 'BC / MBC – SWS only Parent Annual Income should be less than Rs 2,00,000/-', NULL, 'a:2:{i:0;s:3:\"MBC\";i:1;s:2:\"BC\";}', 'The District Welfare Officer, BC/MBC Welfare Department, Kanchipuram', 1, 1, '2022-08-28 19:31:09', '2022-08-28 19:32:36');
INSERT INTO `scholarships` VALUES (2, 'Government Scholarship', 'SC / ST – SWS only\nParent Annual Income should be less than Rs 2,50,000/-', NULL, 'a:1:{i:0;s:5:\"SC/ST\";}', 'The District Welfare Officer,\nAdiDravidar Welfare Department, Kanchipuram.', NULL, 1, '2022-08-28 19:31:43', '2022-08-28 19:32:24');
INSERT INTO `scholarships` VALUES (3, 'Government Scholarship (SC/ST Fee waiver scheme) 100% free', 'SC / ST – SWS only\nParent Annual Income should be less than Rs 2,50,000/-', NULL, 'a:1:{i:0;s:5:\"SC/ST\";}', 'The District Welfare Officer,\nAdiDravidar Welfare Department, Kanchipuram.', NULL, 1, '2022-08-28 19:32:09', '2022-08-28 19:32:09');
INSERT INTO `scholarships` VALUES (4, 'Central Sector Scheme of Scholarship for College & University Students', '80% and above Marks in HSC', NULL, 'a:0:{}', 'The Joint Director (Hr. Sec.),\nDirectorate of Government Examinations, D.P.I. Campus,\nCollege Road, Chennai – 600 006.', NULL, 1, '2022-08-28 19:33:06', '2022-08-28 19:33:06');
INSERT INTO `scholarships` VALUES (5, 'Chief Minister Farmers Security Scheme	', 'Wards of Farmers', NULL, 'a:0:{}', 'The Commissioner of Technical Education,\nGuindy, Chennai - 600 025', NULL, 1, '2022-08-28 19:33:27', '2022-08-28 19:33:27');
INSERT INTO `scholarships` VALUES (6, 'Minority Scholarship', 'Christians, Muslims, Sikhs & Buddhist\n50% marks in previous exams', NULL, 'a:0:{}', 'The Commissioner of Minorities Welfare, 807 (5th Floor)\nAnna Salai, Chennai – 600 002.', NULL, 1, '2022-08-28 19:33:45', '2022-08-28 19:33:45');
INSERT INTO `scholarships` VALUES (7, 'Physically Challenged Scholarship	', 'Students with disability\n', '', 's:0:\"\";', 'National Handicapped Finance and Development Corp. (NHFDC)	', NULL, 1, '2022-08-28 19:33:58', '2022-08-28 19:33:58');

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `college_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `counselling_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `contact_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `google_map` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `linkedin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `twitter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `instagram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `office_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `office_contact_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `office_phone_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `office_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `iso_certificates` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of settings
-- ----------------------------

-- ----------------------------
-- Table structure for slide_images
-- ----------------------------
DROP TABLE IF EXISTS `slide_images`;
CREATE TABLE `slide_images`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `slide_id` bigint(20) UNSIGNED NOT NULL,
  `slide_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `slide_images_slide_id_foreign`(`slide_id`) USING BTREE,
  CONSTRAINT `slide_images_slide_id_foreign` FOREIGN KEY (`slide_id`) REFERENCES `slides` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of slide_images
-- ----------------------------

-- ----------------------------
-- Table structure for slides
-- ----------------------------
DROP TABLE IF EXISTS `slides`;
CREATE TABLE `slides`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `slide_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of slides
-- ----------------------------

-- ----------------------------
-- Table structure for university_rankers
-- ----------------------------
DROP TABLE IF EXISTS `university_rankers`;
CREATE TABLE `university_rankers`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `student_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `student_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `course_id` int(255) NULL DEFAULT NULL,
  `year` int(11) NULL DEFAULT NULL,
  `percentage` double(8, 2) NULL DEFAULT 0.00,
  `rank` int(11) NULL DEFAULT NULL,
  `university` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `highlight` tinyint(1) NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of university_rankers
-- ----------------------------
INSERT INTO `university_rankers` VALUES (1, NULL, 'Vishnu Brindha S K', 'student_images/pefuIGJWjWfOKAGIKlWfcmabkrBG2wyTnFzjhYOU.jpg', 12, 2018, NULL, 8, 'Anna University', NULL, 1, '2022-08-29 13:25:12', '2022-08-29 13:25:12');
INSERT INTO `university_rankers` VALUES (2, '', 'Jennifer N', 'student_images/R2AcuvQBYfaTKuc9pt2mKxuqOJSMsFlIOS4ezYRM.jpg', 9, 2015, 8.80, NULL, '', 0, 1, '2022-08-29 13:28:24', '2022-08-29 13:28:24');
INSERT INTO `university_rankers` VALUES (3, '', 'Ambi Rachel Alex', 'student_images/Pg5FfgWLJ7bqqRC8VssZa5BRVNHT9Uy3ZVBDmzPf.jpg', 12, 2014, 8.90, 18, 'Anna University', 0, 1, '2022-08-29 13:29:10', '2022-08-29 13:29:10');
INSERT INTO `university_rankers` VALUES (4, NULL, 'Aakash C', 'student_images/RvMe08vFWHqsuQACb8AGKSyya89mt1dOufqSvt3k.jpg', 8, 2018, NULL, 2, 'Anna University', NULL, 1, '2022-08-29 13:37:42', '2022-08-29 13:37:42');
INSERT INTO `university_rankers` VALUES (5, NULL, 'Hariprasath K', 'student_images/Vd1b7Mym7QrIgk0arla0low3hytLOpUb4XNawRWU.jpg', 8, 2018, NULL, 5, 'Anna University', NULL, 1, '2022-08-29 13:39:39', '2022-08-29 13:39:39');
INSERT INTO `university_rankers` VALUES (6, '', 'Vimal Kumar S ', 'student_images/bkjFkZHWCn1absLCDvjxD3JsH2c4EetmQwpMHmnf.jpg', 8, 2018, NULL, 8, 'Anna University', 0, 1, '2022-08-29 13:40:20', '2022-08-29 13:40:20');
INSERT INTO `university_rankers` VALUES (7, '', 'Annandakumar K', 'student_images/N4mBc05iEvP0DR9CQFiRX3soxV749pkMrxIrfMys.jpg', 8, 2018, NULL, 9, 'Anna University', 0, 1, '2022-08-29 13:41:01', '2022-08-29 13:41:01');
INSERT INTO `university_rankers` VALUES (8, '', 'Balaji K', 'student_images/1LXPHFSTQayWcTydQ8Pndwmxu2G21qOqv3RSJ17P.jpg', 8, 2018, NULL, 12, 'Anna University', 0, 1, '2022-08-29 13:41:52', '2022-08-29 13:41:52');
INSERT INTO `university_rankers` VALUES (9, '', 'Jeffri Christina J', 'student_images/rwQfzzyr0M6z4uHqB0Pc4spP6OifkWe6L193KwjL.jpg', 1, 2018, NULL, 14, 'Anna University', 0, 1, '2022-08-29 13:42:35', '2022-08-29 13:42:35');
INSERT INTO `university_rankers` VALUES (10, '', 'Akshaya N', 'student_images/7YtzMjB0lUAQORMGH44ZOYt6IOUy4DijvxsgKDqN.jpg', 1, 2018, NULL, 28, 'Anna University', 0, 1, '2022-08-29 13:43:18', '2022-08-29 13:43:18');
INSERT INTO `university_rankers` VALUES (11, '', 'Vidhya E', 'student_images/ST54r5G1hHEnhO6j9XN0IFH9DHLU5dCPJGEH1ouw.jpg', 1, 2018, NULL, 30, 'Anna University', 0, 1, '2022-08-29 13:43:51', '2022-08-29 13:43:51');
INSERT INTO `university_rankers` VALUES (12, '', 'Priyanka A ', 'student_images/hRQdf4BXvQnLn2KRMxGUSFyPbFr34G5LzWBlcUah.jpg', 1, 2018, NULL, 38, 'Anna University', 0, 1, '2022-08-29 13:44:25', '2022-08-29 13:44:25');
INSERT INTO `university_rankers` VALUES (13, NULL, 'Lakshmanan A', 'student_images/MmBYfYW72Q2tZjUxa9D41NBXQk8t4l8P5r2MQpn5.jpg', 8, 2017, NULL, 2, NULL, NULL, 1, '2022-08-29 13:45:06', '2022-08-29 13:45:06');
INSERT INTO `university_rankers` VALUES (14, '', 'Udit Saravanan U', 'student_images/QQ2bgXdAjCN1kdIkvZ90Ie05ahzEexHgmcSb2Sz8.jpg', 8, 2017, NULL, 3, 'Anna University', 0, 1, '2022-08-29 13:45:43', '2022-08-29 13:45:43');
INSERT INTO `university_rankers` VALUES (15, '', 'Praveen Raj B', 'student_images/hpSZOE0oGQVoHvm4ECWN2hXiTEzktHQodvMYdunZ.jpg', 8, 2017, NULL, 4, 'Anna University', 0, 1, '2022-08-29 13:46:22', '2022-08-29 13:46:22');
INSERT INTO `university_rankers` VALUES (16, '', 'Gerthurth Mary J', 'student_images/wJOs44C4UHbMbXwVd9QLjKKahHjaAzqt6KCvvfJX.jpg', 1, 2017, NULL, 31, '', 0, 1, '2022-08-29 13:47:02', '2022-08-29 13:47:02');
INSERT INTO `university_rankers` VALUES (17, '', 'Vijayalakshmi S', 'student_images/TV9R5HCccOzfO4g1kAd7AEOPzhtgoZXuHeNmhpvS.jpg', 1, 2017, NULL, 37, 'Anna University', 0, 1, '2022-08-29 13:47:47', '2022-08-29 13:47:47');
INSERT INTO `university_rankers` VALUES (18, '', 'Mohammed Azaruddin A', 'student_images/lOuGaWqOoZZMJQYcthTdxoWLl4ksRBNTvezJnCFF.jpg', 7, 2017, NULL, 30, 'Anna University', 0, 1, '2022-08-29 13:48:28', '2022-08-29 13:48:28');
INSERT INTO `university_rankers` VALUES (19, '', 'Jegisha Sekar', 'student_images/jtxvME8RITrFQRbZodI6zugJ6Y2A7wjXRMfodauV.jpg', 8, 2016, NULL, 1, 'Anna University', 0, 1, '2022-08-29 13:49:29', '2022-08-29 13:49:29');
INSERT INTO `university_rankers` VALUES (20, '', 'Jiss Jo Dominic', 'student_images/gxQ4688FmgfQip1rr5iWvaWKw9awPawsk9tPHPBE.jpg', 8, 2016, 8.35, 2, '', 0, 1, '2022-08-29 13:50:01', '2022-08-29 13:50:01');
INSERT INTO `university_rankers` VALUES (21, '', 'Vignesh V ', 'student_images/Dwb4SS881trawq01OS68R3IgikVa50KG6Z6Cxvh5.jpg', 8, 2015, 8.61, 1, '', 0, 1, '2022-08-29 13:50:47', '2022-08-29 13:50:47');
INSERT INTO `university_rankers` VALUES (22, '', 'Aman Hamza', 'student_images/GeQM0oxVjQbSVgcCStrbcFe62OA0DOUTvNn3pyoU.jpg', 8, 2015, 8.32, 1, '', 0, 1, '2022-08-29 13:51:46', '2022-08-29 13:51:46');
INSERT INTO `university_rankers` VALUES (23, NULL, 'Jegan', 'student_images/mSG4PY8OdWhDM7AX85mLIxzI67aQk3qXl1OfDiJc.jpg', 8, 2014, NULL, 1, 'Anna University', NULL, 1, '2022-08-29 13:53:06', '2022-08-29 13:53:06');
INSERT INTO `university_rankers` VALUES (24, '', 'Karuppiah ', 'student_images/blnlOH3dHMonOUte1NlwN2e1fpO17jcEWjNltGkH.jpg', 8, 2014, NULL, 2, '', 0, 1, '2022-08-29 13:53:31', '2022-08-29 13:53:31');
INSERT INTO `university_rankers` VALUES (25, '', 'Alzany ', 'student_images/EU8HuVJi7yz4e629HsShgQXHMySeuz6xQSZh8kc9.jpg', 8, 2014, NULL, 3, '', 0, 1, '2022-08-29 13:54:07', '2022-08-29 13:54:07');
INSERT INTO `university_rankers` VALUES (26, '', 'Lakshmi Devi ', 'student_images/3dbyeyNh1GQdE2MjXFSNsu0ejwSHQFiDD0jKzDDc.jpg', 8, 2013, NULL, 1, '', 0, 1, '2022-08-29 13:54:42', '2022-08-29 13:54:42');
INSERT INTO `university_rankers` VALUES (27, '', 'Priyanka ', 'student_images/hT9el6rD5ZkgaubpSzflnPEgSVgdoxRIFyn8vlch.jpg', 8, 2013, NULL, 2, 'Anna University', 0, 1, '2022-08-29 13:55:05', '2022-08-29 13:55:05');
INSERT INTO `university_rankers` VALUES (28, '', 'Jayaprakash ', 'student_images/ypiWXxTAVbXsAHEl8fSC7fUG5PhGVHNtY5DZUSdQ.jpg', 8, 2012, NULL, 1, 'Anna University', 0, 1, '2022-08-29 13:55:46', '2022-08-29 13:55:46');
INSERT INTO `university_rankers` VALUES (29, '', 'Farhan ', 'student_images/bOImOwzIU8SjUSHKluv8LuwCGxzfUzSfSv6Uxlp4.jpg', 8, 2012, NULL, 2, 'Anna University', 0, 1, '2022-08-29 13:57:27', '2022-08-29 13:57:27');
INSERT INTO `university_rankers` VALUES (30, '', 'Maniram ', 'student_images/Oxxchw4UzsmExVoU11iDlj005R0dRy4slsT7VMFe.jpg', 8, 2012, NULL, 3, 'Anna University', 0, 1, '2022-08-29 13:57:52', '2022-08-29 13:57:52');
INSERT INTO `university_rankers` VALUES (31, '', 'Swathy', 'student_images/dGsam5zkxbq9NdeTBKx5pwGUSaJHo2AWWngfVfXY.jpg', 8, 2011, NULL, 1, 'Anna University', 0, 1, '2022-08-29 13:58:31', '2022-08-29 13:58:31');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------

-- ----------------------------
-- Table structure for web_pages
-- ----------------------------
DROP TABLE IF EXISTS `web_pages`;
CREATE TABLE `web_pages`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `page` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of web_pages
-- ----------------------------

-- ----------------------------
-- Table structure for website_detail_attachments
-- ----------------------------
DROP TABLE IF EXISTS `website_detail_attachments`;
CREATE TABLE `website_detail_attachments`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `web_page_id` bigint(20) UNSIGNED NOT NULL,
  `website_detail_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `website_detail_attachments_web_page_id_foreign`(`web_page_id`) USING BTREE,
  INDEX `website_detail_attachments_website_detail_id_foreign`(`website_detail_id`) USING BTREE,
  CONSTRAINT `website_detail_attachments_web_page_id_foreign` FOREIGN KEY (`web_page_id`) REFERENCES `web_pages` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `website_detail_attachments_website_detail_id_foreign` FOREIGN KEY (`website_detail_id`) REFERENCES `website_details` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of website_detail_attachments
-- ----------------------------

-- ----------------------------
-- Table structure for website_details
-- ----------------------------
DROP TABLE IF EXISTS `website_details`;
CREATE TABLE `website_details`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `web_page_id` bigint(20) UNSIGNED NOT NULL,
  `container` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `order` int(11) NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `website_details_web_page_id_foreign`(`web_page_id`) USING BTREE,
  CONSTRAINT `website_details_web_page_id_foreign` FOREIGN KEY (`web_page_id`) REFERENCES `web_pages` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of website_details
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;

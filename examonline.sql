/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE DATABASE IF NOT EXISTS `examonline` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `examonline`;

CREATE TABLE IF NOT EXISTS `classes` (
  `classid` int(11) NOT NULL AUTO_INCREMENT,
  `classname` text DEFAULT NULL,
  PRIMARY KEY (`classid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `classes` (`classid`, `classname`) VALUES
	(1, 'C#-001'),
	(2, 'JAVA-001'),
	(3, 'MMT-001'),
	(4, 'ĐHMT-001'),
	(5, 'CNPM-001');

CREATE TABLE IF NOT EXISTS `classes_tests` (
  `classid` int(11) NOT NULL,
  `testid` int(11) NOT NULL,
  PRIMARY KEY (`classid`,`testid`),
  KEY `FK_Tests_Classes_idx` (`testid`),
  CONSTRAINT `FK_Classes_Tests` FOREIGN KEY (`classid`) REFERENCES `classes` (`classid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Tests_Classes` FOREIGN KEY (`testid`) REFERENCES `tests` (`testid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

INSERT INTO `classes_tests` (`classid`, `testid`) VALUES
	(1, 9),
	(1, 16),
	(2, 2),
	(2, 10),
	(2, 13),
	(3, 3),
	(5, 11);

CREATE TABLE IF NOT EXISTS `classes_user` (
  `classid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`classid`,`userid`),
  KEY `FK_Users_idx` (`userid`),
  CONSTRAINT `FK_Classes` FOREIGN KEY (`classid`) REFERENCES `classes` (`classid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Users` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

INSERT INTO `classes_user` (`classid`, `userid`) VALUES
	(1, 4),
	(1, 5),
	(1, 6),
	(1, 7),
	(1, 8),
	(1, 9),
	(1, 10),
	(1, 11),
	(1, 12),
	(1, 13),
	(1, 14),
	(1, 15),
	(1, 16),
	(1, 17),
	(1, 18),
	(1, 19),
	(1, 20),
	(1, 21),
	(1, 22),
	(1, 23),
	(1, 24),
	(2, 25),
	(2, 26),
	(2, 27),
	(2, 28),
	(2, 29),
	(2, 30),
	(2, 31),
	(2, 32),
	(2, 33),
	(2, 34),
	(2, 35),
	(2, 36),
	(2, 37),
	(2, 38),
	(2, 39),
	(2, 40),
	(2, 41),
	(2, 42),
	(2, 43),
	(2, 44),
	(3, 45),
	(3, 46),
	(3, 47),
	(3, 48),
	(3, 49),
	(3, 50),
	(3, 51),
	(3, 52),
	(3, 53),
	(3, 54),
	(3, 55),
	(3, 56),
	(3, 57),
	(3, 58),
	(3, 59),
	(3, 60),
	(3, 61),
	(3, 62),
	(3, 63),
	(3, 64),
	(4, 65),
	(4, 66),
	(4, 67),
	(4, 68),
	(4, 69),
	(4, 70),
	(4, 71),
	(4, 72),
	(4, 73),
	(4, 74),
	(4, 75),
	(4, 76),
	(4, 77),
	(4, 78),
	(4, 79),
	(4, 80),
	(4, 81),
	(4, 82),
	(4, 83);

CREATE TABLE `listclassexamview` (
	`classid` INT(1) NOT NULL,
	`classname` INT(1) NOT NULL,
	`subjectname` INT(1) NOT NULL,
	`testtypemame` INT(1) NOT NULL,
	`testid` INT(1) NOT NULL
) ENGINE=MyISAM;

CREATE TABLE IF NOT EXISTS `medias` (
  `mediaid` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(45) DEFAULT NULL,
  `media` varchar(45) DEFAULT NULL,
  `questionid` int(11) DEFAULT NULL,
  PRIMARY KEY (`mediaid`),
  KEY `Fk_Questions_idx` (`questionid`),
  CONSTRAINT `Fk_Questions` FOREIGN KEY (`questionid`) REFERENCES `questions` (`questionid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `medias` (`mediaid`, `image`, `media`, `questionid`) VALUES
	(1, NULL, NULL, NULL);

CREATE TABLE IF NOT EXISTS `options` (
  `questionid` int(11) DEFAULT NULL,
  `optionid` int(11) NOT NULL AUTO_INCREMENT,
  `optionname` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `isanswer` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`optionid`),
  KEY `FK_Qustion_Option_idx` (`questionid`),
  CONSTRAINT `FK_Qustion_Option` FOREIGN KEY (`questionid`) REFERENCES `questions` (`questionid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=373 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `options` (`questionid`, `optionid`, `optionname`, `isanswer`) VALUES
	(1, 1, 'A. Ngôn ngữ máy cấp thấp (Low-level language)', 0),
	(1, 2, 'B. Ngôn ngữ lắp ráp (Assembly language)', 0),
	(1, 3, 'C. Ngôn ngữ lập trình hướng đối tượng (Object-oriented programming language)', 1),
	(1, 4, 'D. Ngôn ngữ kịch bản (Scripting language)', 0),
	(2, 5, 'A. int', 1),
	(2, 6, 'B. string', 0),
	(2, 7, 'C. double', 0),
	(2, 8, 'D. bool', 0),
	(3, 9, 'A. Khởi tạo một đối tượng mới', 0),
	(3, 10, 'B. Tạo một hàm mới', 0),
	(3, 11, 'C. Định nghĩa các biến toàn cục', 0),
	(3, 12, 'D. Là điểm bắt đầu của chương trình', 1),
	(4, 13, 'A. int array[5];', 0),
	(4, 14, 'B. int array = new int[5];', 0),
	(4, 15, 'C. int[] array = new int[5];', 1),
	(4, 16, 'D. int[5] array;', 0),
	(5, 17, 'A. Console.ReadLine();', 1),
	(5, 18, 'B. Console.Write();\r\n', 0),
	(5, 19, 'C. Console.WriteLine();', 0),
	(5, 20, 'D. Console.Read();', 0),
	(6, 21, 'A. void functionName() { }', 1),
	(6, 22, 'B. void functionName() ', 0),
	(6, 23, 'C. void functionName { }', 0),
	(6, 24, 'D. functionName void() { }', 0),
	(7, 25, 'A. ==', 1),
	(7, 26, 'B. =', 0),
	(7, 27, 'C. !=', 0),
	(7, 28, 'D. <=', 0),
	(8, 29, 'A. classObject = new Class();', 1),
	(8, 30, 'B. classObject = new Object.Class();', 0),
	(8, 31, 'C. classObject = create Class();', 0),
	(8, 32, 'D. classObject = Class();', 0),
	(9, 33, 'A. Convert.ToInt32()', 0),
	(9, 34, 'B. Parse()\r\n', 0),
	(9, 35, 'C. ToInt32()', 0),
	(9, 36, 'D. All of the above (Tất cả đều đúng)', 1),
	(10, 37, 'A. Initialize()', 0),
	(10, 38, 'B. Dispose()', 0),
	(10, 39, 'C. Constructor()', 1),
	(10, 40, 'D. Destructor()', 0),
	(11, 41, 'A. Console.Print();', 0),
	(11, 42, 'B. Console.Display();', 0),
	(11, 43, 'C. Console.Write();', 1),
	(11, 44, 'D. Console.Output();', 0),
	(12, 45, 'A. while loop', 0),
	(12, 46, 'B. for loop', 0),
	(12, 47, 'C. do-while loop', 0),
	(12, 48, 'D. Tất cả các phương án trên', 1),
	(13, 49, 'A. methodName();', 1),
	(13, 50, 'B. void methodName();', 0),
	(13, 51, 'C. methodName;', 0),
	(13, 52, 'D. returnType methodName();', 0),
	(14, 53, 'A. if-else', 1),
	(14, 54, 'B. for loop', 0),
	(14, 55, 'C. switch-case', 0),
	(14, 56, 'D. do-while loop', 0),
	(15, 57, 'A. constant', 0),
	(15, 58, 'B. readonly', 0),
	(15, 59, 'C. final', 0),
	(15, 60, 'D. const', 1),
	(16, 61, 'A. class ChildClass : ParentClass {}', 1),
	(16, 62, 'B. class ChildClass extends ParentClass {}', 0),
	(16, 63, 'C. class ChildClass : extends ParentClass {}', 0),
	(16, 64, 'D. class ChildClass extends ParentClass {}', 0),
	(17, 65, 'A. int Sum(int num1, int num2) ', 1),
	(17, 66, 'B. int Add(int num1, int num2) ', 0),
	(17, 67, 'C. void Sum(int num1, int num2) ', 0),
	(17, 68, 'D. int Calculate(int num1, int num2) ', 0),
	(18, 69, 'A. int Length(string str) ', 1),
	(18, 70, 'B. int GetLength(string str) ', 0),
	(18, 71, 'C. int Length(string str) ', 0),
	(18, 72, 'D. int GetLength(string str) ', 0),
	(19, 73, 'A. methodName();', 0),
	(19, 74, 'B. ClassName.methodName();', 1),
	(19, 75, 'C. objectName.methodName();', 0),
	(19, 76, 'D. methodName;', 0),
	(20, 77, 'A. break;', 1),
	(20, 78, 'B. continue;', 0),
	(20, 79, 'C. exit;', 0),
	(20, 80, 'D. stop;', 0),
	(21, 85, 'A.  Cả hai có thể được khởi tạo đối tượng trực tiếp.', 0),
	(21, 86, 'B. Cả hai có thể chứa phương thức đã được triển khai.', 0),
	(21, 87, 'C. Cả hai có thể định nghĩa các biến thành viên.', 0),
	(21, 88, 'D. Cả hai không thể được khởi tạo đối tượng trực tiếp.', 1),
	(22, 89, 'A. Đánh dấu một phương thức là bất đồng bộ.', 0),
	(22, 90, 'B. Đánh dấu một vòng lặp vô hạn.', 0),
	(22, 91, 'C. Tạo một trình lặp dựa trên một collection.', 1),
	(22, 92, 'D. Trả về kết quả từ một phương thức ở mỗi lần gọi.', 0),
	(23, 93, 'A. Tham chiếu đến một đối tượng.', 0),
	(23, 94, 'B. Khai báo một biến không thay đổi.', 0),
	(23, 95, 'C. Thay đổi giá trị của một biến truyền vào phương thức.', 1),
	(23, 96, 'D. Tạo một tham số tùy chọn trong phương thức.', 0),
	(24, 97, 'A. Biến không thay đổi (constant variable).', 0),
	(24, 98, 'B. Mảng chỉ đọc (read-only array).', 0),
	(24, 99, 'C. Phương thức chỉ đọc (read-only method).', 0),
	(24, 100, 'D. Trường chỉ đọc (read-only field).', 1),
	(25, 101, 'A. "StringBuilder" không thể thay đổi giá trị.', 0),
	(25, 102, 'B. "StringBuilder" cho phép chỉnh sửa nội dung, trong khi "string" không.', 1),
	(25, 103, 'C. "StringBuilder" chỉ sử dụng được cho kiểu dữ liệu số.', 0),
	(25, 104, 'D. "StringBuilder" là kiểu dữ liệu dùng để định nghĩa lớp.', 0),
	(26, 105, 'A. Equals()', 1),
	(26, 106, 'B. CompareTo()', 0),
	(26, 107, 'C. ReferenceEquals()', 0),
	(26, 108, 'D. GetHashCode()', 0),
	(27, 109, 'A. Đánh dấu một lớp không thể được kế thừa.', 1),
	(27, 110, 'B. Đánh dấu một phương thức không thể được ghi đè.', 0),
	(27, 111, 'C. Đánh dấu một biến không thể thay đổi.', 0),
	(27, 112, 'D. Đánh dấu một vòng lặp không thể thoát.', 0),
	(28, 113, 'A. finalize()', 1),
	(28, 114, 'B. delete()', 0),
	(28, 115, 'C. dispose()', 0),
	(28, 116, 'D. destroy()', 0),
	(29, 117, 'A. Đánh dấu một tham số tùy chọn trong phương thức.', 0),
	(29, 118, 'B. Chỉ định một phương thức là bất đồng bộ.', 0),
	(29, 119, 'C. Chỉ định một biến đối số có thể chứa nhiều giá trị.', 1),
	(29, 120, 'D. Xác định một lớp là abstract.', 0),
	(30, 121, 'A. Ép kiểu giữa các kiểu dữ liệu nguyên thủy.', 0),
	(30, 122, 'B. Ép kiểu giữa các kiểu dữ liệu tham chiếu.', 0),
	(30, 123, 'C. Đóng gói một giá trị nguyên thủy vào một đối tượng.', 1),
	(30, 124, 'D. Giải nén một giá trị nguyên thủy từ một đối tượng.', 0),
	(46, 125, 'A. print()', 0),
	(46, 126, 'B. printf()', 0),
	(46, 127, 'C. println()', 1),
	(46, 128, 'D. display()', 0),
	(47, 129, 'A. Ngôn ngữ biên dịch', 0),
	(47, 130, 'B. Ngôn ngữ cấp cao', 1),
	(47, 131, 'C. Ngôn ngữ hợp ngữ', 0),
	(47, 132, 'D. Ngôn ngữ giao tiếp', 0),
	(48, 133, 'A. System', 0),
	(48, 134, 'B. Scanner', 1),
	(48, 135, 'C. InputReader', 0),
	(48, 136, 'D. BufferedReader', 0),
	(49, 137, 'A. constant', 0),
	(49, 138, 'B. final', 1),
	(49, 139, 'C. static', 0),
	(49, 140, 'D. volatile', 0),
	(50, 141, 'A. init()', 0),
	(50, 142, 'B. main()', 0),
	(50, 143, 'C. constructor', 1),
	(50, 144, 'D. start()', 0),
	(51, 145, 'A. extends', 1),
	(51, 146, 'B. implements', 0),
	(51, 147, 'C. inherits', 0),
	(51, 148, 'D. derives', 0),
	(52, 149, 'A. Nguyên tắc SOLID', 0),
	(52, 150, 'B. Nguyên tắc DRY', 0),
	(52, 151, 'C. Nguyên tắc OOP', 1),
	(52, 152, 'D. Nguyên tắc KISS', 0),
	(53, 153, 'A. Thời gian biên dịch', 1),
	(53, 154, 'B. Thời gian chạy', 0),
	(53, 155, 'C. Thời gian debug', 0),
	(53, 156, 'D. Thời gian phân tích', 0),
	(54, 157, 'A. for', 0),
	(54, 158, 'B.  while', 1),
	(54, 159, 'C. do-while', 0),
	(54, 160, 'D. loop', 0),
	(55, 161, 'A. Đúng', 1),
	(55, 162, 'B. Sai', 0),
	(55, 163, 'C. Mảng còn chứa phần tử cùng kích thước', 0),
	(55, 164, 'D. Phân vân', 0),
	(66, 165, 'A. void', 0),
	(66, 166, 'B. return', 1),
	(66, 167, 'C. value', 0),
	(66, 168, 'D. get', 0),
	(67, 169, 'A. Một', 0),
	(67, 170, 'B. Hai', 0),
	(67, 171, 'C. Nhiều', 1),
	(67, 172, 'D. Không có lời gọi nào', 0),
	(68, 173, 'A. new', 1),
	(68, 174, 'B. create', 0),
	(68, 175, 'C. instance', 0),
	(68, 176, 'D. object', 0),
	(69, 177, 'A. equals()', 1),
	(69, 178, 'B. compare()', 0),
	(69, 179, 'C. == operator', 0),
	(69, 180, 'D. compareTo()', 0),
	(70, 181, 'A. BaseClass', 0),
	(70, 182, 'B. Object', 1),
	(70, 183, 'C. RootClass', 0),
	(70, 184, 'D. MainClass', 0),
	(71, 185, 'A. continue', 1),
	(71, 186, 'B. break', 0),
	(71, 187, 'C. exit', 0),
	(71, 188, 'D. skip', 0),
	(72, 189, 'A. BufferedReader', 1),
	(72, 190, 'B. InputStreamReader', 0),
	(72, 191, 'C. FileReader', 0),
	(72, 192, 'D. FileInputReader', 0),
	(73, 193, 'A. inherit', 0),
	(73, 194, 'B. extends', 1),
	(73, 195, 'C. implement', 0),
	(73, 196, 'D. import', 0),
	(74, 197, 'A. final', 1),
	(74, 198, 'B. static', 0),
	(74, 199, 'C. private', 0),
	(74, 200, 'D. protected', 0),
	(75, 201, 'A. run()', 0),
	(75, 202, 'B. start()', 1),
	(75, 203, 'C. execute()', 0),
	(75, 204, 'D. begin()', 0),
	(86, 205, 'A. Có thể khởi tạo đối tượng từ interface.', 0),
	(86, 206, 'B. Interface có thể chứa các phương thức có thân.', 0),
	(86, 207, 'C. Một class có thể implement nhiều interface.', 0),
	(86, 208, 'D. Interface không thể có biến thành viên.', 1),
	(87, 209, 'A. final', 1),
	(87, 210, 'B. abstract', 0),
	(87, 211, 'C. private', 0),
	(87, 212, 'D. protected', 0),
	(88, 213, 'A. try-catch', 1),
	(88, 214, 'B. throw', 0),
	(88, 215, 'C. catch-throw', 0),
	(88, 216, 'D. exception', 0),
	(89, 217, 'A. finalize()', 1),
	(89, 218, 'B. destroy()', 0),
	(89, 219, 'C. delete()', 0),
	(89, 220, 'D. remove()', 0),
	(90, 221, 'A. global', 0),
	(90, 222, 'B. public', 0),
	(90, 223, 'C. private ', 0),
	(90, 224, 'D. static', 1),
	(91, 225, 'A. BufferedWriter', 0),
	(91, 226, 'B. OutputStreamWriter', 0),
	(91, 227, 'C. FileWriter', 1),
	(91, 228, 'D. FileOutputWriter', 0),
	(92, 229, 'A. modify', 0),
	(92, 230, 'B. change', 0),
	(92, 231, 'C. update', 0),
	(92, 232, 'D. final', 1),
	(93, 233, 'A. InputStream', 0),
	(93, 234, 'B. DataInputStream', 1),
	(93, 235, 'C. BinaryReader', 0),
	(93, 236, 'D. FileReader', 0),
	(94, 237, 'A. inherit', 0),
	(94, 238, 'B. extends', 0),
	(94, 239, 'C. implement', 1),
	(94, 240, 'D. import', 0),
	(95, 241, 'A. InputOutput', 0),
	(95, 242, 'B. Stream', 1),
	(95, 243, 'C. ReaderWriter', 0),
	(95, 244, 'D. IOStream', 0),
	(106, 245, 'A. Tầng vận chuyển (Transport Layer)', 1),
	(106, 246, 'B. Tầng mạng (Network Layer)', 0),
	(106, 247, 'C. Tầng liên kết dữ liệu (Data Link Layer)', 0),
	(106, 248, 'D. Tầng vật lý (Physical Layer)', 0),
	(107, 249, 'A. 192.168.0.1', 1),
	(107, 250, 'B. 00:1A:2B:3C:4D:5E', 0),
	(107, 251, 'C. www.example.com', 0),
	(107, 252, 'D. 255.255.255.0', 0),
	(108, 253, 'A. Giải quyết địa chỉ IP thành địa chỉ MAC', 1),
	(108, 254, 'B. Giải quyết địa chỉ MAC thành địa chỉ IP', 0),
	(108, 255, 'C. Giải quyết địa chỉ IP thành tên miền', 0),
	(108, 256, 'D. Giải quyết địa chỉ tên miền thành địa chỉ IP', 0),
	(109, 257, 'A. Gửi và nhận dữ liệu trên mạng', 0),
	(109, 258, 'B. Phân chia mạng thành các mạng con', 0),
	(109, 259, 'C. Cấu hình động địa chỉ IP cho các thiết bị trong mạng', 1),
	(109, 260, 'D. Định tuyến gói tin trên mạng', 0),
	(110, 261, 'A. Truyền dữ liệu âm thanh và hình ảnh trên mạng', 0),
	(110, 262, 'B. Kiểm tra tính hợp lệ và trạng thái của các địa chỉ IP', 1),
	(110, 263, 'C. Xử lý các giao thức bảo mật trên mạng', 0),
	(110, 264, 'D. Xác định địa chỉ MAC của thiết bị trên mạng', 0),
	(111, 265, 'A. Định tuyến gói tin trên mạng', 0),
	(111, 266, 'B. Kiểm soát truy cập vào mạng dựa trên địa chỉ IP', 0),
	(111, 267, 'C. Chia sẻ địa chỉ IP công khai cho các thiết bị trong mạng riêng', 1),
	(111, 268, 'D. Phân chia mạng thành các mạng con', 0),
	(112, 269, 'A. Xử lý các giao thức bảo mật trên mạng', 0),
	(112, 270, 'B. Kiểm soát truy cập vào mạng dựa trên địa chỉ IP', 0),
	(112, 271, 'C. Chuyển đổi địa chỉ IP thành tên miền', 1),
	(112, 272, 'D. Xác định địa chỉ MAC của thiết bị trên mạng', 0),
	(113, 273, 'A. Gửi và nhận dữ liệu trên mạng', 0),
	(113, 274, 'B. Đăng nhập và quản lý tài khoản trên mạng', 0),
	(113, 275, 'C. Chia sẻ tệp tin và thư mục trên mạng', 1),
	(113, 276, 'D. Cấu hình động địa chỉ IP cho các thiết bị trong mạng', 0),
	(114, 277, 'A. Truyền dữ liệu âm thanh và hình ảnh trên mạng', 0),
	(114, 278, 'B. Kiểm tra tính hợp lệ và trạng thái của các địa chỉ IP', 0),
	(114, 279, 'C. Xử lý các giao thức bảo mật trên mạng', 0),
	(114, 280, 'D. Truyền tải trang web và dữ liệu trên mạng', 1),
	(126, 285, 'A. Truyền dữ liệu âm thanh và hình ảnh trên mạng', 0),
	(126, 286, 'B. Gửi và nhận thư điện tử trên mạng', 1),
	(126, 287, 'C. Xử lý các giao thức bảo mật trên mạng', 0),
	(126, 288, 'D. Kiểm tra tính hợp lệ và trạng thái của các địa chỉ IP', 0),
	(127, 289, 'A. Xử lý các giao thức bảo mật trên mạng', 1),
	(127, 290, 'B. Kiểm soát truy cập vào mạng dựa trên địa chỉ IP', 0),
	(127, 291, 'C. Chuyển đổi địa chỉ IP thành tên miền', 0),
	(127, 292, 'D. Bảo mật dữ liệu truyền qua mạng bằng việc mã hóa', 0),
	(128, 293, 'A. Kiểm tra kết nối mạng', 0),
	(128, 294, 'B. Gửi và nhận dữ liệu trên mạng', 0),
	(128, 295, 'C. Phân chia mạng thành các mạng con', 0),
	(128, 296, 'D. Kiểm tra tính hợp lệ và trạng thái của các địa chỉ IP', 1),
	(129, 297, 'A. Gửi và nhận dữ liệu trên mạng', 0),
	(129, 298, 'B. Kiểm soát truy cập vào mạng dựa trên địa chỉ IP', 0),
	(129, 299, 'C. Truyền tải trang web và dữ liệu trên mạng', 0),
	(129, 300, 'D. Gửi và nhận thư điện tử trên mạng', 1),
	(130, 301, 'A. Cổng 20', 0),
	(130, 302, 'B. Cổng 21', 1),
	(130, 303, 'C. Cổng 22', 0),
	(130, 304, 'D. Cổng 23', 0),
	(131, 305, 'A. Đại diện cho một địa chỉ IP công khai', 0),
	(131, 306, 'B. Đại diện cho một địa chỉ IP địa phương', 1),
	(131, 307, 'C. Đại diện cho một địa chỉ IP multicast', 0),
	(131, 308, 'D. Đại diện cho một địa chỉ IP broadcast', 0),
	(132, 309, 'A. Cổng 53', 0),
	(132, 310, 'B. Cổng 67', 1),
	(132, 311, 'C. Cổng 68', 0),
	(132, 312, 'D. Cổng 69', 0),
	(133, 313, 'A. Cổng 53', 1),
	(133, 314, 'B. Cổng 67', 0),
	(133, 315, 'C. Cổng 68', 0),
	(133, 316, 'D. Cổng 69', 0),
	(134, 317, 'A. Cổng 20', 0),
	(134, 318, 'B. Cổng 21', 0),
	(134, 319, 'C. Cổng 22', 0),
	(134, 320, 'D. Cổng 443', 1),
	(135, 321, 'A. Địa chỉ IP công khai', 0),
	(135, 322, 'B. Địa chỉ IP đặc biệt', 1),
	(135, 323, 'C. Địa chỉ IP địa phương', 0),
	(135, 324, 'D. Địa chỉ IP multicast', 0),
	(146, 325, 'A. Tầng Vận chuyển (Transport layer)', 0),
	(146, 326, 'B. Tầng Mạng (Network layer)', 1),
	(146, 327, 'C. Tầng Liên kết dữ liệu (Data Link layer)', 0),
	(146, 328, 'D. Tầng Vật lý (Physical layer)', 0),
	(147, 329, 'A. Định tuyến nội bộ (Interior routing)', 0),
	(147, 330, 'B. Định tuyến ngoại vi (Exterior routing)', 1),
	(147, 331, 'C. Kiểm soát lưu lượng (Traffic control)', 0),
	(147, 332, 'D. Bảo mật mạng (Network security)', 0),
	(148, 333, 'A. Định tuyến (Routing)', 0),
	(148, 334, 'B. Chuyển mạch giao thức (Protocol Switching)', 1),
	(148, 335, 'C. Quản lý lưu lượng mạng (Network Traffic Management)', 0),
	(148, 336, 'D. Mã hóa dữ liệu (Data Encryption)', 0),
	(149, 337, 'A. Tích hợp các mạng LAN (Local Area Network)', 0),
	(149, 338, 'B. Định tuyến (Routing)', 0),
	(149, 339, 'C. Kiểm soát lưu lượng mạng (Network Traffic Control)', 0),
	(149, 340, 'D. Loại bỏ vòng lặp trong mạng LAN (Eliminating Loops in LAN)', 1),
	(150, 341, 'A. Kiểm soát lưu lượng mạng (Network Traffic Control)', 0),
	(150, 342, 'B. Định tuyến (Routing)', 0),
	(150, 343, 'C. Tạo sự dự phòng cho thiết bị định tuyến (Providing Redundancy for Routers)', 1),
	(150, 344, 'D. Tạo kết nối VPN (Virtual Private Network)', 0),
	(151, 345, 'A. Cisco Systems', 1),
	(151, 346, 'B. Juniper Networks', 0),
	(151, 347, 'C. Huawei Technologies', 0),
	(151, 348, 'D. IBM', 0),
	(152, 349, 'A. Định tuyến (Routing)', 0),
	(152, 350, 'B. Kiểm soát lưu lượng mạng (Network Traffic Control)', 0),
	(152, 351, 'C. Chuyển đổi địa chỉ MAC sang địa chỉ IP (Mapping MAC Addresses to IP Addresses)', 1),
	(152, 352, 'D. Mã hóa dữ liệu (Data Encryption)', 0),
	(153, 353, 'A. Định tuyến (Routing)', 0),
	(153, 354, 'B. Kiểm tra tính khả dụng và giám sát mạng (Network Availability Testing and Monitoring)', 1),
	(153, 355, 'C. Phát hiện và giải quyết xung đột địa chỉ IP (IP Address Conflict Detection and Resolution)', 0),
	(153, 356, 'D. Quảng bá thông báo đa phương tiện (Multimedia Announcement Broadcasting)', 0),
	(154, 357, 'A. Định tuyến (Routing)', 0),
	(154, 358, 'B. Kiểm soát lưu lượng mạng (Network Traffic Control)', 0),
	(154, 359, 'C. Quản lý và điều khiển nhóm đa phương tiện (Management and Control of Multicast Groups)', 1),
	(154, 360, 'D. Mã hóa dữ liệu (Data Encryption)', 0),
	(156, 369, 'A. int a={}', 0),
	(156, 370, 'B. int a=0;', 1),
	(156, 371, 'C. int a=[];', 0),
	(156, 372, 'D. int a= "2b";', 0);

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_CreateTest`(
	IN `_datestart` nvarchar(45),
	IN `_dateend` nvarchar(45),
	IN `_time` time,
	IN `_number` int,
	IN `_testtypeid` int,
	IN `_subjectid` int,
	IN `_classid` int,
	IN `_questiontypeid` int
)
BEGIN
	
	declare i int default 0;
    declare t int default 0;
    declare countrow int;
    declare _questionid int;
    declare _testid int;
    
    insert into tests(datetimestart,datetimeend,time,numberquestion,
    testtypeid,subjectid)
    value(_datestart,_dateend,_time,_number,_testtypeid,_subjectid );
    
    insert into classes_tests(classid,testid)
    value(_classid, (select testid from tests ORDER BY testid DESC LIMIT 1));
    
	while(i<_number) do
		set i=i+1;
        set countrow = (select count(*) from questions);
            
            set _testid = (select testid from tests ORDER BY testid DESC LIMIT 1);
        
			set _questionid = (SELECT questionid
            FROM (select * from questions where questiontypeid=_subjectid
            order by RAND())  AS ID limit 1);
            
         if(_questionid not in (select questionid from test_question)) then
					insert into test_question(testid, questionid)
					value( _testid ,_questionid);
				else 
					while(_questionid in (select questionid from test_question) and t<countrow) do
						set t = t+1;
						set _questionid = (SELECT questionid
						FROM (select * from questions where questiontypeid=_subjectid
						order by RAND())  AS ID limit 1);
					end while;
					if(_questionid not in (select questionid from test_question)) then
						insert into test_question(testid, questionid)
						value( _testid ,_questionid);
					end if;
				end if;
		end while; 
    
END//
DELIMITER ;

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_DeleteExam`(
in _testid int,
in _number int
)
BEGIN
	declare i int default 0;
	delete from results where results.testid=_testid;
    delete from classes_tests where classes_tests.testid=_testid;
    while(i<_number) do 
		set i=i+1; 
		delete from test_question where test_question.testid=_testid;
    end while;
    delete from tests where tests.testid=_testid;
END//
DELIMITER ;

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_DemoCreateTest`(
in _number int,
in _questiontypeid int
)
BEGIN
	
    declare i int default 0;
    declare t int default 0;
    declare countrow int;
    declare _questionid int;
    declare _testid int;
	 while(i<_number) do
		set i=i+1;
        set countrow = (select count(*) from questions);
            
            set _testid = (select testid from tests ORDER BY testid DESC LIMIT 1);
        
			set _questionid = (SELECT questionid
            FROM (select * from questions where questiontypeid=2
            order by RAND())  AS ID limit 1);
            
         if(_questionid not in (select quesitonid from test_question)) then
					insert into test_question(testid, quesitonid)
					value( _testid ,_questionid);
				else 
					while(_questionid in (select quesitonid from test_question) and t<countrow) do
						set t = t+1;
						set _questionid = (SELECT questionid
						FROM (select * from questions where questiontypeid=2
						order by RAND())  AS ID limit 1);
					end while;
					if(_questionid not in (select quesitonid from test_question)) then
						insert into test_question(testid, quesitonid)
						value( _testid ,_questionid);
					end if;
				end if;
		end while;
    
END//
DELIMITER ;

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_DontExam`(
in _start int,
in _count int)
BEGIN
	select distinct users.userid, users.username,users.fullname, classes.classname
	from users , results, classes
	where not exists (select * from results
				where users.userid= results.userid 
                limit _start,_count)
	group by users.userid, resultid asc;
END//
DELIMITER ;

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_HaveExam`(
in _start int,
in _count int)
BEGIN
	select results.resultid,users.userid,users.username,
    users.fullname,results.point, tests.testid
	from users,results,tests
	where users.userid=results.userid 
	and results.testid= tests.testid
    limit _start,_count;
END//
DELIMITER ;

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_InsertAccount`(
in _username nvarchar(45),
in _pass nvarchar(45),
in _fullname nvarchar(45),
in _birthday nvarchar(45),
in _country nvarchar(45),
in _phone nvarchar(45),
in _image nvarchar(45),
in _roleid nvarchar(45),
in _classid nvarchar(45),
in _subjectid nvarchar(45)
)
BEGIN
	insert into  users( username, pass, fullname,
    birthday,country, phone, image, roleid, classid)
    value(_username,_pass,_fullname,_birthday,_country,
    _phone,_image,_roleid,_classid);
    
    insert into classes_user(classid, userid)
    value(_classid, (select userid from users ORDER BY userid DESC LIMIT 1));
	
    insert into users_subjects(userid, subjectid)
    value((select userid from users ORDER BY userid DESC LIMIT 1),_subjectid);
END//
DELIMITER ;

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_InsertOption`(
in _optionname nvarchar(45),
in _isanswer boolean
)
BEGIN
	declare id int  default 0;
    set id = (select questionid from questions ORDER BY questionid DESC LIMIT 1);
   
	insert into options(questionid,optionname,isanswer)
	value(id,_optionname,_isanswer);

    
END//
DELIMITER ;

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_InsertQuestion`(
in _number int ,
in _contentquestion nvarchar(45),
in _correctoption nvarchar(45),
in _mediaid int,
in _questiontypeid int
)
BEGIN

    
	insert into questions (number, contentquestion,correctoption, mediaid,questiontypeid)
    value(_number,_contentquestion,_correctoption,_mediaid,_questiontypeid);
    

END//
DELIMITER ;

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_ListClassExam`(
in _start int ,
in _end int)
BEGIN

	 SELECT 
        `c`.`classid` AS `classid`,
        `c`.`classname` AS `classname`,
        `s`.`subjectname` AS `subjectname`,
        `tp`.`testtypename` AS `testtypemame`,
        `t`.`testid` AS `testid`
    FROM
        ((((`classes` `c`
        JOIN `classes_tests` `ct` ON ((`c`.`classid` = `ct`.`classid`)))
        JOIN `tests` `t` ON ((`t`.`testid` = `ct`.`testid`)))
        JOIN `testtypes` `tp` ON ((`tp`.`testtypeid` = `t`.`testtypeid`)))
        JOIN `subjects` `s` ON ((`t`.`subjectid` = `s`.`subjectid`)))
        group by `c`.`classid`
        limit _start,_end;

END//
DELIMITER ;

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_UpdateExam`(
in _datestart nvarchar(45),
in _dateend nvarchar(45),
in _time time,
in _number int,
in _testtypeid int,
in _subjectid int,
in _testid int
)
BEGIN
    
    update tests set datetimestart=_datestart,datetimeend=_dateend,
    time=_time,numberquestion=_number,testtypeid=_testtypeid,
    subjectid=_subjectid where tests.testid=_testid;
    
END//
DELIMITER ;

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_UpdateResult`(
in _resultid int,
in _userid int,
in _point int,
in _testid int)
BEGIN
	update results set userid=_userid,point=_point,testid=_testid
    where resultid=_resultid;
END//
DELIMITER ;

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_UpdateTimeExam`(
in _testid int,
in _datestart nvarchar(45),
in _dateend nvarchar(45),
in _time time
)
BEGIN
	
    update tests set datetimestart=_datestart, datetimeend=_dateend,
    time=_time where testid=_testid;

END//
DELIMITER ;

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_ViewListTestSheet`(
in start int,
in end int )
BEGIN

    select T.testid, testtypename, classname, subjectname, datetimestart, datetimeend, numberquestion, time  
    from tests as T 
    inner join classes_tests as CT on T.testid=CT.testid 
    inner join classes on classes.classid=CT.classid 
    inner join subjects as S on T.subjectid= S.subjectid
    inner join testtypes as TT on T.testtypeid=TT.testtypeid group by T.testid limit start,end; 
    
END//
DELIMITER ;

CREATE TABLE IF NOT EXISTS `questions` (
  `questionid` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) DEFAULT NULL,
  `contentquestion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `correctoption` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mediaid` int(11) DEFAULT NULL,
  `questiontypeid` int(11) DEFAULT NULL,
  PRIMARY KEY (`questionid`),
  KEY `FK_Questions_QuestionType` (`questiontypeid`),
  CONSTRAINT `FK_Questions_QuestionType` FOREIGN KEY (`questiontypeid`) REFERENCES `questiontypes` (`questiontypeid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `questions` (`questionid`, `number`, `contentquestion`, `correctoption`, `mediaid`, `questiontypeid`) VALUES
	(1, 4, 'C# là ngôn ngữ lập trình thuộc họ ngôn ngữ nào?', 'C', 0, 1),
	(2, 4, 'Câu lệnh nào dùng để khai báo một biến kiểu số nguyên trong C#?', 'A', 0, 1),
	(3, 4, 'Phương thức Main() trong C# được sử dụng cho mục đích gì?', 'D', 0, 1),
	(4, 4, 'Cách nào sau đây là đúng để khai báo một mảng kiểu số nguyên có 5 phần tử ?\r\n', 'C', 0, 1),
	(5, 4, 'Câu lệnh nào dùng để đọc dữ liệu từ bàn phím trong C#?\r\n', 'A', 0, 1),
	(6, 4, 'Cách nào sau đây là đúng để khai báo một hàm trong C#?', 'A', 0, 1),
	(7, 4, 'Toán tử nào được sử dụng để kiểm tra hai giá trị có bằng nhau trong C#?', 'A', 0, 1),
	(8, 4, 'Cách nào sau đây là đúng để tạo một đối tượng từ một lớp trong C#?', 'A', 0, 1),
	(9, 4, 'Câu lệnh nào sau đây được sử dụng để chuyển đổi một chuỗi thành một số \r\n', 'D', 0, 1),
	(10, 4, 'Phương thức nào được gọi tự động khi một đối tượng được tạo trong C#?', 'C', 0, 1),
	(11, 4, 'Câu lệnh nào dùng để in một chuỗi ký tự lên màn hình trong C#?', 'C', 0, 1),
	(12, 4, 'Câu lệnh nào được sử dụng để tạo một vòng lặp trong C#?', 'D', 0, 1),
	(13, 4, 'Đâu là cách đúng để gọi một phương thức có kiểu trả về trong C#?', 'A', 0, 1),
	(14, 4, 'Câu lệnh nào dùng để kiểm tra một điều kiện và thực hiện một khối mã nếu điều kiện đúng trong C#?', 'A', 0, 1),
	(15, 4, 'Trong C#, câu lệnh nào được sử dụng để khai báo một hằng số?', 'D', 0, 1),
	(16, 4, 'Đâu là cách đúng để khai báo một lớp con (subclass) trong C#?', 'A', 0, 1),
	(17, 4, 'Đâu là phương thức đúng để tính tổng của hai số trong C#?', 'A', 0, 1),
	(18, 4, 'Đâu là phương thức đúng để lấy độ dài của một chuỗi trong C#?', 'A', 0, 1),
	(19, 4, 'Cách nào sau đây là đúng để gọi một phương thức tĩnh (static method) trong C#?', 'B', 0, 1),
	(20, 4, 'Câu lệnh nào dùng để kết thúc một vòng lặp trong C#?', 'A', 0, 1),
	(21, 4, 'Trong C#, interface và abstract class có điểm tương đồng là gì?', 'D', 0, 1),
	(22, 4, 'Trong C#, từ khóa "yield" được sử dụng cho mục đích gì?', 'C', 0, 1),
	(23, 4, 'Trong C#, từ khóa "ref" được sử dụng để làm gì?', 'C', 0, 1),
	(24, 4, 'Trong C#, một thuộc tính chỉ đọc (read-only property) có thể có điểm tương tự ', 'D', 0, 1),
	(25, 4, 'Trong C#, điểm khác biệt giữa "string" và "StringBuilder" là gì?', 'B', 0, 1),
	(26, 4, 'Trong C#, phương thức nào cho phép so sánh hai đối tượng dựa trên nội dung ', 'A', 0, 1),
	(27, 4, 'Trong C#, từ khóa "sealed" được sử dụng cho mục đích gì?', 'A', 0, 1),
	(28, 4, 'Trong C#, phương thức nào được gọi tự động khi một đối tượng bị hủy?', 'A', 0, 1),
	(29, 4, 'Trong C#, từ khóa "params" được sử dụng cho mục đích gì?', 'C', 0, 1),
	(30, 4, 'Trong C#, khái niệm "boxing" và "unboxing" liên quan đến việc gì?', 'C', 0, 1),
	(46, 4, 'Trong Java, lệnh nào được sử dụng để in một chuỗi ra màn hình?', 'C', 0, 2),
	(47, 4, 'Java là ngôn ngữ lập trình thuộc loại nào?', 'B', 0, 2),
	(48, 4, 'Lớp nào được sử dụng để nhận dữ liệu đầu vào từ người dùng trong Java?', 'B', 0, 2),
	(49, 4, 'Trong Java, từ khóa nào được sử dụng để khai báo một biến không thể thay đổi giá trị sau khi gán?', 'B', 0, 2),
	(50, 4, 'Phương thức nào được gọi tự động khi một đối tượng được tạo?', 'C', 0, 2),
	(51, 4, 'Lớp con có thể kế thừa từ một lớp cha bằng cách sử dụng từ khóa nào?', 'A', 0, 2),
	(52, 4, 'Java là ngôn ngữ lập trình dựa trên nguyên tắc nào?', 'C', 0, 2),
	(53, 4, 'Lỗi biên dịch trong Java được tìm thấy trong quá trình nào?', 'A', 0, 2),
	(54, 4, 'Trong Java, từ khóa nào được sử dụng để tạo một vòng lặp vô hạn?', 'B', 0, 2),
	(55, 4, 'Trong Java, một mảng có thể chứa các phần tử cùng kiểu dữ liệu.', 'A', 0, 2),
	(66, 4, 'Trong Java, phương thức nào được sử dụng để trả về giá trị từ một phương thức?', 'B', 0, 2),
	(67, 4, 'Trong Java, một phương thức có thể có mấy lời gọi (call) trong phần thân của nó?', 'C', 0, 2),
	(68, 4, 'Trong Java, từ khóa nào được sử dụng để tạo một đối tượng mới?', 'A', 0, 2),
	(69, 4, 'Phương thức nào được sử dụng để so sánh hai đối tượng để xác định xem chúng có bằng nhau hay không?', 'A', 0, 2),
	(70, 4, 'Trong Java, lớp nào là lớp cơ sở cho tất cả các lớp?', 'B', 0, 2),
	(71, 4, 'Trong Java, từ khóa nào được sử dụng để ngắt vòng lặp hiện tại và chuyển đến vòng lặp tiếp theo?', 'A', 0, 2),
	(72, 4, 'Trong Java, lớp nào được sử dụng để đọc dữ liệu từ một luồng dữ liệu ký tự?', 'A', 0, 2),
	(73, 4, 'Từ khóa nào được sử dụng để kế thừa các thuộc tính và phương thức từ một lớp khác trong cùng package?', 'B', 0, 2),
	(74, 4, 'Từ khóa nào được sử dụng để xác định một phương thức không thể bị ghi đè trong lớp con?', 'A', 0, 2),
	(75, 4, 'Trong Java, phương thức nào được sử dụng để chạy một luồng (thread) mới?', 'B', 0, 2),
	(86, 4, 'Trong Java, interface khác với class ở điểm nào sau đây?', 'D', 0, 2),
	(87, 4, 'Trong Java, từ khóa nào được sử dụng để chặn việc kế thừa một lớp?', 'A', 0, 2),
	(88, 4, 'Trong Java, lệnh nào được sử dụng để bắt ngoại lệ và xử lý nó?', 'A', 0, 2),
	(89, 4, 'Trong Java, phương thức nào được gọi khi một đối tượng bị hủy?', 'A', 0, 2),
	(90, 4, 'Trong Java, lệnh nào được sử dụng để khai báo một biến toàn cục?', 'D', 0, 2),
	(91, 4, 'Trong Java, lớp nào được sử dụng để ghi dữ liệu vào một luồng dữ liệu ký tự?', 'C', 0, 2),
	(92, 4, 'Trong Java, từ khóa nào được sử dụng để thay đổi giá trị của một biến trong một phương thức?', 'D', 0, 2),
	(93, 4, 'Trong Java, lớp nào được sử dụng để đọc dữ liệu từ một luồng dữ liệu nhị phân?', 'B', 0, 2),
	(94, 4, 'Trong Java, từ khóa nào được sử dụng để kế thừa các thuộc tính và phương thức từ một interface?', 'C', 0, 2),
	(95, 4, 'Trong Java, lớp nào là lớp cha của tất cả các lớp I/O?', 'B', 0, 2),
	(106, 4, 'Giao thức TCP (Transmission Control Protocol) thuộc tầng nào trong mô hình OSI?', 'A', 0, 3),
	(107, 4, 'Địa chỉ IP thuộc loại nào sau đây?', 'A', 0, 3),
	(108, 4, 'Giao thức ARP (Address Resolution Protocol) được sử dụng để làm gì?', 'A', 0, 3),
	(109, 4, 'Giao thức DHCP (Dynamic Host Configuration Protocol) được sử dụng để làm gì?', 'C', 0, 3),
	(110, 4, 'Giao thức ICMP (Internet Control Message Protocol) được sử dụng để làm gì?', 'B', 0, 3),
	(111, 4, 'Công nghệ NAT (Network Address Translation) được sử dụng để làm gì?', 'C', 0, 3),
	(112, 4, 'Giao thức DNS (Domain Name System) được sử dụng để làm gì?', 'C', 0, 3),
	(113, 4, 'Giao thức FTP (File Transfer Protocol) được sử dụng để làm gì?', 'C', 0, 3),
	(114, 4, 'Giao thức HTTP (Hypertext Transfer Protocol) được sử dụng trong việc nào sau đây?', 'D', 0, 3),
	(126, 4, 'Giao thức POP3 (Post Office Protocol version 3) được sử dụng trong việc nào sau đây?', 'B', 0, 3),
	(127, 4, 'Giao thức SSH (Secure Shell) được sử dụng để làm gì?', 'A', 0, 3),
	(128, 4, 'Giao thức ICMP (Internet Control Message Protocol) được sử dụng để làm gì?', 'D', 0, 3),
	(129, 4, 'Giao thức SMTP (Simple Mail Transfer Protocol) được sử dụng để làm gì?', 'D', 0, 3),
	(130, 4, 'Giao thức FTP (File Transfer Protocol) sử dụng cổng nào để truyền dữ liệu?', 'B', 0, 3),
	(131, 4, 'Địa chỉ IP loopback 127.0.0.1 được sử dụng để làm gì?', 'B', 0, 3),
	(132, 4, 'Giao thức DHCP (Dynamic Host Configuration Protocol) sử dụng cổng nào để giao tiếp?', 'B', 0, 3),
	(133, 4, 'Giao thức DNS (Domain Name System) sử dụng cổng nào để giao tiếp?', 'A', 0, 3),
	(134, 4, 'Giao thức HTTPS (Hypertext Transfer Protocol Secure) sử dụng cổng nào để truyền dữ liệu bảo mật?', 'D', 0, 3),
	(135, 4, 'Địa chỉ IP 169.254.0.0 - 169.254.255.255 thuộc loại địa chỉ nào sau đây?', 'B', 0, 3),
	(146, 4, 'Giao thức OSPF (Open Shortest Path First) thuộc tầng nào trong mô hình TCP/IP?', 'B', 0, 3),
	(147, 4, 'Giao thức BGP (Border Gateway Protocol) được sử dụng trong việc nào sau đây?', 'C', 0, 3),
	(148, 4, 'Giao thức MPLS (Multiprotocol Label Switching) được sử dụng để làm gì?', 'C', 0, 3),
	(149, 4, 'Giao thức STP (Spanning Tree Protocol) được sử dụng để làm gì?', 'B', 0, 3),
	(150, 4, 'Giao thức VRRP (Virtual Router Redundancy Protocol) được sử dụng để làm gì?', 'A', 0, 3),
	(151, 4, 'Giao thức EIGRP (Enhanced Interior Gateway Routing Protocol) được phát triển bởi công ty nào?', 'A', 0, 3),
	(152, 4, 'Giao thức ARP (Address Resolution Protocol) được sử dụng để làm gì?', 'C', 0, 3),
	(153, 4, 'Giao thức ICMPv6 (Internet Control Message Protocol version 6) được sử dụng trong IPv6 để làm gì?', 'D', 0, 3),
	(154, 4, 'Giao thức IGMP (Internet Group Management Protocol) được sử dụng trong việc nào sau đây?', 'C', 0, 3),
	(156, 4, 'Cách khai báo kiểu số nguyên trong Java ?', 'B', 0, 2);

CREATE TABLE IF NOT EXISTS `questiontypes` (
  `questiontypeid` int(11) NOT NULL AUTO_INCREMENT,
  `questiontypename` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`questiontypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `questiontypes` (`questiontypeid`, `questiontypename`) VALUES
	(1, 'C#'),
	(2, 'JAVA'),
	(3, 'MMT'),
	(4, 'ĐHMT'),
	(5, 'CNPM'),
	(8, 'Công nghệ web');

CREATE TABLE IF NOT EXISTS `results` (
  `resultid` int(11) NOT NULL AUTO_INCREMENT,
  `point` float DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `testid` int(11) DEFAULT NULL,
  PRIMARY KEY (`resultid`),
  KEY `FK_Tests_idx` (`testid`),
  KEY `FK_Users_Subjects_idx` (`userid`),
  CONSTRAINT `FK_Test_Results` FOREIGN KEY (`testid`) REFERENCES `tests` (`testid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Users_Results` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

INSERT INTO `results` (`resultid`, `point`, `userid`, `testid`) VALUES
	(49, 5, 41, 2),
	(50, 6, 49, 3),
	(52, 5, 27, 2),
	(55, 7, 16, 9),
	(56, 1, 30, 11),
	(57, 3, 4, 16);

CREATE TABLE IF NOT EXISTS `roles` (
  `roleid` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `roles` (`roleid`, `rolename`) VALUES
	(1, 'admin'),
	(2, 'Manage Question '),
	(3, 'Manage Exam'),
	(4, 'Student');

CREATE TABLE IF NOT EXISTS `subjects` (
  `subjectid` int(11) NOT NULL AUTO_INCREMENT,
  `subjectname` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`subjectid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `subjects` (`subjectid`, `subjectname`) VALUES
	(1, 'Lập trình C#'),
	(2, 'Lập trình JAVA'),
	(3, 'Mạng máy tính'),
	(4, 'Đồ họa máy tính'),
	(5, 'Công nghệ phần mềm');

CREATE TABLE IF NOT EXISTS `tests` (
  `testid` int(11) NOT NULL AUTO_INCREMENT,
  `datetimestart` datetime DEFAULT NULL,
  `datetimeend` datetime DEFAULT NULL,
  `time` time DEFAULT NULL,
  `numberquestion` int(11) DEFAULT NULL,
  `testtypeid` int(11) DEFAULT NULL,
  `subjectid` int(11) DEFAULT NULL,
  PRIMARY KEY (`testid`),
  KEY `FK_Subjects_idx` (`subjectid`),
  KEY `FK_Testtype_idx` (`testtypeid`),
  CONSTRAINT `FK_Subjects` FOREIGN KEY (`subjectid`) REFERENCES `subjects` (`subjectid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Testtype` FOREIGN KEY (`testtypeid`) REFERENCES `testtypes` (`testtypeid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `tests` (`testid`, `datetimestart`, `datetimeend`, `time`, `numberquestion`, `testtypeid`, `subjectid`) VALUES
	(2, '2023-06-10 21:55:00', '2023-06-10 21:55:00', '00:30:00', 20, 2, 2),
	(3, '2023-06-10 21:56:00', '2023-06-10 22:56:00', '01:00:00', 25, 3, 3),
	(9, '2023-06-11 07:33:00', '2023-06-11 08:33:00', '00:15:00', 10, 1, 1),
	(10, '2023-06-11 07:47:00', '2023-06-11 08:47:00', '00:15:00', 10, 1, 1),
	(11, '2023-12-08 23:33:00', '2023-12-09 00:00:00', '00:17:00', 20, 3, 2),
	(13, '2023-12-08 23:36:00', '2023-12-09 23:36:00', '00:20:00', 20, 3, 2),
	(16, '2023-12-10 17:45:00', '2023-12-11 17:45:00', '00:14:00', 10, 1, 1);

CREATE TABLE IF NOT EXISTS `testtypes` (
  `testtypeid` int(11) NOT NULL AUTO_INCREMENT,
  `testtypename` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`testtypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `testtypes` (`testtypeid`, `testtypename`) VALUES
	(1, 'Test 15 phút'),
	(2, 'Kiểm tra giữa kỳ'),
	(3, 'Thi cuối kỳ');

CREATE TABLE IF NOT EXISTS `test_question` (
  `testid` int(11) NOT NULL,
  `questionid` int(11) NOT NULL,
  PRIMARY KEY (`testid`,`questionid`),
  KEY `FK_Questions_idx` (`questionid`),
  CONSTRAINT `FK_Questions_Test` FOREIGN KEY (`questionid`) REFERENCES `questions` (`questionid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Tests_Question` FOREIGN KEY (`testid`) REFERENCES `tests` (`testid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

INSERT INTO `test_question` (`testid`, `questionid`) VALUES
	(2, 48),
	(2, 49),
	(2, 50),
	(2, 51),
	(2, 52),
	(2, 53),
	(2, 54),
	(2, 55),
	(2, 66),
	(2, 68),
	(2, 69),
	(2, 71),
	(2, 72),
	(2, 75),
	(2, 86),
	(2, 87),
	(2, 89),
	(2, 93),
	(2, 94),
	(2, 95),
	(3, 106),
	(3, 107),
	(3, 108),
	(3, 110),
	(3, 111),
	(3, 112),
	(3, 113),
	(3, 114),
	(3, 127),
	(3, 128),
	(3, 129),
	(3, 131),
	(3, 132),
	(3, 133),
	(3, 134),
	(3, 135),
	(3, 146),
	(3, 147),
	(3, 148),
	(3, 149),
	(3, 150),
	(3, 152),
	(3, 153),
	(3, 154),
	(9, 5),
	(9, 7),
	(9, 11),
	(9, 15),
	(9, 17),
	(9, 18),
	(9, 20),
	(9, 24),
	(9, 27),
	(9, 28),
	(10, 6),
	(10, 9),
	(10, 14),
	(10, 16),
	(10, 19),
	(10, 21),
	(10, 22),
	(10, 23),
	(10, 26),
	(10, 30),
	(11, 46),
	(11, 47),
	(11, 70),
	(11, 73),
	(11, 88),
	(11, 90),
	(11, 91),
	(11, 92),
	(16, 1),
	(16, 2),
	(16, 3),
	(16, 8),
	(16, 10),
	(16, 12),
	(16, 13),
	(16, 25),
	(16, 29);

CREATE TABLE IF NOT EXISTS `users` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `pass` varchar(45) DEFAULT NULL,
  `fullname` varchar(45) DEFAULT NULL,
  `birthday` varchar(45) DEFAULT NULL,
  `country` text DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  `roleid` int(11) DEFAULT NULL,
  `classid` int(11) DEFAULT NULL,
  PRIMARY KEY (`userid`),
  KEY `user_role` (`roleid`),
  CONSTRAINT `user_role` FOREIGN KEY (`roleid`) REFERENCES `roles` (`roleid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `users` (`userid`, `username`, `pass`, `fullname`, `birthday`, `country`, `phone`, `image`, `roleid`, `classid`) VALUES
	(1, 'admin', '123', 'Trần Tấn Thịnh', '2003-04-12\r\n', 'Quảng Ngãi', '0329966939\r\n', '', 1, 0),
	(2, 'vy', '123', 'Phan Nguyễn Tường Vy\r\n', '2003-07-12\r\n', 'Đà Nẵng\r\n', '0905404187\r\n', '', 3, 0),
	(3, 'tam', '123', 'Nguyễn Khắc Nhân Tâm ', '2003-06-21', 'Đà Nẵng', '0935376605', '', 2, 0),
	(4, 'hung', '123', 'Dương Võ Hoàng Hùng', '2003-06-08', 'Thừa Thiên Huế', '0334243243', '.', 4, 1),
	(5, '102210089', '102210089', 'Hồ Quốc Thiên Anh', '2003-01-01', 'Đà Nẵng', '0123456789', '  ', 4, 1),
	(6, '102210091', '102210091', 'Võ Như Hiếu', '2003-01-02', 'Đà Nẵng', '0123456790', '  ', 4, 1),
	(7, '102210092', '102210092', 'Phạm Gia Hùng', '2003-01-03', 'Thừa Thiên Huế', '0123456791', '  ', 4, 1),
	(8, '102210093', '102210093', 'Đặng Hoàng Nguyên', '2003-01-04', 'Quảng Nam', '0123456792', '  ', 4, 1),
	(9, '102210094', '102210094', 'Phan Minh Nhật', '2003-01-05', 'Đà Nẵng', '0123456793', '  ', 4, 1),
	(10, '102210095', '102210095', 'Trần Đức Trí', '2003-01-06', 'Đà Nẵng', '0123456794', '  ', 4, 1),
	(11, '102210096', '102210096', 'Lê Anh Tuấn', '2003-01-07', 'Thừa Thiên Huế', '0123456795', '  ', 4, 1),
	(12, '102210097', '102210097', 'Lê Quốc Ân', '2003-01-08', 'Đà Nẵng', '0123456796', '  ', 4, 1),
	(13, '102210098', '102210098', 'Phan Chí Cương', '2003-01-09', 'Đà Nẵng', '0123456797', '  ', 4, 1),
	(14, '102210099', '102210099', 'Lê Huỳnh Đức', '2003-01-10', 'Đà Nẵng', '0123456798', '  ', 4, 1),
	(15, '102210100', '102210100', 'Nguyễn Văn Tiến Dũng', '2003-01-11', 'Quảng Nam', '0123456799', '  ', 4, 1),
	(16, '102210101', '102210101', 'Trần Trọng Hiếu', '2003-01-12', 'Đà Nẵng', '0123456800', '  ', 4, 1),
	(17, '102210102', '102210102', 'Nguyễn Văn Thanh Hoàng', '2003-01-13', 'Quảng Trị', '0123456801', '  ', 4, 1),
	(18, '102210103', '102210103', 'Trần Công Thiên Hữu', '2003-01-14', 'Thừa Thiên Huế', '0123456802', '  ', 4, 1),
	(19, '102210104', '102210104', 'Nguyễn Văn Khải', '2003-01-15', 'Đà Nẵng', '0123456803', '  ', 4, 1),
	(20, '102210105', '102210105', 'Trần Thị Huỳnh Linh', '2003-01-16', 'Quảng Nam', '0123456804', '  ', 4, 1),
	(21, '102210106', '102210106', 'Phạm Nguyễn Anh Phát', '2003-01-17', 'Quảng Nam', '0123456805', '  ', 4, 1),
	(22, '102210107', '102210107', 'Châu HoàNg Phi', '2003-01-18', 'Đà Nẵng', '0123456806', '  ', 4, 1),
	(23, '102210108', '102210108', 'Phạm Phú Phước', '2003-01-19', 'Đà Nẵng', '0123456807', '  ', 4, 1),
	(24, '102210109', '102210109', 'Nguyễn Quang Sáng', '2003-01-20', 'Đà Nẵng', '0123456808', '  ', 4, 1),
	(25, '102210110', '102210110', 'Vũ Thanh Tâm', '2003-01-21', 'Đà Nẵng', '0123456809', ' ', 4, 2),
	(26, '102210111', '102210111', 'Nguyễn Văn Thắng', '2003-01-22', 'Thừa Thiên Huế', '0123456810', ' ', 4, 2),
	(27, '102210112', '102210112', 'Phan Văn Bách', '2003-01-23', 'Đà Nẵng', '0123456811', ' ', 4, 2),
	(28, '102210113', '102210113', 'Đỗ Cao Cường', '2003-01-24', 'Thừa Thiên Huế', '0123456812', ' ', 4, 2),
	(29, '102210114', '102210114', 'Nguyễn Thanh Đăng', '2003-01-25', 'Thừa Thiên Huế', '0123456813', ' ', 4, 2),
	(30, '102210115', '102210115', 'Hồ Bá Đạt', '2003-01-26', 'Quảng Trị', '0123456814', ' ', 4, 2),
	(31, '102210116', '102210116', 'Lê Huỳnh Đức', '2003-01-27', 'Đà Nẵng', '0123456815', ' ', 4, 2),
	(32, '102210117', '102210117', 'Phạm Đoàn Minh Hiếu', '2003-01-28', 'Đà Nẵng', '0123456816', ' ', 4, 2),
	(33, '102210118', '102210118', 'Bùi Duy Hoàng', '2003-01-29', 'Nghệ An', '0123456817', ' ', 4, 2),
	(34, '102210119', '102210119', 'Dương Võ Hoàng Hùng', '2003-01-30', 'Thừa Thiên Huế', '0123456818', ' ', 4, 2),
	(35, '102210120', '102210120', 'Châu Hoàng Huy', '2003-01-31', 'Khánh Hòa', '0123456819', ' ', 4, 2),
	(36, '102210121', '102210121', 'Trần Hoàng Thế Linh', '2003-01-32', 'Quảng Trị', '0123456820', ' ', 4, 2),
	(37, '102210122', '102210122', 'Lê Văn Công Luận', '2003-01-33', 'Quảng Trị', '0123456821', ' ', 4, 2),
	(38, '102210123', '102210123', 'Đỗ Huỳnh Trung Nhân', '2003-01-34', 'Đà Nẵng', '0123456822', ' ', 4, 2),
	(39, '102210124', '102210124', 'Võ Trọng Nhân', '2003-01-35', 'Quảng Nam', '0123456823', ' ', 4, 2),
	(40, '102210125', '102210125', 'Trương Nguyễn Hoàng Phát', '2003-01-36', 'Đà Nẵng', '0123456824', ' ', 4, 2),
	(41, '102210126', '102210126', 'Hồ Duy Phúc', '2003-01-37', 'Đà Nẵng', '0123456825', ' ', 4, 2),
	(42, '102210127', '102210127', 'Trịnh Thái Quân', '2003-01-38', 'Đà Nẵng', '0123456826', ' ', 4, 2),
	(43, '102210128', '102210128', 'Nguyễn Khắc Nhân Tâm', '2003-01-39', 'Đà Nẵng', '0123456827', ' ', 4, 2),
	(44, '102210129', '102210129', 'Nguyễn Phạm Phúc Tân', '2003-01-40', 'Quảng Trị', '0123456828', ' ', 4, 2),
	(45, '102210130', '102210130', 'Lê Việt Thanh', '2003-01-41', 'Thừa Thiên Huế', '0123456829', '  ', 4, 3),
	(46, '102210131', '102210131', 'Lê Đức Thành', '2003-01-42', 'Quảng Nam', '0123456830', '  ', 4, 3),
	(47, '102210132', '102210132', 'Trần Tấn Thịnh', '2003-01-43', 'Quảng Ngãi', '0123456831', '  ', 4, 3),
	(48, '102210133', '102210133', 'Hoàng Gia Tín', '2003-01-44', 'Đà Nẵng', '0123456832', '  ', 4, 3),
	(49, '102210134', '102210134', 'Vũ Hoàng Tín', '2003-01-45', 'Quảng Ngãi', '0123456833', '  ', 4, 3),
	(50, '102210135', '102210135', 'Nguyễn Thùy Trinh', '2003-01-46', 'Đà Nẵng', '0123456834', '  ', 4, 3),
	(51, '102210136', '102210136', 'Hoàng Công Trọng', '2003-01-47', 'Thừa Thiên Huế', '0123456835', '  ', 4, 3),
	(52, '102210137', '102210137', 'Lê Văn Tư', '2003-01-48', 'Quảng Trị', '0123456836', '  ', 4, 3),
	(53, '102210138', '102210138', 'Lê Quốc Vinh', '2003-01-49', 'Đà Nẵng', '0123456837', '  ', 4, 3),
	(54, '102210139', '102210139', 'Lê Hữu Minh Vũ', '2003-01-50', 'Đà Nẵng', '0123456838', '  ', 4, 3),
	(55, '102210140', '102210140', 'Phan Nguyễn Tường Vy', '2003-01-51', 'Đà Nẵng', '0123456839', '  ', 4, 3),
	(56, '102210141', '102210141', 'Trương Phan Minh', '2003-01-52', 'Đà Nẵng', '0123456840', '  ', 4, 3),
	(57, '102210142', '102210142', 'Nguyễn Hoàng Sang', '2003-01-53', 'Đà Nẵng', '0123456841', '  ', 4, 3),
	(58, '102210143', '102210143', 'Nguyễn Trần Văn Vũ', '2003-01-54', 'Đà Nẵng', '0123456842', '  ', 4, 3),
	(59, '102210144', '102210144', 'Lê Thanh Bảo', '2003-01-55', 'Đà Nẵng', '0123456843', '  ', 4, 3),
	(60, '102210145', '102210145', 'Nguyễn Quốc Gia Bảo', '2003-01-56', 'Đà Nẵng', '0123456844', '  ', 4, 3),
	(61, '102210146', '102210146', 'Trịnh Văn Đạt', '2003-01-57', 'Đà Nẵng', '0123456845', '  ', 4, 3),
	(62, '102210147', '102210147', 'Thái Bình Dương', '2003-01-58', 'Đà Nẵng', '0123456846', '  ', 4, 3),
	(63, '102210148', '102210148', 'Trần Huy Hoàng', '2003-01-59', 'Đà Nẵng', '0123456847', '  ', 4, 3),
	(64, '102210149', '102210149', 'Lê Trung Kiệt', '2003-01-60', 'Đà Nẵng', '0123456848', '  ', 4, 3),
	(65, '101190410', '101190410', 'Đặng Văn Sáng', '2003-01-01', 'Đà Nẵng', '0123456789', '    ', 4, 4),
	(66, '101190411', '101190411', 'Ngô Nguyễn Nhật Duy', '2003-01-02', 'Đà Nẵng', '0123456790', '    ', 4, 4),
	(67, '101190412', '101190412', 'Phạm Đức Duy', '2003-01-03', 'Đà Nẵng', '0123456791', '    ', 4, 4),
	(68, '101190413', '101190413', 'Trần Phước Lanh', '2003-01-04', 'Đà Nẵng', '0123456792', '    ', 4, 4),
	(69, '101190414', '101190414', 'Nguyễn Kiều Tân', '2003-01-05', 'Đà Nẵng', '0123456793', '    ', 4, 4),
	(70, '101190415', '101190415', 'Nguyễn Quốc Bảo', '2003-01-06', 'Đà Nẵng', '0123456794', '    ', 4, 4),
	(71, '101190416', '101190416', 'Lê Ngọc Duy', '2003-01-07', 'Đà Nẵng', '0123456795', '    ', 4, 4),
	(72, '101190417', '101190417', 'Dương Minh Nhật', '2003-01-08', 'Đà Nẵng', '0123456796', '    ', 4, 4),
	(73, '101190418', '101190418', 'Lữ Thanh Phương', '2003-01-09', 'Đà Nẵng', '0123456797', '    ', 4, 4),
	(74, '101190419', '101190419', 'Ngô Đỗ Nguyễn Hải Sơn', '2003-01-10', 'Đà Nẵng', '0123456798', '    ', 4, 4),
	(75, '101190420', '101190420', 'Phạm Minh Trí', '2003-01-11', 'Đà Nẵng', '0123456799', '    ', 4, 4),
	(76, '101190421', '101190421', 'Nguyễn Hoàng Vĩ', '2003-01-12', 'Đà Nẵng', '0123456800', '    ', 4, 4),
	(77, '101190422', '101190422', 'Nguyễn Tiến Đạt', '2003-01-13', 'Đà Nẵng', '0123456801', '    ', 4, 4),
	(78, '101190423', '101190423', 'Nguyễn Viết Hùng', '2003-01-14', 'Đà Nẵng', '0123456802', '    ', 4, 4),
	(79, '101190424', '101190424', 'Diệp Minh Huy', '2003-01-15', 'Đà Nẵng', '0123456803', '    ', 4, 4),
	(80, '101190425', '101190425', 'Trần Lâm Anh Kiệt', '2003-01-16', 'Đà Nẵng', '0123456804', '    ', 4, 4),
	(81, '101190426', '101190426', 'Hoàng Văn Tài', '2003-01-17', 'Đà Nẵng', '0123456805', '    ', 4, 4),
	(82, '101190427', '101190427', 'Nguyễn Thành Tâm', '2003-01-18', 'Đà Nẵng', '0123456806', '    ', 4, 4),
	(83, '101190428', '101190428', 'Đặng Văn Thắng', '2003-01-19', 'Đà Nẵng', '0123456807', '    ', 4, 4);

CREATE TABLE IF NOT EXISTS `users_subjects` (
  `userid` int(11) NOT NULL,
  `subjectid` int(11) NOT NULL,
  PRIMARY KEY (`userid`,`subjectid`),
  KEY `FK_Subjects_idx` (`subjectid`) USING BTREE,
  CONSTRAINT `FK_Subjects_Users` FOREIGN KEY (`subjectid`) REFERENCES `subjects` (`subjectid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_User_Subjects` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

INSERT INTO `users_subjects` (`userid`, `subjectid`) VALUES
	(4, 1),
	(5, 1),
	(6, 1),
	(7, 1),
	(8, 1),
	(9, 1),
	(10, 1),
	(11, 1),
	(12, 1),
	(13, 1),
	(14, 1),
	(15, 1),
	(16, 1),
	(17, 1),
	(18, 1),
	(19, 1),
	(20, 1),
	(21, 1),
	(22, 1),
	(23, 1),
	(24, 1),
	(25, 2),
	(26, 2),
	(27, 2),
	(28, 2),
	(29, 2),
	(30, 2),
	(31, 2),
	(32, 2),
	(33, 2),
	(34, 2),
	(35, 2),
	(36, 2),
	(37, 2),
	(38, 2),
	(39, 2),
	(40, 2),
	(41, 2),
	(42, 2),
	(43, 2),
	(44, 2),
	(45, 3),
	(46, 3),
	(47, 3),
	(48, 3),
	(49, 3),
	(50, 3),
	(51, 3),
	(52, 3),
	(53, 3),
	(54, 3),
	(55, 3),
	(56, 3),
	(57, 3),
	(58, 3),
	(59, 3),
	(60, 3),
	(61, 3),
	(62, 3),
	(63, 3),
	(64, 3),
	(65, 4),
	(66, 4),
	(67, 4),
	(68, 4),
	(69, 4),
	(70, 4),
	(71, 4),
	(72, 4),
	(73, 4),
	(74, 4),
	(75, 4),
	(76, 4),
	(77, 4),
	(78, 4),
	(79, 4),
	(80, 4),
	(81, 4),
	(82, 4),
	(83, 4);

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_dQuestion`(
	in _questionid int)
BEGIN
	delete from options where questionid=_questionid;
    delete from test_question where questionid=_questionid;
    delete from questions where questionid=_questionid;
END//
DELIMITER ;

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_dQuestiontype`(
	in _questiontypeid int)
BEGIN
	delete from options where questionid in (select questionid from questions where questiontypeid=_questiontypeid);
	delete from questions where questiontypeid=_questiontypeid;
	delete from questiontypes where questiontypeid=_questiontypeid; 
END//
DELIMITER ;

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_iOption`(
in _optionname nvarchar(45),
in _isanswer boolean
)
BEGIN
	declare _questionid int  default 0;
    set _questionid = (select questionid from questions ORDER BY questionid DESC LIMIT 1);
   
	insert into options(questionid,optionname,isanswer)
	value(_questionid,_optionname,_isanswer);

    
END//
DELIMITER ;

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_iQuestion`(
in _number int ,
in _contentquestion nvarchar(45),
in _correctoption nvarchar(45),
in _mediaid int,
in _questiontypeid int
)
BEGIN

	insert into questions (number, contentquestion,correctoption, mediaid,questiontypeid)
    value(_number,_contentquestion,_correctoption,_mediaid,_questiontypeid);
    
END//
DELIMITER ;

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_iQuestiontype`(
in _questiontypename nvarchar(45)

)
BEGIN
	insert into questiontypes (questiontypename)
    value(_questiontypename);
    
END//
DELIMITER ;

DROP TABLE IF EXISTS `listclassexamview`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `listclassexamview` AS select 1 AS `classid`,1 AS `classname`,1 AS `subjectname`,1 AS `testtypemame`,1 AS `testid` ;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

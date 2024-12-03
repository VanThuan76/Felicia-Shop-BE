-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3307
-- Thời gian đã tạo: Th5 08, 2024 lúc 04:01 PM
-- Phiên bản máy phục vụ: 8.0.30
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `orderfood`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `authority`
--

CREATE TABLE `authority` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `authority`
--

INSERT INTO `authority` (`name`) VALUES
('ROLE_ADMIN'),
('ROLE_SHIPPER'),
('ROLE_USER');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog`
--

CREATE TABLE `blog` (
  `id` bigint NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `created_date` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image_banner` varchar(255) DEFAULT NULL,
  `primary_blog` bit(1) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `blog`
--

INSERT INTO `blog` (`id`, `content`, `created_date`, `description`, `image_banner`, `primary_blog`, `title`, `user_id`) VALUES
(1, '<p class=\"namedt_vh\">N&eacute;t đặc trưng trong văn h&oacute;a ẩm thực Việt Nam | Kh&aacute;m ph&aacute; ẩm thực #1</p>\n<p class=\"time\"><img src=\"https://banhkhome.com/images/date.svg\">22/05/2019</p>\n<div class=\"cten_dtvh\">\n<p>Văn h&oacute;a ẩm thực l&agrave; n&eacute;t văn h&oacute;a tự nhi&ecirc;n h&igrave;nh th&agrave;nh trong cuộc sống. Đối với nhiều d&acirc;n tộc, quốc gia, ẩm thực kh&ocirc;ng chỉ l&agrave; n&eacute;t văn h&oacute;a về vật chất m&agrave; c&ograve;n l&agrave; văn h&oacute;a về tinh thần. Qua ẩm thực người ta c&oacute; thể hiểu được n&eacute;t văn h&oacute;a thể hiện phẩm gi&aacute; con người, tr&igrave;nh độ văn h&oacute;a của d&acirc;n tộc với những đạo l&yacute;, ph&eacute;p tắc, phong tục trong c&aacute;ch ăn uống&hellip;</p>\n<p>&nbsp;</p>\n<p>V&agrave; mỗi khi nhắc đến đất nước Việt Nam xinh đẹp th&igrave; ẩm thực lu&ocirc;n l&agrave; một đề t&agrave;i th&uacute; vị. Ẩm thực của người Việt kh&ocirc;ng chỉ l&agrave; những m&oacute;n ăn, c&ocirc;ng thức chế biến m&agrave; đ&acirc;y l&agrave; một n&eacute;t văn h&oacute;a tự nhi&ecirc;n h&igrave;nh th&agrave;nh trong cuộc sống. Ch&uacute;ng được biết đến với những n&eacute;t đặc trưng như: t&iacute;nh h&ograve;a đồng, đa dạng, &iacute;t mỡ; đậm đ&agrave; hương vị với sự kết hợp nhuần nhuyễn nhiều loại nguy&ecirc;n liệu v&agrave; gia vị kh&aacute;c nhau nhằm gi&uacute;p tăng m&ugrave;i vị, sức hấp dẫn trong từng m&oacute;n ăn.&nbsp;</p>\n<p>&nbsp;</p>\n<p>Với một đất nước c&oacute; chiều d&agrave;i lịch sử l&acirc;u đời v&agrave; vị tr&iacute; địa l&yacute; kh&aacute;c biệt, th&igrave; mỗi một v&ugrave;ng miền tr&ecirc;n dải đất h&igrave;nh chữ S n&agrave;y lại c&oacute; những m&oacute;n ăn đặc trưng, những m&oacute;n đặc sản ri&ecirc;ng biệt kh&ocirc;ng thể h&ograve;a lẫn.</p>\n<p>&nbsp;</p>\n<p>V&agrave; trong số đầu ti&ecirc;n của Kh&aacute;m ph&aacute; ẩm thực, ch&uacute;ng ta sẽ c&ugrave;ng nhau t&igrave;m hiểu&nbsp;<strong>ẩm thực Việt Nam l&agrave; g&igrave;? V&agrave;&nbsp;những n&eacute;t đặc trưng trong văn h&oacute;a ẩm thực Việt Nam</strong>.</p>\n<p>&nbsp;</p>\n<h2>ẨM THỰC VIỆT NAM L&Agrave; G&Igrave;?</h2>\n<p>Ẩm thực Việt Nam l&agrave; c&aacute;ch gọi của phương thức chế biến m&oacute;n ăn, nguy&ecirc;n l&yacute; pha trộn gia vị v&agrave; những th&oacute;i quen ăn uống n&oacute;i chung của mọi người Việt tr&ecirc;n đất nước Việt Nam. Tuy&nbsp;c&oacute; &iacute;t nhiều c&oacute; sự kh&aacute;c biệt giữa c&aacute;c v&ugrave;ng miền, d&acirc;n tộc th&igrave;&nbsp;ẩm thực Việt Nam vẫn bao h&agrave;m &yacute; nghĩa kh&aacute;i qu&aacute;t nhất để chỉ tất cả những m&oacute;n ăn phổ biến trong cộng đồng&nbsp;người Việt.</p>\n<p>&nbsp;</p>\n<p><img src=\"https://banhkhome.com/uploads/images/am-thuc-viet.jpg\" alt=\"Ẩm thực Việt\"></p>\n<p>&nbsp;</p>\n<h2>ĐẶC TRƯNG CỦA ẨM THỰC VIỆT</h2>\n<p>Việt Nam l&agrave; một nước n&ocirc;ng nghiệp thuộc về xứ n&oacute;ng, v&ugrave;ng nhiệt đới gi&oacute; m&ugrave;a. Ngo&agrave;i ra, l&atilde;nh thổ Việt Nam được chia ra ba miền r&otilde; rệt l&agrave; Bắc, Trung, Nam, c&ugrave;ng với đ&oacute; l&agrave; 54 d&acirc;n tộc anh em.&nbsp;Ch&iacute;nh c&aacute;c đặc điểm về địa l&yacute;, văn h&oacute;a, d&acirc;n tộc, kh&iacute; hậu đ&atilde; quy định những đặc điểm ri&ecirc;ng của ẩm thực từng v&ugrave;ng &ndash; miền. Mỗi miền c&oacute; một n&eacute;t, khẩu vị đặc trưng. Điều đ&oacute; g&oacute;p phần l&agrave;m ẩm thực Việt Nam phong ph&uacute;, đa dạng. Đ&acirc;y l&agrave; một văn h&oacute;a ăn uống sử dụng rất nhiều loại rau (luộc, x&agrave;o, l&agrave;m dưa, ăn sống); nhiều loại nước canh đặc biệt l&agrave; canh chua, trong khi đ&oacute; số lượng c&aacute;c m&oacute;n ăn c&oacute; dinh dưỡng từ động vật thường &iacute;t hơn. Những loại thịt được d&ugrave;ng phổ biến nhất l&agrave; thịt lợn, b&ograve;, g&agrave;, ngan, vịt, c&aacute;c loại t&ocirc;m, c&aacute;, cua, ốc, hến, trai, s&ograve;,...&nbsp;</p>\n<p>&nbsp;</p>\n<p>Những m&oacute;n ăn chế biến từ những loại thịt &iacute;t th&ocirc;ng dụng hơn như thịt ch&oacute;, thịt d&ecirc;, thịt r&ugrave;a, thịt rắn, thịt ba ba,... thường kh&ocirc;ng phải l&agrave; nguồn thịt ch&iacute;nh, nhiều khi được coi l&agrave; đặc sản v&agrave; chỉ được sử dụng trong một dịp li&ecirc;n hoan, tiệc&nbsp;n&agrave;o đ&oacute; với rượu uống k&egrave;m. Người Việt cũng c&oacute; một số m&oacute;n ăn chay theo đạo Phật được chế biến từ c&aacute;c loại thực vật, kh&ocirc;ng c&oacute; nguồn thực phẩm từ động vật. Tuy nhi&ecirc;n, trong cộng đồng th&igrave; lại c&oacute; rất &iacute;t người ăn chay trường, chỉ c&oacute; c&aacute;c sư thầy trong c&aacute;c ch&ugrave;a hoặc người bị bệnh nặng buộc phải ăn ki&ecirc;ng.</p>\n<p>&nbsp;</p>\n<p>&gt;&gt;&gt; T&igrave;m hiểu th&ecirc;m về c&aacute;c loại đặc sản b&aacute;nh kẹo Việt Nam qua b&agrave;i viết \"<a title=\"TOP 10 đặc sản b&aacute;nh kẹo nổi tiếng Việt Nam\" href=\"https://banhkhome.com/top-10-dac-san-banh-keo-viet-nam\" type=\"TOP 10 đặc sản b&aacute;nh kẹo nổi tiếng Việt Nam\" name=\"TOP 10 đặc sản b&aacute;nh kẹo nổi tiếng Việt Nam\"><strong>TOP 10 đặc sản b&aacute;nh kẹo nổi tiếng Việt Nam</strong></a>\" của ch&uacute;ng t&ocirc;i.</p>\n<p>&nbsp;</p>\n<p>Ẩm thực Việt Nam ch&uacute; trọng ăn ngon tuy đ&ocirc;i khi kh&ocirc;ng đặt mục ti&ecirc;u h&agrave;ng đầu l&agrave; ăn bổ. Bởi vậy trong hệ thống ẩm thực người Việt &iacute;t c&oacute; những m&oacute;n hết sức cầu kỳ, hầm nhừ ninh kỹ như ẩm thực Trung Hoa, cũng kh&ocirc;ng thi&ecirc;n về b&agrave;y biện c&oacute; t&iacute;nh thẩm mỹ cao độ như ẩm thực Nhật Bản, m&agrave; thi&ecirc;n về phối trộn gia vị một c&aacute;ch tinh tế để m&oacute;n ăn được ngon, hoặc sử dụng những nguy&ecirc;n liệu dai, gi&ograve;n thưởng thức rất th&uacute; vị d&ugrave; kh&ocirc;ng thực sự bổ b&eacute;o (v&iacute; dụ như c&aacute;c m&oacute;n măng, ch&acirc;n c&aacute;nh g&agrave;, phủ tạng động vật...).</p>\n<p>&nbsp;</p>\n<p>Trong thực tế, nhiều người nhận thấy, một c&aacute;ch cảm t&iacute;nh, đặc trưng ẩm thực Việt Nam c&oacute; sự kh&aacute;c biệt&nbsp;với c&aacute;c nền văn h&oacute;a ẩm thực kh&aacute;c tr&ecirc;n thế giới: m&oacute;n ăn Trung Hoa ăn bổ dưỡng, m&oacute;n ăn Việt ăn ngon miệng, m&oacute;n ăn Nhật nh&igrave;n th&iacute;ch mắt. Tuy nhi&ecirc;n, đặc điểm n&agrave;y ng&agrave;y c&agrave;ng phai nh&ograve;a trong thời hội nhập.</p>\n<p>&nbsp;</p>\n<p>Theo &yacute; kiến của Tiến sĩ sử học&nbsp;<strong>H&atilde;n Nguy&ecirc;n Nguyễn Nh&atilde;</strong>,&nbsp;<strong>ẩm thực Việt Nam</strong>&nbsp;c&oacute; 9 đặc trưng:</p>\n<p>&nbsp;</p>\n<p>- T&iacute;nh ho&agrave; đồng hay đa dạng</p>\n<p>Bắt đầu từ t&iacute;nh c&aacute;ch dễ d&agrave;ng tiếp thu văn h&oacute;a, đặc biệt l&agrave; văn h&oacute;a&nbsp;ẩm thực từ c&aacute;c d&acirc;n tộc kh&aacute;c của người Việt, để từ đ&oacute; chế biến th&agrave;nh của m&igrave;nh. Đ&acirc;y cũng l&agrave; điểm nổi bật của ẩm thực của nước ta từ Bắc ch&iacute; Nam.</p>\n<p>&nbsp;</p>\n<p>- T&iacute;nh &iacute;t mỡ.</p>\n<p>C&aacute;c m&oacute;n ăn Việt Nam chủ yếu l&agrave;m từ rau, quả, củ n&ecirc;n &iacute;t mỡ (kh&aacute; &iacute;t m&oacute;n ăn nấu ngập dầu), kh&ocirc;ng d&ugrave;ng nhiều thịt như c&aacute;c nước phương T&acirc;y, cũng kh&ocirc;ng d&ugrave;ng nhiều dầu mỡ như m&oacute;n của người Hoa.</p>\n<p>&nbsp;</p>\n<p>- T&iacute;nh đậm đ&agrave; hương vị.</p>\n<p>Khi chế biến thức ăn người Việt Nam thường d&ugrave;ng nước mắm để n&ecirc;m, lại kết hợp với rất nhiều gia vị kh&aacute;c,&hellip; n&ecirc;n m&oacute;n ăn rất đậm đ&agrave;. Mỗi m&oacute;n kh&aacute;c nhau đều c&oacute; nước chấm tương ứng ph&ugrave; hợp với hương vị.</p>\n<p>&nbsp;</p>\n<p>- T&iacute;nh tổng ho&agrave; nhiều chất, nhiều vị.</p>\n<p>C&aacute;c m&oacute;n ăn Việt Nam thường bao gồm nhiều lọai thực phẩm như thịt, t&ocirc;m, cua c&ugrave;ng với c&aacute;c loại rau, đậu, gạo. Ngo&agrave;i ra c&ograve;n c&oacute; sự tổng hợp của nhiều vị như chua, cay, mặn, ngọt, b&ugrave;i b&eacute;o&hellip;</p>\n<p>&nbsp;</p>\n<p>- T&iacute;nh ngon v&agrave; l&agrave;nh.</p>\n<p>Ẩm thực Việt Nam l&agrave; sự kết hợp giữa c&aacute;c m&oacute;n, c&aacute;c vị lại để tạo n&ecirc;n n&eacute;t đặc trưng ri&ecirc;ng. Những thực phẩm m&aacute;t như thịt vịt, ốc thường được chế biến k&egrave;m với c&aacute;c gia vị ấm n&oacute;ng như gừng, rau răm&hellip; Đ&oacute; l&agrave; c&aacute;ch c&acirc;n bằng &acirc;m dương rất th&uacute; vị, chỉ c&oacute; người Việt Nam mới c&oacute;&hellip;</p>\n<p>&nbsp;</p>\n<p>- D&ugrave;ng đũa.</p>\n<p>Giống một v&agrave;i nước&nbsp;ch&acirc;u &Aacute; kh&aacute;c th&igrave; việc sử dụng đũa l&agrave; một n&eacute;t đặc trưng rất th&uacute; vị của ẩm thực Việt, bạn c&oacute; thể sử dụng đũa trong hầu hết c&aacute;c m&oacute;n ăn, từ kho, x&agrave;o, chi&ecirc;n, hay thậm ch&iacute; l&agrave; cả canh. Đ&ocirc;i đũa Việt c&oacute; mặt trong mọi bữa cơm gia đ&igrave;nh, ngay cả khi quay nướng, người Việt cũng &iacute;t d&ugrave;ng nĩa để xi&ecirc;n thức ăn như người phương T&acirc;y. K&egrave;m với đ&oacute; th&igrave; gắp l&agrave; một nghệ thuật, gắp sao cho kh&eacute;o, cho chặt đừng để rơi thức ăn&hellip;&nbsp;</p>\n<p>&nbsp;</p>\n<p>- T&iacute;nh cộng đồng hay t&iacute;nh tập thể.</p>\n<p>T&iacute;nh cộng đồng thể hiện rất r&otilde; trong ẩm thực Việt Nam, bao giờ trong bữa cơm cũng c&oacute; b&aacute;t nước mắm chấm chung, hoặc m&uacute;c ri&ecirc;ng ra từng b&aacute;t nhỏ từ b&aacute;t chung ấy.</p>\n<p>&nbsp;</p>\n<p>- T&iacute;nh hiếu kh&aacute;ch.</p>\n<p>Trước mỗi bữa ăn người Việt thường c&oacute; th&oacute;i quen mời. Lời mời thể hiện sự giao thiệp, t&igrave;nh cảm, hiếu kh&aacute;ch, mối quan t&acirc;m tr&acirc;n trọng người kh&aacute;c&hellip;</p>\n<p>&nbsp;</p>\n<p>- T&iacute;nh dọn th&agrave;nh m&acirc;m.</p>\n<p>Người Việt c&oacute; th&oacute;i quen dọn sẵn th&agrave;nh m&acirc;m, dọn nhiều m&oacute;n ăn trong một bữa l&ecirc;n c&ugrave;ng một l&uacute;c chứ kh&ocirc;ng như phương T&acirc;y ăn m&oacute;n n&agrave;o mới mang m&oacute;n đ&oacute; ra.</p>\n<p>&nbsp;</p>\n<h2>ĐẶC ĐIỂM ẨM THỰC VIỆT THEO TỪNG MIỀN</h2>\n<p><strong>Miền Bắc</strong></p>\n<p>&nbsp;</p>\n<p>Ẩm thực miền Bắc đặc trưng với khẩu vị mặn m&agrave;, đậm đ&agrave;, thường kh&ocirc;ng đậm c&aacute;c vị cay, b&eacute;o, ngọt bằng c&aacute;c v&ugrave;ng kh&aacute;c, chủ yếu sử dụng nước mắm lo&atilde;ng, mắm t&ocirc;m. Sử dụng nhiều m&oacute;n rau v&agrave; c&aacute;c loại thủy sản nước ngọt dễ kiếm như t&ocirc;m, cua, c&aacute;, trai, hến... v&agrave; nh&igrave;n chung, do truyền thống xa xưa c&oacute; nền n&ocirc;ng nghiệp ngh&egrave;o n&agrave;n, ẩm thực miền Bắc trước kia &iacute;t thịnh h&agrave;nh c&aacute;c m&oacute;n ăn với nguy&ecirc;n liệu ch&iacute;nh l&agrave; thịt, c&aacute;. Nhiều người đ&aacute;nh gi&aacute; cao ẩm thực H&agrave; Nội một thời, cho rằng n&oacute; đại diện ti&ecirc;u biểu nhất của tinh hoa ẩm thực miền Bắc Việt Nam với những m&oacute;n phở, b&uacute;n thang, b&uacute;n chả, c&aacute;c m&oacute;n qu&agrave; như cốm V&ograve;ng, b&aacute;nh cuốn Thanh Tr&igrave;... v&agrave; gia vị đặc sắc như tinh dầu c&agrave; cuống, rau h&uacute;ng L&aacute;ng.</p>\n<p><br><strong>Ẩm thực miền Nam</strong></p>\n<p><br>Ẩm thực miền Nam, c&oacute; thi&ecirc;n hướng hảo vị chua ngọt, đ&acirc;y l&agrave; nơi chịu ảnh hưởng nhiều của ẩm thực Trung Quốc, Campuchia, Th&aacute;i Lan, c&oacute; đặc điểm l&agrave; thường cho th&ecirc;m đường v&agrave; hay sử dụng sữa dừa (nước cốt v&agrave; nước d&atilde;o của dừa). Nền ẩm thực n&agrave;y cũng sản sinh ra v&ocirc; số loại mắm kh&ocirc; (như mắm c&aacute; sặc, mắm b&ograve; h&oacute;c, mắm ba kh&iacute;a...). Ẩm thực miền Nam cũng d&ugrave;ng nhiều đồ hải sản nước mặn v&agrave; nước lợ hơn miền Bắc (c&aacute;c loại c&aacute;, t&ocirc;m, cua, ốc biển), v&agrave; rất đặc biệt với những m&oacute;n ăn d&acirc;n d&atilde;, đặc th&ugrave; của một thời đi mở c&otilde;i, hiện nay nhiều khi đ&atilde; trở th&agrave;nh đặc sản: chuột đồng kh&igrave;a nước dừa, dơi quạ hấp chao, rắn hổ đất nấu ch&aacute;o đậu xanh, đu&ocirc;ng dừa, đu&ocirc;ng đất hoặc đu&ocirc;ng ch&agrave; l&agrave;, vọp chong, c&aacute; l&oacute;c nướng trui...</p>\n<p>&nbsp;</p>\n<p><strong>Ẩm thực miền Trung</strong></p>\n<p><br>Đồ ăn miền Trung được biết đến với vị cay nồng, với tất cả t&iacute;nh chất đặc sắc của n&oacute; thể hiện qua hương vị ri&ecirc;ng biệt, nhiều m&oacute;n ăn cay v&agrave; mặn hơn đồ ăn miền Bắc v&agrave; miền Nam, m&agrave;u sắc được phối trộn phong ph&uacute;, rực rỡ, thi&ecirc;n về m&agrave;u đỏ v&agrave; n&acirc;u sậm. C&aacute;c tỉnh th&agrave;nh miền Trung như Huế, Đ&agrave; Nẵng, B&igrave;nh Định rất nổi tiếng với mắm t&ocirc;m chua,&nbsp;c&aacute;c loại mắm ruốc hay c&aacute;c loại&nbsp;<strong><a href=\"https://banhkhome.com/banh-kho-me-dac-san-banh-keo-noi-tieng-da-nang\">đặc sản b&aacute;nh kẹo Đ&agrave; Nẵng</a></strong>, Huế. Đặc biệt, ẩm thực Huế do ảnh hưởng từ phong c&aacute;ch ẩm thực ho&agrave;ng gia, cho n&ecirc;n rất cầu kỳ trong chế biến v&agrave; tr&igrave;nh b&agrave;y. Một mặt kh&aacute;c, do địa phương kh&ocirc;ng c&oacute; nhiều sản vật m&agrave; ẩm thực ho&agrave;ng gia lại đ&ograve;i hỏi số lượng lớn m&oacute;n, n&ecirc;n mỗi loại nguy&ecirc;n liệu đều được chế biến rất đa dạng với trong nhiều m&oacute;n kh&aacute;c nhau.</p>\n<p><img src=\"https://banhkhome.com/uploads/images/1548734160_2640_9218646b9eee0a0fe7b63e611346fd26.png\" alt=\"\"></p>\n<p>&nbsp;</p>\n<p><strong>Ẩm thực c&aacute;c d&acirc;n tộc</strong></p>\n<p>&nbsp;</p>\n<p>Với 54 d&acirc;n tộc sống tr&ecirc;n nhiều v&ugrave;ng địa l&yacute; đa dạng khắp to&agrave;n quốc, ẩm thực của mỗi d&acirc;n tộc trong cộng đồng c&aacute;c d&acirc;n tộc Việt Nam đều c&oacute; bản sắc ri&ecirc;ng biệt. Rất nhiều m&oacute;n trong số đ&oacute; &iacute;t được biết đến tại c&aacute;c d&acirc;n tộc kh&aacute;c, như c&aacute;c m&oacute;n thịt lợn sống trộn ph&egrave;o non của c&aacute;c d&acirc;n tộc T&acirc;y Nguy&ecirc;n. Tuy nhi&ecirc;n, nhiều m&oacute;n ăn đ&atilde; trở th&agrave;nh đặc sản tr&ecirc;n đất nước Việt Nam v&agrave; được nhiều người biết đến, như mắm b&ograve; h&oacute;c miền Nam, b&aacute;nh cuốn trứng (Cao Bằng, Lạng Sơn), b&aacute;nh co&oacute;ng ph&ugrave; (b&aacute;nh tr&ocirc;i d&acirc;n tộc T&agrave;y, xuất xứ từ b&aacute;nh tr&ocirc;i t&agrave;u của người Hoa), lợn sữa v&agrave; vịt quay mắc mật (quả mặt), kh&acirc;u nhục Lạng Sơn (ảnh hưởng từ Quảng Đ&ocirc;ng, Trung Quốc), phở chua, ch&aacute;o nhộng ong, phở cốn sủi, thắng cố, c&aacute;c m&oacute;n x&ocirc;i nếp nương của người Mường, thịt chua Thanh Sơn (Ph&uacute; Thọ)...</p>\n<p>&nbsp;</p>\n<h2>ẨM THỰC THỂ HIỆN VĂN H&Oacute;A TINH THẦN NGƯỜI VIỆT</h2>\n<p>Văn h&oacute;a tinh thần của người Việt trong ẩm thực ch&iacute;nh l&agrave; sự thể hiện n&eacute;t đẹp trong văn h&oacute;a giao tiếp, l&agrave; sự cư xử giữa người với người trong bữa ăn, l&agrave;m vui l&ograve;ng nhau qua th&aacute;i độ ứng xử lịch l&atilde;m, c&oacute; gi&aacute;o dục. Việc ăn uống đều c&oacute; những ph&eacute;p tắc, lề lối ri&ecirc;ng, từ bản th&acirc;n, đến trong gia đ&igrave;nh, rồi c&aacute;c mối quan hệ ngo&agrave;i x&atilde; hội.</p>\n<p>&nbsp;</p>\n<p>Bản th&acirc;n mỗi người phải biết giữ g&igrave;n, thận trọng trong khi ăn, cũng như đề cao danh dự của m&igrave;nh: &ldquo;ăn tr&ocirc;ng nồi, ngồi tr&ocirc;ng hướng&rdquo;, hay &ldquo;ăn phải nhai, n&oacute;i phải nghĩ.</p>\n<p>&nbsp;</p>\n<p>Trong gia đ&igrave;nh: ăn chung m&acirc;m, ưu ti&ecirc;n thức ăn ngon cho người lớn tuổi, trẻ nhỏ&rdquo;k&iacute;nh tr&ecirc;n nhường dưới&rdquo;, thể hiện sự k&iacute;nh trọng, t&igrave;nh cảm y&ecirc;u thương. Bữa cơm h&agrave;ng ng&agrave;y được xem l&agrave; bữa cơm xum họp gia đ&igrave;nh, mọi người qu&acirc;y quần b&ecirc;n nhau, c&ugrave;ng nhau vui vầy sau một ng&agrave;y l&agrave;m việc mệt nhọc.</p>\n<p>&nbsp;</p>\n<p>Ngo&agrave;i x&atilde; hội: việc mời kh&aacute;ch đến nh&agrave; thể hiện n&eacute;t văn h&oacute;a giữa người với người trong x&atilde; hội. Khi c&oacute; dịp tổ chức ăn uống, gia chủ thường l&agrave;m những m&oacute;n ăn thật ngon, nấu thật nhiều để đ&atilde;i kh&aacute;ch. Chủ nh&agrave; thường gắp thức ăn mời kh&aacute;ch, tr&aacute;nh việc dừng đũa trước kh&aacute;ch, v&agrave; c&oacute; lời mời ăn th&ecirc;m khi kh&aacute;ch dừng bữa. Bữa cơm thiết kh&ocirc;ng chỉ đơn thuần l&agrave; cuộc vui m&agrave; c&ograve;n thể hiện tấm l&ograve;ng hiếu kh&aacute;ch đặc trưng của người Việt.</p>\n<p>&nbsp;</p>\n<p><strong>Ẩm thực Việt Nam</strong> l&agrave; một bức tranh đầy m&agrave;u sắc, n&ecirc;u bật l&ecirc;n bản sắc ri&ecirc;ng của từng&nbsp;d&acirc;n tộc, v&ugrave;ng miền nhưng ch&uacute;ng vẫn mang trong m&igrave;nh cốt c&aacute;ch, linh hồn Việt đồng nhất. Đậm đ&agrave;</p>\n</div>', '2024-05-02', 'dqwdqwdqwd', 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713008245/q0jdmkd8v6vtdi7zv3hk.jpg', NULL, 'hehehe update', 1),
(3, '<p>ehehe pk</p>', '2024-04-16', 'Món cơm là món truyền thống của người việt nam', 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713278340/dxafyck47fo8v0y6hxpt.jpg', NULL, 'Công thức nấu ăn đơn giản và ngon miệng', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` bigint NOT NULL,
  `quantity` int DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `quantity`, `product_id`, `user_id`) VALUES
(1, 3, 3, 4),
(6, 2, 2, 4),
(7, 1, 4, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` bigint NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `image`, `name`) VALUES
(1, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713007361/bsbubaxy5f1aefembjav.png', 'Cơm Văn Phòng'),
(3, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713007400/vlk2eyx8xgtvjd8idknf.png', 'Ăn trưa'),
(4, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713007423/te3mv433gqhuxc4uvnka.png', 'Ăn sáng'),
(5, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713257085/xvt9cctihcr9ui8repb1.png', 'Mì xào'),
(6, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713257366/peh8pmh1t0enoltq3ogm.png', 'Chè thái'),
(7, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713257421/upvmsjzmekcbcxwigu0h.png', 'Ăn tối'),
(8, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713257493/er0oxsa19ldwmy5auzza.png', 'Món chay'),
(9, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713257513/vpcrvuszbvcsf83kdylm.png', 'Ăn Với Nhóm'),
(10, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713257522/gxzmjuuv4d5hqa6os5hl.png', 'Heo Quay'),
(11, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713257535/wf6egtn87txxjekwinki.png', 'Cơm Gà Xối Mỡ'),
(12, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713257546/maaovsudj9yf1sevc95e.png', 'Bún Đậu Mắm Tôm'),
(13, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713257558/q5yi8sqllk5ck96tg3j1.png', 'Trà Tắc'),
(14, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713257568/w4zgmlvrt1hob0xkko36.png', 'Ăn Vặt'),
(15, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713257577/jjtfmxmsucop10sogire.png', 'Trà Sữa'),
(16, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713257588/mlgpepxcdpz3pyxty7fl.png', 'Bánh Tráng Các Loại'),
(17, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713257624/gghdwtvpslmnmumku0lv.png', 'Tiệm Bánh'),
(18, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713259824/a452dobmsoqdb5si5ds5.png', 'Combo');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `history_pay`
--

CREATE TABLE `history_pay` (
  `id` bigint NOT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `request_id` varchar(255) DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `invoice_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `history_pay`
--

INSERT INTO `history_pay` (`id`, `created_date`, `created_time`, `order_id`, `request_id`, `total_amount`, `invoice_id`) VALUES
(1, '2024-04-17', NULL, '1713344392304', '1713344392304', 263000, 2),
(2, '2024-04-19', NULL, '1713514324644', '1713514324644', 315000, 3),
(3, '2024-04-25', NULL, '1714028683043', '1714028683043', 268000, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `import_product`
--

CREATE TABLE `import_product` (
  `id` bigint NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `import_date` date DEFAULT NULL,
  `import_price` double DEFAULT NULL,
  `import_time` time DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `product_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `import_product`
--

INSERT INTO `import_product` (`id`, `description`, `import_date`, `import_price`, `import_time`, `quantity`, `product_id`) VALUES
(3, '<p>heheh oke</p>', '2024-05-08', 45000, '22:53:59', 80, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoice`
--

CREATE TABLE `invoice` (
  `id` bigint NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `pay_type` int DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `receiver_name` varchar(255) DEFAULT NULL,
  `status_invoice` int DEFAULT NULL,
  `status_update_date` datetime DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `voucher_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `invoice`
--

INSERT INTO `invoice` (`id`, `address`, `created_date`, `created_time`, `note`, `pay_type`, `phone`, `receiver_name`, `status_invoice`, `status_update_date`, `total_amount`, `user_id`, `voucher_id`) VALUES
(1, 'nhà 21A Lê thanh nghị, hai bà trưng, hà nội', '2024-04-17', '15:46:20', 'giao trước 12 giờ', 1, '0322415125', 'Trần văn hiếu', 4, NULL, 263000, 4, NULL),
(2, 'Nhà 21A, Lê thanh nghị', '2024-04-17', '16:00:38', 'giao trước 12 giờ', 0, '0322415125', 'Trần văn hiếu', 2, '2024-04-18 00:00:00', 263000, 4, NULL),
(3, '53 ngõ trại cá, trương định', '2024-04-19', '15:12:52', 'nhận', 0, '0322415125', 'Trần văn hiếu', 0, NULL, 315000, 4, NULL),
(4, '', '2024-04-25', '14:05:33', '', 0, '0322415125', 'Trần văn hiếu', 0, NULL, 268000, 4, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoice_detail`
--

CREATE TABLE `invoice_detail` (
  `id` bigint NOT NULL,
  `price` double DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `invoice_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `invoice_detail`
--

INSERT INTO `invoice_detail` (`id`, `price`, `quantity`, `invoice_id`, `product_id`) VALUES
(1, 65000, 3, 1, 3),
(2, 34000, 2, 1, 2),
(3, 65000, 3, 2, 3),
(4, 34000, 2, 2, 2),
(5, 65000, 3, 3, 3),
(6, 34000, 2, 3, 2),
(7, 20000, 1, 3, 4),
(8, 32000, 1, 3, 6),
(9, 65000, 3, 4, 3),
(10, 34000, 2, 4, 2),
(11, 20000, 1, 4, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` bigint NOT NULL,
  `deleted` bit(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image_banner` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `old_price` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity_sold` int DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  `expiry` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `deleted`, `description`, `image_banner`, `name`, `old_price`, `price`, `quantity_sold`, `category_id`, `expiry`, `quantity`) VALUES
(2, b'0', '<p>hehehe oke ddaats</p>', 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713258108/nsqtmkpdjygogbmsglxq.png', 'Sữa Chua Trân Châu', 38000, 34000, 4, 15, 'trong 12 giờ', 0),
(3, b'0', '<p>oke hehehe</p>', 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713261052/uaecmr66btjqewxf1fue.jpg', 'Cơm Đùi Gà Lớn', NULL, 65000, 6, 11, 'trong 10 giờ', 80),
(4, b'0', '<p>oke</p>', 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713261096/bhagx9olucnq0axl2ev8.jpg', 'Hồng Trà Tắc Truyền Thống - 1 Ly', NULL, 20000, 2, 13, '', 0),
(5, b'0', '<p>oke</p>', 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713261202/ierxchjtzcpxmbag4rpw.jpg', 'Cơm Chiên 2 Trứng Opla', NULL, 32000, 0, 4, '', 0),
(6, b'0', '<p>oke</p>', 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713261235/io0tbwxkzj7itefkv7tx.png', 'Cơm Thập Cẩm - 1 Phần', NULL, 32000, 1, 1, '', 0),
(7, b'0', '<p>oke</p>', 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713261260/twitqibeua7jnidzur7k.png', 'Soda Việt Quất - 1 Ly 700ml', NULL, 27000, 0, 1, '', 0),
(8, b'0', '<p>oke</p>', 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713261299/tn1hg2fxrdnng6ddufpp.jpg', 'Cơm Đùi Tỏi + Canh', NULL, 45000, 0, 1, '', 0),
(9, b'0', '<p>hehe</p>', 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713261983/fmvvendxkekeci95fugp.png', 'Trà Lucky', NULL, 55000, 0, 13, '', 0),
(10, b'0', '<p>ok hehe</p>', 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713262012/rqy77xnyumeyu7sgqlgm.png', 'Pizza Phô Mai Cao Cấp - 1 Cái', NULL, 89000, 0, 14, '', 0),
(11, b'0', '<p>rưerw</p>', 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713262051/qxlvf1fobytprsxsgn8z.jpg', 'Cơm Phi-Lê Gà Giòn - 1 Phần', NULL, 45000, 0, 1, '', 0),
(12, b'0', '<p>fewr</p>', 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713262077/tkgxt5r0xsbhluihysxp.jpg', 'Gà Rán (2 Miếng) - 1 Phần', NULL, 70000, 0, 14, '', 0),
(13, b'0', '<p>oke hehee</p>', 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713262110/czbdefstr5fhcjxkxpur.jpg', 'Cơm Chiên Đùi Gà Xối Mỡ - Nhỏ', NULL, 45000, 0, 11, '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_comment`
--

CREATE TABLE `product_comment` (
  `id` bigint NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` time DEFAULT NULL,
  `star` float DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `product_comment`
--

INSERT INTO `product_comment` (`id`, `content`, `created_date`, `created_time`, `star`, `product_id`, `user_id`) VALUES
(1, 'Món nấu hơi mặn, giao hàng lâu', '2024-04-17', '19:42:28', 5, 4, 4),
(3, 'oke', '2024-04-17', '20:28:37', 5, 4, 4),
(4, 'sản phẩm tốt', '2024-04-18', '09:57:45', 5, 6, 4),
(5, 'sản phẩm tốt, đánh giá 5 sao', '2024-05-02', '10:05:39', 5, 6, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_comment_image`
--

CREATE TABLE `product_comment_image` (
  `id` bigint NOT NULL,
  `link_image` varchar(255) DEFAULT NULL,
  `product_comment_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `product_comment_image`
--

INSERT INTO `product_comment_image` (`id`, `link_image`, `product_comment_id`) VALUES
(1, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713357678/yr5ejww6ucprmvs4ekaa.jpg', 1),
(2, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713357678/y7slpmowkxcfacls5rje.jpg', 1),
(3, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713357679/l16kxxkchycjcnmq1odv.jpg', 1),
(7, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713360448/elro3ypteoh66qfsc8v5.jpg', 3),
(8, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1714619056/t1iq0eeqrjixttqq0qxs.png', 5),
(9, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1714619056/o0zs2zvp9cddf3osmbjz.png', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_image`
--

CREATE TABLE `product_image` (
  `id` bigint NOT NULL,
  `link_image` varchar(255) DEFAULT NULL,
  `product_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `product_image`
--

INSERT INTO `product_image` (`id`, `link_image`, `product_id`) VALUES
(6, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713011870/bq6ikynhcsoxg6ucw7z2.jpg', 2),
(7, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713011870/uov1drkhetsvgzw0lzq6.jpg', 2),
(8, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713011870/sf0wd8uetqpcsuy4wpv6.png', 2),
(9, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713011871/oomk7d3ql2g50gcipsch.png', 2),
(10, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713011871/c43rvutqhm4w9kmhaaxr.png', 2),
(11, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713261049/ag249yzd8oismtoubpbi.jpg', 3),
(12, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713261049/xscuk0a0qsbp8riuc5d6.png', 3),
(13, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713261049/xqbije1jnbwtercqtj9v.jpg', 3),
(14, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713261050/dtcppmqxly97cethcmb8.jpg', 3),
(15, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713261094/orpgsc0qb5ijiwt0vmse.png', 4),
(16, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713261094/gmnpnhkt3im38p9wfgpl.jpg', 4),
(17, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713261095/ndd3z0ptpgebakigotui.png', 4),
(18, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713261199/ucpjyepvq2f3sajrdkfa.png', 5),
(19, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713261199/dzlwnlatgdieqbiiwydn.jpg', 5),
(20, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713261200/wkrdmnzythiwwudrspkb.png', 5),
(21, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713261259/byuptxkqxe9eno5iy4fi.png', 7),
(22, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713261259/ln5gorcedmc3dtmxtvm2.png', 7),
(23, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713261259/pfbongz0jlrpqg0ezbuq.jpg', 7),
(24, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713261296/hmhugtycbri5p6iofrie.jpg', 8),
(25, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713261297/zywrzo4pffdirb58hxjy.png', 8),
(26, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713261298/uwnqjrtjmol043nxvxqg.png', 8),
(27, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713261980/zulhejp1dlkygcoidndu.jpg', 9),
(28, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713261981/xxorhhwdnpdlooxer6cr.png', 9),
(29, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713261982/bwshj388usnxjemhkyxj.jpg', 9),
(30, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713262011/fsgdvaqiobbnqjlamw7x.jpg', 10),
(31, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713262011/krvmgn6cfxxkpvi3lvfg.jpg', 10),
(32, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713262011/ilqpzqacuizfuuhfrmwa.jpg', 10),
(33, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713262049/dnq5eqrncbgzo861ui6p.jpg', 11),
(34, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713262050/mhas7fco9fffj0s8hm7l.jpg', 11),
(35, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713262050/sejwtytgzw2fffod7ouz.png', 11),
(36, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713262075/e1q1hvtddkc8ncac2a70.jpg', 12),
(37, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713262075/tktikza3tsma1003vgm9.png', 12),
(38, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713262075/gullxlskrrve9vr2wswn.jpg', 12),
(39, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713262108/retyqurmwaffwrp9fekj.png', 13),
(40, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713262108/hs8unlie9pmytc9jcdhp.jpg', 13),
(41, 'http://res.cloudinary.com/dxqh3xpza/image/upload/v1713262108/dyjh3dwonxctbumibyns.jpg', 13);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint NOT NULL,
  `activation_key` varchar(255) DEFAULT NULL,
  `actived` bit(1) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `remember_key` varchar(255) DEFAULT NULL,
  `token_fcm` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `authority_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `activation_key`, `actived`, `created_date`, `email`, `fullname`, `password`, `phone`, `remember_key`, `token_fcm`, `username`, `authority_name`) VALUES
(1, NULL, b'1', '2024-03-29', 'admin@gmail.com', 'admin', '$2a$10$45sOFu06Tu3BQKMU3VG8T.57jw/zpSaElC0lrNWVh28MunkZTrp8.', '0332547999', NULL, NULL, 'admin', 'ROLE_ADMIN'),
(4, NULL, b'1', '2024-04-13', 'hieutran02102804@gmail.com', 'Trần văn hiếu', '$2a$10$WfWfBDz0VyuUo2eTsxTYHOVEmLqi.u8L3uheKLuXnR.qoVLHBUY/2', '0322415125', NULL, NULL, 'hieutran02102804@gmail.com', 'ROLE_USER'),
(5, NULL, b'1', '2024-04-13', 'quantri@gmail.com', 'Quản trị viên', '$2a$10$QUI/7mMTkaJ6gwathyvs1ufBRShMEuO4PL55WzIx7SCPJ4/fXW0Pm', '094728342', NULL, NULL, 'quantri@gmail.com', 'ROLE_ADMIN');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `voucher`
--

CREATE TABLE `voucher` (
  `id` bigint NOT NULL,
  `block` bit(1) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `min_amount` double DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `quantity` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `voucher`
--

INSERT INTO `voucher` (`id`, `block`, `code`, `discount`, `end_date`, `min_amount`, `name`, `start_date`, `quantity`) VALUES
(1, b'0', 'vc001', 15000, '2024-05-08', 200000, 'Voucher khuyến mãi hef', '2024-04-24', NULL),
(3, b'0', 'vc002', 35000, '2024-05-05', 500000, 'Voucher khuyến mãi cho gia đình', '2024-04-26', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `authority`
--
ALTER TABLE `authority`
  ADD PRIMARY KEY (`name`);

--
-- Chỉ mục cho bảng `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKkr2fy24puc3x3sdnla4r1iok1` (`user_id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK3d704slv66tw6x5hmbm6p2x3u` (`product_id`),
  ADD KEY `FKg5uhi8vpsuy0lgloxk2h4w5o6` (`user_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `history_pay`
--
ALTER TABLE `history_pay`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK3uqapx8urdm829chr0p30d0y2` (`invoice_id`);

--
-- Chỉ mục cho bảng `import_product`
--
ALTER TABLE `import_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKrb4pegepmxt4xa1n8dmw5mtwv` (`product_id`);

--
-- Chỉ mục cho bảng `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKc8jotskr93810vgn75qlbusw2` (`user_id`),
  ADD KEY `FKh8mc37lrohbk7stgatwwn5doq` (`voucher_id`);

--
-- Chỉ mục cho bảng `invoice_detail`
--
ALTER TABLE `invoice_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKit1rbx4thcr6gx6bm3gxub3y4` (`invoice_id`),
  ADD KEY `FKbe6c21nke5fy4m3vw00f23qsf` (`product_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK1mtsbur82frn64de7balymq9s` (`category_id`);

--
-- Chỉ mục cho bảng `product_comment`
--
ALTER TABLE `product_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKf0dvop3xf5orf5j8icdwnq5ak` (`product_id`),
  ADD KEY `FKkg61diec02rh2o3xt4hjiy5u0` (`user_id`);

--
-- Chỉ mục cho bảng `product_comment_image`
--
ALTER TABLE `product_comment_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK9jkf3unia7o8ylu9ar3sgd5py` (`product_comment_id`);

--
-- Chỉ mục cho bảng `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK6oo0cvcdtb6qmwsga468uuukk` (`product_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKq6r7e19l5xjmty0j0w6i2inlv` (`authority_name`);

--
-- Chỉ mục cho bảng `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `blog`
--
ALTER TABLE `blog`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `history_pay`
--
ALTER TABLE `history_pay`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `import_product`
--
ALTER TABLE `import_product`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `invoice_detail`
--
ALTER TABLE `invoice_detail`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `product_comment`
--
ALTER TABLE `product_comment`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `product_comment_image`
--
ALTER TABLE `product_comment_image`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `product_image`
--
ALTER TABLE `product_image`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `voucher`
--
ALTER TABLE `voucher`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `FKkr2fy24puc3x3sdnla4r1iok1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `FK3d704slv66tw6x5hmbm6p2x3u` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FKg5uhi8vpsuy0lgloxk2h4w5o6` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `history_pay`
--
ALTER TABLE `history_pay`
  ADD CONSTRAINT `FK3uqapx8urdm829chr0p30d0y2` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`);

--
-- Các ràng buộc cho bảng `import_product`
--
ALTER TABLE `import_product`
  ADD CONSTRAINT `FKrb4pegepmxt4xa1n8dmw5mtwv` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `FKc8jotskr93810vgn75qlbusw2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKh8mc37lrohbk7stgatwwn5doq` FOREIGN KEY (`voucher_id`) REFERENCES `voucher` (`id`);

--
-- Các ràng buộc cho bảng `invoice_detail`
--
ALTER TABLE `invoice_detail`
  ADD CONSTRAINT `FKbe6c21nke5fy4m3vw00f23qsf` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FKit1rbx4thcr6gx6bm3gxub3y4` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK1mtsbur82frn64de7balymq9s` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Các ràng buộc cho bảng `product_comment`
--
ALTER TABLE `product_comment`
  ADD CONSTRAINT `FKf0dvop3xf5orf5j8icdwnq5ak` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FKkg61diec02rh2o3xt4hjiy5u0` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `product_comment_image`
--
ALTER TABLE `product_comment_image`
  ADD CONSTRAINT `FK9jkf3unia7o8ylu9ar3sgd5py` FOREIGN KEY (`product_comment_id`) REFERENCES `product_comment` (`id`);

--
-- Các ràng buộc cho bảng `product_image`
--
ALTER TABLE `product_image`
  ADD CONSTRAINT `FK6oo0cvcdtb6qmwsga468uuukk` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FKq6r7e19l5xjmty0j0w6i2inlv` FOREIGN KEY (`authority_name`) REFERENCES `authority` (`name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

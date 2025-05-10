-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 09, 2025 lúc 10:38 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `category_id` bigint(20) NOT NULL,
  `category_image` varchar(255) DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`category_id`, `category_image`, `category_name`) VALUES
(4, NULL, 'Rau'),
(5, NULL, 'Trái cây'),
(6, NULL, 'Củ quả');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `rate_date` datetime DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `order_detail_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `favorites`
--

CREATE TABLE `favorites` (
  `favorite_id` bigint(20) NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `favorites`
--

INSERT INTO `favorites` (`favorite_id`, `product_id`, `user_id`) VALUES
(81, 10, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `order_id` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`order_id`, `address`, `amount`, `order_date`, `phone`, `status`, `user_id`) VALUES
(1, 'ben tre', 2, '2025-04-29 00:00:00', '0917291997', 2, 1),
(2, 'da nang', 20000, '2025-04-29 00:00:00', '0615856985', 2, 2),
(3, 'Ben tre', 0, '2025-04-12 00:00:00', '0915762565', 3, 1),
(4, 'tien giang', 0, '2025-04-12 00:00:00', '0915762565', 3, 1),
(6, '123 Hoang dieu 2', 0, '2025-04-12 00:00:00', '0915762565', 3, 1),
(7, '104,Đường số 6, Linh Trung', 67900, '2025-04-12 00:00:00', '0915746525', 2, 2),
(8, '104,Đường số 6, Linh Trung', 169450, '2025-04-12 00:00:00', '0915291997', 1, 2),
(9, '104,Đường số 6, Linh Trung', 115950, '2025-04-12 00:00:05', '0915291997', 3, 2),
(10, '104,Đường số 6, Linh Trung', 53050, '2025-04-12 00:00:00', '0916829635', 1, 1),
(11, 'Bến Tre', 123, '2025-04-13 00:00:00', '0915291997', 2, 2),
(12, 'Ba Tri, Bến tre', 40500, '2025-04-13 00:00:00', '0915291997', 0, 2),
(13, 'Mỹ Chánh', 116050, '2025-04-13 00:00:00', '0915762565', 3, 2),
(14, '104,Đường số 6, Linh Trung', 130750, '2025-04-13 00:00:00', '0915291997', 3, 2),
(15, '104,Đường số 6, Linh Trung', 362000, '2025-04-13 00:00:00', '0915291997', 2, 2),
(16, 'Mỹ Chánh', 83550, '2025-04-13 00:00:00', '0915762565', 3, 2),
(17, 'Ba Tri', 362000, '2025-04-13 00:00:00', '0915291997', 0, 1),
(18, 'Đà Nẵng', 24500, '2025-04-15 00:00:00', '0915291997', 0, 2),
(19, '104,Đường số 6, Linh Trung', 24250, '2025-04-15 00:00:00', '0915762565', 2, 2),
(20, '104,Đường số 6, Linh Trung', 54500, '2025-04-15 00:00:00', '0915746525', 2, 2),
(21, '104,Đường số 6, Linh Trung', 244550, '2025-04-15 00:00:00', '0915291997', 0, 2),
(22, '104,Đường số 6, Linh Trung', 228000, '2025-04-15 00:00:00', '0915762565', 3, 2),
(23, '104,Đường số 6, Linh Trung', 40000, '2025-04-16 00:00:00', '0915762565', 2, 2),
(24, '104,Đường số 6, Linh Trung', 55950, '2025-04-16 00:00:00', '0915762565', 0, 2),
(25, '104,Đường số 6, Linh Trung', 32000, '2025-04-17 00:00:00', '0915762565', 2, 2),
(26, '104,Đường số 6, Linh Trung', 73750, '2025-04-17 00:00:00', '0915291997', 2, 2),
(29, 'demo địa chỉ', 72500, '2022-02-17 00:00:00', '0915291997', 2, 8),
(30, 'demo địa chỉ', 201500, '2022-02-17 00:00:00', '0915291997', 2, 8),
(31, '104 Duong so 6', 24250, '2025-05-09 00:00:00', '0333582495', 2, 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `order_detail_id` bigint(20) NOT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`order_detail_id`, `price`, `quantity`, `order_id`, `product_id`) VALUES
(1, 3333, 11, 1, 8),
(2, 2222, 1, 2, 8),
(3, 120000, 1, 3, 16),
(4, 39000, 1, 3, 9),
(5, 25000, 1, 3, 10),
(6, 39000, 1, 4, 9),
(7, 25000, 1, 4, 10),
(9, 39000, 1, 6, 9),
(10, 25000, 1, 6, 12),
(11, 40000, 1, 6, 14),
(12, 35000, 2, 7, 18),
(13, 35000, 2, 8, 18),
(14, 25000, 1, 8, 20),
(15, 16000, 1, 8, 8),
(16, 39000, 1, 8, 9),
(17, 25000, 1, 8, 10),
(18, 22000, 3, 9, 17),
(19, 35000, 1, 9, 18),
(20, 16000, 1, 9, 8),
(21, 16000, 1, 10, 8),
(22, 39000, 1, 10, 9),
(23, 16000, 1, 11, 8),
(24, 39000, 1, 11, 9),
(25, 16000, 1, 12, 8),
(26, 25000, 1, 12, 10),
(27, 39000, 1, 13, 9),
(28, 25000, 2, 13, 10),
(29, 30000, 1, 13, 11),
(30, 22000, 1, 14, 17),
(31, 25000, 1, 14, 10),
(32, 30000, 2, 14, 11),
(33, 25000, 1, 14, 13),
(34, 120000, 3, 15, 16),
(35, 10000, 2, 15, 15),
(36, 22000, 1, 16, 17),
(37, 39000, 1, 16, 9),
(38, 25000, 1, 16, 10),
(39, 120000, 3, 17, 16),
(40, 10000, 2, 17, 15),
(41, 25000, 1, 18, 10),
(42, 25000, 1, 19, 13),
(43, 25000, 1, 20, 10),
(44, 30000, 1, 20, 11),
(45, 22000, 1, 21, 17),
(46, 170000, 1, 21, 19),
(47, 25000, 1, 21, 20),
(48, 39000, 1, 21, 9),
(49, 120000, 1, 22, 16),
(50, 25000, 1, 22, 20),
(51, 40000, 2, 22, 14),
(52, 10000, 1, 22, 15),
(53, 40000, 1, 23, 14),
(54, 22000, 1, 24, 17),
(55, 35000, 1, 24, 18),
(56, 16000, 2, 25, 8),
(57, 25000, 1, 26, 10),
(58, 25000, 1, 26, 12),
(59, 25000, 1, 26, 13),
(65, 25000, 1, 29, 20),
(66, 25000, 2, 29, 13),
(67, 170000, 1, 30, 19),
(68, 40000, 1, 30, 14),
(69, 25000, 1, 31, 13);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `product_id` bigint(20) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `discount` int(11) NOT NULL,
  `entered_date` datetime DEFAULT NULL,
  `price` double NOT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `status` bit(1) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `favorite` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `description`, `discount`, `entered_date`, `price`, `product_image`, `product_name`, `quantity`, `status`, `category_id`, `favorite`) VALUES
(8, 'Ớt chuông  là một loại thực vật có hàm lượng chất chống oxi hóa cao, trong 100g ớt chuông có thể cung cấp đến 84 kJ tương đương với 20 kcal. Đặc biệt ớt chuông đỏ là loại có hàm lượng chất dinh dưỡng cao nhất (ớt chuông xanh chứa hàm lượng vitamin C cao gấp đôi và hàm lượng carotene, lycopene cao gấp 9 lần ớt chuông xanh).', 0, '2025-04-30 00:00:00', 16000, '01.jpg', 'Ớt chuông', 24, NULL, 6, b'0'),
(9, 'Là một loại củ rất quen thuộc trong các món ăn của người Việt. Loại củ này có hàm lượng chất dinh dưỡng và vitamin A cao, được xem là nguyên liệu cần thiết cho các món ăn dặm của trẻ nhỏ, giúp trẻ sáng mắt và cung cấp nguồn chất xơ dồi dào.\r\nCà rốt không chỉ là loại củ quen thuộc trong các món ăn trong gia đình mà còn là vị thuốc quý, rất tốt cho sức khỏe. Với hàm lượng chất dinh dưỡng và vitamin A cao, cà rốt được xem là một nguyên liệu cần thiết cho các món ăn dặm của trẻ nhỏ, giúp trẻ sáng mắt và cung cấp nguồn chất xơ dồi dào. \r\nNgoài ra, cà rốt còn được xem là một \"thần dược\" trong quá trình chăm sóc da của phụ nữ. Chỉ với những bước làm đơn giản là bạn đã có ngay hỗn hợp mặt nạ cà rốt - mật ong giúp ngăn ngừa mụn, làm sáng da và cải thiện làn da sạm và lão hóa. ', 5, '2025-04-30 00:00:00', 39000, '02.jpg', 'Cà rốt', 49, NULL, 6, b'0'),
(10, 'Dưa leo (hay còn gọi là dưa chuột) được trồng rộng rãi ở nhiều nước khác nhau, có thể được sử dụng với nhiều mục đích khác nhau nhưng dù ở dạng nào dưa leo vẫn giữ nguyên được những giá trị dinh dưỡng của mình. Dưa leo baby với hình dạng giống hệt trái dưa leo thông thường với vỏ xanh lá cây sọc trắng, nhưng chiều dài lại chỉ từ 3 - 5cm và vị thì ngọt và mát hơn dưa leo thông thường.', 2, '2025-04-30 00:00:00', 25000, '03.jpg', 'Dưa leo', 30, NULL, 6, b'1'),
(11, 'Hay còn được gọi là cà dái dê, đây là một loại rau củ chế biến được thành rất nhiều món ăn thơm ngon như: hấp, xào, nướng, ăn sống,... mỗi dạng đều mang lại hương vị rất ngon. Trong cà tím Nhật chứa hàm lượng chất xơ vô cùng cao và giàu sắt rất tốt cho cơ thể.\r\nCà tím Nhật là giống cà tím (có tên gọi khác là cà dái dê) có nguồn gốc từ Nhật Bản, có họ hàng với cà chua, khoai tây, cà pháo. Loại củ, quả này sử dụng trong chế biến dưới dạng thức ăn hầm, xào, nướng. Cà tím Nhật có phần vỏ ngoài màu tím đen, bắt mắt, không những vậy chứa hàm lượng chất xơ vô cùng cao và giàu sắt, giúp giảm nguy cơ mắc các bệnh ung thư như ung thư ruột kết, trực tràng, tim mạch, chữa chứng hay quên,... Đây được xem là \"thần dược\" của người Nhật.', 0, '2025-04-30 00:00:00', 30000, '04.jpg', 'Cà tím', 40, NULL, 6, b'0'),
(12, 'Đậu bắp là một loại rau quả rất tốt cho sức khỏe đặc biệt cho hệ xương khớp nhưng có giá rất rẻ. Một kg đậu bắp tươi hiện nay có giá chỉ từ 25.000 – 30.000 đồng và đậu bắp sấy khô giá cũng chỉ có 120.000 đồng/1kg mà thôi.', 0, '2025-04-30 00:00:00', 25000, '05.jpg', 'Đậu bắp', 30, NULL, 6, b'0'),
(13, 'Là loại rau củ rất tốt cho sức khoẻ của người sử dụng, loại rau củ này không những giúp bổ sung chất dinh dưỡng cần thiết cho cơ thể mà chúng có giúp làm đẹp da cho phái nữ. Cà chua có thể ăn sống hoặc chế biến các món ăn cũng rất ngon.\r\nCà chua được xem là một loại thực phẩm thiết yếu bởi chúng rất quen thuộc để tạo ra nhiều món ăn ngon hàng ngày cho gia đình. Đây cũng được xem là một loại củ rất bổ dưỡng và lành mạnh, có tác dụng tăng cường sức đề kháng của cơ thể, ngăn ngừa và điều trị bệnh suy nhược, chống chống nhiễm trùng. Không những thế, cà chua còn chứa hàm lượng vitamin A cao, mang đến nhiều lợi ích cho sức khoẻ. \r\nCà chua còn giúp làm trắng sáng da ở phụ nữ bằng nhiều cách như nước ép cà chua, mặt nạ cà chua,...', 3, '2025-04-30 00:00:00', 25000, '06.jpg', 'Cà chua', 58, NULL, 6, b'0'),
(14, 'Do có tính mát, thơm, ngọt dịu, nhiều chất xơ khi được nấu nên thường dùng để chế biến thành canh với tôm thịt hoặc xào để tăng độ ngon.\r\nCải ngọt là một trong những loại rau cải được sử dụng phổ biến trong các bữa ăn của người Việt Nam. Cải ngọt có thân tròn, phần lá có dạng tròn hoặc tù, màu xanh mướt. Cải ngọt có vị ngọt thanh, khi già thì có vị cay và nồng, rất phù hợp trong việc chế biến nhiều món ăn khác nhau. Ngoài ra cải ngọt còn mang đến nhiều lợi ích cho sức khỏe như phòng ngừa ung thư, hỗ trợ trị bệnh gout, trĩ, xơ gan, tăng sức đề kháng và thanh lọc cơ thể. ', 0, '2025-04-30 00:00:00', 40000, '09.jpg', 'Cải ngọt', 50, NULL, 4, b'0'),
(15, 'Còn gọi là bí đỏ hạt đậu, đây là giống bí có ruột rất đặc, ít hả ăn dẻo và ngọt. Bí hồ lô chứa nhiều chất dinh dưỡng và mang lại nhiều lợi ích cho sức khoẻ. Bí hồ lô có thể chế biến thành nhiều món ăn ngon như: sữa bí, canh bí, súp bí,... món nào cũng đều thơm ngon.\r\nBí đỏ là loại củ chứa lượng calo tương đối thấp, do 94% bí đỏ là nước. Bí đỏ cũng chứa nhiều beta-caroten, một loại carotenoid mà cơ thể tổng hợp thành vitamin A. Hơn thế nữa, hạt bí đỏ cũng có thể được sử dụng bởi chúng chứa nhiều chất dinh dưỡng và mang lại nhiều lợi ích cho sức khoẻ.\r\nBí đỏ hồ lô cùng họ nhà bí đỏ nhưng có hình dạng giống như hồ lô. Về mặt dinh dưỡng, bí đỏ hay bí đỏ hồ lô đều giống nhau. Bí đỏ hồ lô sẽ tăng thêm một sự lựa chọn cho những người nội trợ với nhu cầu trang trí món ăn thêm phần bắt mắt. ', 0, '2025-04-30 00:00:00', 10000, '12.jpg', 'Bí đỏ', 40, NULL, 6, b'0'),
(16, 'Chín đỏ đẹp mắt vô cùng hấp dẫn, bao bì sang trọng, kin đáo và an toàn. Dâu tây hộp 500g chứa nhiều loại đường, protein, axít hữu cơ, pectic và giàu vitamin, chất khoáng cũng như nguyên tố vi lượng giúp tăng cường hệ miễn dịch, bảo vệ mắt, chống ung thư, ngăn ngừa vết nhăn,...và nhiều lợi ích khác\r\nDâu tây hay còn gọi là dâu đất, được trồng lấy trái cây ở vùng ôn đới. Với mùi thơm hấp dẫn cùng vị dâu ngọt lẫn chua nên dâu tây được ưa chuộng. Loại trái cây nội địa này có giá trị dinh dưỡng cao, được coi là “nữ hoàng của các loài trái cây”. Dâu tây chứa nhiều loại đường, protein, axít hữu cơ, pectic và giàu vitamin, chất khoáng cũng như nguyên tố vi lượng giúp tăng cường hệ miễn dịch, bảo vệ mắt, chống ung thư, ngăn ngừa vết nhăn,...', 5, '2025-04-30 00:00:00', 120000, '13.jpg', 'Dâu tây', 90, NULL, 5, b'0'),
(17, 'Loại trái cây phổ biến được ưa chuộng giàu chất xơ, vitamin, khoáng chất thiết yếu giúp cung cấp chất dinh dưỡng cho cơ thể con người và mang lại nhiều lợi ích tuyệt vời cho hệ tiêu hóa, tim mạch, giúp mắt sáng, làm đẹp da. Xoài keo có quả chắc giòn giòn chua ngọt thơm ngon được nhiều người ưa thích\r\nNhư bạn đã biết thì xoài là một loại trái cây nhiệt đới phổ biến ở nước ta, được nhiều người dùng ưa chuộng. Loại trái cây này cực kỳ giàu chất xơ, vitamin, khoáng chất thiết yếu không chỉ giúp cung cấp chất dinh dưỡng cho cơ thể con người mà còn mang lại nhiều lợi ích tuyệt vời cho sức khỏe. Ăn xoài thường xuyên sẽ giúp hệ tiêu hóa, tim mạch của bạn hoạt động tốt hơn, giúp sáng mắt, làm đẹp da hiệu quả. Xoài còn được biết là loại trái cây tốt cho những người mắc bệnh tiểu đường. Nhờ vị chua và giòn mà xoài keo được xem như là lựa chọn đầu tiên khi làm gỏi, xoài lắc hay ăn sống cùng mắm ruốc, muối tôm cực kỳ ngon.', 0, '2025-04-30 00:00:00', 22000, '14.jpg', 'Xoài keo', 60, NULL, 5, b'0'),
(18, 'Cam sành có nguồn gốc từ Việt Nam, được trồng nhiều ở các tỉnh miền Nam và một số tỉnh phía Bắc: Hà Giang, Tuyên Quang, Yên Bái. Cam sành có vỏ dày, sần sùi màu xanh, khi chín có sắc cam, các múi thịt có màu cam. Cam sành rất mọng nước, có vị chua thanh nên thường vắt lấy nước pha chế thành nước giải khát chứ không ăn tươi như những loại cam khác.', 3, '2025-04-30 00:00:00', 35000, '16.jpg', 'Cam', 98, NULL, 5, b'0'),
(19, 'Từ vùng trồng nho nổi tiếng cả nước. Nho xanh quả to, tươi ngon, màu sắc đẹp, chứa nhiều vitamin và chất dinh dưỡng có thể ăn trực tiếp hoặc pha chế các loại đồ uống đều ngon. Sản phẩm cam kết bán đúng khối lượng, chất lượng và an toàn tuyệt đối. Bao bì kín đáo, sạch sẽ và hợp vệ ...\r\nNho xanh là loại trái cây nội địa của Việt Nam. Sản phẩm có thịt quả dày và trong, vị ngọt dịu không gắt, chua nhẹ rất hấp dẫn nên được đông đảo người tiêu dùng yêu thích và lựa chọn sử dụng. Nho rất giàu chất dinh dưỡng, lại có rất nhiều lợi ích đối với sức khỏe con người. Chúng ta có thể ăn nho trực tiếp nhưng cũng có thể làm nước ép nho để uống hay chế biến nhiều cách khác nhau.', 5, '2025-04-30 00:00:00', 170000, '17.jpg', 'Nho xanh', 60, NULL, 5, b'0'),
(20, 'Chuối chuyển màu từ xanh đậm sang vàng khi chín, phần thịt trắng ngà hoặc vàng, mềm, nhiều tinh bột khi chin. Chuối vàng là khi chuối chín. Khi chín chuối sẽ có hương vị rất ngon, ăn mềm , dẻo và ngọt, giàu chất xơ, vitamin C, vitamin B6. Chất béo bão hòa, cholesterol và natri trong chuối thấp. Bên cạnh đó, vỏ chuối còn có nhiều công dụng làm đẹp được nhiều chị em phụ nữ áp dụng. Ngoài ra, chuối còn có rất nhiều lợi ích khác.', 4, '2025-04-30 00:00:00', 25000, '18.jpg', 'Chuối', 79, NULL, 5, b'0'),
(22, 'Bông cải trắng có phần bông màu trắng gắn khít vào nhau, xốp và hơi dai mềm, bên ngoài có lớp lá bao bọc xung quanh, phiến lá cứng và dày. \r\n Một cup bông cải có 3g chất xơ, chiếm 10% nhu cầu hằng ngày . Chất xơ giúp nuôi các vi khuẩn khỏe mạnh trong ruột, giúp giảm viêm và tăng cường sức khỏe tiêu hóa.\r\n Chất chống oxy hóa trong bông cải bảo vệ các tế bào của bạn khỏi các gốc tự do có hại gây viêm.\r\n Chất Choline trong súp lơ trắng giúp duy trì màng tế bào, tổng hợp ADN và hỗ trợ trao đổi chất, ngăn ngừa cholesterol tích tụ trong gan.\r\n Có thể được sử dụng để thay thế các loại ngũ cốc và đậu trong chế độ ăn giảm cân.', 0, '2025-04-30 00:00:00', 10000, 'suplotrang.jpg', 'Súp lơ trắng', 30, NULL, 4, b'0'),
(23, 'Xà lách xoắn (hay Xà lách lolo xanh) có vị ngọt đắng, tính mát và thơm nhẹ, kết cấu lá giòn. Là loại rau chứa nhiều vitamin, khoáng chất, rất tốt cho sức khỏe, được nhiều chị em lựa chọn trong thực đơn bữa ăn gia đình. Có tác dụng giải nhiệt, lọc máu, kích thích tiêu hóa, giảm đau, trị bệnh mất ngủ, chống ho. Loại rau xà lách lolo này thích hợp ăn sống và làm các món salad trộn: xà lách trộn dầu giấm, trộn thịt bò, trứng,.', 2, '2025-04-30 00:00:00', 10000, 'rauxalach.jpg', 'Rau xà lách', 100, NULL, 4, b'0'),
(24, 'Hành lá hay gọi là hành hoa, hành hương, hành ta. Hành lá có mùi thơm, vị ngọt và cay the nhè nhẹ khi ăn sống, do đó chúng hay được sử dụng với vai trò là gia vị cho các món ăn. Ngoài ra, hành lá cũng xuất hiện trong một số bài thuốc đông y nhằm phòng hoặc chữa một vài căn bệnh nào như: giải quyết dứt điểm triệu chứng cảm sốt, nhức đầu, ăn uống không tiêu, ngăn ngừa tiểu đường, tốt cho mắt, nâng cao hoạt động hệ tim mạch,...', 0, '2025-04-30 00:00:00', 10000, 'hanhla.jpg', 'Hành lá', 500, NULL, 4, b'0'),
(25, 'Rau dền là một trong những loại rau chứa nhiều khoáng chất và vitamin nhất, trong 100g rau dền có chứa 0.32mg vitamin B2, 80mg vitamin C, 267mg canxi, 1.3g chất xơ, 3.9mg chất sắt, 3.5g protein, 411 mg kali và 2.6g khoáng chất.\r\n Rau dền là một loại rau xanh có 3 loại phổ biến: Rau đền đỏ, rau dền gai, rau dền cơm. Được các bà nội trợ bổ sung trong thực đơn mỗi ngày. Ngoài vị ngọt mát và thành phần dinh dưỡng cao, rau dền xanh còn được xem là một vị thuốc dân gian chữa được nhiều bệnh với lợi ích như: Chống táo bón, điều trị tăng huyết áp, tốt cho bệnh nhân tiểu đường, ngừa ung thư...', 0, '2025-04-30 00:00:00', 15000, 'rauden.jpg', 'Rau dền', 200, NULL, 4, b'0'),
(26, 'Ngò rí không chỉ là một loại rau giúp tạo ra hương vị thơm ngon hấp dẫn cho món ăn mà còn có nhiều công dụng tuyệt vời cho sức khỏe. Thường xuyên ăn thực phẩm này giúp bảo vệ tim mạch, hạ huyết áp, làm giảm đường huyết, giúp xương khớp chắc khỏe.Dưới đây là những công dụng của ngò rí mà ắt hẳn khi nghe tới nhiều người sẽ vô cùng ngạc nhiên.\r\n Giảm cholesterol, bảo vệ tim mạch, hạ huyết áp, ngăn ngừa ung thư, ngăn ngừa thiếu máu và giảm nguy cơ dị tật ống thần kinh cho thai nhi, giúp hạ đường huyết, chống viêm, ngăn ngừa bệnh viêm khớp dạng thấp, bảo vệ thần kinh và não bộ, tăng cường trí nhớ, giảm lo âu, căng thẳng, tăng khả năng miễn dịch, tốt cho người bị sỏi thận, nhiễm trùng đường tiết niệu,...', 0, '2025-04-30 00:00:00', 3500, 'raungori.jpg', 'Rau ngò rí', 500, NULL, 4, b'0'),
(27, 'Rau má là loại rau mang đến nhiều công dụng cho sức khỏe của gia đình bạn như: giải độc gan, điều trị táo bón, bệnh tim mạch, làm đẹp da và tăng cường sức đề kháng cho sức khỏe,… rau má có thể dùng làm sinh tố uống giải nhiệt mùa hè, đồng thời cũng dùng để chế biến thành nhiều món ăn ngon hấp dẫn. Ngoài ra, rau má còn có các công dụng sau:\r\n Cải thiện hệ thống miễn dịch, chất lượng giấc ngủ\r\n Phục hồi tóc dễ gãy rụng, làm đẹp da (rau má để làm mặt nạ trị mụn)\r\n Giúp tăng cường chức năng nhận thức.\r\n Giảm đáng kể nguy cơ mắc các bệnh như Alzheimer và chứng mất trí,...', 1, '2025-04-30 00:00:00', 3000, 'rauma.jpg', 'Rau má', 2000, NULL, 4, b'0'),
(28, 'Bên cạnh những tác dụng giảm viêm và chống oxy hóa, một số hợp chất trong bông cải xanh có thể giúp giảm tổn thương mãn tính của một số mô trong cơ thể. Ngoài giàu dưỡng chất và vitamin, bông cải xanh là loại rau xanh được nghiên cứu cho thấy tác dụng giảm nguy cơ ung thư ở một số cơ quan như ung thư vú, tuyến tiền liệt, dạ dày, thận, bàng quang.', 2, '2025-04-30 00:00:00', 23000, 'suploxanh.jpg', 'Súp lơ xanh', 500, NULL, 4, b'0'),
(29, 'Đã quá quen thuộc với mỗi chúng ta. Loại củ này được xuất hiện thường xuyên trên mâm cơm này có rất nhiều công dụng hữu ích. Nó không chỉ tốt cho sức khỏe, làm đẹp hiệu quả mà còn có rất nhiều tác dụng bổ ích khác. Khoai tây có thể chế biến thành canh, súp, hoặc chiên đều rất ngon.\r\n Khoai tây thuộc họ cà, là một loại củ đa năng có hàm lượng chất dinh dưỡng cao, vì vậy nhiều hộ gia đình tại Việt Nam đã lựa chọn khoai tây như một món ăn chính trong các bữa ăn hàng ngày. Sở hữu nguồn vitamin và khoáng chất phong phú, khoai tây mang lại nhiều lợi ích cho sức khỏe như kháng viêm, giảm đau, tăng cường hệ miễn dịch, kích thích tiêu hóa,...', 3, '2025-04-30 00:00:00', 10000, 'khoaitay.png', 'Khoai tây', 500, NULL, 6, b'0'),
(30, 'Giống như hầu hết các loại trái cây và rau quả có màu cam / đỏ, gấc chứa hàm lượng cao beta-carotene và lycopene. Và hầu hết các lợi ích sức khỏe đã được khẳng định của quả gấc đều bắt nguồn từ hàm lượng beta-carotene và lycopene cao này. Trên thực tế, mỗi gam gấc có nhiều beta - carotene hơn cà rốt hoặc khoai lang (vốn đã có hàm lượng khá cao).\r\n Phần cùi gấc thường được trộn với gạo nếp để tạo thành món ăn Việt Nam gọi là xôi gấc, nghe qua có vẻ giống như một loại gạo vàng tự nhiên có thể giúp ngăn ngừa sự thiếu hụt vitamin A (beta-caroten được chuyển hóa thành vitamin A trong cơ thể). Gấc cũng chứa nhiều lycopene, một loại carotenoid thường được tìm thấy trong cà chua có liên quan đến nhiều lợi ích sức khỏe bao gồm giảm nguy cơ đột quỵ.\r\n Và để làm cho quả gấc tốt cho sức khỏe hơn nữa, một nghiên cứu năm 2005 đã phát hiện ra rằng quả gấc có chứa một loại protein có tác dụng ức chế được sự phát triển của khối u ở chuột.', 5, '2025-04-30 00:00:00', 40000, 'quagat.jpg', 'Quả gất', 1000, NULL, 6, b'0'),
(31, 'Vị ngọt thanh, hạt nhỏ, vỏ mỏng, là một trong những loại trái cây nhiệt đới đặc trưng của ngày hè, chôm chôm được nuôi trồng theo những tiêu chuẩn an  toàn và chất lượng. Có thể sử dụng là món tráng miệng sau mỗi bữa ăn hoặc làm trái cây dầm.\r\n Chôm chôm là một loại trái cây vùng nhiệt đới, được trồng nhiều ở vùng đồng bằng sông Cửu Long, đặc biệt là Bến Tre. Đây là loại quả quen thuộc trong đời sống, quả khi chín có vỏ màu đỏ tươi. Khi thưởng thức sẽ cảm nhận phần thịt mọng nước, vị ngọt thanh và độ giòn dai. \r\n Không những hấp dẫn về mùi vị, chôm chôm còn chứa nhiều chất dinh dưỡng như: vitamin C, đồng, mangan, kali, canxi, sắt, phospho, chất xơ,… Vì thế, đây là loại quả rất tốt cho sức khỏe, có khả năng làm đẹp đối với phụ nữ.', 6, '2025-04-30 00:00:00', 50000, 'quachomchom.jpg', 'Chôm chôm', 1000, NULL, 5, b'0'),
(32, 'Là một trong những loại trái cây đặc sản của Việt Nam. Vú sữa bơ hồng căng mọng có vị ngọt hương thơm bơ sữa hấp dẫn, quyến rũ. Đặc biệt trong cú sữa có chứa các dưỡng chất như canxi, phốt pho, sắt và magiê rất tốt cho sức khỏe phụ nữa mang thai và thai nhi. Cam kết đúng khối lượng, chất lượng và an toàn.\r\n Vú sữa bơ hồng là một trong những loại trái cây cung cấp dinh dưỡng và sức khoẻ cho người tiêu dùng.Phần thịt có màu sữa trắng, vị ngọt thanh, thơm mùi bơ sữa, có các hạt dẹt màu nâu nhạt. Lợi ích từ vú sửa như sau:\r\n Trong 100gram thịt vú sữa cung cấp chứa 67 kcal, chứa nhiều loại vitamin A, B1, B2, B3, C… nhất là glucid, canxi, sắt, chất xơ, protein và lipid.\r\n Hấp thụ 100 – 200g vú sữa mỗi ngày sẽ giúp phòng ngừa hiện tượng thiếu máu, còi xương ở trẻ.\r\n Vú sữa còn chứa nhiều nước, hàm lượng chất xơ cao giúp cho người dùng có cảm giác no bụng, kiểm soát cân nặng hiệu quả\r\n Lượng calcium không những giúp xương chắc khỏe mà còn ngừa được lượng mỡ thừa trong cơ thể', 5, '2025-04-30 00:00:00', 70000, 'quavusua.jpg', 'Quả vú sữa', 1000, NULL, 5, b'0'),
(33, 'Vải thiều là loại trái cây được nhiều người yêu thích, trái vải chín đỏ, mọng nước và thơm ngọt. Ngoài ăn trực tiếp thì vải còn chế biến thành nhiều món ngon như trà vải, vải sấy khô, siro vải, rau câu vải,.... Tuy nhiên mỗi ngày chỉ nên ăn 6-7 trái, nếu ăn nhiều quá có thể dẫn đến nóng trong người.\r\n Cứ đến khoảng tháng 6, tháng 7 là mùa rộ thu hoạch vải thiều ở các tỉnh phía Bắc. Những quả vải thiều chín đỏ, căng mọng và thơm ngọt là món trái cây ưa thích của nhiều gia đình trong mùa hè bởi giá thành không quá cao. Trái vải được lấy từ nhiều nơi khác nhau như vải thiều Thanh Hà, vải thiều Lục Ngạn. Dù vậy, chất lượng vẫn luôn được cam kết, đảm bảo an toàn và tươi ngon.', 10, '2025-04-30 00:00:00', 70000, 'vaithieu.jpg', 'Vải thiều', 1000, NULL, 5, b'0'),
(34, 'Lựu được xem là một trong những loại trái cây nhiệt đới tốt nhất cho sức khỏe. Trong quả lựu chứa một loạt các hợp chất từ thực vật có lợi mà nhiều loại thực phẩm khác không thể so sánh được. Các nghiên cứu đã cho thấy rằng chúng có nhiều lợi ích và làm giảm nguy cơ mắc nhiều bệnh khác nhau. Với hương vị thơm ngon đặc trưng và giá trị dinh dưỡng đối với sức khỏe, lựu đang được rất nhiều chị em ưa chuộng. Trong quả lựu có chứa nhiều chất oxy hóa, vitamin C và nhiều dưỡng chất khác có tác dụng làm đẹp, tăng cường hệ miễn dịch và bảo vệ sức khỏe.', 15, '2022-02-18 00:00:00', 130000, 'qualuu.jpg', 'Quả lựu', 1000, NULL, 5, b'0'),
(35, 'Táo nữ hoàng Queen nhập khẩu 100% từ New Zealand (có giấy chứng nhận xuất xứ). Đạt tiêu chuẩn xuất khẩu toàn cầu. Bảo quản tươi ngon đến tận tay khách hàng. Quả tròn, vỏ mỏng có màu sắc đỏ thẫm đẹp mắt. Thịt táo vàng, lõi nhỏ, vị ngọt nhẹ và mùi thơm đậm\r\n Loại táo này được lai giữa giữa táo Gala và táo Splendour, táo nữ hoàng có dáng tròn, vỏ mỏng màu đỏ thẫm đẹp mắt, vị ngọt thanh và mùi thơm đậm đặc trưng, thịt táo chắc nhưng không quá cứng, được xem là loại trái cây rất thích hợp cho mọi người.\r\n Táo là nguồn cung cấp vitamin C tuyệt vời, có tác dụng tăng cường hệ thống miễn dịch. Mỗi quả táo chứa khoảng 8mg vitamin này, vì thế chúng sẽ cung cấp khoảng 14% nhu cầu vitamin C hàng ngày của cơ thể.\r\n Cũng giống như lê và việt quất, táo có mối liên hệ với việc giảm thiểu nguy cơ mắc bệnh tiểu đường type 2 nhờ chất chống oxy hóa Anthocyanins. Hơn nữa trong táo có chất Triterpenoids có khả năng chống lại các bệnh ung thư gan, ruột kết và ung thư vú.', 12, '2022-02-17 00:00:00', 200000, 'quatao.jpg', 'Quả táo', 1000, NULL, 5, b'0'),
(36, 'Chanh vàng Mỹ hay còn gọi là chanh tây, là loại hoa quả nhập khẩu từ Mỹ, có màu vàng, hình bầu dục, có vị chua nhẹ và mùi thơm rất đặc trưng. Chanh vàng vị chua dịu nhưng lại thơm hơn rất nhiều so với chanh ta. Do vậy, khi sử dụng chanh vàng làm nước uống, làm bánh sẽ ngon hơn rất nhiều, giảm được vị gắt, chát của chanh ta.\r\n Chanh vàng có chứa nhiều vitamin, đặc biệt là vitamin C - là chất chống oxy hóa mạnh, giúp ngăn ngừa ung thư và nhiều căn bệnh nguy hiểm khác. Ngoài ra, còn chứa nhiều chất khoáng như kali, magiê, natri, canxi, mangan và các hợp chất đặc biệt tốt cho gan, thận khác.', 5, '2022-02-17 00:00:00', 20000, 'quachanhvang.jpg', 'Chanh vàng', 1000, NULL, 6, b'0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'ROLE_USER'),
(2, 'ROLE_USER'),
(4, 'ROLE_ADMIN'),
(5, 'ROLE_ADMIN'),
(6, 'ROLE_USER'),
(7, 'ROLE_USER'),
(8, 'ROLE_USER'),
(9, 'ROLE_USER'),
(10, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` bigint(20) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `register_date` date DEFAULT NULL,
  `status` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `avatar`, `email`, `name`, `password`, `register_date`, `status`) VALUES
(1, 'user.png', 'trungtintest1@gmail.com', 'TinTesst', '$2a$10$NNFj7.bICFpxqYTsCswbe.BNGHGicL0LZzXmm.UCLz8sWrM3EL3IC', '2025-04-29', b'1'),
(2, 'user.png', 'trungtintest2@gmail.com', 'TinTest2', '$2a$10$.XOXsgTmumdrVdQc74mqUO180lLS0OefXAyPIdiVw0IshtW5WYDMm', '2025-04-29', b'1'),
(3, 'user.png', 'dongthd@fpt.edu.vn', 'user', '$2a$10$UtRFor3y5PqxHKFEt1HgAOOaX7tlQs1oEhJA/VLFoUVGKo3OBkISS', '2025-04-30', b'1'),
(4, 'user.png', 'greenyshop123vn@gmail.com', 'Admin Greeny Shop', '$2a$10$Hd54fYSXGv6Pqve.WjeLO.DyNv2gGIq/S2Drilp12ClD6gYzhh4jO', '2025-04-15', b'1'),
(5, 'user.png', 'demo@gmail.com', 'user1', '$2a$10$GtfloNhLVXQaKdXvmueUfu14h6ijuwFHMLb1icK4rsuzpWa6jOh72', '2025-04-17', b'1'),
(6, 'user.png', 'demo2@gmail.com', 'user2', '$2a$10$PUWkbGnEa1OdKmxiQfvw/u3oh3I09nGG6zVHmGLxgigSJC2tCz4Ta', '2025-04-17', b'1'),
(7, 'user.png', 'demo3@gmail.com', 'user3', '$2a$10$ePg/cUabs6dShg4hC4Buv.QaVFx6VqqBUSlmQBntalEOAaWCfY2Hi', '2025-04-17', b'1'),
(8, 'user.png', 'greenyshop.adm@gmail.com', 'demo', '$2a$10$zBgbGqKnEPFiMOceXhqwIem4e/JFMYF2rjRElIcuaBAnO.toFIOCm', '2025-04-17', b'1'),
(9, 'user.png', 'nguyentrungtin717@gmail.com', 'Nguyen Tin', '$2a$10$J7LGueS9uHhm1w0bzqx9wONryv/qOzKrA3rchQrUjooOZtm43pb.a', '2025-05-09', b'1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(3, 4),
(4, 5),
(5, 6),
(6, 7),
(7, 8),
(8, 9),
(9, 10);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKfwepd0s8syqc9s06xnqa7mdwf` (`order_detail_id`),
  ADD KEY `FK6uv0qku8gsu6x1r2jkrtqwjtn` (`product_id`),
  ADD KEY `FKqi14bvepnwtjbbaxm7m4v44yg` (`user_id`);

--
-- Chỉ mục cho bảng `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`favorite_id`),
  ADD KEY `FK6sgu5npe8ug4o42bf9j71x20c` (`product_id`),
  ADD KEY `FK1uphh0glinnprjknyl68k1hw1` (`user_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `FKel9kyl84ego2otj2accfd8mr7` (`user_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `FKjyu2qbqt8gnvno9oe9j2s2ldk` (`order_id`),
  ADD KEY `FK4q98utpd73imf4yhttm3w0eax` (`product_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `FKog2rp4qthbtt2lfyhfo32lsw9` (`category_id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `UKob8kqyqqgmefl0aco34akdtpe` (`email`);

--
-- Chỉ mục cho bảng `users_roles`
--
ALTER TABLE `users_roles`
  ADD KEY `FKt4v0rrweyk393bdgt107vdx0x` (`role_id`),
  ADD KEY `FKgd3iendaoyh04b95ykqise6qh` (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `favorites`
--
ALTER TABLE `favorites`
  MODIFY `favorite_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_detail_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `FK6uv0qku8gsu6x1r2jkrtqwjtn` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `FKfwepd0s8syqc9s06xnqa7mdwf` FOREIGN KEY (`order_detail_id`) REFERENCES `order_details` (`order_detail_id`),
  ADD CONSTRAINT `FKqi14bvepnwtjbbaxm7m4v44yg` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Các ràng buộc cho bảng `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `FK1uphh0glinnprjknyl68k1hw1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `FK6sgu5npe8ug4o42bf9j71x20c` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FKel9kyl84ego2otj2accfd8mr7` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `FK4q98utpd73imf4yhttm3w0eax` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `FKjyu2qbqt8gnvno9oe9j2s2ldk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FKog2rp4qthbtt2lfyhfo32lsw9` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);

--
-- Các ràng buộc cho bảng `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `FKgd3iendaoyh04b95ykqise6qh` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `FKt4v0rrweyk393bdgt107vdx0x` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

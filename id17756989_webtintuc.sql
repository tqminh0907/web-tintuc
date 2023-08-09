-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 28, 2022 at 11:22 AM
-- Server version: 10.5.12-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id17756989_webtintuc`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `linkfb` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `copyright` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `linkcopyright` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `logo`, `phone`, `email`, `address`, `linkfb`, `copyright`, `linkcopyright`, `created_at`, `updated_at`) VALUES
(1, '1.jpg', '123456789', 'example@gmail.com', '123 street, state, city', 'facebook.com', 'copyright', 'link copyright', NULL, '2022-03-28 09:55:33');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `image`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Diql-8cd35-banner_tintuc.png', 1, '2022-03-28 08:56:57', '2022-03-28 10:36:05');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sort_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `sort_name`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Đời sống', 'doi-song', 1, '2022-03-28 08:57:32', '2022-03-28 08:57:32'),
(2, 'Thể thao', 'the-thao', 1, '2022-03-28 10:22:14', '2022-03-28 10:22:14'),
(3, 'Giải trí', 'giai-tri', 1, '2022-03-28 10:53:41', '2022-03-28 10:53:41'),
(4, 'Du lịch', 'du-lich', 1, '2022-03-28 10:53:55', '2022-03-28 10:53:55'),
(5, 'Xe cộ', 'xe-co', 1, '2022-03-28 10:54:31', '2022-03-28 10:54:31'),
(6, 'Khoa học', 'khoa-hoc', 1, '2022-03-28 10:54:46', '2022-03-28 10:54:46'),
(7, 'Thời sự', 'thoi-su', 1, '2022-03-28 10:55:40', '2022-03-28 10:55:40');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `news_id` bigint(20) UNSIGNED NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `news_id`, `active`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'Bài viết hay', '2022-03-28 09:19:06', '2022-03-28 09:19:06');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_05_25_002417_create_banners_table', 1),
(6, '2021_05_25_002437_create_categories_table', 1),
(7, '2021_05_25_002503_create_subcategories_table', 1),
(8, '2021_05_25_002519_create_news_table', 1),
(9, '2021_05_25_002536_create_comments_table', 1),
(10, '2021_05_25_002553_create_pages_table', 1),
(11, '2021_06_19_050917_create_abouts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sort_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `index` int(11) NOT NULL DEFAULT 0,
  `view` int(11) NOT NULL DEFAULT 0,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `sort_title`, `image`, `type`, `link`, `summary`, `content`, `index`, `view`, `category_id`, `subcategory_id`, `user_id`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Cổ phiếu nhóm FLC bị bán tháo', 'co-phieu-nhom-flc-bi-ban-thao', 'RAnZ-A-nh-chu-p-Ma-n-hi-nh-2022-03-3318-7571-1648454532.png', 1, NULL, 'VN-Index chốt phiên 28/3 giảm hơn 15 điểm, với tâm điểm là nhóm cổ phiếu bất động sản bị bán tháo ồ ạt, trong đó các mã liên quan FLC dư bán sàn hàng chục triệu cổ phiếu.', '<h2><strong>VN-Index chốt phiên giảm hơn 15 điểm</strong></h2><p>Thị trường có nhịp bật lên vào giữa phiên chiều nhưng chỉ giúp thu hẹp một phần đà giảm. Áp lực bán tháo tại nhóm cổ phiếu bất động sản và đầu cơ vẫn là yếu tố chính ghìm đà phục hồi. Chốt phiên, VN-Index giảm hơn 15 điểm (1,02%) xuống 1.483,18 điểm. VN30-Index giảm hơn 14 điểm (0,95%) xuống 1.484,16 điểm. Trên sàn Hà Nội, HNX-Index mất gần 1,5% còn UPCOM-Index giảm gần 1%.</p><p>Sắc đỏ chiếm áp đảo vào cuối phiên, với 315 mã giảm trên HoSE, trong đó ghi nhận 16 mã giảm sàn, so với 142 mã tăng. Riêng nhóm VN30, 24/30 mã bluechip giảm giá.</p><figure class=\"image\"><img src=\"https://i1-kinhdoanh.vnecdn.net/2022/03/28/A-nh-chu-p-Ma-n-hi-nh-2022-03-3318-7571-1648454532.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=hKAG-6f8yNYcGbSrbNSh7w\" alt=\"A-nh-chu-p-Ma-n-hi-nh-2022-03-3318-7571-\"></figure><p>VN-Index chốt phiên 28/3 giảm hơn 15 điểm. Ảnh: <i>VNDirect</i></p><p>Áp lực bán tháo với một số mã bất động sản được duy trì đến cuối phiên, trong khi một số mã đã ghi nhận lực cầu bắt đầu. Nhóm FLC là tâm điểm chú ý khi giữ nguyên trạng thái \"trắng bảng bên mua\", khối lượng dư bán giá sàn của nhóm này đến cuối phiên xấp xỉ 140 triệu cổ phiếu. Trong đó, dư bán sàn của FLC và ROS ghi nhận gần 60 triệu đơn vị.</p><p>Ngoài nhóm FLC, tình trạng giảm kịch biên độ cũng diễn ra với một số mã khác. HQC trong trạng thái tương tự, dư bán sàn hơn 12 triệu cổ phiếu, QCG, NBB, DIG chốt phiên mất gần 7%, CII giảm trên 6%, SCR, NLG giảm xấp xỉ 5%.</p><p>Trong nhóm vốn hóa lớn, số mã tăng chỉ còn ba mã vào cuối phiên, với MWG tăng 3,7%, FPT có thêm 2,5%, SAB vượt tham chiếu. Ngược lại, các mã ngân hàng, bất động sản bị áp lực bán mạnh. STB mất 5,3%, BID giảm hơn 4%, HDB, VPB, CTG, TPB, ACB giảm trên 1%, các mã ngân hàng khác cũng chốt phiên dưới tham chiếu.</p><p>Thanh khoản thị trường giữ ở mức cao, với giá trị giao dịch hơn 32.700 tỷ đồng trên HoSE. Trong đó, nhóm VN30 giao dịch hơn 9.000 tỷ. Khối ngoại giữ trạng thái bán ròng, nhưng giá trị chưa tới 100 tỷ đồng.</p><p>Chia sẻ:<a href=\"javascript:void(0);\">FacebookTwitterSao chép liên kết</a></p><p>13h35</p><h2><strong>Hơn 170 triệu cổ phiếu nhóm FLC dư bán sàn</strong></h2><p>Áp lực bán tháo với nhóm cổ phiếu FLC ngày càng gia tăng. Đến đầu phiên chiều nay, dư bán giá sàn với riêng mã FLC ghi nhận hơn 67 triệu cổ phiếu, khối lượng tương đương với ROS. Với AMD và KLF, dư bán sàn xấp xỉ 16 triệu đơn vị. HAI là cổ phiếu có dư bán sàn thấp nhất, với hơn 9 triệu cổ phiếu.</p><p>Thanh khoản của nhóm này không cải thiện so với cuối giờ sáng, cho thấy nhà đầu tư không còn tham gia bắt đáy.</p><figure class=\"image\"><img src=\"https://i1-kinhdoanh.vnecdn.net/2022/03/28/A-nh-chu-p-Ma-n-hi-nh-2022-03-7333-6844-1648449721.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=ZFJMVAPLDWQQJgMOL9sbZw\" alt=\"A-nh-chu-p-Ma-n-hi-nh-2022-03-7333-6844-\"></figure><p>Cổ phiếu nhóm FLC dư bán sàn lúc 13h35 ngày 28/3. Ảnh: <i>VNDirect</i></p><p>Chia sẻ:<a href=\"javascript:void(0);\">FacebookTwitterSao chép liên kết</a></p><p>13h10</p><h2><strong>Chứng khoán giảm thẳng đứng</strong></h2><p>VN-Index giảm mạnh sau khi trở lại vào đầu phiên chiều. Chỉ số của sàn HoSE nới rộng đà giảm lên hơn 23 điểm chỉ sau vài phút, VN30-Index cũng giảm hơn 18 điểm. Lực bán tăng nhanh, quyết liệt hơn, ép giá nhiều cổ phiếu lùi sâu.</p><p>Trong nhóm bất động sản, ngoài các mã liên quan FLC, nhiều mã khác đã chạm mức giá sàn. QCG, DIG, HQC chạm sàn, NBB giảm hơn 6%.</p><figure class=\"image\"><img src=\"https://i1-kinhdoanh.vnecdn.net/2022/03/28/A-nh-chu-p-Ma-n-hi-nh-2022-03-9381-3818-1648448088.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=5MVMoJjBou0rafRbgWz8NA\" alt=\"A-nh-chu-p-Ma-n-hi-nh-2022-03-9381-3818-\"></figure><p>VN-Index giảm mạnh đầu phiên chiều 28/3. Ảnh: <i>VNDirect</i></p><p>Chia sẻ:<a href=\"javascript:void(0);\">FacebookTwitterSao chép liên kết</a></p><p>11h30</p><h2><strong>VN-Index chốt phiên sáng giảm gần 14&nbsp;điểm</strong></h2><p>Đà giảm được duy trì đến cuối phiên sáng với sắc đỏ chiếm ưu thế. VN-Index chốt phiên sáng nay giảm gần 14 điểm (0,93%) xuống 1.484,56 điểm. VN30-Index giảm hơn 10 điểm (0,7%) xuống 1.487,91 điểm. Trên sàn Hà Nội, HNX-Index và UPCOM-Index mất gần 1%.</p><p>Sắc đỏ chiếm áp đảo với 325 mã giảm trên HoSE, so với 125 mã tăng. Riêng nhóm VN30, 23/30 mã bluechip lùi dưới tham chiếu.</p><figure class=\"image\"><img src=\"https://i1-kinhdoanh.vnecdn.net/2022/03/28/A-nh-chu-p-Ma-n-hi-nh-2022-03-2596-9625-1648443394.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=rOamF4-HBZOWdVBl2wstjw\" alt=\"A-nh-chu-p-Ma-n-hi-nh-2022-03-2596-9625-\"></figure><p>VN-Index chốt phiên sáng 28/3 giảm gần 14 điểm. Ảnh: <i>VNDirect</i></p><p>Nhóm bất động sản vẫn là nhóm diễn biến tiêu cực nhất vào cuối phiên sáng. Trong đó, các mã liên quan tới FLC tiếp tục giữ trạng thái \"trắng bảng bên mua\".</p><p>Đến cuối giờ sáng, FLC dư bán sàn hơn 64 triệu cổ phiếu, ROS dư bán hơn 58 triệu đơn vị, KLF, AMD đều dư bán trên 13 triệu cổ phiếu. Thanh khoản của nhóm này chỉ nhích nhẹ so với giữa phiên sáng, trong khoảng 2-5 triệu cổ phiếu. Lực mua bắt đáy có xu hướng giảm dần.</p><p>Ngoài nhóm FLC, HQC cũng giảm sàn sau chuỗi phiên tăng liên tục, NBB mất hơn 6%, CII, DIG, CEO giảm hơn 5%, QCG, ITA, SCR, TNI giảm hơn 4%.</p><p>Nhóm vốn hóa lớn cũng thu hẹp sắc xanh. Số mã tăng đến cuối phiên sáng chỉ còn 5 mã, với MWG tăng 3,5%, FPT có thêm hơn 2%, PNJ tăng hơn 1%, GAS, PLX vượt tham chiếu. Ngược lại, nhóm ngân hàng chịu áp lực mạnh. BID, STB giảm trên 3%, VPB, TPB, MBB mất hơn 1%, TCB, HDB, ACB, CTG chốt phiên sáng trong sắc đỏ.</p><p>Thanh khoản thị trường ở mức cao, với giá trị giao dịch trên HoSE đạt hơn 17.500 tỷ đồng.</p><p>10h55</p><h2><strong>Khối ngoại giao dịch cân bằng</strong></h2><p>Nhà đầu tư nước ngoài giữ trạng thái cân bằng trong phiên sáng nay, khi các mã bất động sản lao dốc. Theo đó, khối ngoại mua vào và bán ra với giá trị đều trên 400 tỷ đồng. Giá trị mua ròng đạt hơn 40 tỷ, tập trung chủ yếu vào MWG, DGC, FPT, VRE, HPG, GMD.</p><figure class=\"image\"><img src=\"https://i1-kinhdoanh.vnecdn.net/2022/03/28/A-nh-chu-p-Ma-n-hi-nh-2022-03-3680-2184-1648440130.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=QzTVWfQ7HWr-HAiOSHbM8A\" alt=\"A-nh-chu-p-Ma-n-hi-nh-2022-03-3680-2184-\"></figure><p>Khối ngoại giao dịch cân bằng trong phiên sáng 28/3. Ảnh: <i>VNDirect</i></p><p>Chia sẻ:<a href=\"javascript:void(0);\">FacebookTwitterSao chép liên kết</a></p><p>10h30</p><h2><strong>VN-Index nới rộng đà giảm</strong></h2><p>Sau nhịp hồi ngắn vào đầu giờ, thị trường bắt đầu nới rộng đà giảm khi bên cầm cổ phiếu bắt đầu hạ giá quyết liệt hơn. Lực bán gia tăng ở nhóm vốn hóa lớn, vốn là trụ đỡ thị trường đầu giờ, khiến đà giảm được nới rộng.</p><p>Đến cuối phiên sáng, VN-Index giảm gần 12 điểm (0,79%) xuống dưới ngưỡng 1.490 điểm. VN30-Index giảm hơn 10 điểm (0,7%) xuống 1.487,89 điểm. Trên sàn Hà Nội, HNX-Index và UPCOM-Index cũng lùi sâu hơn đầu giờ.</p><p>Sắc đỏ chiếm ưu thế với hơn 340 mã giảm trên HoSE, so với 103 mã tăng. Riêng nhóm vốn hóa lớn, 24/30 mã bluechip giao dịch dưới tham chiếu.</p><figure class=\"image\"><img src=\"https://i1-kinhdoanh.vnecdn.net/2022/03/28/A-nh-chu-p-Ma-n-hi-nh-2022-03-9214-3748-1648438511.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=arzheGKMnwPK72RvhNLDPw\" alt=\"A-nh-chu-p-Ma-n-hi-nh-2022-03-9214-3748-\"></figure><p>VN-Index nới rộng đà giảm vào cuối phiên sáng ngày 28/3. Ảnh: <i>VNDirect</i></p><p>Chia sẻ:<a href=\"javascript:void(0);\">FacebookTwitterSao chép liên kết</a></p><p>10h00</p><h2><strong>Cổ phiếu dầu khí giữ sắc xanh</strong></h2><p>Các mã dầu khí giao dịch tích cực nhờ thông tin giá dầu tăng trở lại. Đầu phiên hôm nay, nhiều mã dòng P vượt trên tham chiếu. PVC tăng hơn 3%, PVS có thêm 2%, PVD vượt tham chiếu 1,6%, PLX tăng 0,7%.</p><p>Chia sẻ:<a href=\"javascript:void(0);\">FacebookTwitterSao chép liên kết</a></p><p>9h50</p><h2><strong>Hơn 3 triệu cổ phiếu FLC được bắt đáy</strong></h2><p>Nhóm FLC tiếp tục là nhóm giao dịch tiêu cực nhất thị trường khi toàn bộ các cổ phiếu liên quan trong cảnh \"trắng bảng bên mua\", dù vẫn có lực mua vào.</p><p>Đến giữa phiên sáng, các mã này ghi nhận khối lượng giao dịch 1,8 đến gần 5 triệu cổ phiếu. Trong đó, thanh khoản FLC đạt gần 3,5 triệu đơn vị tính tới 9h50, KLF giao dịch hơn 4,7 triệu cổ phiếu, ROS giao dịch hơn 2,8 triệu đơn vị.</p><p>Tuy nhiên, con số này còn khiêm tốn so với khối lượng dư bán sàn. Theo đó, FLC dư bán gần 61 triệu cổ phiếu, ROS bán sàn hơn 53 triệu đơn vị, KLF và AMD ghi nhận hơn 10 triệu cổ phiếu chờ bán giá sàn.</p><figure class=\"image\"><img src=\"https://i1-kinhdoanh.vnecdn.net/2022/03/28/A-nh-chu-p-Ma-n-hi-nh-2022-03-2236-8243-1648436096.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=hWkyfTXUMXN6fFLpizy4pQ\" alt=\"A-nh-chu-p-Ma-n-hi-nh-2022-03-2236-8243-\"></figure><p>Các mã nhóm FLC trong cảnh \"trắng bảng bên mua\" với dư bán sàn hàng chục triệu cổ phiếu tính tới 9h50 ngày 28/3. Ảnh: <i>VNDirect</i></p><p>Chia sẻ:<a href=\"javascript:void(0);\">FacebookTwitterSao chép liên kết</a></p><p>9h30</p><h2><strong>Dòng tiền hướng vào nhóm bluechip</strong></h2><p>Các mã vốn hóa lớn giao dịch khởi sắc khi nhóm bất động sản và đầu cơ chìm trong sắc đỏ. Diễn biến này giúp các chỉ số chính của sàn HoSE thu hẹp đà giảm chỉ còn dưới 3 điểm.</p><p>Trong đó, số mã tăng trong nhóm VN30 tăng lên con số 11, so với 8 mã đầu giờ. MWG, GAS nới rộng đà tăng lên trên 2%, PNJ, PLX có thêm hơn 1%, CTG, HPG, FPT, VCB, MBB vượt trên tham chiếu.</p><p>Chia sẻ:<a href=\"javascript:void(0);\">FacebookTwitterSao chép liên kết</a></p><p>9h15</p><h2><strong>Cổ phiếu đầu cơ bị bán tháo</strong></h2><p>Thị trường mở cửa phiên đầu tuần trong sắc đỏ khi một loạt cổ phiếu giảm kịch sàn, đặc biệt là nhóm bất động sản, đầu cơ.</p><p>Các mã liên quan tới FLC là nhóm chịu ảnh hưởng nặng nhất khi giảm hết biên độ ngay khi mở cửa, với dư bán sàn tăng liên tục. Sau phiên xác định giá mở cửa (ATO), FLC dư bán sàn hơn 35 triệu cổ phiếu, ROS dư bán gần 30 triệu đơn vị, HAI, AMD hay KLF dư bán sàn vài triệu cổ phiếu.</p><figure class=\"image\"><img src=\"https://i1-kinhdoanh.vnecdn.net/2022/03/28/A-nh-chu-p-Ma-n-hi-nh-2022-03-4888-6897-1648434203.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=nX9zaAVQ3o91XLsi1slfhw\" alt=\"Các mã liên quan FLC đều giảm kịch sàn trong đầu phiên ngày 28/3. Ảnh: VNDirect\"></figure><p>Các mã liên quan FLC đều giảm kịch sàn trong đầu phiên ngày 28/3. Ảnh: <i>VNDirect</i></p><p>Áp lực bán cũng lan rộng trong nhóm bất động sản. HQC giảm sàn, CEO giảm 4%, CII, NBB, DIG giảm trên 3%. Nhiều mã bất động sản trong nhóm penny trong tình trạng \"trắng bảng bên mua\".</p><p>Các nhóm cổ phiếu khác, như họ Louis hay Hoàng Huy cũng giao dịch trong trạng thái tiêu cực.</p><p>Ở chiều ngược lại, nhóm vốn hóa lớn thành trụ đỡ cho thị trường. MWG mở cửa tăng 1,5%, VCB, VNM, GAS, PNJ vượt trên tham chiếu, biên độ giảm của những mã còn lại trong VN30 cũng chỉ quanh ngưỡng 1%.</p><p>VN-Index mở cửa giảm hơn 7 điểm (0,51%) xuống 1.490 điểm, VN30-Index giảm hơn 5 điểm (0,36%) xuống 1.493 điểm. Trên sàn Hà Nội, HNX-Index giảm gần 1%, còn UPCOM-Index lùi dưới tham chiếu.</p>', 1, 0, 1, 1, 1, 0, '2022-03-28 09:18:05', '2022-03-28 10:41:15'),
(2, 'Nhà đầu tư condotel lo \'sa lầy trên đống tài sản\'', 'nha-dau-tu-condotel-lo-sa-lay-tren-dong-tai-san', '64JR-a-tb-bds-nghi-duong-da-nang-pi-3771-9291-1648426137.jpg', 1, NULL, 'Nhiều người vay tiền tỷ đầu tư condotel đang ngồi trên lửa, gồng mình trả lãi ngân hàng mà cho thuê lại ế ẩm, tài sản bán không ai mua.  Bà Thủy ngụ huyện Bình Chánh, TP HCM cho biết, mua căn hộ condotel tại Cam Ranh, Nha Trang hồi năm 2018 với giá 1,6 tỷ đồng, thanh toán hơn 500 triệu đồng. Đầu năm 2021, bà đã vay ngân hàng 1 tỷ đồng để nhận nhà nhưng hiện đứng ngồi không yên vì gánh nặng trả lãi ngân hàng quá lớn trong khi cho thuê ế ẩm, rao bán không có khách hỏi mua.  Nhà đầu tư này kể, mua căn hộ condotel vì vị trí dự án gần sân bay, nhìn bản vẽ thiết kế đẹp, sale giới thiệu chỉ cần thanh toán trước 30% giá trị hợp đồng, đến khi nhận nhà đưa vào khai thác cho thuê khách mới phải tất toán 70% số còn lại và được chủ đầu tư hỗ trợ thủ tục vay ngân hàng.  Bà Thủy bộc bạch, thời điểm đầu năm 2018 nhìn về tương lai khai thác du lịch của khu vực Cam Ranh tốt, luôn đông khách, tài sản có triển vọng tăng giá nên mới quyết định mua. Tuy nhiên, dự án vướng pháp lý đình trệ khá lâu đến năm 2021 bàn giao nhà lại thêm nỗi khổ vì đại dịch. Căn condotel 1,6 tỷ của bà chỉ được chủ đầu tư thuê lại mỗi tháng 3 triệu đồng trong khi khoản vay một tỷ đồng phải trả cả gốc và lãi lên đến 12 triệu đồng một tháng. Vì gánh nặng chi phí tài chính lớn trong khi khoản thu ít ỏi, bà rao bán căn condotel 8 tháng qua để mong thoát hàng nhưng chưa có người mua.  Theo chia sẻ của bà Thủy, bỏ tiền tỷ ra đi mua nhà, tiếng là sở hữu tài sản 50 năm nhưng hiện chỉ còn lại khoảng 37 năm khai thác do dự án đình trệ lâu, mất hơn chục năm bổ sung, hoàn thiện pháp lý và xây dựng. \"Hiện giờ ôm nợ tiền tỷ nhưng condotel rao bán ế dài nên tôi lo cảnh chết trên đống tài sản\", bà nói.', '<p>Nỗi lo sa lầy trên khối tài sản thanh khoản kém của bà Thủy không phải là cá biệt. Tại Đà Nẵng, nhiều nhà đầu tư cũng \"cười ra nước mắt\" 4 năm qua. Họ vay tiền tỷ mua căn hộ condotel tại quận Ngũ Hành Sơn nhưng lún sâu nợ nần khi chủ đầu tư dừng chi trả lợi nhuận 12% một năm theo cam kết từ năm 2019.</p><p>Bà Nguyên là một trong hàng chục chủ sở hữu condotel dự án này vẫn tiếp tục giao chủ đầu tư quản lý vận hành với thu nhập chiết khấu 7% một năm. Bà cho biết rất thất vọng với phương án này khi thực tế nhiều người chưa nhận được khoản chi trả theo cam kết 7% một năm của doanh nghiệp cho giai đoạn 2020-2021. Lấy lý do bị ảnh hưởng của đại dịch Covid-19, chủ đầu tư hạ mức cam kết xuống còn 3% một năm nhưng ngay cả phương án này cũng bế tắc ở vòng đàm phán vì nhiều người phản đối.</p><p>\"Tôi mua căn hộ condotel hơn 2 tỷ đồng, trong đó vay ngân hàng 1 tỷ. Mấy năm qua nguồn thu từ khai thác cho thuê bằng 0, nhà bán chẳng ai mua, sổ hồng chưa có nhưng nợ ngân hàng vẫn phải trả đều, càng kéo dài khác nào chết mòn trên khối tài sản này\", bà Nguyên trần tình.</p><p>Ông Nguyễn Lộc Hạnh, Tổng giám đốc Công ty Ngọc Châu Á nhìn nhận, <strong>2 năm Covid vừa qua đẩy nhiều nhà đầu tư condotel vào thế chân tường</strong>. Trong đó, nhà đầu tư condotel vay ngân hàng dùng tiền khai thác cho thuê để trả lãi và nợ gốc đặc biệt khó khăn suốt 12 tháng qua do đại dịch bùng phát. Một thực tế các nhà đầu tư này phải chấp nhận là khi giá thuê condotel giảm, công suất khai thác kém, việc chào bán loại tài sản này gần như bế tắc.</p><p>Thế khó của nhà đầu tư condotel lâu nay chưa tháo gỡ được là rất nhiều dự án vướng pháp lý liên quan đến quá trình đầu tư xây dựng dự án. Trên thực tế, condotel - căn hộ khách sạn hay căn hộ biển - đến nay là loại hình bất động sản chưa ra được sổ hồng vì còn chờ hướng dẫn. Bên cạnh đó, nhiều sản phẩm condotel nằm trong nhóm tài sản nghỉ dưỡng bị giới hạn thời gian sở hữu 50 năm.</p><p>Chưa kể, dịch bệnh làm ngành nghỉ dưỡng mất khách quốc tế năm 2020, sau đó tê liệt toàn bộ năm 2021 khi mất luôn khách nội địa, khai thác kém khiến giá thuê giảm mạnh, làm giá trị tài sản khó tăng như kỳ vọng, thanh khoản kém (bán không ai mua) trong khi nợ vay ngày càng chồng chất. Trong bối cảnh lạm phát năm 2022 có xu hướng tăng, bẫy lãi suất thả nổi có thể \"dìm\" chết nhà đầu tư dùng đòn bẩy tài chính nhưng không có nguồn thu xử lý khoản vay.</p><p>Diễn biến thực tế cho thấy làm du lịch nghỉ dưỡng không đơn giản vì ngành dịch vụ này phụ thuộc rất lớn vào thị hiếu người tiêu dùng, thương hiệu chủ đầu tư và đơn vị quản lý. Ngay cả trước khi đại dịch bùng phát, chỉ một số dự án của chủ đầu tư xây dựng bài bản, có đơn vị quản lý quốc tế vận hành tốt mới hút khách. Phần còn lại của thị trường kinh doanh khá bấp bênh.</p><p>Đó là chưa kể đến trung bình cứ 5 năm các loại bất động sản nghỉ dưỡng phải làm mới sản phẩm một lần để duy trì sức hấp dẫn với du khách. Nhiều nhà đầu tư condotel thậm chí còn chưa tính đến việc khai thác 5 năm phải làm lại nội thất, một khoản chi phí khá tốn kém, có thể lên đến hàng trăm triệu đồng.</p><p>Ông Hạnh khuyến nghị các nhà đầu tư cá nhân nên cân nhắc kỹ lưỡng khả năng tài chính trước khi bỏ tiền vào bất động sản nghỉ dưỡng chỉ bán hàng bằng cam kết lợi nhuận. Nếu bất động sản du lịch nghỉ dưỡng khai thác không hiệu quả khó có thể gia tăng giá trị tài sản theo thời gian và khó bán thu hồi vốn, dẫn đến <a href=\"https://vnexpress.net/savills-canh-bao-kich-ban-chet-tren-dong-tai-san-4441463.html\">sa lầy</a> trên khối tài sản.</p><p>Cách phòng vệ rủi ro là tổng giá trị đầu tư phải tỷ lệ phù hợp với giá trị khai thác, không nên dùng đòn bẩy tài chính để tránh kịch bản lún sâu nợ nần.</p><p>\"Nhà đầu tư condotel nên thận trọng với các cam kết lợi nhuận cao vì sự hồi phục của thị trường nghỉ dưỡng giai đoạn bình thường mới cần có lộ trình, không thể diễn ra ngay lập tức\", ông Hạnh khuyến cáo.</p><p><strong>Vũ Lê</strong></p>', 1, 0, 1, 1, 1, 1, '2022-03-28 09:21:54', '2022-03-28 09:21:54'),
(3, 'Nữ sinh bị bạn đánh nhập viện', 'nu-sinh-bi-ban-danh-nhap-vien', 'dQKz-2.jpg', 1, NULL, 'THỪA THIÊN - HUẾNữ sinh lớp 10, THPT Hương Trà bị bạn cùng trường chặn đường, dùng mũ bảo hiểm đánh vào đầu, phải nhập viện.  Ngày 28/3, ông Lê Thân, Hiệu trưởng THPT Hương Trà, Thị xã Hương Trà, cho biết, nhà trường đang phối hợp với công an xác minh việc nữ sinh lớp 10 tên Nhi bị bạn cùng trường đánh.', '<p>Trường THPT Hương Trà ở phường Tứ Hạ. Ảnh: <i>Vạn An</i></p><p>Theo thầy Thân, ngày 6/3, Nhi và bạn nữ cùng trường có hẹn đánh nhau ở Công viên Tứ Hạ, thị xã Hương Trà. Sau khi nắm được thông tin, nhà trường đã mời hai em cùng phụ huynh đến trường. Một ngày sau, Nhi bị bạn nữ cùng trường tiếp tục chặn đường đánh bằng mũ bảo hiểm.</p><p>Sau trận đòn của bạn, Nhi về nhà với đầu đầy máu và được gia đình đưa đi cấp cứu tại Trung tâm Y tế Thị xã Hương Trà. Sau đó, em được chuyển tuyến lên Bệnh viện Trung ương Huế cơ sở 2. Sau khi điều trị trở về, Nhi không đến trường vì sợ sệt trước lời đe dọa của bạn học.</p><p>\"Hôm qua, tôi cùng ban giám hiệu trường và hai giáo viên chủ nhiệm lớp 10 đến thăm tình hình sức khỏe của em Nhi. Gia đình trình bày, sau khi bị bạn đánh, em Nhi bị chấn động não và cũng mới điều trị xong Covid-19 nên tạm thời xin nghỉ chưa đến trường\", thầy Thân nói và cho biết, nữ sinh ra tay đánh em Nhi cũng đã có đơn xin nghỉ học.</p><p>Sự việc đang được điều tra, nguyên nhân mâu thuẫn hiện chưa được làm rõ.</p><p>Đây là vụ ẩu đả mới nhất trong giới học sinh được báo cáo gần đây. Chỉ trong tháng ba, hàng loạt vụ bạo lực học đường xảy ra tại nhiều địa phương.</p><p>Ngày 26/3, một video lan truyền trên mạng ghi lại cảnh một nữ sinh lớp 7 ở Quảng Trị bị hai đàn chị lớp trên đánh đập, xé áo. Hôm 22/3, một nữ sinh lớp 10, THPT Nguyễn Huệ (Kiến Thụy, Hải Phòng) bị nhóm bạn học đánh hội đồng ngay trong trường, phải đi cấp cứu. Một tuần trước đó, cũng ở Kiến Thụy, hai nữ sinh THCS Hòa Nghĩa (quận Dương Kinh) bị một nhóm học sinh THCS Vạn Hương (quận Đồ Sơn) đánh hội đồng, kéo lê trên đường.</p><p>Nguyên nhân các vụ bạo lực học trò này phần lớn xuất phát từ những mâu thuẫn cá nhân trong học tập, sinh hoạt.</p><p><strong>Võ Thạnh</strong></p>', 1, 0, 1, 1, 1, 1, '2022-03-28 10:08:25', '2022-03-28 10:08:25'),
(4, 'Nhiều người bị điều tra vì liên quan bà Nguyễn Phương Hằng', 'nhieu-nguoi-bi-dieu-tra-vi-lien-quan-ba-nguyen-phuong-hang', 'sNKi-ba-Phuong-Hang-1845-1648127744-3824-1648362781.jpg', 1, NULL, 'TP HCMCơ quan điều tra đang làm rõ vi phạm của những người giúp sức bà Nguyễn Phương Hằng livestream xúc phạm người khác, tung tin bị can được tại ngoại...', '<p>, nguồn tin tại Công an TP HCM cho biết, động thái này nằm trong quá trình mở rộng điều tra vụ án bà <a href=\"https://vnexpress.net/ba-nguyen-phuong-hang-bi-bat-4437640.html\">Nguyễn Phương Hằng</a>, 51 tuổi, Tổng Giám đốc Công ty Cổ Phần Đại Nam <i>Lợi dụng các quyền tự do dân chủ xâm phạm lợi ích Nhà nước, quyền lợi ích hợp pháp của tổ chức, cá nhân.</i></p><p>Trước khi bắt tạm giam bà Hằng, cơ quan điều tra đã có một thời gian dài thu thập chứng cứ về những vi phạm của bị can và những người liên quan. Từ giữa năm 2021, bà Hằng dùng hàng chục tài khoản trên Youtube, Facebook, TikTok thực hiện cả trăm buổi livestream. Trong đó có nhiều nội dung sai sự thật, sử dụng những ngôn từ mang tính chất nhục mạ, xúc phạm danh dự, nhân phẩm của những người liên quan.</p><p>Từ giữa tháng 2, cơ quan điều tra 4 lần mời bà Hằng lên làm việc để cảnh báo, răn đe và yêu cầu chấm dứt hành vi livestream phát ngôn ảnh hưởng đến người khác nhưng bà này cố ý né tránh, không chấp hành. Bà Hằng bị cho là không hợp tác, \"coi thường pháp luật\", tiếp tục tổ chức nhiều hoạt động tụ tập đông người gây ảnh hưởng đến an ninh trật tự; tổ chức các đoàn người đến nhà riêng của những người mâu thuẫn với mình để công kích, xúc phạm và đều livestream trên các nền tảng mạng xã hội. Cơ quan điều tra đã ra quyết định tạm hoãn xuất cảnh bà Hằng đến cuối tháng 4.</p><p>\"Diễn biến sự việc cho thấy bà Hằng có cả ê kíp hỗ trợ, đạo diễn kịch bản truyền thông, mời khách và phân vai đả kích người khác. Cơ quan điều tra đã làm việc với những người này để làm rõ vai trò, động cơ, xem xét dấu hiệu tội phạm\", nguồn tin nói và cho biết hiện bà Hằng đã thay đổi thái độ, hợp tác với cơ quan điều tra.</p><p>&nbsp;</p><p>Bà Nguyễn Phương Hằng tại cơ quan điều tra tối 24/3. Ảnh:<i> Công an TP HCM</i></p><p>Ngoài ra, Công an TP HCM cũng triệu tập nhiều chủ tài khoản mạng xã hội đã phát tán thông tin sai sự thật vào khuya 24/3 (lúc bà Hằng bị bắt): \"CEO Đại Nam được ông Dũng Lò Vôi (chồng) bảo lãnh cho tại ngoại\", \"bà Nguyễn Phương Hằng chỉ đóng phạt 1,5 triệu đồng rồi cho về\"... để làm rõ động cơ tung tin giả.</p><p>Cũng trong hôm nay, Công an tỉnh Bình Dương làm việc với Lê Văn Phụng, 32 tuổi, chủ tài khoản <i>TikTok@phunguniexport. </i>Người này thừa nhận trưa 26/3 đã đăng video có nội dung kêu gọi biểu tình lúc 7h ngày 27/3 tại cổng Khu du lịch Đại Nam (của vợ chồng bà Hằng) thuộc phường Hiệp An, thành phố Thủ Dầu Một. Phụng cho biết làm vậy để \"câu like, câu view\", đã nhận thức hành vi này là sai nên đã gỡ bỏ video trên, cam kết không tái phạm.</p><p>Bà Nguyễn Phương Hằng được biết đến là đại gia bất động sản tại Việt Nam, vợ của doanh nhân Huỳnh Uy Dũng - tức Dũng \"Lò Vôi\".</p><p>Tháng 3 năm 2021, bà Hằng tố cáo với Công an TP HCM về việc đưa cho \"lương y\" Võ Hoàng Yên hàng trăm tỷ đồng để làm từ thiện nhưng ông này sử dụng tiền cho bản thân. Trong các buổi livestream liên tiếp sau đó, bà Hằng bày tỏ bức xúc, đồng thời kêu gọi nghệ sĩ Hoài Linh và một số người lên tiếng tố cáo ông Yên không chữa được bệnh. Không đạt được mục đích, bà này livestream chửi Hoài Linh <a href=\"https://vnexpress.net/chu-de/hoai-linh-1318\">\"ăn chặn\"</a> tiền người dân ủng hộ đồng bào lũ lụt miền Trung hồi cuối năm 2020. Đến tháng 5/2021, nghệ sĩ hài thừa nhận chưa chuyển hơn 13 tỷ đồng từ thiện cho người dân bị ảnh hưởng bão lũ do \"dịch bệnh và sức khỏe\". Ông đã nhờ người đại diện trao hết số tiền quyên góp được trong một tháng sau đó.</p><p>Trong hàng trăm buổi livestream của mình, bà Hằng cũng khẳng định ca sĩ Thuỷ Tiên, Đàm Vĩnh Hưng, MC Trấn Thành, Đại Nghĩa... kêu gọi tiền ủng hộ lũ lụt miền Trung nhưng đã \"bỏ túi\" riêng hàng chục tỷ đồng. Tuy nhiên, vào cuộc điều tra, <a href=\"https://vnexpress.net/bo-cong-an-ca-si-thuy-tien-Dam-vinh-hung-khong-chiem-doat-tien-tu-thien-4416902.html\">Bộ Công an xác định</a> các nghệ sĩ không có hành vi gian dối, không chiếm đoạt tiền từ thiện do người dân đóng góp.</p><p>Ngoài ra, bà Hằng cũng có nhiều buổi livestream tấn công những người nổi tiếng khác, trong đó có Nguyễn Thị Mỹ Oanh (ca sĩ Vy Oanh). Về việc này, nữ ca sĩ đã gửi đơn tố cáo bà Hằng có hành vi vu khống khi nói cô \"đẻ mướn\" cho đại gia, \"giật chồng người khác\"... Quá trình điều tra, Công an TP HCM cũng nhận được 6 đơn tố giác bà Hằng về hàng loạt hành vi <i>Làm nhục người khác</i>, <i>Đe dọa giết người</i>...</p><p>Đầu tháng 3, cơ quan điều tra đã ra quyết định tạm đình chỉ giải quyết đơn của ca sĩ Vy Oanh do hết thời hạn, đồng thời thông báo sẽ tiếp tục xác minh. Ba hôm trước, cơ quan điều tra đã phục hồi giải quyết đơn tố cáo của cô sau khi xác định đủ căn cứ để khởi tố, bắt tạm giam bà Hằng.</p>', 1, 0, 1, 2, 1, 1, '2022-03-28 10:10:23', '2022-03-28 10:10:23'),
(5, 'Mercedes lao vào nhà dân gây tai nạn thương tâm, người suýt bị tông kể lại giây phút kinh hoàng', 'mercedes-lao-vao-nha-dan-gay-tai-nan-thuong-tam-nguoi-suyt-bi-tong-ke-lai-giay-phut-kinh-hoang', 'ft7z-3.jpg', 1, NULL, 'Sự việc một chiếc Mercedes ở Quảng Ninh tông vào nhà dân rồi gây tai nạn liên hoàn khiến một người tử vong đang gây xôn xao cộng đồng mạng.  Chiều 27/3, một vụ tai nạn nghiêm trọng xảy ra ở đường Nguyễn Du, TP.Móng Cái, tỉnh Quảng Ninh khiến đã gây xôn xao dư luận. Hình ảnh từ những đoạn clip mà người dân quay lại cho thấy, xe sang Mercedes đã lao vào một nhà dân, sau đó tìm cách lùi ngược ra ngoài rồi phóng đi. Trên đường đi, “xe điên” này đã đâm tử vong một người đi xe máy.', '<p>Trên mạng <a href=\"https://vietgiaitri.com/xa-hoi/\"><strong>xã hội</strong></a>, đoạn clip xe Mercedes GLS loạng choạng lùi từ trong nhà ra đường đang khiến mạng xã hội xôn xao. Cụ thể, chiếc Mercedes GLS tiến vào bên trong rồi lùi lại húc vỡ cả mảng tường nhà. Sau khi cố lùi tiếp, chiếc xe lại đâm vào một gốc cây trước cửa. Không dừng lại, người tài xế tiếp tục tiến lùi để thoát ra ngoài, kéo theo tấm kính vỡ tan tành xuống mặt đường.</p><figure class=\"image\"><img src=\"https://i.vietgiaitri.com/2022/3/28/mercedes-lao-vao-nha-dan-gay-tai-nan-thuong-tam-nguoi-suyt-bi-tong-ke-lai-giay-phut-kinh-hoang-3e0-6376700.gif\" alt=\"Mercedes lao vào nhà dân gây tai nạn thương tâm, người suýt bị tông kể lại giây phút kinh hoàng - Hình 1\"></figure><p>Sau khi “làm loạn” trong ngôi nhà nói trên, chiếc xe phóng tốc độ nhanh theo hướng về phía đường Trần Phú, đâm vào xe máy biển Quảng Ninh đi cùng chiều làm bà N.T.V. (56 tuổi) tử vong tại chỗ. Không dừng lại, ô tô này vẫn tiếp tục lao đi và đâm vào một người đi xe máy Honda Vision màu trắng khác khiến người này bị thương. Cuối cùng, lái xe tông gãy lan can cầu Hòa Bình rồi lao xuống ruộng.</p><p>Sau vụ tai nạn, chiếc ô tô bị hư hỏng nặng phần đầu, thành xe bị móp và có nhiều vết xước. Đặc biệt tại hiện trường, tình trạng thương tâm của nạn nhân khiến nhiều người không khỏi kinh hãi.</p><p>Theo người dân, sau khi gây tai nạn, chiếc Mercedes tiếp tục bỏ chạy và dừng lại tại bãi đất trống ven đường. Lái xe được đưa đi cấp cứu tại bệnh viện trong tình trạng bị chấn thương vùng mặt.</p><p>Mới đây, trên mạng xã hội xuất hiện thêm một đoạn clip được cho cũng là của vụ việc nói trên do camera nhà dân ghi lại. Trong clip, một chiếc ô tô màu đen lao như bay trên đoạn đường rồi va chạm rất mạnh với một xe máy. Thời gian ghi trong camera là 16h23 phút ngày 27/3, trùng thời điểm “xe điên” Mercedes “làm loạn” đường phố Quảng Ninh.</p><p>Có thể nói, những ai đã xem đoạn clip ghi lại cảnh “xe điên” Mercedes ở Móng Cái, Quảng Ninh có lẽ đều nhớ cảnh sau khi lùi ra được khỏi nhà dân, chiếc xe lao vun vút ra đường, suýt đâm vào một chiếc ô tô màu trắng. May mắn, chiếc ô tô này đã đánh hết lái, rẽ nhanh sang bên trái để tránh được va chạm.</p><p>Liên hệ với anh Nguyễn Mạnh Thắng (SN 1987, quê ở huyện Tiên Yên, tỉnh Quảng Ninh), là người điều khiển xe ô tô màu trắng suýt bị “xe điên” Mercedes đâm trúng, anh cho biết mình đã may mắn khi được an toàn trở về nhà với gia đình.</p><figure class=\"image\"><img src=\"https://i.vietgiaitri.com/2022/3/28/mercedes-lao-vao-nha-dan-gay-tai-nan-thuong-tam-nguoi-suyt-bi-tong-ke-lai-giay-phut-kinh-hoang-37f-6376700.jpg\" alt=\"Mercedes lao vào nhà dân gây tai nạn thương tâm, người suýt bị tông kể lại giây phút kinh hoàng - Hình 3\"></figure><p>Nhớ lại diễn biến lúc đó, anh Thắng kể: “Tôi làm nghề lái xe Hà Nội – Móng Cái được 9 năm rồi. Chiều qua tôi đi trả khách qua đó thì thấy chiếc Mercedes đã lao vào nhà. Trả khách xong quay lại thấy xe đó vẫn không lùi ra được nên tôi dừng lại định giúp đỡ, vì cứ nghĩ tài xế chắc là con gái mới tập lái.</p><p>Nhưng khi nhìn vào bên trong xe, thấy tài xế là nam giới, xe thì cứ tiến rồi lại lùi mạnh, đổ cả tường, tôi phi ra nổ máy xe bỏ chạy, đồng thời hô mọi người: “Chạy đi, xe lùi được ra ngoài là nó đâm liên hoàn đấy”.</p><p>Tôi vừa nổ máy thì cũng là lúc chiếc xe kia lùi ra được. Thấy xe Mercedes phi nhanh sát đuôi xe, tôi đạp ga bỏ chạy. Nhìn qua gương phụ, tôi thấy đầu xe Mercedes ở làn 1/3 làn bên phải nên nhanh trí vắt nhanh vào bên trái để thoát thân. Tôi rẽ một cái là chiếc xe đó đâm luôn vào cô đi xe máy ngược chiều, phi qua bùng binh cầu Hòa Bình, leo lên lan can, bay lên lùm cây rồi rơi xuống khoảng đất trống”.</p><p>Anh Thắng tâm sự, lúc đó tình huống rất gấp nhưng anh không sợ. Anh Thắng đã nhanh trí chủ động được tình huống. Tuy vậy, anh thấy bản thân vẫn may mắn, vì nếu Mercedes đâm vào, có thể xe của anh sẽ lật.</p><p>“Buồn là nếu xe điên đó đâm vào tôi thì có thể nạn nhân đi xe máy không tử vong. Nhưng nếu đâm vào xe tôi, xe điên mất lái tiếp tục gây tai nạn liên hoàn thì không biết chuyện gì sẽ xảy ra tiếp theo”, anh Thắng nói thêm.</p><figure class=\"image\"><img src=\"https://i.vietgiaitri.com/2022/3/28/mercedes-lao-vao-nha-dan-gay-tai-nan-thuong-tam-nguoi-suyt-bi-tong-ke-lai-giay-phut-kinh-hoang-646-6376700.jpg\" alt=\"Mercedes lao vào nhà dân gây tai nạn thương tâm, người suýt bị tông kể lại giây phút kinh hoàng - Hình 4\"></figure><p><br>&nbsp;</p>', 1, 0, 1, 2, 1, 1, '2022-03-28 10:18:24', '2022-03-28 10:18:24'),
(6, 'HLV Park: \'Việt Nam phải cố vươn tầm khỏi Đông Nam Á\'', 'hlv-park-viet-nam-phai-co-vuon-tam-khoi-dong-nam-a', '5kCf-4.jpg', 1, NULL, 'NHẬT BẢNTheo HLV Park Hang-seo, tầm nhìn của bóng đá Việt Nam là tiếp tục góp mặt ở vòng loại cuối cùng World Cup dù liên tiếp thất bại như hiện nay.', '<p>HLV Park trả lời họp báo trước trận đấu Nhật Bản ở vòng loại World Cup 2022. Ảnh: <i>VFF</i></p><p>\"Tình hình của đội tuyển rất không tốt. Do một số mắc Covid-19, chúng tôi chỉ có thể mang 20 cầu thủ sang Nhật Bản\", <a href=\"https://vnexpress.net/chu-de/park-hang-seo-354\">HLV Park Hang-seo</a> nói trong cuộc họp báo chiều 28/3 trên sân sân Saitama. \"Rõ ràng, Việt Nam đang chịu tổn thất lớn về lực lượng. Nhật Bản lại quá mạnh, có hệ thống quản trị bóng đá cũng như nền tảng tốt. Nhưng, đây là trận đấu cuối cùng nên chúng tôi sẽ cố gắng hết sức\".</p><p>Trận đấu ngày mai chủ yếu mang ý nghĩa thủ tục. Nhật Bản đã chắc chắn cán đích trong top 2 bảng B, qua đó giành vé trực tiếp đi Qatar dự VCK World Cup 2022. Còn Việt Nam vẫn cuối bảng với ba điểm qua chín trận - nhờ <a href=\"https://vnexpress.net/the-thao/viet-nam-vs-trung-quoc-4423425-tong-thuat.html\">chiến thắng duy nhất trước Trung Quốc</a> hôm 1/2.</p><p>Ở lượt đi trên sân Mỹ Đình tháng 11/2021, Việt Nam<a href=\"https://vnexpress.net/the-thao/viet-nam-vs-nhat-ban-4384379-tong-thuat.html\"> chỉ thua Nhật Bản 0-1</a> vì pha làm bàn của Junya Ito phút 17. Tuy nhiên, ngày mai được dự báo sẽ khó khăn hơn cho đội bóng của HLV Park, do thiếu một loạt trụ cột từ chấn thương và Covid-19. Sau trận gần nhất -<a href=\"https://vnexpress.net/the-thao/viet-nam-vs-oman-4443014-tong-thuat.html\"> thua Oman 0-1</a>, đội tuyển <a href=\"https://vnexpress.net/the-thao/tien-linh-lo-tran-dau-nhat-ban-4443421.html\">mất thêm trung phong Nguyễn Tiến Linh</a>. Tuy nhiên, HLV Park không gọi người thay thế và xác định \"có bao nhiêu, dùng bấy nhiêu\".</p><p>\"Sau 60 trận, Việt Nam mới lần đầu vào vòng ba của một kỳ World Cup\", HLV Park giãi bày. \"Chín trận đã qua, chúng tôi thua bảy và đến lượt thứ tám mới giành chiến thắng đầu tiên. Kết quả khi đương đầu các đội hàng đầu châu Á cho thấy Việt Nam còn cách biệt về trình độ. Nhưng, đây là lần đầu được trực tiếp đối đầu các đối thủ ở đẳng cấp này, nên cầu thủ Việt Nam cũng rút ra được nhiều bài học kinh nghiệm quý báu. Và tầm nhìn mà chúng tôi hướng đến là cố gắng để Việt Nam vươn tầm ra khỏi Đông Nam Á, được dự các sân chơi như thế này nhiều hơn nữa\".</p><p>Tuyển Việt Nam sang Nhật Bản hôm 25/3, sau cuộc hành trình dài hơn 16 tiếng. Kể từ khi xuống sân bay Narita, thầy trò HLV Park phải gia nhập chế độ bong bóng khép kín với các quy định khắt khe nhất so với tất cả các trận đấu đã qua tại vòng loại thứ ba World Cup 2022. Dù đã chuẩn bị tất cả các giấy tờ liên quan theo yêu cầu y tế nước sở tại, các thành viên của Việt Nam vẫn mất hơn ba tiếng mới có thể nhận được kết quả xét nghiệm Covid-19 (thực hiện ngay tại sân bay). Trợ lý ngôn ngữ Lê Huy Khoa là trường hợp duy nhất nhiễm bệnh. Theo quy định của Nhật Bản, ông Khoa được đưa đi cách ly tại một khách sạn khác với đội tuyển, trong khi những trường hợp được xác định là F1 bị hạn chế tiếp xúc gần với các thành viên còn lại trong đội tuyển. Ngay cả phòng ăn cũng được chia cắt không gian bởi các vách ngăn.</p><p>Những quy định nghiêm ngặt này khiến HLV Park không hài lòng. \"Liên đoàn Bóng đá Việt Nam và Nhật Bản có quan hệ tốt. Nhưng chúng tôi là khách, mà bị quản lý chặt vì quy trình chống dịch. Chúng tôi cảm thấy bị tổn thương bởi cách đối xử thế này\", ông nói. \"Họ doạ rằng nếu tôi vi phạm về phòng dịch thì sẽ bị đưa đi cách ly ba ngày. Họ cũng không thông báo về quy định liên quan đến chỉ số CT dưới 40 thì phải cách ly, trong khi ở Việt Nam là dưới 36. Bác sỹ Tuấn, Đức Chinh và Adriano Schmidt bị xem là dương tính theo tiêu chí này (dù xét nghiệm âm tính). Phiên dịch của chúng tôi dương tính khi kiểm tra ở sân bay thì tôi chấp nhận. Nhưng chúng tôi đề xuất làm PCR ở khu vực cách ly hiện nay mà chưa được hồi âm. Tôi chỉ có một phiên dịch. Không có phiên dịch thì làm sao làm việc? Tôi nghĩ tôi cần phải đưa ý kiến về việc này để Nhật Bản hiểu rõ hơn về khó khăn mà chúng tôi gặp phải\".</p>', 1, 0, 1, 4, 1, 1, '2022-03-28 10:23:58', '2022-03-28 10:23:58'),
(7, 'Còn 12 suất dự World Cup 2022', 'con-12-suat-du-world-cup-2022', 'LaVs-4904-4531-1648428655.jpg', 1, NULL, 'Sau khi Canada hạ Jamaica 4-0 ở lượt áp chót vòng loại khu vực CONCACAF đã có 20 đội tuyển chắc suất dự vòng chung kết World Cup cuối năm nay ở Qatar.', '<p>Các cầu thủ Canada mừng sau khi đoạt vé dự World Cup 2022. Ảnh: <i>AP</i></p><p>Chiến thắng đậm tối 27/3 giúp Canada vững vàng ở đầu bảng vòng loại khu vực CONCACAF (Bắc - Trung Mỹ và Caribe) với 28 điểm, hơn đội xếp thứ tư Costa Rica sáu điểm và giành vé tới Qatar sớm một lượt. Họ nhờ đó trở lại với World Cup sau 36 năm. Ở lần đầu dự giải và cũng là gần nhất năm 1986, đội bóng Bắc Mỹ bị loại từ vòng bảng khi lần lượt thua Pháp 0-1, Hungary 0-2 và Liên Xô (cũ) 0-2.</p><p><strong>Đây là đội đầu tiên ở khu vực CONCACAF và là đội thứ 20 giành vé dự World Cup 2022</strong>. Qatar nhận suất đầu tiên tại World Cup 2022 với tư cách chủ nhà, còn Đức <a href=\"https://vnexpress.net/bong-da/duc-gianh-ve-dau-tien-du-world-cup-2022-4370564.html\">giành vé đầu tiên</a> từ vòng loại sau khi đánh bại Bắc Macedonia 4-0 tháng 10/2021 ở bảng J. Đan Mạch cũng giành vé trong khoảng thời gian này, khi hạ Áo 1-0 ở bảng F.</p><p>Brazil là đại diện Nam Mỹ đầu tiên <a href=\"https://vnexpress.net/bong-da/brazil-gianh-ve-world-cup-som-nam-vong-4384705.html\">vượt qua vòng loại</a> khi đánh bại Colombia 1-0, qua đó nối dài kỷ lục là đội duy nhất góp mặt ở tất cả các kỳ World Cup. Argentina, Ecuador và Uruguay sau đó lần lượt giành các vé chính thức còn lại của khu vực Nam Mỹ.</p><p>Ở châu Âu, Bỉ vượt qua vòng loại với đầu bảng E, trong khi Pháp đứng đầu bảng D cùng ngày. Croatia nhất bảng H sau khi đánh bại Nga 1-0, còn Tây Ban Nha xếp đầu bảng B. Bất ngờ lớn nhất là việc Serbia hạ Bồ Đào Nha ở lượt cuối để đoạt ngôi đầu bảng A. Tháng 11/2021, Anh vượt qua vòng loại khi<a href=\"https://vnexpress.net/bong-da/anh-doat-ve-world-cup-sau-tran-thang-10-0-4386213.html\"> đè bẹp San Marino 10-0</a>, trong đó đội trưởng Harry Kane góp bốn bàn. Cùng ngày, Thụy Sĩ giành lấy đầu bảng C từ tay Italy. Hà Lan giành vé khi hạ Na Uy 2-0 trên sân nhà.</p><p>Tại châu Á, Iran và Hàn Quốc đứng đầu bảng A vòng loại thứ ba, còn Nhật Bản và Saudi Arabia chia sẻ hai vị trí dẫn đầu bảng B để giành bốn vé trực tiếp tới Qatar.</p><p><strong>Hiện chỉ còn 12 suất dự World Cup 2022 chưa xác định chủ nhân</strong>. Ở châu Âu, sau khi <a href=\"https://vnexpress.net/bong-da/bo-dao-nha-vao-tran-vot-cuoi-di-world-cup-4443171.html\">thắng Thổ Nhĩ Kỳ 3-1</a>, Bồ Đào Nha sẽ đá trận play-off quyết định ngày 29/3 với Bắc Macedonia - đội gây bất ngờ lớn khi <a href=\"https://vnexpress.net/bong-da/italy-mat-ve-du-world-cup-phut-bu-gio-4443173.html\">loại Italy</a>. Cùng ngày, Ba Lan sẽ đụng Thụy Điển, còn Xứ Wales sẽ gặp đội thắng trong cặp Scotland - Ukraine hiện bị hoãn và chưa xác định ngày thi đấu.</p><figure class=\"image\"><img src=\"https://i1-thethao.vnecdn.net/2022/03/28/0-SOCCER-Portugal-200334-jpeg-2940-1648428655.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=LnZROFJJQ13hrKj-K0po_Q\" alt=\"Bồ Đào Nha của Ronaldo (giữa) và Jota có thể đoạt vé đi World Cup 2022 nếu thắng tiếp Bắc Macedonia trong trận chung kết play-off ngày 29/3. Ảnh: AP\"></figure><p>Bồ Đào Nha của Ronaldo (giữa) và Jota có thể đoạt vé đi World Cup 2022 nếu thắng tiếp Bắc Macedonia trong trận chung kết play-off ngày 29/3. Ảnh: <i>AP</i></p><p>Ở khu vực Nam Mỹ, lượt cuối ngày 29/3 chỉ còn ý nghĩa phân định nốt đội đứng thứ năm phải đá play-off liên lục địa với đội thắng vòng play-off khu vực châu Á. Các ứng cử viên còn lại ở khu vực này là Peru (21 điểm), Colombia (20 điểm) và Chile (19). Đối thủ của Peru và Colombia lần lượt là Paraguay và Venezuela - hai đội đã bị loại, trong khi Chile tiếp Uruguay.</p><p>Ở khu vực CONCACAF, với việc Canada đoạt vé sớm, Mỹ, Mexico, Costa Rica sẽ tranh hai vé còn lại. Mỹ có 25 điểm, Mexico 23 điểm và Costa Rica 22 điểm. Ở lượt cuối ngày 31/3, Costa Rica tiếp Mỹ, còn Mexico gặp El Salvador. Hai đội xếp sau Canada sẽ giành vé tới Qatar, còn đội đứng thứ tư đá play-off với đội thắng trong trận chung kết vòng loại châu Đại Dương giữa Quần đảo Solomon và New Zealand.</p><p>Tại châu Phi, năm suất sẽ được xác định sau lượt về play-off ngày 29/3. Ở lượt đi, Ai Cập là đội chủ nhà duy nhất thắng, khi <a href=\"https://vnexpress.net/bong-da/salah-giup-ai-cap-den-gan-world-cup-4443626.html\">vượt qua Senegal 1-0</a>. Trong khi đó, Cameroon thua Algeria 0-1, còn Mali nhận kết quả tương tự trước Tunisia. Trận Ghana - Nigeria có kết quả 0-0, còn CH Congo hòa Morocco 1-1.</p><p>Tại châu Á, Australia - chắc chắn đứng thứ ba bảng B - sẽ đá play-off với đội đứng thứ ba bảng A. UAE (9 điểm), Iraq (8) và Lebanon (6) đang cạnh tranh cho vị trí này. Ở lượt cuối ngày 29/3, Lebanon làm khách của Iran, Iraq hành quân tới sân của Syria, còn UAE tiếp Hàn Quốc. Đội thắng ở play-off khu vực châu Á sẽ tiếp tục phải đá trận liên lục địa với đội xếp thứ năm vòng loại khu vực Nam Mỹ.</p>', 1, 0, 1, 4, 1, 1, '2022-03-28 10:25:07', '2022-03-28 10:25:07'),
(8, 'Salah giúp Ai Cập đến gần World Cup', 'salah-giup-ai-cap-den-gan-world-cup', 'JP7p-Untitled-6935-1648247769.jpg', 1, NULL, 'AI CẬPMohamed Salah góp công ở bàn duy nhất, giúp Ai Cập thắng Senegal của Sadio Mane 1-0 ở lượt đi play-off World Cup 2022 - khu vực châu Phi.  Ai Cập từng thua Senegal ở loạt luân lưu chung kết CAN 2022 cách đây chưa đầy hai tháng. Do đó, Salah và đồng đội có thêm quyết tâm phục thù khi tiếp đối thủ tại Cairo. Ngay khai cuộc, chủ nhà đã tấn công và mở tỷ số nhờ một pha bóng có phần may mắn ngay phút thứ 4.  Từ đường phất bóng vào vòng cấm của Amr Al-Sulaya, các hậu vệ Senegal chững lại bởi pha bật nhảy của Mostafa Mohamed. Salah âm thầm di chuyển ra sau lưng hàng thủ đối phương để đón bóng. Cú sút trong tư thế xoay lưng lại khung thành của tiền đạo Liverpool chạm tay Edouard Mendy, dội xà. Bóng bật ra trúng người Saliou Ciss rồi đi vào lưới.', '<p>Salah vui mừng sau khi giúp Ai Cập mở tỷ số. Ảnh: <i>AFP</i>.</p><p>Không có bàn nào được ghi thêm trong thời gian còn lại. Ai Cập và Senegal cống hiến một trận đấu ngang tài ngang sức, tương tự chung kết CAN - trận đấu có kết quả hai hiệp chính là 0-0. Senegal nhỉnh hơn về thời lượng kiểm soát bóng (56%) và dứt điểm nhiều hơn một lần (13 so với 12) trong đó có ba lần trúng đích.</p><p>Mane chơi tự do trên hàng công Senegal. Anh có cơ hội cuối hiệp một nhưng cú sút từ ngoài vòng cấm bị thủ thành Mohamed El Shenawi cản phá. Ai Cập đáp trả bằng pha đánh đầu vọt xà của Mahmoud El Wensh.</p><p>El Shenawi thêm một lần từ chối pha đánh đầu của Mane trong hiệp hai. Bên cạnh tiền đạo Liverpool, Ismaila Sarr cũng là ngòi nổ nguy hiểm bên phía Senegal, khiến hàng thủ Ai Cập gặp nhiều khó khăn. Tuy nhiên, tấn công nhiều mà không ghi bàn, Senegal suýt thua thêm ở cuối trận nếu tiền đạo vào thay người của Ai Cập Omar Marmoush dứt điểm chính xác hơn.</p><p>Video Player is loading.</p><p>Dừng</p><p>Hiện tại&nbsp;0:03</p><p>/</p><p>Thời lượng&nbsp;1:40</p><p>Đã tải: 0%</p><p>Tiến trình: 0%</p><p>Bỏ tắt tiếng</p><p>&nbsp;</p><p>Toàn màn hình</p><p>&nbsp;</p><p>Ai Cập là đội chủ nhà duy nhất thắng lượt đi play-off World Cup 2022 khu vực châu Phi. Cameroon thua Algeria 0-1 bởi bàn thắng của tiền đạo Islam Slimani, trong khi Mali nhận kết quả tương tự trước Tunisia bởi pha phản lưới của Moussa Sissako. Trận Ghana - Nigeria có kết quả 0-0, còn CH Congo hòa Morocco 1-1.</p><p>Hai đội sẽ đá lượt về vào ngày 29/3, trên sân Me Abdoulaye Wade (Senegal).</p>', 1, 0, 1, 4, 1, 1, '2022-03-28 10:26:40', '2022-03-28 10:26:40'),
(9, 'Ronaldo cảnh giác trước chung kết play-off World Cup', 'ronaldo-canh-giac-truoc-chung-ket-play-off-world-cup', 'wuF9-ronaldo10-2469-1648174513.jpg', 1, NULL, 'BỒ ĐÀO NHASau khi đánh bại Thổ Nhĩ Kỳ, thủ quân Cristiano Ronaldo kêu gọi sự tập trung và nghiêm túc của các đồng đội ở đội tuyển Bồ Đào Nha.', '<p>Ronaldo cùng các đồng đội ăn mừng sau chiến thắng Thổ Nhĩ Kỳ. Ảnh: <i>A Bola</i>.</p><p>\"Chúng tôi đã thực hiện bước đầu tiên để hướng tới mục tiêu lớn - World Cup 2022. Nhưng cuộc chiến chưa kết thúc, và chúng tôi chưa giành được gì\", Ronaldo viết trên <i>Instagram</i> sau khi <a href=\"https://vnexpress.net/bong-da/bo-dao-nha-vao-tran-vot-cuoi-di-world-cup-4443171.html\">đánh bại Thổ Nhĩ Kỳ 3-1</a>. \"Chúng tôi phải tiếp tục công việc một cách nghiêm túc, tập trung, tôn trọng đối thủ nhưng cũng tin tưởng vào bản thân. Hãy chứng tỏ sức mạnh nào, Bồ Đào Nha! Tới Qatar!\".</p><p>Trên sân nhà tối 24/3, <a href=\"https://vnexpress.net/the-thao/du-lieu-bong-da/doi-bong/bo-dao-nha-27\">Bồ Đào Nha</a> vượt lên dẫn hai bàn ngay trong hiệp một, nhờ các bàn của Otavio Monteiro và Diogo Jota. Burak Yilmaz gỡ một bàn cho <a href=\"https://vnexpress.net/the-thao/du-lieu-bong-da/doi-bong/tho-nhi-ky-777\">Thổ Nhĩ Kỳ</a> phút 65, nhưng đá hỏng phạt đền ở phút 85. Đến phút bù giờ thứ tư, cầu thủ dự bị Matheus Luiz ghi bàn ấn định chiến thắng 3-1, đưa Bồ Đào Nha vào chơi trận quyết định vé dự World Cup 2022 gặp Bắc Macedonia, đội đã gây bất ngờ lớn khi <a href=\"https://vnexpress.net/italy-mat-ve-du-world-cup-phut-bu-gio-4443173.html\">loại Italy</a> ở trận đấu cùng giờ.</p><p>Được hỏi về màn trình diễn của Ronaldo tối qua, HLV Santos nói: \"Mọi người cứ quen đánh giá Ronaldo theo số bàn ghi được qua mỗi trận đấu. Nhưng theo tôi, Ronaldo vẫn chơi một trận tuyệt vời. Cậu ấy gắn kết cả đội với nhau, gây sức ép lên đối thủ và thi đấu với cường độ cao. Ronaldo không ghi bàn, nhưng điều đó không làm mất giá trị của màn trình diễn xuất sắc. Cậu ấy bỏ lỡ một số cơ hội, nhưng lại mở ra rất nhiều không gian cho đồng đội và điều đó cần được ghi nhận\".</p><p>Về vấn đề kế tục thế hệ vàng giành Euro 2016, trong đó có Ronaldo, ông đáp: \"Thế hệ mọi người yêu cầu thay thế là thế hệ vàng duy nhất của Bồ Đào Nha. Họ đã giành Euro 2016. Bồ Đào Nha luôn có những cầu thủ lớn, nhưng thế hệ vàng là thế hệ đã giành HC vàng\".</p><p>Video Player is loading.</p><p>Dừng</p><p>Hiện tại&nbsp;0:02</p><p>/</p><p>Thời lượng&nbsp;4:51</p><p>Đã tải: 0%</p><p>Tiến trình: 0%</p><p>Bỏ tắt tiếng</p><p>&nbsp;</p><p>Toàn màn hình</p><p>&nbsp;</p><p>Bồ Đào Nha sẽ có năm ngày để chuẩn bị cho trận quyết định với Bắc Macedonia. Một chiến thắng sẽ đưa họ đến với World Cup 2022 vào cuối năm nay ở Qatar. Dù được đánh giá cao hơn, HLV Santos hết sức thận trọng: \"Chúng tôi cần tôn trọng Bắc Macedonia như cái cách chúng tôi có thể dành cho Italy. Tôi đã nói nhiều lần trước khi gặp Bắc Macedonia. Những trận đấu kiểu này không đùa được. Nó như trận chung kết vậy, và bất cứ điều gì cũng có thể xảy ra. Bạn phải chuẩn bị cho trận đấu đó bằng sự tập trung như nó vốn phải như vậy. Một đội tuyển đến Italy và đánh bại những nhà vô địch thì khỏi phải bàn rồi\".</p><p>World Cup 2022 sẽ diễn ra từ ngày 21/11 đến 18/12, trên tám sân tại năm thành phố. Đây là World Cup thứ hai diễn ra ở châu Á, và cũng là World Cup cuối cùng có 32 đội tuyển. Từ giải năm 2026 diễn ra tại Mỹ, Mexico và Canada, số đội tuyển sẽ tăng lên 48.</p>', 1, 0, 1, 4, 1, 1, '2022-03-28 10:29:59', '2022-03-28 10:29:59'),
(10, 'Suarez và Cavani lần thứ tư liên tiếp đi World Cup', 'suarez-va-cavani-lan-thu-tu-lien-tiep-di-world-cup', 'dIqP-FOqF-rIXoAQUAnY-jpeg-7628-1648194515.jpg', 1, NULL, 'Loạt trận tối 24/3 giúp Ecuador và Uruguay đoạt nốt hai suất dự VCK từ vòng loại World Cup 2022 - khu vực Nam Mỹ.  Khu vực Nam Mỹ có bốn suất chính thức dự VCK World Cup 2022, dành cho bốn đầu đứng đầu vòng loại. Đội đứng thứ năm phải đá play-off liên lục địa với đội thắng vòng play-off khu vực châu Á, tranh vé vớt đi Qatar.  Sau 16 lượt, hai vé đầu tiên của Nam Mỹ đã thuộc về Brazil, Argentina. Ecuador xếp thứ ba với 25 điểm, chiếm lợi thế lớn nhất trong nhóm đua tranh hai suất còn lại, trong khi Uruguay (22 điểm), Peru (21), Chile (19), Colombia (17) lần lượt đứng phía sau.  Vào loạt trận áp chót sáng 25/2 theo giờ Hà Nội, Ecuador bất ngờ thua 1-3 trên sân Paraguay - đội đã hết hy vọng. Nhưng do ở trận đấu cùng giờ, Brazil - đội tưởng không còn động lực thi đấu - vẫn chơi tưng bừng, hạ Chile 4-0 bằng các bàn của Neymar, Vinicius, Coutinho và Richarlison. Vì thế, Chile bị loại khỏi cuộc đua, trong khi Ecuador nhận vé chính thức thứ ba ở Nam Mỹ.  Trên sân nhà, Uruguay hạ đối thủ cạnh tranh trực tiếp Peru bằng bàn duy nhất của Giorgian de Arrascaeta ở phút 42 để vươn lên thứ tư, với 25 điểm và giành nốt vé trực tiếp còn lại. Ở phía sau, Colombia, nhờ thắng đậm Bolivia 3-0, nhảy qua Chile vươn lên thứ năm với 20 điểm.', '<p>Suarez và Cavani sắp lần thứ tư liên tiếp cùng Uruguay dự VCK World Cup.</p><p>Theo cục diện này, lượt cuối vòng loại khu vực Nam Mỹ ngày 29/3 chỉ còn ý nghĩa phân định nốt đội đứng thứ năm tranh vé vớt, với các ứng cử viên Peru (21 điểm), Colombia (20 điểm) và Chile (19). Đối thủ của Peru và Colombia lần lượt là Paraguay và Venezuela - hai đội đã bị loại. Trong khi đó, Chile tiếp Uruguay.</p><p>Chiến thắng trước Peru giúp Uruguay lần thứ tư liên tiếp dự VCK World Cup, sau ba lần trước vào các năm 2010, 2014, 2018. Nhưng đây mới là lần đầu tiên sau gần 50 năm đội tuyển nước này dự bốn kỳ World Cup liên tục kể từ giai đoạn 1962-1974.</p><p>Nếu không gặp vấn đề chấn thương và phong độ, World Cup 2022 sẽ là lần thứ tư liên tiếp hai tiền đạo Uruguay - <a href=\"https://vnexpress.net/chu-de/luis-suarez-305\">Luis Suarez</a> và <a href=\"https://vnexpress.net/chu-de/edinson-cavani-221\">Edinson Cavani</a> - cùng ĐTQG dự ngày hội bóng đá lớn nhất thế giới. Ở ba VCK World Cup gần nhất, bộ đôi này đều cùng nhau nổ súng. Suarez ghi ba bàn (năm 2010), hai bàn (2014) và hai bàn (2018), trong khi số bàn của Cavani cùng kỳ lần lượt là một, một, và ba.</p><p>Trong trận quyết định thắng Peru hôm nay, Suarez đá chính rồi rời sân từ phút 76, khi Uruguay cần tăng cường chất thép cho tuyến giữa với tiền vệ phòng ngự Lucas Torreira. Cavani ngồi dự bị và chỉ được tung vào sân từ phút 67, thay đàn em Darwin Nunez. Tính đầu vòng loại, Suarez ghi bảy bàn cho Uruguay, trong khi Cavani góp hai bàn.</p><p>&nbsp;</p><figure class=\"image\"><img src=\"https://i1-thethao.vnecdn.net/2022/03/25/anh-1648198173-2485-1648198182.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=rb3oDjFckQsur4S6P1iB3g\" alt=\"Suarez và Cavani lần thứ tư liên tiếp đi World Cup - 1\"></figure>', 1, 0, 1, 4, 1, 1, '2022-03-28 10:31:03', '2022-03-28 10:31:03');
INSERT INTO `news` (`id`, `title`, `sort_title`, `image`, `type`, `link`, `summary`, `content`, `index`, `view`, `category_id`, `subcategory_id`, `user_id`, `active`, `created_at`, `updated_at`) VALUES
(11, 'England 2-1 Switzerland | Kane Becomes England\'s Joint-Second All-Time Goal Scorer | Highlights', 'england-2-1-switzerland-kane-becomes-englands-joint-second-all-time-goal-scorer-highlights', 'pDVM-1625676783_159476_1625693969_noticia_normal.jpg', 0, 'https://www.youtube.com/embed/EwDcGZANZug', 'Harry Kane and Luke Shaw were on target as the Three Lions came from a goal down to beat Switzerland 2-1 in the Alzheimer\'s Society International at Wembley.', '<p>SUBSCRIBE to ensure you don’t miss a video from the England YouTube channel. Hit the bell to get notifications on our latest uploads! ► Subscribe: <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqazFqNXpJVTkyZ3BiNXRIdmFoeUZvdG8teGdGd3xBQ3Jtc0tucHgwemdRLWZ2bDE0UFJROUxjWUZ3MUVVYU9kdnRkZENXa3p6N2daVGYtQ21TTmpudk5wWkRxRlZCY1JVUGpWWnhINUl3bC01QmI0QUNNUTNVVm9tZlFFRHA4Rm9kRnlIRkhmT3Vmakx6UnpUTGtZUQ&amp;q=http%3A%2F%2Fbit.ly%2FFATVSub\">http://bit.ly/FATVSub</a> ► Twitter: <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa0RKa3JlX1RiMm5oMW42RE5MQi1pVlFJSDVHQXxBQ3Jtc0tsMHBrQXZhbkx3NUdRcEU2QkpvdE04SnhYYjh6WXpVV0VCSWdOSEVCVDlyN1JpWmdaU05YdFRnM0c3M1l5NTNXZ1pRekl6Q1E1cVVGYU5PZU9aYnJrcDk3bW8zbGs4RlJRZFJHcnJBZHhvS1RTVFN2OA&amp;q=http%3A%2F%2Fwww.twitter.com%2Fengland\">http://www.twitter.com/england</a> ► Instagram: <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa3lIcnh0SFBja052WGJ2STlsVkxibnpFXzNFd3xBQ3Jtc0tsb0VHR090Qjh4eVdhcDVKaWNGeGxKYU1ZZDZSWFd0bjdVSVJ4Tk13aUg4QmdOWVpPMVZpSF9nUEZobmhQM3lGX0FNdld0RkExdUpza24tMkQ4WlpfNnI3YVJhX3VIUXBPSm95X3RiNXhZTFRqNHF0aw&amp;q=http%3A%2F%2Fwww.instagram.com%2Fengland\">http://www.instagram.com/england</a> ► Facebook: <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqa1JuMFdsRVlVYnFvbWcySm5tWmZUeHZfUVZWd3xBQ3Jtc0tsZXE1WDBMTTFUcDFrZEtlZUxYbmgzN2dta0o2MG9SWTROTmJSd3ZWLU9ZNjFtd3J0S19DaUYtTUJSdUNZNENONklPem1SR21wNkVNVVhGUkhWcllCNU91TFgxRnRZT0U5SmpFTjlYSUYwQkZ5eTYwOA&amp;q=http%3A%2F%2Fwww.facebook.com%2Fenglandteam\">http://www.facebook.com/englandteam</a> ► Twitch: <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbnY3YXd6dXJVZk1VZ3FKM0l4RzFkaW5GbkZSQXxBQ3Jtc0tuSHNSaU8yQ0hoNFNNV2NuSG04eWlZRG1RTGJKMk9FOENsSllYZVJIOFN0aUxOTEVheWlhcVVNWU95eTlpb2E3a0dEQ083ckVfbnFOdWJNLTBPYmhZR1VGRWVyZHpqSldGRHU3WC1fRmU1akNxNzlyaw&amp;q=https%3A%2F%2Fwww.twitch.tv%2Fengland\">https://www.twitch.tv/england</a> ► TikTok: <a href=\"https://www.youtube.com/redirect?event=video_description&amp;redir_token=QUFFLUhqbXhhQ19WZzhQZGNaYWxQUzdtLWFvR2lvS3doUXxBQ3Jtc0trRzhTek9VQjdIYllNMkpNRWVzODBOenBMSEpSQjZDMjJKamxGOTZ2cmlURDFsamJaNWhCSjRVbnVPQ0FxaGVyakllcVJoVjl0T3MtLVRwbi1kam1US3ZIWHRtckFfdVRCbEFhdWNTRDh1UTA0eWtsYw&amp;q=https%3A%2F%2Fwww.tiktok.com%2F%40england\">https://www.tiktok.com/@england</a></p>', 1, 0, 2, 2, 1, 1, '2022-03-28 10:34:34', '2022-03-28 10:35:26'),
(12, 'Real Madrid vs PSG 3-1 Extended Highlights All Goals 2022D', 'real-madrid-vs-psg-3-1-extended-highlights-all-goals-2022d', 'ff6E-fncjufrxmakxlea.jpg', 0, 'https://www.youtube.com/embed/6qJY7bUpoEo', 'PSG vs Real Madrid 1-3 Match Highlights || All Goals in HD 2022', '<p>psg today match, real Madrid today match, psg match,psg,psg live,psg king,psg on fire, real Madrid, Real Madrid match, Highlight, <a href=\"https://www.youtube.com/hashtag/messi\">#messi</a> <a href=\"https://www.youtube.com/hashtag/neymar\">#neymar</a> <a href=\"https://www.youtube.com/hashtag/psg\">#psg</a> <a href=\"https://www.youtube.com/hashtag/realmadrid\">#realmadrid</a></p>', 1, 0, 2, 4, 1, 1, '2022-03-28 10:38:53', '2022-03-28 10:39:47'),
(13, 'Tin tức 24h mới. Tin Trưa 25/3 Cập nhật bà Nguyễn Phương Hằng bị bắt, các nghệ sĩ từng kiện nói gì?', 'tin-tuc-24h-moi-tin-trua-25-3-cap-nhat-ba-nguyen-phuong-hang-bi-bat-cac-nghe-si-tung-kien-noi-gi-', 'ViNu-ba-nguyen-phuong-hang-bi-bat-phan-ung-cua-tro-ly-than-can-ra-sao-2-1648207085-433-width660height397.jpg', 0, 'https://www.youtube.com/embed/CxCPUZWFIkU', '▶ TIN TỨC 24H ONLINE là kênh Youtube chia sẻ các nội dung tin tức, bản tin cập nhật 24h online, những nội dung giải trí hấp dẫn được phát sóng trên các kênh chương trình đài truyền hình, các tin tức cập nhật, chương trình truyền hình trực tiếp, chương trình thể thao, bóng đá, giải trí, game show, showbiz… Với mong muốn cập nhật những thông tin chính xác và nhanh nhất trên nền tảng số cho quý vị và các bạn.', '<p>TIN TỨC 24H ONLINE là kênh Youtube chia sẻ các nội dung tin tức, bản tin cập nhật 24h online, những nội dung giải trí hấp dẫn được phát sóng trên các kênh chương trình đài truyền hình, các tin tức cập nhật, chương trình truyền hình trực tiếp, chương trình thể thao, bóng đá, giải trí, game show, showbiz… Với mong muốn cập nhật những thông tin chính xác và nhanh nhất trên nền tảng số cho quý vị và các bạn.</p>', 1, 0, 1, 2, 1, 1, '2022-03-28 10:47:11', '2022-03-28 10:47:11');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sort_Title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sort_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `sort_name`, `category_id`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Kinh tế-tài chính', 'kinh-te-tai-chinh', 1, 1, '2022-03-28 09:13:30', '2022-03-28 09:13:30'),
(2, 'Pháp luật', 'phap-luat', 1, 1, '2022-03-28 10:04:11', '2022-03-28 10:04:11'),
(3, 'Giáo dục', 'giao-duc', 1, 1, '2022-03-28 10:04:44', '2022-03-28 10:04:44'),
(4, 'World cup 2022', 'world-cup-2022', 2, 1, '2022-03-28 10:22:50', '2022-03-28 10:22:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT 0,
  `active` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `email`, `email_verified_at`, `image`, `role`, `active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', '$2y$10$eL9ZKetaxQX/ZY80goRPpuL7HtXQFNyX.o7U34jV9pfguWQ6WKBlS', 'admin@gmail.com', NULL, 'avatar.jpg', 1, 1, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

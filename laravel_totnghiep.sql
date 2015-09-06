-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2015 at 10:16 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `laravel_totnghiep`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `summary` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `name`, `content`, `image`, `summary`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Giới Thiệu', '<h3>Giới thiệu chung về FPT</h3>\r\n\r\n<p>Th&agrave;nh lập ng&agrave;y 13/09/1988, trong gần&nbsp;<a href="http://fpt.com.vn/vn/gioi_thieu/gioi_thieu_chung/lich_su_va_su_kien/" style="outline: none; margin: 0px; padding: 0px; border: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; text-decoration: none; color: rgb(238, 127, 1);">26 năm ph&aacute;t triển</a>, FPT lu&ocirc;n l&agrave; c&ocirc;ng ty C&ocirc;ng nghệ th&ocirc;ng tin v&agrave; Viễn th&ocirc;ng h&agrave;ng đầu tại Việt Nam với doanh thu 28.647 tỷ đồng, tương đương 1,36 tỷ USD (B&aacute;o c&aacute;o t&agrave;i ch&iacute;nh 2013), tạo ra hơn 17.000 việc l&agrave;m v&agrave; gi&aacute; trị vốn h&oacute;a thị trường (tại 28/2/2014) đạt 17.608 tỷ đồng, nằm trong số c&aacute;c doanh nghiệp tư nh&acirc;n lớn nhất tại Việt Nam (theo b&aacute;o c&aacute;o của Vietnam Report 500).</p>\r\n\r\n<div style="outline: none; margin: 0px; padding: 0px; border: 0px; font-size: 11px; font-family: Arial, Helvetica, sans-serif; color: rgb(100, 100, 100); line-height: 20px;">\r\n<div style="outline: none; margin: 0px; padding: 0px; border: 0px; font-weight: inherit; font-style: inherit; font-family: inherit;"><img src="http://www.fpt.com.vn/Resources/2014/05/06/9267298/tong_thong.jpg" style="border:0px; font-family:inherit; font-style:inherit; font-weight:inherit; margin:0px; outline:none; padding:0px" />\r\n<div style="outline: none; margin: 0px; padding: 0px; border: 0px; font-weight: inherit; font-style: inherit; font-family: inherit;">\r\n<div style="outline: none; margin: 0px; padding: 0px; border: 0px; font-weight: inherit; font-style: inherit; font-family: inherit;"><em>L&atilde;nh đạo cấp cao của FPT trong chuyến c&ocirc;ng t&aacute;c nước ngo&agrave;i.</em></div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<p>Với&nbsp;<a href="http://fpt.com.vn/vn/san_pham_va_dich_vu/phan_mem/" style="outline: none; margin: 0px; padding: 0px; border: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; text-decoration: none; color: rgb(238, 127, 1);">c&aacute;c lĩnh vực kinh doanh cốt l&otilde;i&nbsp;</a>thuộc lĩnh vực C&ocirc;ng nghệ th&ocirc;ng tin v&agrave; Viễn th&ocirc;ng, FPT cung cấp dịch vụ tới 57/63 tỉnh th&agrave;nh tại Việt Nam, kh&ocirc;ng ngừng mở rộng thị trư<a name="_GoBack"></a>ờng to&agrave;n cầu. Đến thời điểm hiện tại, FPT đ&atilde; c&oacute; mặt tại 17 quốc gia gồm: Việt Nam, L&agrave;o, Th&aacute;i Lan, Campuchia, Singapore, Mỹ, Anh, Nhật Bản, Malaysia, &Uacute;c, Ph&aacute;p, Philippines, Đức, Myanmar, Kuwait, Bangladesh v&agrave; Indonesia.</p>\r\n\r\n<p>FPT c&oacute; bề d&agrave;y th&agrave;nh t&iacute;ch trong việc tạo dựng v&agrave; triển khai c&aacute;c m&ocirc; h&igrave;nh kinh doanh mới c&oacute; quy m&ocirc; lớn. Sau gần 26 năm hoạt động, hiện FPT l&agrave; c&ocirc;ng ty số 1 tại Việt Nam trong c&aacute;c lĩnh vực Phần mềm, T&iacute;ch hợp hệ thống, Dịch vụ CNTT, Ph&acirc;n phối v&agrave; Sản xuất c&aacute;c sản phẩm CNTT, B&aacute;n lẻ sản phẩm CNTT... Ở lĩnh vực viễn th&ocirc;ng, FPT l&agrave; một trong 3 nh&agrave; cung cấp dịch vụ viễn th&ocirc;ng cố định v&agrave; Internet lớn nhất Việt Nam. Ở lĩnh vực nội dung số, FPT hiện l&agrave; đơn vị Quảng c&aacute;o trực tuyến số 1 tại Việt Nam v&agrave; tự h&agrave;o sở hữu hệ thống b&aacute;o điện tử c&oacute; 42 triệu lượt truy cập mỗi ng&agrave;y. Ngo&agrave;i ra, FPT c&ograve;n sở hữu khối gi&aacute;o dục đại học v&agrave; dạy nghề với tổng số gần 16.000 sinh vi&ecirc;n v&agrave; l&agrave; một trong những đơn vị đ&agrave;o tạo về CNTT tốt nhất tại Việt Nam.</p>\r\n\r\n<p>Con đường FPT chọn ch&iacute;nh l&agrave; c&ocirc;ng nghệ, vươn tới tầm cao năng suất lao động mới bằng những tri thức mới th&ocirc;ng qua c&ocirc;ng nghệ. Ph&aacute;t huy tối đa khả năng s&aacute;ng tạo v&agrave; linh hoạt để nắm bắt những cơ hội mới, nỗ lực ứng dụng v&agrave; s&aacute;ng tạo c&ocirc;ng nghệ trong mọi hoạt động ở mọi cấp l&agrave; y&ecirc;u cầu đối với từng người FPT, hướng tới mục ti&ecirc;u chung OneFPT - Tập đo&agrave;n C&ocirc;ng nghệ To&agrave;n cầu H&agrave;ng đầu của Việt Nam.</p>\r\n', '1432893614-1432893193-at-mui-15012902525601.jpg', 'Giới thiệu chung về FPT  Thành lập ngày 13/09/1988, trong gần 26 năm phát triển, FPT luôn là công ty Công nghệ thông tin và Viễn thông hàng đầu tại Việt Nam với doanh thu 28.647 tỷ đồng, tương đương 1,36 tỷ USD (Báo cáo tài chính 2013), tạo ra hơn 17.000 ', 1, '2015-05-29 10:01:47', '2015-05-29 03:01:47'),
(2, 'Hướng Dẫn Mua Hàng', '<div class="short-art" style="box-sizing: border-box; font-family: Arial, sans-serif; font-size: 14px; line-height: 20px;">\r\n<h1>Hướng dẫn, c&aacute;ch mua h&agrave;ng tr&ecirc;n Lazada</h1>\r\n\r\n<div class="post-info" style="margin: 0px 0px 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; height: 40px; line-height: 40px; font-size: 12px; background: transparent;">\r\n<div class="cmt" style="margin: 0px 20px 0px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; float: left; background: transparent;"><a href="http://chanhtuoi.com/huong-dan-mua-hang-tren-lazada.html#comments" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(43, 126, 193); text-decoration: none; background: transparent;">&nbsp;0</a></div>\r\n\r\n<div class="author" style="margin: 0px 20px 0px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; float: left; background: transparent;"><img alt="" class="avatar avatar-20 photo" src="http://0.gravatar.com/avatar/028b4c736aab0795ca75e0744043a80c?s=20&amp;d=mm&amp;r=g" style="background:transparent; float:left; height:20px; margin:10px 3px 0px 0px; outline:0px; padding:0px; vertical-align:baseline; width:20px" /><a href="http://chanhtuoi.com/author/thuthao/" rel="nofollow" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(34, 34, 34); text-decoration: none; font-weight: bold; background: transparent;" title="Đăng bởi Thuthao">Thuthao</a></div>\r\n\r\n<div class="date" style="margin: 0px 20px 0px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; float: left; font-size: 13px; color: rgb(102, 102, 102); background: transparent;">17 Th&aacute;ng Tư 2015 l&uacute;c 10:58 s&aacute;ng</div>\r\n\r\n<div class="cat" style="margin: 0px 20px 0px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; float: left; background: transparent;">&nbsp;<a href="http://chanhtuoi.com/kinh-nghiem/" rel="nofollow" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(27, 75, 125); text-decoration: none; background: transparent;">Kinh Nghiệm</a></div>\r\n\r\n<div class="thuonghieu" style="margin: 0px 20px 0px 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; float: left; background: transparent;">&nbsp;<a href="http://chanhtuoi.com/thuong-hieu/lazada/" rel="tag" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(27, 75, 125); text-decoration: none; background: transparent;">Lazada</a></div>\r\n</div>\r\n\r\n<div class="clear" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; clear: both; font-family: Helvetica, Arial, ''DejaVu Sans'', ''Liberation Sans'', Freesans, sans-serif; font-size: 14px; line-height: 18px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">&nbsp;</div>\r\n\r\n<div class="post-single-content box mark-links" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; width: 720px; float: left; position: relative; font-family: Helvetica, Arial, ''DejaVu Sans'', ''Liberation Sans'', Freesans, sans-serif; font-size: 14px; line-height: 18px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\r\n<div class="css_content content_wrap_meter" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; overflow: hidden; background: transparent;">\r\n<p>L&agrave;m sao để mua h&agrave;ng tr&ecirc;n&nbsp;<a class="clicky_log_outbound" href="http://chanhtuoi.com/recommends/lazadavn/" rel="nofollow" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(27, 75, 125); font-weight: bold; background: transparent;" target="_blank">Lazada</a>, b&agrave;i hướng dẫn sau sẽ giới thiệu&nbsp;<strong>c&aacute;ch mua h&agrave;ng tr&ecirc;n Lazada</strong>&nbsp;v&agrave; sẽ chia sẻ b&iacute; quyết để bạn mua được đ&uacute;ng sản phẩm đ&oacute; với gi&aacute; rẻ hơn. Lazada l&agrave; trang thương mại điện tử, n&oacute; chỉ b&aacute;n trực tuyến chứ kh&ocirc;ng c&oacute; cửa h&agrave;ng. Với việc đa dạng phương thức thanh to&aacute;n th&igrave; đ&atilde; gi&uacute;p tất cả mọi người đều c&oacute; thể tiếp cận v&agrave; mua h&agrave;ng tr&ecirc;n Lazada được b&igrave;nh thường.</p>\r\n\r\n<div class="wp-caption aligncenter" id="attachment_3956" style="padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; clear: both; height: auto; max-width: 100%; width: 905px; margin: 5px auto !important; text-align: center !important; background: transparent;"><a class="fancybox image" href="http://chanhtuoi.com/wp-content/uploads/2015/04/huong-dan-mua-hang-lazada.jpg" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(27, 75, 125); font-weight: bold; background: transparent;"><img alt=" Mua hàng online ở Lazada &amp; tận hưởng cuộc sống!" class="size-full wp-image-3956" src="http://chanhtuoi.com/wp-content/uploads/2015/04/huong-dan-mua-hang-lazada.jpg" style="background:transparent; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline; width:895px" /></a>\r\n\r\n<p>Mua h&agrave;ng online ở Lazada &amp; tận hưởng cuộc sống!</p>\r\n</div>\r\n\r\n<h2>Hướng dẫn c&aacute;ch mua h&agrave;ng tr&ecirc;n Lazadamua h&agrave;ng tr&ecirc;n Lazada với&nbsp;9 bước</h2>\r\n\r\n<p><strong>Trước khi mua n&ecirc;n ch&uacute; &yacute;:</strong>&nbsp;Đọc thật kỹ về mặt h&agrave;ng, đ&aacute;nh gi&aacute; của người mua (đ&atilde; c&oacute;), c&agrave;ng phải ch&uacute; &yacute; với những đ&aacute;nh gi&aacute; c&oacute; gắn m&aacute;c (người đ&atilde; mua h&agrave;ng) v&igrave; họ l&agrave; những người đ&atilde; được trải nghiệm về sản phẩm. (Xem&nbsp;<a href="http://chanhtuoi.com/thuong-hieu/lazada/" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(27, 75, 125); font-weight: bold; background: transparent;">khuyến mại Lazada</a>&nbsp;tr&ecirc;n Chanh Tươi để biết sản phẩm n&agrave;o đang tốt)</p>\r\n\r\n<p><strong>Bước 1: T&igrave;m kiếm sản phẩm tr&ecirc;n website&nbsp;<a class="clicky_log_outbound" href="http://chanhtuoi.com/recommends/lazadavn/" rel="nofollow" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(27, 75, 125); background: transparent;" target="_blank">Lazada.vn</a>&nbsp;(nhấn v&agrave;o&nbsp;<a class="clicky_log_outbound" href="http://chanhtuoi.com/recommends/lazadavn/" rel="nofollow" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(27, 75, 125); background: transparent;" target="_blank">đ&acirc;y</a>&nbsp;để mở trang chủ)</strong></p>\r\n\r\n<p>C&aacute;c bạn c&oacute;&nbsp;<strong>3 c&aacute;ch</strong>&nbsp;để t&igrave;m sản phẩm, c&aacute;ch 1 bạn c&oacute; thể t&igrave;m kiếm trực tiếp th&ocirc;ng qua&nbsp;<strong>danh mục sản phẩm(1A)</strong>, c&aacute;ch 2 g&otilde; trực tiếp t&ecirc;n sản phẩm bạn cần v&agrave;o&nbsp;<strong>hộp t&igrave;m kiếm(1B)</strong>, c&aacute;ch 3 t&igrave;m sản phẩm tại danh mục sản phẩm<strong>danh mục phụ(2)</strong></p>\r\n\r\n<div class="wp-caption aligncenter" id="attachment_3939" style="padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; clear: both; height: auto; max-width: 100%; width: 722px; margin: 5px auto !important; text-align: center !important; background: transparent;"><a class="fancybox image" href="http://chanhtuoi.com/wp-content/uploads/2015/04/huong-dan-mua-hang-tren-lazada-1.jpg" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(27, 75, 125); font-weight: bold; background: transparent;"><img alt="Hướng dẫn mua hàng trên lazada bước 1" class="size-full wp-image-3939" src="http://chanhtuoi.com/wp-content/uploads/2015/04/huong-dan-mua-hang-tren-lazada-1.jpg" style="background:transparent; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline; width:712px" /></a>\r\n\r\n<p>Hướng dẫn mua h&agrave;ng tr&ecirc;n lazada bước 1</p>\r\n</div>\r\n\r\n<h4>Bước 2: Chọn Sản Phẩm Bạn Muốn Mua tr&ecirc;n Lazada</h4>\r\n\r\n<p>Click v&agrave;o sản phẩm v&agrave; bạn ưng &yacute; để xem chi tiết sản phẩm(1)</p>\r\n\r\n<div class="wp-caption aligncenter" id="attachment_3940" style="padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; clear: both; height: auto; max-width: 100%; width: 714px; margin: 5px auto !important; text-align: center !important; background: transparent;"><a class="fancybox image" href="http://chanhtuoi.com/wp-content/uploads/2015/04/huong-dan-mua-hang-tren-lazada-2.png" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(27, 75, 125); font-weight: bold; background: transparent;"><img alt="Hướng dẫn mua hàng trên lazada bước 2" class="size-full wp-image-3940" src="http://chanhtuoi.com/wp-content/uploads/2015/04/huong-dan-mua-hang-tren-lazada-2.png" style="background:transparent; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline; width:704px" /></a>\r\n\r\n<p>Hướng dẫn mua h&agrave;ng tr&ecirc;n lazada bước 2</p>\r\n</div>\r\n\r\n<p><strong>Bước 3: Hướng dẫn kiểm tra th&ocirc;ng tin khi mua h&agrave;ng tr&ecirc;n Lazada</strong></p>\r\n\r\n<ul>\r\n	<li>Điểm qua những&nbsp;<strong>th&ocirc;ng số nổi bật của sản phẩm(1)</strong>,&nbsp;<strong>Xem t&ecirc;n đơn vị b&aacute;n h&agrave;ng</strong>&nbsp;v&agrave; thời gian giao h&agrave;ng tại mục 2.</li>\r\n	<li>Lưu &yacute; do tr&ecirc;n Lazada c&oacute; rất nhiều c&aacute;c đơn vị kh&aacute;c nhau c&ugrave;ng b&aacute;n 1 sản phẩm, n&ecirc;n c&aacute;c bạn cần search v&agrave; t&igrave;m hiểu kỹ xem đơn vị giao h&agrave;ng ấy như thế n&agrave;o, c&oacute; địa chỉ cụ thể, c&oacute; website kh&ocirc;ng th&ocirc;ng qua google để c&acirc;n nhắc. Nếu so s&aacute;nh gi&aacute; sản phẩm rẻ hơn so với c&aacute;c đơn vị b&aacute;n h&agrave;ng uy t&iacute;n kh&aacute;c như Trần Anh, Thế Giới Di Động&hellip;.th&igrave; c&aacute;c bạn nhấn<strong>&nbsp;&rdquo; Mua ngay&rdquo; để tiếp tục mua(3). (Phải check xem c&oacute; c&aacute;i Coupon n&agrave;o kh&ocirc;ng nữa, Coupon l&agrave; một m&atilde; giảm gi&aacute; gi&uacute;p bạn tiết kiệm hơn, xem ở&nbsp;<a href="http://chanhtuoi.com/thuong-hieu/lazada/" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(27, 75, 125); background: transparent;">đ&acirc;y</a>)</strong></li>\r\n</ul>\r\n\r\n<div class="wp-caption aligncenter" id="attachment_3941" style="padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; clear: both; height: auto; max-width: 100%; width: 714px; margin: 5px auto !important; text-align: center !important; background: transparent;"><a class="fancybox image" href="http://chanhtuoi.com/wp-content/uploads/2015/04/huong-dan-mua-hang-tren-lazada-3.png" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(27, 75, 125); font-weight: bold; background: transparent;"><img alt="Hướng dẫn mua hàng trên lazada bước 3" class="size-full wp-image-3941" src="http://chanhtuoi.com/wp-content/uploads/2015/04/huong-dan-mua-hang-tren-lazada-3.png" style="background:transparent; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline; width:704px" /></a>\r\n\r\n<p>Hướng dẫn mua h&agrave;ng tr&ecirc;n lazada bước 3</p>\r\n</div>\r\n\r\n<p><em><strong>Lưu &yacute;:</strong></em></p>\r\n\r\n<ul>\r\n	<li>Ưu ti&ecirc;n thương hiệu lớn m&agrave; bạn viết</li>\r\n	<li>Ch&uacute; &yacute; đến đ&aacute;nh gi&aacute; của người d&ugrave;ng về người b&aacute;n h&agrave;ng, click v&agrave;o t&ecirc;n người b&aacute;n h&agrave;ng</li>\r\n	<li>Lưu &yacute; về thời gian giao h&agrave;ng.</li>\r\n</ul>\r\n\r\n<p><strong>Bước 4: X&aacute;c Nhận Giỏ H&agrave;ng khi mua tại Lazada</strong></p>\r\n\r\n<ul>\r\n	<li>Xem chi tiết đơn gi&aacute;, t&ecirc;n sản phẩm v&agrave; số lượng m&agrave; c&aacute;c bạn muốn mua, nếu muốn mua nhiều hơn 1 th&igrave; chọn v&agrave;o mục&nbsp;<strong>số lượng sản phẩm để thay đổi (1)</strong>.</li>\r\n	<li>Để tiếp tục mua sắm th&ecirc;m c&aacute;c sản phẩm kh&aacute;c c&aacute;c bạn click&rdquo;<strong>&nbsp;th&ecirc;m sản phẩm kh&aacute;c v&agrave;o giỏ h&agrave;ng</strong>&rdquo; hoặc muốn thanh to&aacute;n lu&ocirc;n sản phẩm vừa chọn th&igrave; click&rdquo;&nbsp;<strong>tiến h&agrave;nh thanh to&aacute;n&rdquo;(2)</strong></li>\r\n</ul>\r\n\r\n<div class="wp-caption aligncenter" id="attachment_3942" style="padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; clear: both; height: auto; max-width: 100%; width: 714px; margin: 5px auto !important; text-align: center !important; background: transparent;"><a class="fancybox image" href="http://chanhtuoi.com/wp-content/uploads/2015/04/huong-dan-mua-hang-tren-lazada-4.png" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(27, 75, 125); font-weight: bold; background: transparent;"><img alt="Hướng dẫn mua hàng trên lazada bước 4" class="size-full wp-image-3942" src="http://chanhtuoi.com/wp-content/uploads/2015/04/huong-dan-mua-hang-tren-lazada-4.png" style="background:transparent; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline; width:704px" /></a>\r\n\r\n<p>Hướng dẫn mua h&agrave;ng tr&ecirc;n lazada bước 4</p>\r\n</div>\r\n\r\n<h4>Bước 5: Nhập địa chỉ Email hoặc đăng nhập t&agrave;i khoản.</h4>\r\n\r\n<ul>\r\n	<li><strong>Nhập email bạn hay d&ugrave;ng v&agrave;o mục (1)</strong>&nbsp;để nhận được mọi cập nhật về t&igrave;nh trạng đơn h&agrave;ng của m&igrave;nh đang ở kh&acirc;u n&agrave;o.</li>\r\n	<li>Tiếp theo chọn&rdquo; đặt h&agrave;ng kh&ocirc;ng cần đăng k&yacute;&rdquo; để tiếp tục mua h&agrave;ng m&agrave; kh&ocirc;ng cần đăng nhập v&agrave;o t&agrave;i khoản tr&ecirc;n Lazada, hoặc t&iacute;ch v&agrave;o &ocirc;&rdquo; t&ocirc;i đ&atilde; c&oacute; t&agrave;i khoản tr&ecirc;n&nbsp;<a class="clicky_log_outbound" href="http://chanhtuoi.com/recommends/lazadavn/" rel="nofollow" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(27, 75, 125); font-weight: bold; background: transparent;" target="_blank">lazada.vn</a>&nbsp;để đăng nhập v&agrave;o<strong>&nbsp;t&agrave;i khoản m&agrave; bạn đ&atilde; đăng k&yacute; từ trước (2)</strong>.</li>\r\n	<li>Lời khuy&ecirc;n cho bạn l&agrave; n&ecirc;n đăng k&yacute; t&agrave;i khoản tr&ecirc;n lazada.vn, mất c&ocirc;ng một lần nhưng lần sau khi mua h&agrave;ng c&aacute;c bạn kh&ocirc;ng cần nhập lại những th&ocirc;ng tin như địa chỉ giao h&agrave;ng nữa, m&agrave; chỉ cần đăng nhập l&agrave; đ&atilde; c&oacute; th&ocirc;ng tin được lưu tự động từ c&aacute;c giao dịch trước.</li>\r\n	<li>Nhấn&nbsp;<strong>&ldquo;Tiếp tục&rdquo;</strong>&nbsp;để chuyển sang bước tiếp (3)</li>\r\n</ul>\r\n\r\n<div class="wp-caption aligncenter" id="attachment_3943" style="padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; clear: both; height: auto; max-width: 100%; width: 714px; margin: 5px auto !important; text-align: center !important; background: transparent;"><a class="fancybox image" href="http://chanhtuoi.com/wp-content/uploads/2015/04/huong-dan-mua-hang-tren-lazada-5.png" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(27, 75, 125); font-weight: bold; background: transparent;"><img alt="Hướng dẫn mua hàng trên lazada bước 5" class="size-full wp-image-3943" src="http://chanhtuoi.com/wp-content/uploads/2015/04/huong-dan-mua-hang-tren-lazada-5.png" style="background:transparent; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline; width:704px" /></a>\r\n\r\n<p>Hướng dẫn mua h&agrave;ng tr&ecirc;n lazada bước 5</p>\r\n</div>\r\n\r\n<h4>Bước 6: Nhập Th&ocirc;ng Tin Giao H&agrave;ng</h4>\r\n\r\n<p>Chổ n&agrave;y kh&aacute; quan trọng, bạn n&ecirc;n nhập đầy đủ v&agrave; ch&iacute;nh x&aacute;c để h&agrave;ng chuyển đến đ&uacute;ng. Nhớ nhập&nbsp;<strong>số điện thoại m&agrave; bạn đang sử dụng(1)&nbsp;</strong>. V&igrave; trong trường hợp nh&acirc;n vi&ecirc;n muốn x&aacute;c nhận đơn h&agrave;ng bằng c&aacute;ch gọi điện cho bạn, nếu kh&ocirc;ng thấy t&iacute;n hiệu =&gt; Lazada sẻ hủy đơn h&agrave;ng. Một số trường hợp m&agrave; nhập th&ocirc;ng tin lung tung th&igrave; Lazada cũng&nbsp;hủy đơn h&agrave;ng lu&ocirc;n.</p>\r\n\r\n<div class="wp-caption aligncenter" id="attachment_3944" style="padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; clear: both; height: auto; max-width: 100%; width: 714px; margin: 5px auto !important; text-align: center !important; background: transparent;"><a class="fancybox image" href="http://chanhtuoi.com/wp-content/uploads/2015/04/huong-dan-mua-hang-tren-lazada-6.png" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(27, 75, 125); font-weight: bold; background: transparent;"><img alt="Hướng dẫn mua hàng trên lazada bước 6" class="size-full wp-image-3944" src="http://chanhtuoi.com/wp-content/uploads/2015/04/huong-dan-mua-hang-tren-lazada-6.png" style="background:transparent; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline; width:704px" /></a>\r\n\r\n<p>Hướng dẫn mua h&agrave;ng tr&ecirc;n lazada bước 6</p>\r\n</div>\r\n\r\n<h3>Bước 7: Chọn Phương Thức Thanh To&aacute;n khi mua h&agrave;ng tr&ecirc;n Lazada</h3>\r\n\r\n<ul>\r\n	<li>Nếu đ&acirc;y l&agrave; lần đầu mua, bạn n&ecirc;n chọn&nbsp;<strong><span style="color:rgb(255, 0, 0)">Thanh To&aacute;n Khi Nhận H&agrave;ng</span>&nbsp;(COD)</strong>. Sau đơn h&agrave;ng n&agrave;y thấy tin tưởng rồi th&igrave; h&atilde;y d&ugrave;ng Thẻ ng&acirc;n h&agrave;ng để&nbsp;thanh to&aacute;n ngay. Nhưng với m&igrave;nh th&igrave; m&igrave;nh vẫn chọn theo phương thức an to&agrave;n l&agrave; nhận h&agrave;ng rồi thanh to&aacute;n.</li>\r\n	<li>Chổ số 2 l&agrave; nơi để bạn nhập m&atilde; voucher(nếu c&oacute;) v&agrave;o =&gt; nhấn n&uacute;t sử dụng voucher. (lấy voucher ở&nbsp;<a href="http://chanhtuoi.com/thuong-hieu/lazada/" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(27, 75, 125); font-weight: bold; background: transparent;">đ&acirc;y</a>)</li>\r\n</ul>\r\n\r\n<div class="wp-caption aligncenter" id="attachment_3945" style="padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; clear: both; height: auto; max-width: 100%; width: 714px; margin: 5px auto !important; text-align: center !important; background: transparent;"><a class="fancybox image" href="http://chanhtuoi.com/wp-content/uploads/2015/04/huong-dan-mua-hang-tren-lazada-7.png" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(27, 75, 125); font-weight: bold; background: transparent;"><img alt="Hướng dẫn mua hàng trên lazada bước 7" class="size-full wp-image-3945" src="http://chanhtuoi.com/wp-content/uploads/2015/04/huong-dan-mua-hang-tren-lazada-7.png" style="background:transparent; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline; width:704px" /></a>\r\n\r\n<p>Hướng dẫn mua h&agrave;ng tr&ecirc;n lazada bước 7</p>\r\n</div>\r\n\r\n<h4>Bước 8: Đặt H&agrave;ng tr&ecirc;n Lazada</h4>\r\n\r\n<p>Kiểm tra lại to&agrave;n bộ 1 lần cuối những th&ocirc;ng tin m&agrave; c&aacute;c bạn đ&atilde; nhập ở c&aacute;c bước trước rồi nhấn n&uacute;t &rdquo;&nbsp;<strong>đặt h&agrave;ng</strong>&ldquo;.</p>\r\n\r\n<div class="wp-caption aligncenter" id="attachment_3946" style="padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; clear: both; height: auto; max-width: 100%; width: 714px; margin: 5px auto !important; text-align: center !important; background: transparent;"><a class="fancybox image" href="http://chanhtuoi.com/wp-content/uploads/2015/04/huong-dan-mua-hang-tren-lazada-8.png" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(27, 75, 125); font-weight: bold; background: transparent;"><img alt="Hướng dẫn mua hàng trên lazada bước 8" class="size-full wp-image-3946" src="http://chanhtuoi.com/wp-content/uploads/2015/04/huong-dan-mua-hang-tren-lazada-8.png" style="background:transparent; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline; width:704px" /></a>\r\n\r\n<p>Hướng dẫn mua h&agrave;ng tr&ecirc;n lazada bước 8</p>\r\n</div>\r\n\r\n<h4>Bước 9: Nhận Th&ocirc;ng B&aacute;o X&aacute;c Nhận Đơn H&agrave;ng</h4>\r\n\r\n<p>Sau khi nhấn n&uacute;t đặt h&agrave;ng th&igrave; Lazada sẽ gửi cho bạn&nbsp;<strong>email + sms x&aacute;c nhận với m&atilde; số của đơn h&agrave;ng</strong>. Bạn đừng x&oacute;a, h&atilde;y giữ m&atilde; số để c&oacute; vấn đề g&igrave; c&ograve;n gọi điện cho Lazada để hỏi t&igrave;nh trạng đơn h&agrave;ng.</p>\r\n\r\n<div class="wp-caption aligncenter" id="attachment_3947" style="padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; clear: both; height: auto; max-width: 100%; width: 714px; margin: 5px auto !important; text-align: center !important; background: transparent;"><a class="fancybox image" href="http://chanhtuoi.com/wp-content/uploads/2015/04/huong-dan-mua-hang-tren-lazada-9.png" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(27, 75, 125); font-weight: bold; background: transparent;"><img alt="Hướng dẫn mua hàng trên lazada bước 9" class="size-full wp-image-3947" src="http://chanhtuoi.com/wp-content/uploads/2015/04/huong-dan-mua-hang-tren-lazada-9.png" style="background:transparent; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline; width:704px" /></a>\r\n\r\n<p>Hướng dẫn mua h&agrave;ng tr&ecirc;n lazada bước 9</p>\r\n</div>\r\n\r\n<p>Đ&oacute; l&agrave; những bước v&agrave; c&aacute;ch rất đơn giản để bạn mua h&agrave;ng tr&ecirc;n Lazada. M&igrave;nh cũng đ&atilde; mua rất nhiều sản phẩm ở đ&acirc;y v&igrave; gi&aacute; của n&oacute; tốt, bảo h&agrave;nh ch&iacute;nh h&atilde;ng n&ecirc;n chẳng c&oacute; vấn đề g&igrave; phải lăn tăn cả. Ngo&agrave;i ra th&iacute;ch nhất l&agrave; hay c&oacute; Coupon giảm gi&aacute; ở Chanh Tươi, mua l&uacute;c n&agrave;o cũng rẻ, như c&aacute;i m&aacute;y khoan Bosh ở BigC b&aacute;n 1,4tr nhưng m&igrave;nh mua c&oacute; 990k. (Xem lại b&agrave;i m&igrave;nh mua ở&nbsp;<a href="http://chanhtuoi.com/990k-bo-dung-cu-100-chi-tiet-may-khoan-bosch-gsb-500-re.html" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(27, 75, 125); font-weight: bold; background: transparent;">đ&acirc;y</a>). Ch&uacute;c bạn c&oacute; thể mua được những sản phẩm ph&ugrave; hợp với gi&aacute; Ngon-Bổ-Rẻ nhất ở tr&ecirc;n Lazada.</p>\r\n</div>\r\n</div>\r\n</div>\r\n', '1432722168-at-mui-15012902525601.jpg', ' Làm sao để mua hàng trên Lazada, bài hướng dẫn sau sẽ giới thiệu cách mua hàng trên Lazada và sẽ chia sẻ bí quyết để bạn mua được đúng sản phẩm đó với giá rẻ hơn. Lazada là trang thương mại điện tử, nó chỉ bán trực tuyến chứ không có cửa hàng. Với việc đ', 1, '2015-05-29 10:04:20', '2015-05-29 03:04:20'),
(5, 'Làn da mát mẻ, mịn màng với mướp đắng', '<p style="text-align:justify"><strong>C&aacute;ch 1:</strong></p>\r\n\r\n<table align="center" class="center image" style="background-color:rgb(250, 250, 250); border-collapse:collapse; border-spacing:0px; color:rgb(34, 34, 34); font-family:arial,helvetica,sans-serif; font-size:14.6666669845581px; line-height:24px; text-align:justify">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="mướp đắng đẹp da " src="http://phunutoday.vn/upload_images/images/2015/05/28/muop-dang-dep-da(1).jpg" style="border:0px; margin-bottom:4px; max-width:490px; width:475px" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align:center"><em>Uống nước &eacute;p mướp đắng đều đặn sẽ đẹp da, cơ thể m&aacute;t mẻ</em></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style="text-align:justify">Mướp đắng rửa sạch, d&ugrave;ng m&aacute;y xay sinh tố xay nhuyễn, lọc hỗn hợp để bỏ x&aacute;c v&agrave; lấy nước mướp đắng để uống. Th&ecirc;m v&agrave;o một lượng nước lọc cho ph&ugrave; hợp với khẩu vị của bạn. Bạn c&oacute; thể th&ecirc;m nước chanh hoặc t&aacute;o &eacute;p v&agrave;o để giảm bớt vị đắng của nước n&agrave;y. Mỗi ng&agrave;y uống nửa ly hoặc 1 ly sẽ l&agrave;&nbsp;<a class="follow red" href="http://phunutoday.vn/tu-khoa-tim-kiem/c%C3%A1ch-l%C3%A0m-%C4%91%E1%BA%B9p.html" style="color: red; text-decoration: none;">c&aacute;ch l&agrave;m đẹp</a>&nbsp;da cho c&aacute;c bạn g&aacute;i rất tốt.</p>\r\n\r\n<p style="text-align:justify"><strong>C&aacute;ch 2:</strong></p>\r\n\r\n<table align="center" class="center image" style="background-color:rgb(250, 250, 250); border-collapse:collapse; border-spacing:0px; color:rgb(34, 34, 34); font-family:arial,helvetica,sans-serif; font-size:14.6666669845581px; line-height:24px; text-align:justify; width:475px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="mướp đắng đẹp da " src="http://phunutoday.vn/upload_images/images/2015/05/28/muop-dang-dep-da-1.jpg" style="border:0px; height:356px; margin-bottom:4px; max-width:490px; width:475px" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align:center"><em>Lấy mướp đắng trong tủ lạnh ra th&aacute;i th&agrave;nh l&aacute;t mỏng, sau đ&oacute; đắp đều l&ecirc;n mặt sẽ l&agrave;m da m&aacute;t mẻ.</em></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style="text-align:justify">Lấy mướp đắng trong tủ lạnh ra th&aacute;i th&agrave;nh l&aacute;t mỏng, sau đ&oacute; đắp đều l&ecirc;n mặt. Sau khi đ&atilde; đắp đều mướp đắng l&ecirc;n mặt, nằm tĩnh khoảng 20 ph&uacute;t v&agrave; thưởng thức những giai điệu ngọt ng&agrave;o của bản nhạc trữ t&igrave;nh, sao cho cơ thể được thả lỏng.</p>\r\n\r\n<p style="text-align:justify">Sau c&ugrave;ng lấy hết những l&aacute;t mướp đắng tr&ecirc;n mặt xuống, rửa mặt bằng nước sạch. sau đ&oacute; b&ocirc;i một lớp kem dưỡng ẩm ban đ&ecirc;m l&ecirc;n mặt l&agrave; được.</p>\r\n', '1432865033-muop-dang-dep-da-1.jpg', '(Làm Đẹp) - Mướp đắng có chứa nhiều vitamin và khoáng chất bổ dưỡng giúp da mát lạnh, mịn màng...', 0, '2015-05-29 04:00:51', '2015-05-28 21:00:51'),
(6, '3 tone màu trang điểm được yêu thích nhất hè này', '<p style="text-align:justify">Mỗi t&ocirc;ng m&agrave;u mang một phong c&aacute;ch ri&ecirc;ng v&agrave; g&oacute;p phần thể hiện t&iacute;nh c&aacute;ch bạn khi lựa chọn. Nếu cam l&agrave; gam m&agrave;u s&ocirc;i nổi, tươi trẻ; hồng nude l&agrave; n&eacute;t dịu d&agrave;ng, ngọt xinh th&igrave; t&ocirc;ng đỏ n&acirc;u sẽ l&agrave; sự sắc sảo, quyến rũ. Tất cả những sắc m&agrave;u n&agrave;y sẽ được thể hiện một c&aacute;ch tinh tế, mới mẻ tr&ecirc;n gương mặt xinh đẹp của bạn.</p>\r\n\r\n<p style="text-align:justify">H&atilde;y t&ugrave;y t&acirc;m trạng của m&igrave;nh v&agrave; chọn lấy một phong c&aacute;ch trang điểm cho ng&agrave;y mới th&ecirc;m tr&agrave;n đầy sức sống.</p>\r\n\r\n<p style="text-align:justify"><strong>Phong c&aacute;ch 1: T&ocirc;ng cam tươi trẻ</strong></p>\r\n\r\n<p><img alt="" src="http://eva-static.24hstatic.com/images/2014/share-fb.gif" style="border:0px; height:20px; width:67px" />&nbsp;<img alt="" src="http://eva-static.24hstatic.com/images/2014/share-gg.gif" style="border:0px; height:20px; width:67px" /><img alt="3 tone màu trang điểm được yêu thích nhất hè này - 1" class="news-image" id="news-image-id-0" src="http://eva-img.24hstatic.com/upload/2-2015/images/2015-05-28/1432791484-3-cach-trang-diem1.jpg" style="border:0px; margin-bottom:5px; max-width:500px !important" /></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:center">Sắc m&agrave;u tươi s&aacute;ng n&agrave;y sẽ l&agrave;m bạn tươi mới v&agrave; rạng rỡ hơn.</p>\r\n\r\n<p><img alt="" src="http://eva-static.24hstatic.com/images/2014/share-fb.gif" style="border:0px; height:20px; width:67px" />&nbsp;<img alt="" src="http://eva-static.24hstatic.com/images/2014/share-gg.gif" style="border:0px; height:20px; width:67px" /><img alt="3 tone màu trang điểm được yêu thích nhất hè này - 2" class="news-image" id="news-image-id-1" src="http://eva-img.24hstatic.com/upload/2-2015/images/2015-05-28/1432791484-3-cach-trang-diem2.jpg" style="border:0px; margin-bottom:5px; max-width:500px !important" /></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:center">Với m&iacute; mắt tr&ecirc;n, đầu ti&ecirc;n bạn sẽ t&ocirc; l&ecirc;n một lớp m&agrave;u trung t&iacute;nh để l&agrave;m nền, sau đ&oacute; phủ l&ecirc;n một lớp phấn m&agrave;u cam nhạt.</p>\r\n\r\n<p><img alt="" src="http://eva-static.24hstatic.com/images/2014/share-fb.gif" style="border:0px; height:20px; width:67px" />&nbsp;<img alt="" src="http://eva-static.24hstatic.com/images/2014/share-gg.gif" style="border:0px; height:20px; width:67px" /><img alt="3 tone màu trang điểm được yêu thích nhất hè này - 3" class="news-image" id="news-image-id-2" src="http://eva-img.24hstatic.com/upload/2-2015/images/2015-05-28/1432791484-3-cach-trang-diem3.jpg" style="border:0px; margin-bottom:5px; max-width:500px !important" /></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:center">D&ugrave;ng phấn m&aacute; c&ugrave;ng t&ocirc;ng cam để c&oacute; sự kết hợp ho&agrave;n hảo. Bạn sẽ đ&aacute;nh ở phần xương g&ograve; m&aacute; k&eacute;o ra ph&iacute;a sau. Để tạo hiệu ứng tốt hơn h&atilde;y đ&aacute;nh theo hướng chữ U bao xung quanh xương g&ograve; m&aacute; một lớp phấn ngọc trai.</p>\r\n\r\n<p><img alt="" src="http://eva-static.24hstatic.com/images/2014/share-fb.gif" style="border:0px; height:20px; width:67px" />&nbsp;<img alt="" src="http://eva-static.24hstatic.com/images/2014/share-gg.gif" style="border:0px; height:20px; width:67px" /><img alt="3 tone màu trang điểm được yêu thích nhất hè này - 4" class="news-image" id="news-image-id-3" src="http://eva-img.24hstatic.com/upload/2-2015/images/2015-05-28/1432791484-3-cach-trang-diem4.jpg" style="border:0px; margin-bottom:5px; max-width:500px !important" /></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:center">Sau khi chọn được m&agrave;u son cam, bạn c&oacute; thể kết th&uacute;c với một lớp son b&oacute;ng để tạo độ căng b&oacute;ng v&agrave; trẻ trung cho đ&ocirc;i m&ocirc;i.</p>\r\n\r\n<p style="text-align:justify"><strong>Phong c&aacute;ch 2: T&ocirc;ng n&acirc;u đỏ quyến rũ</strong></p>\r\n\r\n<p><img alt="" src="http://eva-static.24hstatic.com/images/2014/share-fb.gif" style="border:0px; height:20px; width:67px" />&nbsp;<img alt="" src="http://eva-static.24hstatic.com/images/2014/share-gg.gif" style="border:0px; height:20px; width:67px" /><img alt="3 tone màu trang điểm được yêu thích nhất hè này - 5" class="news-image" id="news-image-id-4" src="http://eva-img.24hstatic.com/upload/2-2015/images/2015-05-28/1432791484-3-cach-trang-diem5.jpg" style="border:0px; margin-bottom:5px; max-width:500px !important" /></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:center">Đ&ocirc;i m&ocirc;i m&agrave;u đỏ quyến rũ l&agrave; điểm nhấn cho phong c&aacute;ch trang điểm n&agrave;y</p>\r\n\r\n<p><img alt="" src="http://eva-static.24hstatic.com/images/2014/share-fb.gif" style="border:0px; height:20px; width:67px" />&nbsp;<img alt="" src="http://eva-static.24hstatic.com/images/2014/share-gg.gif" style="border:0px; height:20px; width:67px" /><img alt="3 tone màu trang điểm được yêu thích nhất hè này - 6" class="news-image" id="news-image-id-5" src="http://eva-img.24hstatic.com/upload/2-2015/images/2015-05-28/1432791484-3-cach-trang-diem6.jpg" style="border:0px; margin-bottom:5px; max-width:500px !important" /></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:center">Phủ một lớp phấn m&agrave;u n&acirc;u nhạt l&ecirc;n to&agrave;n bộ m&iacute; mắt. Ri&ecirc;ng g&oacute;c ngo&agrave;i của mắt, d&ugrave;ng t&ocirc;ng m&agrave;u n&acirc;u đậm để tạo hiệu ứng s&acirc;u v&agrave; sắc cho &aacute;nh nh&igrave;n.</p>\r\n\r\n<p><img alt="" src="http://eva-static.24hstatic.com/images/2014/share-fb.gif" style="border:0px; height:20px; width:67px" />&nbsp;<img alt="" src="http://eva-static.24hstatic.com/images/2014/share-gg.gif" style="border:0px; height:20px; width:67px" /><img alt="3 tone màu trang điểm được yêu thích nhất hè này - 7" class="news-image" id="news-image-id-6" src="http://eva-img.24hstatic.com/upload/2-2015/images/2015-05-28/1432791484-3-cach-trang-diem7.jpg" style="border:0px; margin-bottom:5px; max-width:500px !important" /></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:center">Muốn tạo cảm gi&aacute;c gương mặt thon gọn hơn, h&atilde;y d&ugrave;ng phấn bronzer để đ&aacute;nh x&eacute;o theo đường xương quai h&agrave;m, sau đ&oacute; đ&aacute;nh ngang ở phần xương g&ograve; m&aacute; k&eacute;o ra ph&iacute;a tai.</p>\r\n\r\n<p><img alt="" src="http://eva-static.24hstatic.com/images/2014/share-fb.gif" style="border:0px; height:20px; width:67px" />&nbsp;<img alt="" src="http://eva-static.24hstatic.com/images/2014/share-gg.gif" style="border:0px; height:20px; width:67px" /><img alt="3 tone màu trang điểm được yêu thích nhất hè này - 8" class="news-image" id="news-image-id-7" src="http://eva-img.24hstatic.com/upload/2-2015/images/2015-05-28/1432791484-3-cach-trang-diem8.jpg" style="border:0px; margin-bottom:5px; max-width:500px !important" /></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:center">Đ&ocirc;i m&ocirc;i m&agrave;u đỏ muốn giữ bền m&agrave;u hơn, sau khi đ&aacute;nh bạn sẽ &aacute;p l&ecirc;n đ&oacute; một tờ giấy mỏng v&agrave; d&ugrave;ng cọ vỗ nhẹ để lấy bớt lớp m&agrave;u son vừa t&ocirc;.</p>\r\n\r\n<p style="text-align:justify"><strong>Phong c&aacute;ch 3: T&ocirc;ng nude ngọt ng&agrave;o</strong></p>\r\n\r\n<p><img alt="" src="http://eva-static.24hstatic.com/images/2014/share-fb.gif" style="border:0px; height:20px; width:67px" />&nbsp;<img alt="" src="http://eva-static.24hstatic.com/images/2014/share-gg.gif" style="border:0px; height:20px; width:67px" /><img alt="3 tone màu trang điểm được yêu thích nhất hè này - 9" class="news-image" id="news-image-id-8" src="http://eva-img.24hstatic.com/upload/2-2015/images/2015-05-28/1432791484-3-cach-trang-diem9.jpg" style="border:0px; margin-bottom:5px; max-width:500px !important" /></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:center">Vẻ ngọt ng&agrave;o, xinh xắn l&agrave; hiệu ứng mang lại khi sử dụng t&ocirc;ng m&agrave;u nude để trang điểm.</p>\r\n\r\n<p><img alt="" src="http://eva-static.24hstatic.com/images/2014/share-fb.gif" style="border:0px; height:20px; width:67px" />&nbsp;<img alt="" src="http://eva-static.24hstatic.com/images/2014/share-gg.gif" style="border:0px; height:20px; width:67px" /><img alt="3 tone màu trang điểm được yêu thích nhất hè này - 10" class="news-image" id="news-image-id-9" src="http://eva-img.24hstatic.com/upload/2-2015/images/2015-05-28/1432791484-3-cach-trang-diem10.jpg" style="border:0px; margin-bottom:5px; max-width:500px !important" /></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:center">Sau khi chọn một m&agrave;u nude để b&ocirc;i l&ecirc;n to&agrave;n bộ m&iacute; mắt th&igrave; bạn sẽ đ&aacute;nh tiếp l&ecirc;n đ&oacute; một lớp phấn ngọc trai để tạo hiệu ứng tươi s&aacute;ng cho đ&ocirc;i mắt.</p>\r\n\r\n<p><img alt="" src="http://eva-static.24hstatic.com/images/2014/share-fb.gif" style="border:0px; height:20px; width:67px" />&nbsp;<img alt="" src="http://eva-static.24hstatic.com/images/2014/share-gg.gif" style="border:0px; height:20px; width:67px" /><img alt="3 tone màu trang điểm được yêu thích nhất hè này - 11" class="news-image" id="news-image-id-10" src="http://eva-img.24hstatic.com/upload/2-2015/images/2015-05-28/1432791484-3-cach-trang-diem11.jpg" style="border:0px; margin-bottom:5px; max-width:500px !important" /></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:center">Khi trang điểm m&aacute;, đầu ti&ecirc;n bạn sẽ d&ugrave;ng một lớp m&aacute; hồng dạng kem rồi sau đ&oacute; phủ một lớp phấn highlight l&ecirc;n.</p>\r\n\r\n<p><img alt="" src="http://eva-static.24hstatic.com/images/2014/share-fb.gif" style="border:0px; height:20px; width:67px" />&nbsp;<img alt="" src="http://eva-static.24hstatic.com/images/2014/share-gg.gif" style="border:0px; height:20px; width:67px" /><img alt="3 tone màu trang điểm được yêu thích nhất hè này - 12" class="news-image" id="news-image-id-11" src="http://eva-img.24hstatic.com/upload/2-2015/images/2015-05-28/1432791484-3-cach-trang-diem12.jpg" style="border:0px; margin-bottom:5px; max-width:500px !important" /></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:center">Với đ&ocirc;i m&ocirc;i bạn chọn gam hồng xinh xắn v&agrave; nhớ b&ocirc;i th&ecirc;m một lớp son b&oacute;ng để ho&agrave;n thiện nụ cười ngọt ng&agrave;o n&agrave;y.</p>\r\n', '1432864912-1432791484-3-cach-trang-diem1.jpg', 'Mỗi tông màu mang một phong cách riêng và góp phần thể hiện tính cách bạn khi lựa chọn. Nếu cam là gam màu sôi nổi, tươi trẻ; hồng nude là nét dịu dàng, ngọt xinh thì tông đỏ nâu sẽ là sự sắc sảo, quyến rũ. Tất cả những sắc màu này sẽ được thể hiện một cá', 1, '2015-05-28 19:01:52', '2015-05-28 19:01:52'),
(7, '5 màu tóc bạn có thể tự nhuộm tại nhà không cần ra tiệm', '<p style="text-align:justify"><strong>T&oacute;c hung đỏ</strong></p>\r\n\r\n<table align="center" class="center image" style="background-color:rgb(250, 250, 250); border-collapse:collapse; border-spacing:0px; color:rgb(34, 34, 34); font-family:arial,helvetica,sans-serif; font-size:14.6666669845581px; line-height:24px; text-align:justify">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="nhuộm tóc tại nhà " src="http://phunutoday.vn/upload_images/images/2015/05/27/nhuom-toc-tai-nha.jpg" style="border:0px; margin-bottom:4px; max-width:490px; width:475px" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align:center"><em>Hỗn hợp c&agrave; rốt sẽ gi&uacute;p chị em c&oacute; m&aacute;i t&oacute;c đỏ như mong muốn.</em></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style="text-align:justify">Hỗn hợp c&agrave; rốt, mật ong, sữa chua sẽ l&agrave; m&oacute;n &quot;thuốc&quot; nhuộm rất an to&agrave;n m&agrave; hiệu quả cho t&oacute;c bạn đấy. Chỉ cần ki&ecirc;n tr&igrave;, kết quả sẽ như mong đợi nh&eacute;.</p>\r\n\r\n<p style="text-align:justify">Bạn chỉ cần chuẩn bị: 3 củ c&agrave; rốt, 2 muỗng canh mật ong, 3 muỗng canh sữa chua, 1/2 ch&eacute;n việt quất (c&oacute; thể c&oacute; hoặc kh&ocirc;ng)</p>\r\n\r\n<p style="text-align:justify">Xay nhỏ c&agrave; rốt, sau đ&oacute; th&ecirc;m việt quất nếu c&oacute; v&agrave; sữa chua, mật ong. Gội đầu sạch v&agrave; ủ mặt nạ n&agrave;y l&ecirc;n t&oacute;c trong 20 ph&uacute;t. Sau đ&oacute; gội lại với nước m&aacute;t.</p>\r\n\r\n<p style="text-align:justify"><strong>Nhuộm t&oacute;c đen</strong></p>\r\n\r\n<table align="center" class="center image" style="background-color:rgb(250, 250, 250); border-collapse:collapse; border-spacing:0px; color:rgb(34, 34, 34); font-family:arial,helvetica,sans-serif; font-size:14.6666669845581px; line-height:24px; text-align:justify; width:475px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="nhuộm tóc tại nhà " src="http://phunutoday.vn/upload_images/images/2015/05/27/nhuom-toc-tai-nha-1.jpg" style="border:0px; margin-bottom:4px; max-width:490px; width:475px" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align:center"><em><span style="font-size:12.8000001907349px">Phương ph&aacute;p nhuộm t&oacute;c tự nhi&ecirc;n bằng quả &oacute;c ch&oacute; m&agrave;u đen l&agrave; một trong những c&aacute;ch hiệu quả hơn cả để c&oacute; m&agrave;u t&oacute;c đen</span></em></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style="text-align:justify">Phương ph&aacute;p nhuộm t&oacute;c tự nhi&ecirc;n bằng quả &oacute;c ch&oacute; m&agrave;u đen l&agrave; một trong những c&aacute;ch hiệu quả hơn cả để c&oacute; m&agrave;u t&oacute;c đen như &yacute;. Vỏ của loại quả n&agrave;y được d&ugrave;ng để l&agrave;m đen t&oacute;c, l&agrave;m thuốc nhuộm do m&agrave;u đen của vỏ quả c&oacute; xu hướng b&aacute;m chặt tất cả mọi thứ n&oacute; d&iacute;nh phải.</p>\r\n\r\n<p style="text-align:justify"><strong>M&agrave;u n&acirc;u&nbsp;</strong></p>\r\n\r\n<p style="text-align:justify">Nhuộm t&oacute;c bằng c&agrave; ph&ecirc; nghe c&oacute; vẻ xa lạ, thế nhưng đ&acirc;y ch&iacute;nh l&agrave; một biện ph&aacute;p nhuộm t&oacute;c hữu hiệu vừa tiết kiệm lại an to&agrave;n, được rất nhiều c&ocirc; n&agrave;ng &aacute;p dụng th&agrave;nh c&ocirc;ng. C&agrave; ph&ecirc; vừa gi&uacute;p thay đổi m&agrave;u t&oacute;c đẹp lại vừa l&agrave; một c&aacute;ch dưỡng t&oacute;c b&oacute;ng mượt. H&atilde;y pha c&agrave; ph&ecirc; bằng t&uacute;i hoặc bột c&agrave; ph&ecirc; thật đặc sau đ&oacute; lọc lấy nước. Nh&uacute;ng t&oacute;c trong nước đậm đặc n&agrave;y trong v&agrave;i giờ, bạn sẽ thấy t&oacute;c m&igrave;nh chuyển sang m&agrave;u n&acirc;u sẫm.</p>\r\n\r\n<p style="text-align:justify"><strong>T&oacute;c đỏ&nbsp;</strong></p>\r\n\r\n<p style="text-align:justify">Chuẩn bị 100gr c&agrave; rốt, 100gr củ dền. Củ dền v&agrave; c&agrave; rốt gọt vỏ th&aacute;i miếng rồi cho v&agrave;o m&aacute;y xay nghiền nhuyễn. Lấy ray lọc lấy phần nước của hỗn hợp tr&ecirc;n. Bạn l&agrave;m ướt t&oacute;c rồi thoa đều hỗn hợp n&agrave;y l&ecirc;n, để trong 1 tiếng rồi gội sạch lại bằng nước v&agrave; dầu gội. C&ocirc;ng thức c&oacute; thể sử sụng 1 lần/ tuần. Bạn c&oacute; thể sẽ mất 2-3 tuần để t&oacute;c l&ecirc;n m&agrave;u r&otilde; nhất nh&eacute;.</p>\r\n\r\n<p style="text-align:justify"><strong>T&oacute;c m&agrave;u v&agrave;ng</strong></p>\r\n\r\n<p style="text-align:justify">&Eacute;p nước chanh, trộn với 1 củ khoai t&acirc;y đ&atilde; nghiền n&aacute;t, sau đ&oacute; th&ecirc;m tr&agrave; hoa c&uacute;c, trộn đều th&agrave;nh hỗn hợp sền sệt. Ủ l&ecirc;n t&oacute;c đ&atilde; được l&agrave;m ướt, massage nhẹ nh&agrave;ng trong 5 ph&uacute;t. Sau đ&oacute; tiếp tục d&ugrave;ng khăn ủ v&agrave; sử dụng m&aacute;y sấy để l&agrave;m n&oacute;ng phần t&oacute;c. Cuối c&ugrave;ng xả sạch lại với nước. Hoa c&uacute;c v&agrave; chanh c&oacute; t&aacute;c dụng l&agrave;m s&aacute;ng m&agrave;u t&oacute;c, trong khi khoai taya cũng l&agrave;m m&agrave;u t&oacute;c v&agrave;ng hơn nhờ c&aacute;c enzyme gi&uacute;p ph&aacute; vỡ lớp keratin bọc ngo&agrave;i t&oacute;c.</p>\r\n', '1432865114-nhuom-toc-tai-nha.jpg', ' Màu đỏ, vàng, màu nâu... chị em đều có thể tự nhuộm tại nhà mà không cần đi tiệm.', 0, '2015-05-28 19:05:14', '2015-05-28 19:05:14');
INSERT INTO `articles` (`id`, `name`, `content`, `image`, `summary`, `status`, `created_at`, `updated_at`) VALUES
(8, 'Lá ổi – phép lạ để sở hữu làn da đẹp', '<div>&nbsp;</div>\r\n\r\n<div>\r\n<div class="nd_sumery" style="margin: 0px; padding: 0px; outline: none; border: 0px; font-weight: bold; line-height: 21px; text-align: justify; color: rgb(30, 30, 30); font-family: ''Helvetica Neue'', Arial, ''Liberation Sans'', FreeSans, sans-serif;">Kh&ocirc;ng chỉ quả ổi m&agrave; ngay cả đến l&aacute; của n&oacute; cũng c&oacute; rất nhiều c&ocirc;ng dụng trong việc trị bệnh, l&agrave;m đẹp da.</div>\r\n\r\n<div class="clear" style="margin: 0px; padding: 0px; outline: none; border: 0px; font-size: 12px; clear: both; overflow: hidden; color: rgb(30, 30, 30); font-family: ''Helvetica Neue'', Arial, ''Liberation Sans'', FreeSans, sans-serif; line-height: 18px;">&nbsp;</div>\r\n\r\n<div class="nd_description" style="margin: 0px; padding: 0px; outline: none; border: 0px; font-size: 12px; line-height: 22px; color: rgb(30, 30, 30); font-family: ''Helvetica Neue'', Arial, ''Liberation Sans'', FreeSans, sans-serif;">\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif">Ổi l&agrave; một loại c&acirc;y trồng quen thuộc mang lại cho con người rất nhiều lợi &iacute;ch về dinh dưỡng, điều trị bệnh, l&agrave;m đẹp, giảm c&acirc;n v&agrave; cả kinh tế. Kh&ocirc;ng chỉ quả ổi m&agrave; ngay cả đến l&aacute; của n&oacute; cũng c&oacute; rất nhiều c&ocirc;ng dụng trong việc trị bệnh, l&agrave;m đẹp da. Dưới đ&acirc;y, c&aacute;c bạn c&oacute; thể tham khảo c&aacute;ch trị mụn bằng l&aacute; ổi rất đơn giản m&agrave; hiệu quả lại cao, l&agrave; một trong những c&ocirc;ng dụng tuyệt vời của loại l&aacute; n&agrave;y.</span></p>\r\n\r\n<p style="text-align:center"><img alt="Lá ổi – phép lạ để sở hữu làn da đẹp" src="http://phunukieuviet.com/upload_images/images/lam-dep-bang-la-oi.jpg" style="color:transparent; font-size:0px; height:375px; margin:0px; max-width:660px; outline:none; padding:0px; vertical-align:middle; width:500px" title="Lá ổi – phép lạ để sở hữu làn da đẹp" /></p>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif"><strong>C&ocirc;ng dụng trị mụn, l&agrave;m đẹp da của l&aacute; ổi</strong></span></p>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif">L&aacute; ổi được biết đến với rất nhiều c&ocirc;ng dụng trong việc điều trị bệnh. Trong l&aacute; ổi c&oacute; chứa nhiều th&agrave;nh phần chất như polyphenol, carotenoid, flavonoid v&agrave; tannin c&oacute; t&aacute;c dụng cải thiện sức khỏe, gi&uacute;p giảm c&acirc;n, giảm cholesterols, hỗ trợ điều trị tiểu đường, bệnh ti&ecirc;u h&oacute;a &hellip; hiệu quả. Trong d&acirc;n gian cũng đ&atilde; sử dụng l&aacute; ổi để trị c&aacute;c chứng bệnh như ti&ecirc;u chảy, s&aacute;t khuẩn, chữa l&agrave;nh vết thương.&nbsp;</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif">Kh&ocirc;ng những thế, l&aacute; ổi c&ograve;n c&oacute; t&aacute;c dụng l&agrave;m đẹp rất tốt. Cụ thể l&agrave; trong l&aacute; ổi c&ograve;n chứa nhiều th&agrave;nh phần chất chống vi&ecirc;m, kh&aacute;ng khuẩn, khử tr&ugrave;ng v&agrave; chất chống oxy h&oacute;a. Nhờ đ&oacute;, d&ugrave;ng l&aacute; ổi sẽ l&agrave; c&aacute;ch đơn giản gi&uacute;p ti&ecirc;u diệt c&aacute;c nguy&ecirc;n nh&acirc;n g&acirc;y ra mụn trứng c&aacute;, mụn đầu đen gi&uacute;p ph&ograve;ng ngừa v&agrave; cải thiện t&igrave;nh trạng mụn hiệu quả. Th&ecirc;m v&agrave;o đ&oacute;, c&aacute;c th&agrave;nh phần kh&aacute;c gi&uacute;p l&agrave;m mờ c&aacute;c vết th&acirc;m v&agrave; l&agrave;m da mịn một c&aacute;ch hiệu quả. Để&nbsp;<a href="http://phunukieuviet.com/tri-mun.html" style="color: rgb(204, 0, 102); margin: 0px; padding: 0px; outline: none; border: none; text-decoration: none;" target="_blank">trị mụn hiệu quả&nbsp;</a>v&agrave; chăm s&oacute;c da bằng l&aacute; ổi, c&aacute;c bạn thực hiện theo c&aacute;c c&ocirc;ng thức sau: abc</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif"><strong>C&aacute;ch d&ugrave;ng l&aacute; ổi trị mụn</strong></span></p>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif">Rất đơn giản, c&aacute;c bạn chỉ cần lấy l&aacute; ổi, rửa sạch, gi&atilde; hoặc xay nhuyễn rồi d&ugrave;ng đắp l&ecirc;n c&aacute;c nốt mụn sau khi đ&atilde; được vệ sinh sạch sẽ. Bạn để l&aacute; ổi lưu lại tr&ecirc;n da khoảng 10 ph&uacute;t rồi rửa lại với nước sạch. C&oacute; thể sử dụng theo c&aacute;ch n&agrave;y h&agrave;ng ng&agrave;y để&nbsp;<a href="http://dangkieu.com/lam-dep-da-p45" style="color: rgb(204, 0, 102); margin: 0px; padding: 0px; outline: none; border: none; text-decoration: none;" target="_blank">trị mụn&nbsp;</a>sẽ nhanh ch&oacute;ng đạt được hiệu quả.</span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:arial,helvetica,sans-serif"><img alt="Lá ổi – phép lạ để sở hữu làn da đẹp" src="http://phunukieuviet.com/upload_images/images/4-61.jpg" style="color:transparent; font-size:0px; height:375px; margin:0px; max-width:660px; outline:none; padding:0px; vertical-align:middle; width:500px" title="Lá ổi – phép lạ để sở hữu làn da đẹp" /></span></p>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif">B&ecirc;n cạnh đ&oacute;, nếu mắc phải mụn đầu đen, bạn d&ugrave;ng l&aacute; ổi gi&atilde; nhuyễn rồi pha ch&uacute;t nước ấm, d&ugrave;ng dung dịch n&agrave;y rửa mặt h&agrave;ng ng&agrave;y, ch&agrave; x&aacute;t nhẹ v&agrave;o những nơi c&oacute; mụn sẽ gi&uacute;p loại bỏ mụn nhanh ch&oacute;ng.</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif"><strong>D&ugrave;ng l&aacute; ổi l&agrave;m se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng</strong></span></p>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif">Đơn giản nhất l&agrave; c&aacute;c bạn c&oacute; thể d&ugrave;ng nước sắc từ l&aacute; ổi để rửa mặt sẽ gi&uacute;p l&agrave;m se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng, ngăn ngừa mụn v&agrave; l&agrave;m da mịn m&agrave;ng. B&ecirc;n cạnh đ&oacute;, n&oacute; c&ograve;n l&agrave;m giảm ngứa tr&ecirc;n da, c&aacute;c vết ngứa do dị ứng nhờ v&agrave;o c&aacute;c hợp chất chống dị ứng.</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif">C&ograve;n nếu muốn c&oacute; được l&agrave;n da đẹp mịn m&agrave;ng v&agrave; chăm chỉ hơn, c&aacute;c bạn cũng c&oacute; thể tận dụng l&aacute; ổi để l&agrave;m đẹp bằng c&aacute;ch chọn lấy những l&aacute; ổi non, rửa sạch, xay nhuyễn rồi trộn c&ugrave;ng với l&ograve;ng trắng trứng g&agrave; v&agrave; đường n&acirc;u để tạo th&agrave;nh hỗn hợp. D&ugrave;ng hỗn hợp n&agrave;y đắp l&ecirc;n da mặt, để trong 5 ph&uacute;t v&agrave; rửa mặt với nước ấm. L&agrave;m mỗi tuần 2 &ndash; 3 lần, trong v&ograve;ng 1 th&aacute;ng, da mặt sẽ được cải thiện r&otilde; rệt v&agrave; trở n&ecirc;n s&aacute;ng mịn.</span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:arial,helvetica,sans-serif"><img alt="Lá ổi – phép lạ để sở hữu làn da đẹp" src="http://phunukieuviet.com/upload_images/images/la-oi-phep-la-tri-mun-giam-can-va-rung-toc.jpg" style="color:transparent; font-size:0px; height:331px; margin:0px; max-width:660px; outline:none; padding:0px; vertical-align:middle; width:500px" title="Lá ổi – phép lạ để sở hữu làn da đẹp" /></span></p>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif">Như vậy, chỉ với một nguy&ecirc;n liệu v&ocirc; c&ugrave;ng đơn giản, dễ kiếm l&agrave; đ&atilde; c&oacute; thể gi&uacute;p bạn c&oacute; được c&aacute;c c&ocirc;ng thức trị mụn v&agrave; l&agrave;m đẹp da hiệu quả. Chỉ cần nằm nh&agrave; v&agrave; ki&ecirc;n tr&igrave; thực hiện c&aacute;c c&aacute;ch n&ecirc;u tr&ecirc;n để l&agrave;m đẹp thật đơn giản phải kh&ocirc;ng!</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif">Với th&agrave;nh phần chứa chất khử tr&ugrave;ng, l&aacute; ổi c&oacute; khả năng diệt khuẩn g&acirc;y mụn trứng c&aacute; v&agrave; mụn đầu đen. Th&ecirc;m v&agrave;o đ&oacute;, c&aacute;c th&agrave;nh phần kh&aacute;c gi&uacute;p l&agrave;m mờ c&aacute;c vết th&acirc;m v&agrave; l&agrave;m da mịn một c&aacute;ch hiệu quả.</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif">Để trị mụn trứng c&aacute; v&agrave; vết th&acirc;m, c&aacute;ch l&agrave;m rất đơn giản: chỉ cần rửa mặt sạch, đắp l&aacute; ổi nghiền nhuyễn v&agrave;o c&aacute;c nốt mụn hay vết th&acirc;m, sau 10 ph&uacute;t rửa sạch bằng nước, thực hiện h&agrave;ng ng&agrave;y cho đến khi mụn bay biến. Ri&ecirc;ng với mụn đầu đen, gi&atilde; nhuyễn l&aacute; ổi v&agrave; pha ch&uacute;t nước ấm, d&ugrave;ng dung dịch n&agrave;y rửa mặt h&agrave;ng ng&agrave;y, ch&agrave; x&aacute;t nhẹ v&agrave;o những nơi c&oacute; mụn sẽ gi&uacute;p loại bỏ mụn nhanh ch&oacute;ng.</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif">Một c&ocirc;ng dụng hữu &iacute;ch kh&aacute;c của l&aacute; ổi l&agrave; cải thiện l&agrave;n da nhờ c&aacute;c chất chống oxy h&oacute;a của l&aacute; ổi. Những chất n&agrave;y ti&ecirc;u diệt c&aacute;c gốc tự do g&acirc;y tổn hại l&agrave;n da, bảo vệ da khỏi l&atilde;o h&oacute;a cũng như cải thiện m&agrave;u da v&agrave; kết cấu.</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif">Nước sắc từ l&aacute; ổi gi&agrave; c&ograve;n l&agrave;m se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng, ngăn ngừa mụn v&agrave; l&agrave;m da mịn m&agrave;ng. Ngo&agrave;i ra, l&aacute; ổi c&ograve;n l&agrave;m giảm ngứa tr&ecirc;n da, c&aacute;c vết ngứa do dị ứng nhờ v&agrave;o c&aacute;c hợp chất chống dị ứng.</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif"><strong><em>C&aacute;ch l&agrave;m</em></strong>: Chọn những ngọn l&aacute; ổi non rửa sạch v&agrave; nghiền nhỏ. Trộn l&ograve;ng trắng trứng g&agrave; c&ugrave;ng một muỗng nhỏ đường n&acirc;u khuấy cho tan đều. Sau đ&oacute; trộn hai hỗn hợp tr&ecirc;n rồi thoa khắp mặt v&agrave; v&ugrave;ng cổ, để trong 5 ph&uacute;t v&agrave; rửa mặt với nước ấm. L&agrave;m mỗi tuần 2 &ndash; 3 lần, trong v&ograve;ng 1 th&aacute;ng, da mặt sẽ được cải thiện r&otilde; rệt v&agrave; trở n&ecirc;n s&aacute;ng mịn.</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif"><strong>L&aacute; ổi</strong>&nbsp;với vị đắng, t&iacute;nh ấm được Đ&ocirc;ng y đưa v&agrave;o danh s&aacute;ch l&agrave;&nbsp;1 trong những loại thảo dược c&oacute; thể điều trị nhiều loại bệnh kh&aacute;c nhau như: giải độc, ti&ecirc;u chảy, cầm m&aacute;u&hellip; B&ecirc;n cạnh đ&oacute;, l&aacute; ổi c&ograve;n l&agrave;&nbsp;1 trong những nguy&ecirc;n liệu thi&ecirc;n nhi&ecirc;n gi&uacute;p chị em chăm ch&uacute;t nhan sắc.</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif">Nhờ v&agrave;o những th&agrave;nh phần tinh dầu, polyphenol, carotenoids,&nbsp;c&aacute;c chất oxy h&oacute;a, chất kh&aacute;ng khuẩn, chống vi&ecirc;m&hellip; l&aacute; ổi c&ograve;n l&agrave;&nbsp;1 trong những c&aacute;ch ngăn ngừa mụn trứng c&aacute; xuất hiện v&agrave;&nbsp;trị mụn v&agrave; vết th&acirc;m&nbsp;hiệu quả.</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif"><strong>C&aacute;ch&nbsp;trị mụn&nbsp;trứng c&aacute; bằng l&aacute; ổi non</strong></span></p>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif"><strong>- Chuẩn bị</strong>: L&aacute; ổi non, 1 quả trứng g&agrave;, đường n&acirc;u, 1 c&aacute;i b&aacute;t sạch.</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif"><strong>- C&aacute;ch thực hiện</strong></span></p>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif">+&nbsp;H&atilde;y chọn cho m&igrave;nh những ngọn l&aacute; ổi non v&agrave; nghiền nhỏ trong một chiếc b&aacute;t kh&ocirc;, sau đ&oacute; cất gọn trong ngăn tủ đ&aacute; của tủ lạnh.</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif">+&nbsp;Đập vỡ trứng v&agrave; lọc bỏ l&ograve;ng đỏ, chỉ để lại l&ograve;ng trắng trứng g&agrave;.</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif">+&nbsp;Bổ sung 1 th&igrave;a c&agrave; ph&ecirc; đường n&acirc;u v&agrave;o trong b&aacute;t. D&ugrave;ng th&igrave;a quấy đều sao cho đường v&agrave; trứng trộn&nbsp;đều với nhau.</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif">+&nbsp;Lấy l&aacute; ổi đ&atilde; được nghiền n&aacute;t v&agrave; l&agrave;m lạnh v&agrave;o b&aacute;t. D&ugrave;ng th&igrave;a khuấy đều tạo th&agrave;nh hợp chất lạnh từ l&aacute; ổi. D&ugrave;ng&nbsp;hỗn hợp&nbsp;vừa tạo th&agrave;nh từ l&aacute; ổi thoa l&ecirc;n mặt để trong 5 ph&uacute;t rồi rửa sạch với nước ấm.</span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:arial,helvetica,sans-serif"><img alt="Lá ổi – phép lạ để sở hữu làn da đẹp" src="http://phunukieuviet.com/upload_images/images/shutterstock-101857852.jpg" style="color:transparent; font-size:0px; height:375px; margin:0px; max-width:660px; outline:none; padding:0px; vertical-align:middle; width:500px" title="Lá ổi – phép lạ để sở hữu làn da đẹp" /></span></p>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif">D&ugrave;ng l&aacute; ổi&nbsp;mỗi tuần 2&nbsp;đến 3 lần. Trong v&ograve;ng 1 th&aacute;ng, da mặt của bạn sẽ được cải thiện r&otilde; rệt, c&aacute;c vết th&acirc;m, n&aacute;m mờ dần. Nhờ&nbsp;c&ocirc;ng dụng l&agrave;m sạch lỗ ch&acirc;n l&ocirc;ng, l&aacute; ổi cũng gi&uacute;p bạn trị mụn hiệu quả, trả lại l&agrave;n da mịn m&agrave;ng hơn.</span></p>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif">Ngo&agrave;i c&aacute;ch trị mụn hiệu quả&nbsp;bằng l&aacute; ổi non&nbsp;tr&ecirc;n, bạn c&oacute; thể tham khảo c&aacute;ch trị mụn mau ch&oacute;ng kh&ocirc;ng mất nhiều thời gian với&nbsp;<a href="http://dangkieu.com/young-care-lan-da-khong-ty-vet-pd244" style="color: rgb(204, 0, 102); margin: 0px; padding: 0px; outline: none; border: none; text-decoration: none;" target="_blank"><strong>YoungCare</strong></a>&nbsp;được chiết xuất từ tinh chất thi&ecirc;n nhi&ecirc;n chống l&atilde;o h&oacute;a cực mạnh gi&uacute;p thiết lập lại v&agrave; l&agrave;m hồi sinh c&aacute;c tế b&agrave;o da, đồng thời th&uacute;c đẩy 2 enzym quan trọng trong da, gi&uacute;p loại bỏ c&aacute;c độc tố trong tế b&agrave;o để da hoạt động trở lại như l&agrave;n da trẻ.</span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:arial,helvetica,sans-serif"><img alt="Lá ổi – phép lạ để sở hữu làn da đẹp" src="http://phunukieuviet.com/upload_images/images/IMG_9426%201.jpg" style="color:transparent; font-size:0px; height:366px; margin:0px; max-width:660px; outline:none; padding:0px; vertical-align:middle; width:500px" title="Lá ổi – phép lạ để sở hữu làn da đẹp" /></span></p>\r\n\r\n<p style="text-align:justify"><span style="font-family:arial,helvetica,sans-serif"><strong>YoungCare</strong>&nbsp;gi&uacute;p tăng cường bổ sung collagen để k&iacute;ch th&iacute;ch lượng collagen trong cơ thể, qu&aacute; tr&igrave;nh n&agrave;y tuyến y&ecirc;n sẽ giải ph&oacute;ng hormone v&agrave;o m&aacute;u v&agrave; tiến h&agrave;nh trẻ h&oacute;a, t&aacute;i tạo v&agrave; thay thế. Đ&acirc;y l&agrave; l&uacute;c m&agrave; collagen hoạt động c&ugrave;ng l&uacute;c với vai tr&ograve; quan trọng trong sự tổng hợp protein. Sự c&oacute; mặt c&ugrave;ng l&uacute;c của c&aacute;c hormone th&iacute;ch hợp v&agrave; collagen sẽ gi&uacute;p cơ thể c&oacute; thể tổng hợp được c&aacute;c loại protein cần thiết cho sự sinh tồn, v&agrave; t&aacute;i tạo của l&agrave;n da, củng cố độ rắn chắc của d&acirc;y chằng, sụn v&agrave; xương, đồng thời củng cố hệ thống đề kh&aacute;ng của cơ thể.</span></p>\r\n</div>\r\n</div>\r\n', '1432893136-lam-dep-bang-la-oi (1).jpg', 'Ổi là một loại cây trồng quen thuộc mang lại cho con người rất nhiều lợi ích về dinh dưỡng, điều trị bệnh, làm đẹp, giảm cân và cả kinh tế. Không chỉ quả ổi mà ngay cả đến lá của nó cũng có rất nhiều công dụng trong việc trị bệnh, làm đẹp da. Dưới đây, cá', 1, '2015-05-29 02:52:16', '2015-05-29 02:52:16'),
(9, 'Xả hàng đón tết - Sale off 30% tất cả các sản phẩm', '<div class="short-art" style="box-sizing: border-box; font-family: Arial, sans-serif; font-size: 14px; line-height: 20px;">\r\n<p>Mừng năm mới Ất M&ugrave;i đang đến rất gần , Gấm Lụa shop xả h&agrave;ng đ&oacute;n xu&acirc;n với ưu đ&atilde;i cực lớn - giảm gi&aacute; 30% cho tất cả c&aacute;c sản phẩm&nbsp;</p>\r\n</div>\r\n\r\n<div class="content-news" style="box-sizing: border-box; font-family: Arial, sans-serif; font-size: 14px; line-height: 20px;">\r\n<p>Tết đến xu&acirc;n sang. ngập tr&agrave;n hương sắc . Cơ hội lớn để c&aacute;c chị em thỏa th&iacute;ch l&agrave;m đẹp v&agrave; chưng diện trong ng&agrave;y tết với những chiếc khăn lụa rực rỡ sắc m&agrave;u.Valentine tới đ&acirc;y, một nửa của bạn cũng sẽ cảm thấy ấm &aacute;p hơn khi nhận được m&oacute;n qu&agrave; &yacute; nghĩa l&agrave; những chiếc khăn cho&agrave;ng</p>\r\n\r\n<p><img alt="" src="http://gamlua.web5s.vn/sites/182/uploads/banner-tet-gamlua-15012802540101.gif" style="border:0px; box-sizing:border-box; height:auto; max-width:100%; vertical-align:middle; width:475px" /></p>\r\n\r\n<p>H&atilde;y d&agrave;ng tặng m&oacute;n qu&agrave; &yacute; nghĩa nhất cho cha mẹ, bạn b&egrave; v&agrave; những người th&acirc;n y&ecirc;u c&ugrave;a bạn c&ugrave;ng Gấm Lụa Shop.</p>\r\n\r\n<p>Nhanh tay đặt h&agrave;ng với gi&aacute; ưu đ&atilde;i tới 30% .Miễn ph&iacute; vận chuyển cho đơn h&agrave;ng online trong phạm vi 5km</p>\r\n\r\n<p>Đ&atilde; rẻ nay c&ograve;n rẻ hơn .</p>\r\n\r\n<p>&Aacute;p dụng từ 30/01/2015 - 14/02/2015 cho 200 đơn h&agrave;ng đầu ti&ecirc;n ( Chương tr&igrave;nh c&oacute; thể kết th&uacute;c trước thời hạn nếu hết h&agrave;ng )&nbsp;</p>\r\n\r\n<p>C&ograve;n chần chừ g&igrave; nữa m&agrave; kh&ocirc;ng đặt h&agrave;ng ngay h&ocirc;m nay ?</p>\r\n</div>\r\n', '1432893193-at-mui-15012902525601.jpg', 'Mừng năm mới Ất Mùi đang đến rất gần , Gấm Lụa shop xả hàng đón xuân với ưu đãi cực lớn - giảm giá 30% cho tất cả các sản phẩm ', 1, '2015-05-29 02:53:13', '2015-05-29 02:53:13');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE IF NOT EXISTS `brands` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`) VALUES
(8, 'Cucci', '2015-06-10 03:18:54', '2015-06-09 20:18:54'),
(9, 'L&V', '2015-05-26 08:23:26', '0000-00-00 00:00:00'),
(10, 'SKINCAKE', '2015-06-09 20:12:25', '2015-06-09 20:12:25');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Tắm Trắng', 0, '2015-05-17 23:37:07', '2015-06-08 03:06:22'),
(2, 'Kem Chống Nắng', 0, '2015-05-17 23:37:42', '2015-06-08 03:06:41'),
(4, 'Kem Dưỡng Da', 0, '2015-05-17 23:40:16', '2015-06-08 03:06:53'),
(5, 'Dạng Bột', 1, '2015-05-17 23:41:13', '2015-06-08 03:07:52'),
(6, 'Dạng Nước', 1, '2015-05-17 23:41:33', '2015-06-08 03:08:07'),
(7, 'Kem Dưỡng  Face', 4, '2015-05-17 23:41:58', '2015-06-08 03:08:58'),
(8, 'Kem Dưỡng Body', 4, '2015-05-17 23:42:17', '2015-06-08 03:09:36'),
(9, 'Chống Nắng Body', 2, '2015-05-17 23:42:39', '2015-06-08 03:10:06'),
(10, 'Chống Nắng Face', 2, '2015-05-17 23:42:58', '2015-06-08 03:10:26');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `summary` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `guide` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`, `summary`, `content`, `image`, `guide`, `status`, `created_at`, `updated_at`) VALUES
(1, 'abc', '', 'qưeqwqw', 'asd.jpn', 'ádasdad', 0, '2015-05-29 09:25:31', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 'qq', 'qq@ww', 'qqq', 'qqq', 1, '2015-06-08 09:09:19', '2015-06-08 02:09:19'),
(3, 'adf', 'asdf', 'asdf', 'saddf', 1, '2015-06-08 09:09:02', '2015-06-08 02:09:02'),
(4, 'nguyen van a', 'acb@gmail.com', 'xin chao', 'toi xin chao ban', 1, '2015-06-08 09:17:45', '2015-06-08 02:17:45'),
(5, 'nguyen van a', 'acb@gmail.com', 'xin chao', 'toi xin chao ban xxxxx', 1, '2015-06-08 09:11:16', '2015-06-08 02:11:16'),
(6, 'nguyen van a', 'acb@gmail.com', 'xin chao', 'toi xin chao ban xxxxxyyyyy', 0, '2015-06-08 02:16:43', '2015-06-08 02:16:43'),
(7, 'nguyen van a', 'acb@gmail.com', 'xin chao', 'toi xin chao ban xxxxxyyyyy', 1, '2015-06-10 02:25:00', '2015-06-09 19:25:00'),
(8, 'nguyen van a', 'acb@gmail.com', 'xin chao', 'toi xin chao ban xxxxxyyyyy', 1, '2015-06-08 09:17:40', '2015-06-08 02:17:40'),
(9, 'aa', 'aaa44@gmail.com', 'aa', 'aa', 1, '2015-06-10 02:24:55', '2015-06-09 19:24:55'),
(10, 'van a', 'aaa44@gmail.com', 'eee', 'eeee', 1, '2015-06-26 02:17:55', '2015-06-25 19:17:55');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`, `password`, `remember_token`, `role`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin', 'ass', '$2y$10$ZW9gi014wxw0IFhkNsX5IOAZHa11YyKTpqgezzzF2wvcoSSVCk5Km', 'LzLAdpUngTGVT6ofAtDbVCYqMokjEHlbj9el0L7hmKrqvCMgQ7GBgkuKiJPk', 1, '2015-05-22 02:30:42', '2015-06-09 19:40:34'),
(2, 'abc', 'zomecet_2000@yahoo.com', '123456', '1212', '$2y$10$i9ckuzYz353ToQEHveQm2Og8Ar4ltbmYDx2Slt/T1qvlCsJUzd3JW', '1nRNuVQEkOncWYjx4Ffqn0nppNOHgCTD5OuZe2Y8CUxktndyPACSftDkff8q', 0, '2015-05-22 02:39:28', '2015-06-25 19:14:58'),
(3, 'abc', '123@gmail.com', '123456', '1212', '$2y$10$5T.0iRvHOna0yiG06YifS.dcSr3YAj.I5aXnnlYTU3FPebIQG4.cS', NULL, 0, '2015-05-22 02:41:36', '2015-05-22 02:41:36'),
(4, 'abc', '111@gmail.com', '123456', '1212', '$2y$10$VpjV7ZOLsrbK/JUqgVmXmOahK9RTe.SHAptu3clj5ElY7jHT2avrS', NULL, 0, '2015-05-22 02:45:51', '2015-05-22 02:45:51'),
(5, 'hoangvu', 'asd@gmail.com', '123456', 'ss', '$2y$10$QzTxB2luJCMKJ1c0b/sI3ewDybss/uMZOYM5sLrbf890RH9dH5qcG', NULL, 0, '2015-05-22 03:16:36', '2015-05-22 03:16:36'),
(6, 'hoangvu', 'aaa@gmail.com', '123456', 'ss', '$2y$10$qqiWqwitpVKHcIeU7BqB1.GAa88JhR/OIO9WwScuztmY69VbqQoKm', NULL, 0, '2015-05-22 03:19:46', '2015-05-22 03:19:46'),
(7, 'hoangvu', 'bbb@gmail.com', '123456', 'ss', '$2y$10$uFbGSuPNRgeHSBj.ipP63.su6cKOQqi//qIW9vCUlJIsZA5FYen1O', NULL, 0, '2015-05-22 03:22:11', '2015-05-22 03:22:11'),
(8, 'eee', 'eee@gmail.com', '123456', 'ss', '$2y$10$pBHmUhMAlPgBco9lEOr7Zuoxd9N3i3/5V0EprBIRb0A6koTS5domu', NULL, 0, '2015-05-22 03:24:14', '2015-05-22 03:24:14'),
(9, 'aaaaaa', 'aaaaa@gmail.com', '123456', 'asd', '$2y$10$fYPTZUC8zjHI0xsQ33qY4uK5k.ZCdvOsKXkn.JGa/2qrZjcFtvisS', 'enTZ2dLWCCGuoDZBBMuzuu8zR3TOo9xG9tSCV68t9qAyc7SuvzbtLjUz4IJJ', 0, '2015-05-25 03:38:34', '2015-05-25 03:39:10'),
(10, 'aaaaa', 'aaa44@gmail.com', '3333333333', '333332323', '$2y$10$d5MgLAEQcl.m3/g2pEaujOIPerKRZYr7Qr.9Ud5WSPbMJcd.QczpC', 'CKVY87bpM0Rd6f5FBMcbFdSWOEKBIAk4lhEXctXa8Vsr0m6EgHg4nA9Gw3Ii', 0, '2015-06-08 00:48:36', '2015-06-08 01:21:01'),
(11, 'hvvvvvv', 'hoangvu111@gmail.com', '123456', 'qwe', '$2y$10$UHXJTW0JQKJdN1hWoanSTeOho9OmsAMBR9lGPosNz4D1muCtUIYnG', 'JvK0ZvOfrQrjeoysDnVssIvEiK0ai0RnZ1G8WlD2psgNNltlPjaA6LQUAFtj', 0, '2015-06-09 19:19:35', '2015-06-09 19:21:33');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_05_07_101814_create_ships_table', 1),
('2015_05_07_101835_create_pays_table', 1),
('2015_05_07_101920_create_categories_table', 1),
('2015_05_07_101936_create_products_table', 1),
('2015_05_07_101953_create_customers_table', 1),
('2015_05_07_102013_create_transactions_table', 1),
('2015_05_07_102026_create_orders_table', 1),
('2015_05_11_085526_create_demos_table', 1),
('2015_05_20_030929_create_session_table', 2),
('2015_05_22_075927_create_customer', 3);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE IF NOT EXISTS `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `director` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `release_year` year(4) NOT NULL,
  `renger` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `director`, `release_year`, `renger`, `created_at`, `updated_at`) VALUES
(1, 'movie1', 'jackson', 2015, 'action', '2015-06-05 03:24:57', '0000-00-00 00:00:00'),
(2, 'movie2', 'micheal', 2011, 'kd', '2015-06-05 03:24:57', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(10) unsigned NOT NULL,
  `transaction_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `qty` int(11) NOT NULL DEFAULT '0',
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status_order` int(11) NOT NULL DEFAULT '0',
  `price_order` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `discount_order` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `transaction_id`, `product_id`, `qty`, `note`, `status_order`, `price_order`, `discount_order`, `created_at`, `updated_at`) VALUES
(22, 16, 14, 2, '', 1, '500000.0000', 20, '2015-05-28 21:18:46', '2015-05-28 21:58:18'),
(23, 16, 7, 3, '', 1, '30000.0000', 55, '2015-05-28 21:18:46', '2015-05-28 21:55:52'),
(24, 17, 7, 2, '', 0, '30000.0000', 55, '2015-06-08 00:41:11', '2015-06-08 00:41:11'),
(25, 18, 7, 4, '', 0, '30000.0000', 55, '2015-06-08 00:41:45', '2015-06-08 00:41:45'),
(26, 19, 14, 1, '', 0, '500000.0000', 20, '2015-06-08 00:45:31', '2015-06-08 00:45:31'),
(27, 19, 7, 3, '', 0, '30000.0000', 55, '2015-06-08 00:45:31', '2015-06-08 00:45:31'),
(28, 20, 14, 1, '', 1, '500000.0000', 20, '2015-06-08 03:26:49', '2015-06-25 19:16:08'),
(29, 20, 7, 2, '', 0, '30000.0000', 55, '2015-06-08 03:26:49', '2015-06-08 03:26:49'),
(30, 21, 14, 2, '', 0, '500000.0000', 20, '2015-06-09 19:20:33', '2015-06-09 19:20:33'),
(31, 21, 7, 4, '', 0, '30000.0000', 55, '2015-06-09 19:20:33', '2015-06-09 19:20:33'),
(32, 22, 14, 2, '', 0, '500000.0000', 20, '2015-06-09 19:41:22', '2015-06-09 19:41:22'),
(33, 22, 7, 1, '', 0, '30000.0000', 55, '2015-06-09 19:41:22', '2015-06-09 19:41:22'),
(34, 23, 7, 1, '', 0, '30000.0000', 55, '2015-06-20 05:18:17', '2015-06-20 05:18:17'),
(35, 23, 18, 1, '', 0, '189000.0000', 55, '2015-06-20 05:18:17', '2015-06-20 05:18:17'),
(36, 23, 17, 1, '', 0, '40000.0000', 20, '2015-06-20 05:18:17', '2015-06-20 05:18:17'),
(37, 24, 7, 6, '', 0, '30000.0000', 55, '2015-06-25 04:53:24', '2015-06-25 04:53:24'),
(38, 25, 18, 5, '', 0, '189000.0000', 55, '2015-06-25 19:14:43', '2015-06-25 19:14:43'),
(39, 25, 19, 1, '', 0, '340000.0000', 33, '2015-06-25 19:14:43', '2015-06-25 19:14:43'),
(40, 26, 7, 1, '', 0, '30000.0000', 55, '2015-07-06 19:46:36', '2015-07-06 19:46:36');

-- --------------------------------------------------------

--
-- Table structure for table `origins`
--

CREATE TABLE IF NOT EXISTS `origins` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `origins`
--

INSERT INTO `origins` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Thái Lan', '2015-05-26 08:23:55', '0000-00-00 00:00:00'),
(2, 'Mỹ', '2015-05-26 08:23:55', '0000-00-00 00:00:00'),
(4, 'Nhật', '2015-06-10 03:26:49', '2015-06-09 20:26:49');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('hoangvu53@gmail.com', 'af57c0f01bdb522fe769102e246e6358ba9f532dbd8e9f645a10357ffce71bc6', '2015-05-24 19:49:37'),
('zomecet_2000@yahoo.com', '9f55dc7c49a60173f828529fdfd001e2492545ca2957a44ca04db457be642214', '2015-05-26 00:19:39'),
('hoangvu53th@gmail.com', 'f70220ca184a16089100e51d71b573e496d999ecd5539b971bcaea925a516b87', '2015-05-26 00:37:33');

-- --------------------------------------------------------

--
-- Table structure for table `pays`
--

CREATE TABLE IF NOT EXISTS `pays` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pays`
--

INSERT INTO `pays` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Thanh Toán Khi Nhận Hàng', '2015-05-17 23:36:20', '2015-05-17 23:36:20'),
(2, 'Chuyển Khoản Ngân Hàng', '2015-05-17 23:36:37', '2015-05-17 23:36:37');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `brand_id` int(10) unsigned NOT NULL,
  `origin_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `qty_inventory` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `discount` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status_product` int(11) NOT NULL DEFAULT '0',
  `view` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `brand_id`, `origin_id`, `category_id`, `price`, `qty_inventory`, `content`, `discount`, `image`, `status_product`, `view`, `created_at`, `updated_at`) VALUES
(7, 'kem body cot', 9, 1, 7, '30000.0000', 50, '<h2>L&aacute; ổi &ndash; ph&eacute;p lạ để sở hữu l&agrave;n da đẹp</h2>\r\n\r\n<p>Kh&ocirc;ng chỉ quả ổi m&agrave; ngay cả đến l&aacute; của n&oacute; cũng c&oacute; rất nhiều c&ocirc;ng dụng trong việc trị bệnh, l&agrave;m đẹp da.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ổi l&agrave; một loại c&acirc;y trồng quen thuộc mang lại cho con người rất nhiều lợi &iacute;ch về dinh dưỡng, điều trị bệnh, l&agrave;m đẹp, giảm c&acirc;n v&agrave; cả kinh tế. Kh&ocirc;ng chỉ quả ổi m&agrave; ngay cả đến l&aacute; của n&oacute; cũng c&oacute; rất nhiều c&ocirc;ng dụng trong việc trị bệnh, l&agrave;m đẹp da. Dưới đ&acirc;y, c&aacute;c bạn c&oacute; thể tham khảo c&aacute;ch trị mụn bằng l&aacute; ổi rất đơn giản m&agrave; hiệu quả lại cao, l&agrave; một trong những c&ocirc;ng dụng tuyệt vời của loại l&aacute; n&agrave;y.</p>\r\n\r\n<p><img alt="Lá ổi – phép lạ để sở hữu làn da đẹp" src="http://phunukieuviet.com/upload_images/images/lam-dep-bang-la-oi.jpg" style="height:375px; margin:0px; width:500px" /></p>\r\n\r\n<p><strong>C&ocirc;ng dụng trị mụn, l&agrave;m đẹp da của l&aacute; ổi</strong></p>\r\n\r\n<p>L&aacute; ổi được biết đến với rất nhiều c&ocirc;ng dụng trong việc điều trị bệnh. Trong l&aacute; ổi c&oacute; chứa nhiều th&agrave;nh phần chất như polyphenol, carotenoid, flavonoid v&agrave; tannin c&oacute; t&aacute;c dụng cải thiện sức khỏe, gi&uacute;p giảm c&acirc;n, giảm cholesterols, hỗ trợ điều trị tiểu đường, bệnh ti&ecirc;u h&oacute;a &hellip; hiệu quả. Trong d&acirc;n gian cũng đ&atilde; sử dụng l&aacute; ổi để trị c&aacute;c chứng bệnh như ti&ecirc;u chảy, s&aacute;t khuẩn, chữa l&agrave;nh vết thương.&nbsp;</p>\r\n\r\n<p>Kh&ocirc;ng những thế, l&aacute; ổi c&ograve;n c&oacute; t&aacute;c dụng l&agrave;m đẹp rất tốt. Cụ thể l&agrave; trong l&aacute; ổi c&ograve;n chứa nhiều th&agrave;nh phần chất chống vi&ecirc;m, kh&aacute;ng khuẩn, khử tr&ugrave;ng v&agrave; chất chống oxy h&oacute;a. Nhờ đ&oacute;, d&ugrave;ng l&aacute; ổi sẽ l&agrave; c&aacute;ch đơn giản gi&uacute;p ti&ecirc;u diệt c&aacute;c nguy&ecirc;n nh&acirc;n g&acirc;y ra mụn trứng c&aacute;, mụn đầu đen gi&uacute;p ph&ograve;ng ngừa v&agrave; cải thiện t&igrave;nh trạng mụn hiệu quả. Th&ecirc;m v&agrave;o đ&oacute;, c&aacute;c th&agrave;nh phần kh&aacute;c gi&uacute;p l&agrave;m mờ c&aacute;c vết th&acirc;m v&agrave; l&agrave;m da mịn một c&aacute;ch hiệu quả. Để&nbsp;<a href="http://phunukieuviet.com/tri-mun.html" target="_blank">trị mụn hiệu quả&nbsp;</a>v&agrave; chăm s&oacute;c da bằng l&aacute; ổi, c&aacute;c bạn thực hiện theo c&aacute;c c&ocirc;ng thức sau:</p>\r\n\r\n<p><strong>C&aacute;ch d&ugrave;ng l&aacute; ổi trị mụn</strong></p>\r\n\r\n<p>Rất đơn giản, c&aacute;c bạn chỉ cần lấy l&aacute; ổi, rửa sạch, gi&atilde; hoặc xay nhuyễn rồi d&ugrave;ng đắp l&ecirc;n c&aacute;c nốt mụn sau khi đ&atilde; được vệ sinh sạch sẽ. Bạn để l&aacute; ổi lưu lại tr&ecirc;n da khoảng 10 ph&uacute;t rồi rửa lại với nước sạch. C&oacute; thể sử dụng theo c&aacute;ch n&agrave;y h&agrave;ng ng&agrave;y để&nbsp;<a href="http://dangkieu.com/lam-dep-da-p45" target="_blank">trị mụn&nbsp;</a>sẽ nhanh ch&oacute;ng đạt được hiệu quả.</p>\r\n\r\n<p><img alt="Lá ổi – phép lạ để sở hữu làn da đẹp" src="http://phunukieuviet.com/upload_images/images/4-61.jpg" style="height:375px; margin:0px; width:500px" /></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, nếu mắc phải mụn đầu đen, bạn d&ugrave;ng l&aacute; ổi gi&atilde; nhuyễn rồi pha ch&uacute;t nước ấm, d&ugrave;ng dung dịch n&agrave;y rửa mặt h&agrave;ng ng&agrave;y, ch&agrave; x&aacute;t nhẹ v&agrave;o những nơi c&oacute; mụn sẽ gi&uacute;p loại bỏ mụn nhanh ch&oacute;ng.</p>\r\n\r\n<p><strong>D&ugrave;ng l&aacute; ổi l&agrave;m se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng</strong></p>\r\n\r\n<p>Đơn giản nhất l&agrave; c&aacute;c bạn c&oacute; thể d&ugrave;ng nước sắc từ l&aacute; ổi để rửa mặt sẽ gi&uacute;p l&agrave;m se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng, ngăn ngừa mụn v&agrave; l&agrave;m da mịn m&agrave;ng. B&ecirc;n cạnh đ&oacute;, n&oacute; c&ograve;n l&agrave;m giảm ngứa tr&ecirc;n da, c&aacute;c vết ngứa do dị ứng nhờ v&agrave;o c&aacute;c hợp chất chống dị ứng.</p>\r\n\r\n<p>C&ograve;n nếu muốn c&oacute; được l&agrave;n da đẹp mịn m&agrave;ng v&agrave; chăm chỉ hơn, c&aacute;c bạn cũng c&oacute; thể tận dụng l&aacute; ổi để l&agrave;m đẹp bằng c&aacute;ch chọn lấy những l&aacute; ổi non, rửa sạch, xay nhuyễn rồi trộn c&ugrave;ng với l&ograve;ng trắng trứng g&agrave; v&agrave; đường n&acirc;u để tạo th&agrave;nh hỗn hợp. D&ugrave;ng hỗn hợp n&agrave;y đắp l&ecirc;n da mặt, để trong 5 ph&uacute;t v&agrave; rửa mặt với nước ấm. L&agrave;m mỗi tuần 2 &ndash; 3 lần, trong v&ograve;ng 1 th&aacute;ng, da mặt sẽ được cải thiện r&otilde; rệt v&agrave; trở n&ecirc;n s&aacute;ng mịn.</p>\r\n\r\n<p><img alt="Lá ổi – phép lạ để sở hữu làn da đẹp" src="http://phunukieuviet.com/upload_images/images/la-oi-phep-la-tri-mun-giam-can-va-rung-toc.jpg" style="height:331px; margin:0px; width:500px" /></p>\r\n\r\n<p>Như vậy, chỉ với một nguy&ecirc;n liệu v&ocirc; c&ugrave;ng đơn giản, dễ kiếm l&agrave; đ&atilde; c&oacute; thể gi&uacute;p bạn c&oacute; được c&aacute;c c&ocirc;ng thức trị mụn v&agrave; l&agrave;m đẹp da hiệu quả. Chỉ cần nằm nh&agrave; v&agrave; ki&ecirc;n tr&igrave; thực hiện c&aacute;c c&aacute;ch n&ecirc;u tr&ecirc;n để l&agrave;m đẹp thật đơn giản phải kh&ocirc;ng!</p>\r\n\r\n<p>Với th&agrave;nh phần chứa chất khử tr&ugrave;ng, l&aacute; ổi c&oacute; khả năng diệt khuẩn g&acirc;y mụn trứng c&aacute; v&agrave; mụn đầu đen. Th&ecirc;m v&agrave;o đ&oacute;, c&aacute;c th&agrave;nh phần kh&aacute;c gi&uacute;p l&agrave;m mờ c&aacute;c vết th&acirc;m v&agrave; l&agrave;m da mịn một c&aacute;ch hiệu quả.</p>\r\n\r\n<p>Để trị mụn trứng c&aacute; v&agrave; vết th&acirc;m, c&aacute;ch l&agrave;m rất đơn giản: chỉ cần rửa mặt sạch, đắp l&aacute; ổi nghiền nhuyễn v&agrave;o c&aacute;c nốt mụn hay vết th&acirc;m, sau 10 ph&uacute;t rửa sạch bằng nước, thực hiện h&agrave;ng ng&agrave;y cho đến khi mụn bay biến. Ri&ecirc;ng với mụn đầu đen, gi&atilde; nhuyễn l&aacute; ổi v&agrave; pha ch&uacute;t nước ấm, d&ugrave;ng dung dịch n&agrave;y rửa mặt h&agrave;ng ng&agrave;y, ch&agrave; x&aacute;t nhẹ v&agrave;o những nơi c&oacute; mụn sẽ gi&uacute;p loại bỏ mụn nhanh ch&oacute;ng.</p>\r\n\r\n<p>Một c&ocirc;ng dụng hữu &iacute;ch kh&aacute;c của l&aacute; ổi l&agrave; cải thiện l&agrave;n da nhờ c&aacute;c chất chống oxy h&oacute;a của l&aacute; ổi. Những chất n&agrave;y ti&ecirc;u diệt c&aacute;c gốc tự do g&acirc;y tổn hại l&agrave;n da, bảo vệ da khỏi l&atilde;o h&oacute;a cũng như cải thiện m&agrave;u da v&agrave; kết cấu.</p>\r\n\r\n<p>Nước sắc từ l&aacute; ổi gi&agrave; c&ograve;n l&agrave;m se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng, ngăn ngừa mụn v&agrave; l&agrave;m da mịn m&agrave;ng. Ngo&agrave;i ra, l&aacute; ổi c&ograve;n l&agrave;m giảm ngứa tr&ecirc;n da, c&aacute;c vết ngứa do dị ứng nhờ v&agrave;o c&aacute;c hợp chất chống dị ứng.</p>\r\n\r\n<p><strong><em>C&aacute;ch l&agrave;m</em></strong>: Chọn những ngọn l&aacute; ổi non rửa sạch v&agrave; nghiền nhỏ. Trộn l&ograve;ng trắng trứng g&agrave; c&ugrave;ng một muỗng nhỏ đường n&acirc;u khuấy cho tan đều. Sau đ&oacute; trộn hai hỗn hợp tr&ecirc;n rồi thoa khắp mặt v&agrave; v&ugrave;ng cổ, để trong 5 ph&uacute;t v&agrave; rửa mặt với nước ấm. L&agrave;m mỗi tuần 2 &ndash; 3 lần, trong v&ograve;ng 1 th&aacute;ng, da mặt sẽ được cải thiện r&otilde; rệt v&agrave; trở n&ecirc;n s&aacute;ng mịn.</p>\r\n\r\n<p><strong>L&aacute; ổi</strong>&nbsp;với vị đắng, t&iacute;nh ấm được Đ&ocirc;ng y đưa v&agrave;o danh s&aacute;ch l&agrave;&nbsp;1 trong những loại thảo dược c&oacute; thể điều trị nhiều loại bệnh kh&aacute;c nhau như: giải độc, ti&ecirc;u chảy, cầm m&aacute;u&hellip; B&ecirc;n cạnh đ&oacute;, l&aacute; ổi c&ograve;n l&agrave;&nbsp;1 trong những nguy&ecirc;n liệu thi&ecirc;n nhi&ecirc;n gi&uacute;p chị em chăm ch&uacute;t nhan sắc.</p>\r\n\r\n<p>Nhờ v&agrave;o những th&agrave;nh phần tinh dầu, polyphenol, carotenoids,&nbsp;c&aacute;c chất oxy h&oacute;a, chất kh&aacute;ng khuẩn, chống vi&ecirc;m&hellip; l&aacute; ổi c&ograve;n l&agrave;&nbsp;1 trong những c&aacute;ch ngăn ngừa mụn trứng c&aacute; xuất hiện v&agrave;&nbsp;trị mụn v&agrave; vết th&acirc;m&nbsp;hiệu quả.</p>\r\n\r\n<p><strong>C&aacute;ch&nbsp;trị mụn&nbsp;trứng c&aacute; bằng l&aacute; ổi non</strong></p>\r\n\r\n<p><strong>- Chuẩn bị</strong>: L&aacute; ổi non, 1 quả trứng g&agrave;, đường n&acirc;u, 1 c&aacute;i b&aacute;t sạch.</p>\r\n\r\n<p><strong>- C&aacute;ch thực hiện</strong></p>\r\n\r\n<p>+&nbsp;H&atilde;y chọn cho m&igrave;nh những ngọn l&aacute; ổi non v&agrave; nghiền nhỏ trong một chiếc b&aacute;t kh&ocirc;, sau đ&oacute; cất gọn trong ngăn tủ đ&aacute; của tủ lạnh.</p>\r\n\r\n<p>+&nbsp;Đập vỡ trứng v&agrave; lọc bỏ l&ograve;ng đỏ, chỉ để lại l&ograve;ng trắng trứng g&agrave;.</p>\r\n\r\n<p>+&nbsp;Bổ sung 1 th&igrave;a c&agrave; ph&ecirc; đường n&acirc;u v&agrave;o trong b&aacute;t. D&ugrave;ng th&igrave;a quấy đều sao cho đường v&agrave; trứng trộn&nbsp;đều với nhau.</p>\r\n\r\n<p>+&nbsp;Lấy l&aacute; ổi đ&atilde; được nghiền n&aacute;t v&agrave; l&agrave;m lạnh v&agrave;o b&aacute;t. D&ugrave;ng th&igrave;a khuấy đều tạo th&agrave;nh hợp chất lạnh từ l&aacute; ổi. D&ugrave;ng&nbsp;hỗn hợp&nbsp;vừa tạo th&agrave;nh từ l&aacute; ổi thoa l&ecirc;n mặt để trong 5 ph&uacute;t rồi rửa sạch với nước ấm.</p>\r\n\r\n<p><img alt="Lá ổi – phép lạ để sở hữu làn da đẹp" src="http://phunukieuviet.com/upload_images/images/shutterstock-101857852.jpg" style="height:375px; margin:0px; width:500px" /></p>\r\n\r\n<p>D&ugrave;ng l&aacute; ổi&nbsp;mỗi tuần 2&nbsp;đến 3 lần. Trong v&ograve;ng 1 th&aacute;ng, da mặt của bạn sẽ được cải thiện r&otilde; rệt, c&aacute;c vết th&acirc;m, n&aacute;m mờ dần. Nhờ&nbsp;c&ocirc;ng dụng l&agrave;m sạch lỗ ch&acirc;n l&ocirc;ng, l&aacute; ổi cũng gi&uacute;p bạn trị mụn hiệu quả, trả lại l&agrave;n da mịn m&agrave;ng hơn.</p>\r\n\r\n<p>Ngo&agrave;i c&aacute;ch trị mụn hiệu quả&nbsp;bằng l&aacute; ổi non&nbsp;tr&ecirc;n, bạn c&oacute; thể tham khảo c&aacute;ch trị mụn mau ch&oacute;ng kh&ocirc;ng mất nhiều thời gian với&nbsp;<a href="http://dangkieu.com/young-care-lan-da-khong-ty-vet-pd244" target="_blank"><strong>YoungCare</strong></a>&nbsp;được chiết xuất từ tinh chất thi&ecirc;n nhi&ecirc;n chống l&atilde;o h&oacute;a cực mạnh gi&uacute;p thiết lập lại v&agrave; l&agrave;m hồi sinh c&aacute;c tế b&agrave;o da, đồng thời th&uacute;c đẩy 2 enzym quan trọng trong da, gi&uacute;p loại bỏ c&aacute;c độc tố trong tế b&agrave;o để da hoạt động trở lại như l&agrave;n da trẻ.</p>\r\n\r\n<p><img alt="Lá ổi – phép lạ để sở hữu làn da đẹp" src="http://phunukieuviet.com/upload_images/images/IMG_9426%201.jpg" style="height:366px; margin:0px; width:500px" /></p>\r\n\r\n<p><strong>YoungCare</strong>&nbsp;gi&uacute;p tăng cường bổ sung collagen để k&iacute;ch th&iacute;ch lượng collagen trong cơ thể, qu&aacute; tr&igrave;nh n&agrave;y tuyến y&ecirc;n sẽ giải ph&oacute;ng hormone v&agrave;o m&aacute;u v&agrave; tiến h&agrave;nh trẻ h&oacute;a, t&aacute;i tạo v&agrave; thay thế. Đ&acirc;y l&agrave; l&uacute;c m&agrave; collagen hoạt động c&ugrave;ng l&uacute;c với vai tr&ograve; quan trọng trong sự tổng hợp protein. Sự c&oacute; mặt c&ugrave;ng l&uacute;c của c&aacute;c hormone th&iacute;ch hợp v&agrave; collagen sẽ gi&uacute;p cơ thể c&oacute; thể tổng hợp được c&aacute;c loại protein cần thiết cho sự sinh tồn, v&agrave; t&aacute;i tạo của l&agrave;n da, củng cố độ rắn chắc của d&acirc;y chằng, sụn v&agrave; xương, đồng thời củng cố hệ thống đề kh&aacute;ng của cơ thể.</p>\r\n\r\n<p><a href="/image/images/33.jpg"><img alt="" src="/image/images/3.jpg" style="height:142px; width:356px" /></a></p>\r\n\r\n<p><a href="/image/images/bucket.jpg"><img alt="" src="/image/images/bucket.jpg" style="height:300px; width:292px" /></a></p>\r\n', 55, '1432630257-1743479_1572225119701076_2120788429947510343_n.jpg', 1, 36, '0000-00-00 00:00:00', '2015-07-06 21:21:04'),
(13, 'kem serum', 8, 2, 8, '50000.0000', 34, '<p>qqqqqqqqqqqqqqqqqqqqqqqqqqqqq</p>\r\n', 34, '1432631428-11156171_1584767578446830_6442929900749099680_n.jpg', 1, 16, '2015-05-26 02:10:28', '2015-07-06 20:11:09'),
(14, 'Kem Dưỡng Trắng Da', 8, 1, 7, '500000.0000', 23, '<p><span style="font-family:tahoma,geneva,sans-serif">Trước nhu cầu l&agrave;m đẹp của chị em phụ nữ, viện nghi&ecirc;n cứu Sakura đ&atilde; cho ra đời d&ograve;ng sản phẩm dưỡng trắng Body cao cấp&nbsp;<a href="http://myphamsakura.net/cham-soc-body/kem-duong-trang-da-va-trang-diem-nhe-toan-than-sakura-skin-whitening-bb-body-cream" rel="nofollow" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(51, 51, 51); text-decoration: none; cursor: pointer; -webkit-tap-highlight-color: rgb(255, 94, 153); background: transparent;" target="_blank"><strong>SAKURA SKIN WHITENING BB BODY CREAM</strong></a>, gi&uacute;p da trắng ngay lập tức để đi l&agrave;m, đi dự tiệc hoặc gặp gỡ kh&aacute;ch h&agrave;ng. Sản phẩm vừa l&agrave;m kem dưỡng, vừa l&agrave;m kem trang điểm to&agrave;n th&acirc;n.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:center"><span style="font-family:tahoma,geneva,sans-serif"><strong><img alt="Body ngay SAKURA SKIN WHITENING BB BODY CREAM" src="http://myphamsakura.net/uploads/images/kem.jpg" style="background:transparent; border:0px; box-sizing:border-box; height:388px; margin:10px auto; max-width:100%; outline:0px; padding:0px; vertical-align:middle; width:665px" /></strong></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:tahoma,geneva,sans-serif">Sản phẩm ch&iacute;nh h&atilde;ng được d&aacute;n tem Bộ c&ocirc;ng an</span></p>\r\n\r\n<p><span style="font-family:tahoma,geneva,sans-serif"><strong>* C&ocirc;ng Dụng của kem dưỡng dưỡng da Sakura:</strong></span></p>\r\n\r\n<ul>\r\n	<li><span style="font-family:tahoma,geneva,sans-serif">Kem dưỡng trắng da trang điểm to&agrave;n th&acirc;n gi&uacute;p dưỡng trắng v&agrave; giữ ẩm da to&agrave;n th&acirc;n.&nbsp;</span></li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><span style="font-family:tahoma,geneva,sans-serif">Trang điểm nhẹ to&agrave;n th&acirc;n cho l&agrave;n da trắng hồng ngay lập tức, che phủ tức th&igrave; mọi khuyết điểm.</span></li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><span style="font-family:tahoma,geneva,sans-serif">Chống nắng v&agrave; bảo vệ da khi d&ugrave;ng ban ng&agrave;y.</span></li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><span style="font-family:tahoma,geneva,sans-serif">Ngo&agrave;i ra kem dưỡng trắng da SAKURA SKIN WHITENING BB BODY CREAM cung cấp dưỡng chất&nbsp; nu&ocirc;i dưỡng da từ s&acirc;u b&ecirc;n trong, tăng độ s&aacute;ng dần cho l&agrave;n da d&ugrave;ng thường xuy&ecirc;n sẽ mang đến l&agrave;n da trắng hồng rạng rỡ.</span></li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><span style="font-family:tahoma,geneva,sans-serif">Kết cấu dịu nhẹ, ph&ugrave; hợp với l&agrave;n da phụ nữ ch&acirc;u &Aacute; gi&uacute;p bạn thoải m&aacute;i suốt cả ng&agrave;y</span></li>\r\n</ul>\r\n\r\n<p style="text-align:center"><span style="font-family:tahoma,geneva,sans-serif"><img alt="SAKURA SKIN WHITENING BB BODY CREAM" src="http://myphamsakura.net/uploads/images/hop.jpg" style="background:transparent; border:0px; box-sizing:border-box; height:436px; margin:10px auto; max-width:100%; outline:0px; padding:0px; vertical-align:middle; width:665px" /></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:tahoma,geneva,sans-serif">Ch&uacute; &yacute; khi quan s&aacute;t vỏ hộp sản phẩm, để tr&aacute;nh mua phải h&agrave;ng nh&aacute;i</span></p>\r\n\r\n<p><span style="font-family:tahoma,geneva,sans-serif"><strong>Th&agrave;nh phần ch&iacute;nh:&nbsp;</strong>Setria Glutathione, Pearl Extract, Vitamin C, E, Pro Vitamin B5.</span></p>\r\n\r\n<p><span style="font-family:tahoma,geneva,sans-serif">Để c&oacute; hiệu quả nhanh nhất kết hợp với liệu tr&igrave;nh tắm trắng theo chuẩn Spa tại nh&agrave;. Tuỳ theo m&agrave;u da chuy&ecirc;n gia tư vấn ch&uacute;ng t&ocirc;i sẽ cung cấp giải ph&aacute;p l&agrave;m trắng cho bạn.</span></p>\r\n\r\n<p><span style="font-family:tahoma,geneva,sans-serif"><strong>Kem dưỡng trắng da v&agrave; trang điểm nhẹ to&agrave;n th&acirc;n Sakura Skin Whitening BB Body Cream - Sản phẩm được Cục Quản L&yacute; Dược v&agrave; Bộ Y Tế chứng nhận l&agrave; an to&agrave;n cho da v&agrave; cấp Ph&eacute;p lưu h&agrave;nh sản phẩm.</strong></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:tahoma,geneva,sans-serif"><img alt="tem chong gia sakura" src="http://myphamsakura.net/uploads/images/thong%20tin%20sp.jpg" style="background:transparent; border:0px; box-sizing:border-box; height:368px; margin:10px auto; max-width:100%; outline:0px; padding:0px; vertical-align:middle; width:665px" /></span></p>\r\n\r\n<p><span style="font-family:tahoma,geneva,sans-serif">Sản phẩm được sản xuất tr&ecirc;n c&ocirc;ng nghệ ti&ecirc;n tiến của Nhật Bản, khi nhập khẩu về Việt Nam, tr&ecirc;n vỏ hộp c&oacute; d&aacute;n tem chống giả SMS của Bộ c&ocirc;ng an, Qu&yacute; kh&aacute;ch c&agrave;o nhẹ lớp bạc v&agrave; soạn tin nhắn theo mẫu, th&ocirc;ng tin gửi về điện thoại sẽ th&ocirc;ng b&aacute;o xuất xứ sản phẩm c&oacute; phải l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng hay kh&ocirc;ng.</span></p>\r\n\r\n<p><span style="font-family:tahoma,geneva,sans-serif"><strong>* Hướng dẫn sử dụng :&nbsp;</strong>kem dưỡng trắng da SAKURA SKIN WHITENING BB BODY CREAM d&ugrave;ng h&agrave;ng ng&agrave;y v&agrave;o buổi s&aacute;ng hoặc khi đi dạ tiệc, đi l&agrave;m, đi gặp gỡ đối t&aacute;c kh&aacute;ch h&agrave;ng,&hellip;</span></p>\r\n', 20, '1432870148-kem.jpg', 1, 9, '2015-05-28 20:29:08', '2015-06-25 19:20:02'),
(15, 'Chông nắng body vip', 9, 1, 9, '550000.0000', 33, '<p>abc xyz</p>\r\n', 40, '1433758902-10698572_797238696980914_8040493956596091843_n.jpg', 1, 0, '2015-06-08 03:21:42', '2015-06-08 03:21:42'),
(16, 'Bộ 2 serum dưỡng thể trắng da', 10, 4, 6, '600000.0000', 22, '<h2>Chi tiết sản phẩm</h2>\r\n\r\n<p><span style="color:rgb(64, 64, 64); font-family:helvetica,arial,sans-serif; font-size:12px">Chứa th&agrave;nh phần collagen cao cấp, serum dưỡng thể&nbsp;</span><strong>NIVEA</strong><span style="color:rgb(64, 64, 64); font-family:helvetica,arial,sans-serif; font-size:12px">&nbsp;gi&uacute;p dưỡng trắng v&agrave; phục hồi da hư tổn, sạm đen do nắng.&nbsp;</span><strong>NIVEA</strong><span style="color:rgb(64, 64, 64); font-family:helvetica,arial,sans-serif; font-size:12px">&nbsp;với c&ocirc;ng thức serum, chứa c&aacute;c hạt ph&acirc;n tử si&ecirc;u nhỏ thẩm thấu nhanh, đem lại hiệu quả nhanh ch&oacute;ng nhưng vẫn tuyệt đối an to&agrave;n cho da. Serum dưỡng thể&nbsp;</span><strong>NIVEA</strong><span style="color:rgb(64, 64, 64); font-family:helvetica,arial,sans-serif; font-size:12px">&nbsp;kh&ocirc;ng g&acirc;y nhờn r&iacute;t, ph&ugrave; hợp sử dụng mỗi ng&agrave;y để đem lại l&agrave;n da trắng s&aacute;ng.</span></p>\r\n\r\n<div style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif; font-size: 12px; line-height: 14.3999996185303px;"><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></div>\r\n\r\n<p><strong>Loại sản phẩm</strong><br />\r\nSerum dưỡng thể gi&uacute;p dưỡng trắng v&agrave; phục hồi da.</p>\r\n\r\n<p><strong>Th&agrave;nh phần</strong><br />\r\nC&ocirc;ng thức Serum với c&aacute;c hạt ph&acirc;n tử si&ecirc;u nhỏ thấm nhanh hơn v&agrave;o da.<br />\r\nChứa COLLAGEN gi&uacute;p hỗ trợ qu&aacute; tr&igrave;nh phục hồi c&aacute;c hư tổn nặng v&agrave;o ban đ&ecirc;m.</p>\r\n\r\n<p><strong>Loại da ph&ugrave; hợp</strong><br />\r\nD&agrave;nh cho da thường v&agrave; da hư tổn &iacute;t do nắng.</p>\r\n\r\n<p><strong>C&aacute;ch d&ugrave;ng</strong><br />\r\nThoa v&agrave; m&aacute;t-xa sản phẩm đều to&agrave;n th&acirc;n.</p>\r\n', 45, '1433907115-bo-2-serum-duong-the-trang-da-ban-em-nivea-collagen-200ml-x-2-5123-1020101-1-zoom.jpg', 1, 0, '2015-06-09 20:31:55', '2015-06-09 20:36:13'),
(17, 'Kem dưỡng ẩm trắng da The M.E.N ', 10, 1, 7, '40000.0000', 55, '<p>Kem body lotion The M.E.N kh&ocirc;ng chỉ l&agrave;m trắng da m&agrave; c&ograve;n gi&uacute;p ngăn chặn qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a , gi&uacute;p sản sinh collagen tự th&acirc;n cho da lu&ocirc;n chắc khỏe .Kem dưỡng da to&agrave;n th&acirc;n d&agrave;nh ri&ecirc;ng chon nam của hang The Men đang l&agrave;m mưa l&agrave;m gi&oacute; tại Th&aacute;i Lan</p>\r\n\r\n<p>&nbsp;Kh&ocirc;ng &nbsp;thể kh&ocirc;ng n&oacute;i &nbsp;&ldquo; Ở Đ&acirc;u c&oacute; The M.E.N l&agrave; ở đ&oacute; c&oacute; trai đẹp nh&eacute;&rdquo;</p>\r\n\r\n<p>Kem body The M.E.N &nbsp;whitening for men dưỡng trắng da từng ng&agrave;y một . Hiệu quả c&oacute; thế thấy r&otilde; nhất về độ trắng sau 2-3 tuần Sử dụng ! Trắng tự th&acirc;n , da căng b&oacute;ng tự nhi&ecirc;n , l&ecirc;n tone từ từ chứ kh&ocirc;ng phải trắng x&aacute;c do h&oacute;a chất !</p>\r\n\r\n<p>Sản phẩm đ&atilde; được kiểm nghiệm kh&ocirc;ng c&oacute; ho&aacute; chất g&acirc;y hại cho da an to&agrave;n tuyệt đối 100%,</p>\r\n\r\n<p>Th&agrave;nh phần: Green tea leaf extract,Hydrolyzed milk protein,vitamin C,stearic acid,Glyceryl monostearate,&hellip;</p>\r\n', 20, '1433907220-kem-duong-am-trang-da-the-m-e-n-body-whitening-cream-for-men-250g-8835-188929-1-zoom.jpg', 1, 16, '2015-06-09 20:33:40', '2015-07-06 21:16:56'),
(18, 'Kem dưỡng thể Tinh Dầu Trắng Da MCY WHITE BODY 200ML', 8, 4, 5, '189000.0000', 33, '<p><span style="color:rgb(64, 64, 64); font-family:helvetica,arial,sans-serif; font-size:12px">Kem dưỡng thể Tinh Dầu Trắng Da MCY WHITE BODY 200ML</span><br />\r\n<span style="color:rgb(64, 64, 64); font-family:helvetica,arial,sans-serif; font-size:12px">Kem dưỡng trắng da body MCY kem dưỡng trắng da to&agrave;n th&acirc;n gi&uacute;p l&agrave;n da trắng mịn m&agrave;ng, kem dễ thấm v&agrave;o da, với nhiếu th&agrave;nh phần Vitamin, nu&ocirc;i dưỡng v&agrave; bảo vệ l&agrave;n da, loại bỏ tế b&agrave;o chết, t&agrave;n nhang, l&atilde;o h&oacute;a da, an to&agrave;n kh&ocirc;ng k&iacute;ch ứng cho da, chống nắng hiệu quả, gi&uacute;p da trắng hồng, rạng rỡ.</span><br />\r\n<span style="color:rgb(64, 64, 64); font-family:helvetica,arial,sans-serif; font-size:12px">Kem dễ sử dụng - tan nhanh - m&aacute;t dịu, nhiều Vitamin dễ d&agrave;ng thấm v&agrave;o da l&agrave;m cho da hồng h&agrave;o tự nhi&ecirc;n.</span><br />\r\n<span style="color:rgb(64, 64, 64); font-family:helvetica,arial,sans-serif; font-size:12px">Kem kh&ocirc;ng bị r&iacute;t, giữ độ ẩm cho da, gi&uacute;p da kh&ocirc;ng bị kh&ocirc;, nhăn, kh&ocirc;ng l&agrave;m hư da về sau n&agrave;y giữ được độ trắng hồng tr&ecirc;n da.</span><br />\r\n<span style="color:rgb(64, 64, 64); font-family:helvetica,arial,sans-serif; font-size:12px">Sản phẩm c&oacute; m&ugrave;i hương thơm dễ thương, quyến rũ.</span></p>\r\n', 55, '1433907485-kem-duong-the-tinh-dau-trang-da-cd-mcy-white-body-200ml-0920-0428901-1-zoom.jpg', 1, 49, '2015-06-09 20:38:05', '2015-07-06 21:20:57'),
(19, 'Bộ 3 sữa tắm Purité by PRÔVENCE 3 x 250ml', 10, 1, 6, '340000.0000', 88, '<p>Bộ 3 sữa tắm chiết xuất thi&ecirc;n nhi&ecirc;n&nbsp;<strong>Purit&eacute; by PR&Ocirc;VENCE</strong>&nbsp;hương hoa hồng, hoa anh đ&agrave;o v&agrave; oải hương l&agrave; sản phẩm của thương hiệu Pr&ocirc;vence, một thương hiệu chăm s&oacute;c sắc đẹp nổi tiếng tại Ph&aacute;p. Sở hữu chiết xuất olive gi&uacute;p l&agrave;m mềm v&agrave; giữ ẩm cho da c&ugrave;ng tinh dầu c&aacute;c loại hoa cho cảm gi&aacute;c thư gi&atilde;n dịu nhẹ, sữa tắm&nbsp;<strong>Purit&eacute; by PR&Ocirc;VENCE</strong>sẽ mang lại cho bạn một l&agrave;n da mịn m&agrave;ng v&agrave; mềm mại. H&atilde;y rũ bỏ mọi căng thẳng của cuộc sống v&agrave; thư gi&atilde;n với bộ 3 chai sữa tắm&nbsp;<strong>Purit&eacute; by PR&Ocirc;VENCE</strong>.</p>\r\n\r\n<div style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif; font-size: 12px; line-height: 14.3999996185303px;"><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></div>\r\n\r\n<p><strong>Bộ sản phẩm gồm</strong><br />\r\n01 chai sữa tắm hoa hồng&nbsp;<strong>Purit&eacute; by PR&Ocirc;VENCE Body Wash White Moisture Rose &amp; Mulberry</strong>&nbsp;250ml.<br />\r\n01 chai sữa tắm hoa anh đ&agrave;o&nbsp;<strong>Purit&eacute; by PR&Ocirc;VENCE Body Wash Fresh Moisture Cherry Blossom &amp; Olive</strong>&nbsp;250ml .<br />\r\n01 chai sữa tắm oải hương&nbsp;<strong>Purit&eacute; by PR&Ocirc;VENCE Body Wash Relax Moisture Lavender &amp; Olive</strong>&nbsp;250ml.</p>\r\n\r\n<p><strong>Sữa tắm hoa hồng Purit&eacute; by PR&Ocirc;VENCE Body Wash White Moisture Rose &amp; Mulberry 250ml.</strong><br />\r\n<strong>Loại da ph&ugrave; hợp</strong><br />\r\nD&ugrave;ng cho mọi loại da.<br />\r\n<strong>Th&agrave;nh phần ch&iacute;nh</strong><br />\r\nChiết xuất d&acirc;u tằm v&agrave; olive; tinh dầu hoa hồng; glycerine.<br />\r\n<strong>C&aacute;ch d&ugrave;ng</strong><br />\r\nL&agrave;m ướt cơ thể. Cho một lượng sản phẩm vừa đủ ra l&ograve;ng b&agrave;n tay hoặc b&ocirc;ng tắm, m&aacute;t-xa l&ecirc;n cơ thể theo chuyển động tr&ograve;n. Rửa sạch lại với nước.</p>\r\n\r\n<p><strong>Sữa tắm hoa anh đ&agrave;o Purit&eacute; by PR&Ocirc;VENCE Body Wash Fresh Moisture Cherry Blossom &amp; Olive 250ml.</strong><br />\r\n<strong>Loại da ph&ugrave; hợp</strong><br />\r\nD&ugrave;ng cho mọi loại da.<br />\r\n<strong>Th&agrave;nh phần ch&iacute;nh</strong><br />\r\nChiết xuất olive, tinh dầu hoa anh đ&agrave;o v&agrave; glycerine.<br />\r\n<strong>C&aacute;ch d&ugrave;ng</strong><br />\r\nL&agrave;m ướt cơ thể. Cho một lượng sản phẩm vừa đủ ra l&ograve;ng b&agrave;n tay hoặc b&ocirc;ng tắm, m&aacute;t-xa l&ecirc;n cơ thể theo chuyển động tr&ograve;n. Rửa sạch lại với nước.</p>\r\n\r\n<p><strong>Sữa tắm oải hương Purit&eacute; by PR&Ocirc;VENCE Body Wash Relax Moisture Lavender &amp; Olive 250ml.</strong><br />\r\n<strong>Loại da ph&ugrave; hợp</strong><br />\r\nD&ugrave;ng cho mọi loại da.<br />\r\n<strong>Th&agrave;nh phần ch&iacute;nh</strong><br />\r\nChiết xuất olive, tinh dầu hoa oải hương v&agrave; glycerine.&nbsp;<strong>C&aacute;ch d&ugrave;ng</strong><br />\r\nL&agrave;m ướt cơ thể. Cho một lượng sản phẩm vừa đủ ra l&ograve;ng b&agrave;n tay hoặc b&ocirc;ng tắm, m&aacute;t-xa l&ecirc;n cơ thể theo chuyển động tr&ograve;n. Rửa sạch lại với nước.</p>\r\n', 33, '1433907693-bo-3-sua-tam-purite-by-provence-3-x-250ml-hoa-hong-hoa-anh-ao-oai-huong-0329-497841-1-zoom.jpg', 1, 41, '2015-06-09 20:41:33', '2015-07-06 21:17:52'),
(20, 'abcdđ', 8, 1, 8, '543.0000', 324, '<p>qưeqwe</p>\r\n', 45, '1435281373-1.jpg', 1, 10, '2015-06-25 18:16:13', '2015-07-06 21:12:56');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ships`
--

CREATE TABLE IF NOT EXISTS `ships` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ships`
--

INSERT INTO `ships` (`id`, `name`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Nội Thành Nha Trang', '0.0000', '2015-05-17 23:34:51', '2015-05-26 19:09:13'),
(2, 'Miền Trung', '30000.0000', '2015-05-17 23:35:16', '2015-05-26 19:09:53'),
(3, 'Miền Bắc', '70000.0000', '2015-05-17 23:35:48', '2015-05-26 19:10:21'),
(4, 'Miền Nam', '50000.0000', '2015-05-26 19:10:44', '2015-05-26 19:10:44');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE IF NOT EXISTS `transactions` (
  `id` int(10) unsigned NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  `ship_id` int(10) unsigned NOT NULL,
  `pay_id` int(10) unsigned NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `security` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `customer_id`, `ship_id`, `pay_id`, `status`, `amount`, `message`, `security`, `account_number`, `created_at`, `updated_at`) VALUES
(10, 1, 2, 2, '1', '0.00', 'aa', '1432694921', '111111122222222', '2015-05-26 19:48:15', '2015-05-26 19:48:41'),
(16, 1, 4, 2, '1', '840500.00', 'nhanh', '1432875411', '1232122222', '2015-05-28 21:18:45', '2015-05-28 21:58:19'),
(17, 1, 1, 1, '1', '0.00', '', '1435284988', '', '2015-06-08 00:41:11', '2015-06-25 19:16:28'),
(18, 1, 1, 1, '0', '54000.00', '', '1433749305', NULL, '2015-06-08 00:41:45', '2015-06-08 00:41:45'),
(19, 1, 1, 1, '0', '440500.00', '', '1433749531', NULL, '2015-06-08 00:45:31', '2015-06-08 00:45:31'),
(20, 1, 2, 2, '0', '427000.00', 'qweqwe', '1433759209', '123123', '2015-06-08 03:26:49', '2015-06-25 19:16:08'),
(21, 11, 2, 1, '0', '884000.00', 'abc', '1433902832', NULL, '2015-06-09 19:20:32', '2015-06-09 19:20:32'),
(22, 2, 1, 1, '0', '813500.00', '', '1433904082', NULL, '2015-06-09 19:41:22', '2015-06-09 19:41:22'),
(23, 1, 1, 1, '0', '130550.00', '', '1434802696', NULL, '2015-06-20 05:18:16', '2015-06-20 05:18:16'),
(24, 2, 1, 1, '0', '81000.00', 'aass', '1435233204', NULL, '2015-06-25 04:53:24', '2015-06-25 04:53:24'),
(25, 2, 2, 2, '0', '683050.00', 'tin nhan', '1435284882', '123123223123', '2015-06-25 19:14:43', '2015-06-25 19:14:43'),
(26, 1, 1, 1, '0', '13500.00', '', '1436237196', NULL, '2015-07-06 19:46:36', '2015-07-06 19:46:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(7, 'aaa', 'hoangvu112@ggg', '$2y$10$NnDUNSn3fgUjTOs0qlYT1uN6xGg6NPTzwSqL3Vp9tatU3Z72jdi5.', NULL, '2015-06-03 21:14:02', '2015-06-04 02:21:51'),
(11, 'asd', 'asd@qwe.qwe', '$2y$10$Z0HdHfFDmkqcPCDlS4Re9OYgwqQsaKzp1P3pqaFJwy7oWHh4NmZNe', NULL, '2015-06-07 19:09:40', '2015-06-07 19:09:40'),
(12, 'aaaaaaaaaaaaaa', 'vvvvvvvvvvvvv@aaa.xx', '$2y$10$yC0y5vj2pfg/fvNJkblvSeXL4lg7LMZlvwiPC7BkMJbbKT3cv2xOK', NULL, '2015-06-07 19:10:44', '2015-06-07 19:20:52'),
(17, 'asd', 'asd@wewqe', '$2y$10$X/fkSbtrugk.YXWzCGmF0e9OMQAegytI1DNMnQk4YhA7F9HXxcn.2', NULL, '2015-06-07 19:20:59', '2015-06-07 19:20:59'),
(18, 'xxxxxxxxxx', 'asas@eeeeeeeeeeeeeeeee', '$2y$10$x66bBVSOX55OUjLkIfcta.dnWsGWtTld9ksGZiQvUoxvOHSSTWJt6', NULL, '2015-06-07 19:30:08', '2015-06-07 19:30:19'),
(19, 'a', 'asd@vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv', '$2y$10$veCvusnLyl0C2VCN9avcYeAAe7lYe97cNNz2iRBPOhEIVzsYyDTHu', NULL, '2015-06-07 19:31:03', '2015-06-07 19:32:53'),
(20, 'ssssssssssssssssss', 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzz@sss', '$2y$10$SEDLF4a0FmK.DjMOHnA8uOpjv7AJk1tdQeDKOKuGVONHIjSo.R2ai', NULL, '2015-06-07 19:31:33', '2015-06-07 19:31:33'),
(21, 'sdf', 'ffff@ggggg', '$2y$10$SEo3VGz2mnouqGpRE4Bpbu1rbKhKSyozvMNdg/TI3VbwQmCb.nY/u', NULL, '2015-06-07 19:36:12', '2015-06-07 21:50:01'),
(22, 'eeeeeeeeeeeeeeeeeeeeeee', 'asdasd@qwewqe', '$2y$10$MKTWorhyx.lu967a28sW.O821SkxkB3tgNtzyrl/RITXbYJhPSdsW', NULL, '2015-06-07 19:36:48', '2015-06-07 19:37:06'),
(23, 'iiiii', 'eee@uuuu', '$2y$10$mJYLaYB4gMmczqmwEvdz9.hPEZ5egQtoDsmSon2pgugFppmJ4VFF6', NULL, '2015-06-07 19:37:46', '2015-06-07 19:39:41'),
(25, 'iiiii', 'weer@llllllllllllll', '$2y$10$xhpuvhPUmTCkXvjpjnMOcOSbJmyg4JYT4qxNahDNw8Wgy23w5yLVe', NULL, '2015-06-07 19:39:52', '2015-06-07 20:10:06'),
(26, 'qqqqq', 'ooooooooooo@qqqq', '$2y$10$7b0gfqlvms8jY0Q9Cxznx.ufkdWIA7ikLUv3x6x7A/t8IVqMgY71K', NULL, '2015-06-07 20:10:20', '2015-06-07 20:15:50'),
(28, 'yyyy', 'vvvvvvv@ee', '$2y$10$ntACIbydc4HG5UaRfN2eie1G370Qk2TmSKux5q1RAPpZ.KURk7zAO', NULL, '2015-06-07 20:16:13', '2015-06-07 21:22:54'),
(31, 'www', 'dd@ee', '$2y$10$84g6kU/RaTv9intdAdLGs.vKiNEdQ4vTGYPXjA3ZzAF3UAB2w4RCO', NULL, '2015-06-07 21:45:22', '2015-06-07 21:45:22'),
(32, 'qw', 'qwe@qwe', '$2y$10$g/gyi9M1xaj.Cw.0JGYsPuHd0lc4nPZALyVaCh7zTUgptIUCy6Lha', NULL, '2015-06-07 23:55:43', '2015-06-07 23:55:43'),
(33, 'asd', '', '$2y$10$2lQrJ4vFfaxAsNAk/IhGW.iD/0U5TS3EeMD/uYkzU/nD29lEvUZfq', NULL, '2015-06-07 23:58:19', '2015-06-07 23:58:19'),
(34, 'wwww', 'as@www', '$2y$10$M5yOmrvfvtkEDdwCHM.xb.uTRYNG85LqOtvb0PHmPqlgh6YNN9ilO', NULL, '2015-06-07 23:59:16', '2015-06-07 23:59:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`), ADD KEY `customers_email_index` (`email`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`), ADD KEY `orders_transaction_id_foreign` (`transaction_id`), ADD KEY `orders_product_id_foreign` (`product_id`);

--
-- Indexes for table `origins`
--
ALTER TABLE `origins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`), ADD KEY `products_category_id_foreign` (`category_id`), ADD KEY `brand_id` (`brand_id`), ADD KEY `origin_id` (`origin_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `ships`
--
ALTER TABLE `ships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`), ADD KEY `transactions_ship_id_foreign` (`ship_id`), ADD KEY `transactions_pay_id_foreign` (`pay_id`), ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `origins`
--
ALTER TABLE `origins`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pays`
--
ALTER TABLE `pays`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `ships`
--
ALTER TABLE `ships`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
ADD CONSTRAINT `orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `orders_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`origin_id`) REFERENCES `origins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `transactions_pay_id_foreign` FOREIGN KEY (`pay_id`) REFERENCES `pays` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `transactions_ship_id_foreign` FOREIGN KEY (`ship_id`) REFERENCES `ships` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

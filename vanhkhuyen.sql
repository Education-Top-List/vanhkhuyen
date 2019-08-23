-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2019 at 11:17 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tintuctenten`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://tintuc.tenten.co', 'yes'),
(2, 'home', 'http://tintuc.tenten.co', 'yes'),
(3, 'blogname', 'Tintuc_tenten', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'truonggiang120795@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd/m/Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:88:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=43&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:59:"black-studio-tinymce-widget/black-studio-tinymce-widget.php";i:1;s:23:"ml-slider/ml-slider.php";i:2;s:39:"siteorigin-panels/siteorigin-panels.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '7', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'doanhnghiep', 'yes'),
(41, 'stylesheet', 'doanhnghiep', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '0', 'yes'),
(59, 'thumbnail_size_h', '0', 'yes'),
(60, 'thumbnail_crop', '', 'yes'),
(61, 'medium_size_w', '0', 'yes'),
(62, 'medium_size_h', '0', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '0', 'yes'),
(65, 'large_size_h', '0', 'yes'),
(66, 'image_default_link_type', '', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '43', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'vi', 'yes'),
(97, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:4:{s:5:"title";s:21:"Đọc nhiều nhất";s:6:"number";i:5;s:9:"show_date";b:1;s:7:"classes";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:8:"sidebar1";a:1:{i:0;s:14:"recent-posts-2";}s:13:"array_version";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'cron', 'a:5:{i:1565255840;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1565281040;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1565324272;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1565324274;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(126, 'can_compress_scripts', '1', 'no'),
(141, 'theme_mods_twentyseventeen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1562559807;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(142, 'current_theme', 'Trang khuyễn mãi Tenten', 'yes'),
(143, 'theme_mods_doanhnghiep', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:7:"primary";i:7;s:11:"menu_mobile";i:7;}s:18:"custom_css_post_id";i:-1;s:11:"custom_logo";i:51;}', 'yes'),
(144, 'theme_switched', '', 'yes'),
(145, 'widget_listcategorypostswidget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(153, 'category_children', 'a:0:{}', 'yes'),
(182, 'recently_activated', 'a:1:{s:41:"sassy-social-share/sassy-social-share.php";i:1562815072;}', 'yes'),
(193, 'new_admin_email', 'truonggiang120795@gmail.com', 'yes'),
(223, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(285, 'widget_metaslider_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(286, 'ms_hide_all_ads_until', '1564024661', 'yes'),
(287, 'metaslider_systemcheck', 'a:2:{s:16:"wordPressVersion";b:0;s:12:"imageLibrary";b:0;}', 'no'),
(288, 'ml-slider_children', 'a:0:{}', 'yes'),
(289, 'heateor_sss', 'a:77:{s:24:"horizontal_sharing_shape";s:5:"round";s:23:"horizontal_sharing_size";s:2:"35";s:24:"horizontal_sharing_width";s:2:"70";s:25:"horizontal_sharing_height";s:2:"35";s:24:"horizontal_border_radius";s:0:"";s:29:"horizontal_font_color_default";s:0:"";s:32:"horizontal_sharing_replace_color";s:4:"#fff";s:27:"horizontal_font_color_hover";s:0:"";s:38:"horizontal_sharing_replace_color_hover";s:4:"#fff";s:27:"horizontal_bg_color_default";s:0:"";s:25:"horizontal_bg_color_hover";s:0:"";s:31:"horizontal_border_width_default";s:0:"";s:31:"horizontal_border_color_default";s:0:"";s:29:"horizontal_border_width_hover";s:0:"";s:29:"horizontal_border_color_hover";s:0:"";s:22:"vertical_sharing_shape";s:6:"square";s:21:"vertical_sharing_size";s:2:"40";s:22:"vertical_sharing_width";s:2:"80";s:23:"vertical_sharing_height";s:2:"40";s:22:"vertical_border_radius";s:0:"";s:27:"vertical_font_color_default";s:0:"";s:30:"vertical_sharing_replace_color";s:4:"#fff";s:25:"vertical_font_color_hover";s:0:"";s:36:"vertical_sharing_replace_color_hover";s:4:"#fff";s:25:"vertical_bg_color_default";s:0:"";s:23:"vertical_bg_color_hover";s:0:"";s:29:"vertical_border_width_default";s:0:"";s:29:"vertical_border_color_default";s:0:"";s:27:"vertical_border_width_hover";s:0:"";s:27:"vertical_border_color_hover";s:0:"";s:10:"hor_enable";s:1:"1";s:21:"horizontal_target_url";s:7:"default";s:28:"horizontal_target_url_custom";s:0:"";s:5:"title";s:15:"Spread the love";s:20:"comment_container_id";s:7:"respond";s:18:"instagram_username";s:0:"";s:23:"horizontal_re_providers";a:8:{i:0;s:8:"facebook";i:1;s:7:"twitter";i:2;s:6:"reddit";i:3;s:8:"linkedin";i:4;s:9:"pinterest";i:5;s:4:"MeWe";i:6;s:3:"mix";i:7;s:8:"whatsapp";}s:21:"hor_sharing_alignment";s:4:"left";s:3:"top";s:1:"1";s:4:"post";s:1:"1";s:4:"page";s:1:"1";s:15:"horizontal_more";s:1:"1";s:15:"vertical_enable";s:1:"1";s:19:"vertical_target_url";s:7:"default";s:26:"vertical_target_url_custom";s:0:"";s:29:"vertical_comment_container_id";s:7:"respond";s:27:"vertical_instagram_username";s:0:"";s:21:"vertical_re_providers";a:8:{i:0;s:8:"facebook";i:1;s:7:"twitter";i:2;s:6:"reddit";i:3;s:8:"linkedin";i:4;s:9:"pinterest";i:5;s:4:"MeWe";i:6;s:3:"mix";i:7;s:8:"whatsapp";}s:11:"vertical_bg";s:0:"";s:9:"alignment";s:4:"left";s:11:"left_offset";s:3:"-10";s:12:"right_offset";s:3:"-10";s:10:"top_offset";s:3:"100";s:13:"vertical_post";s:1:"1";s:13:"vertical_page";s:1:"1";s:13:"vertical_home";s:1:"1";s:13:"vertical_more";s:1:"1";s:19:"hide_mobile_sharing";s:1:"1";s:21:"vertical_screen_width";s:3:"783";s:21:"bottom_mobile_sharing";s:1:"1";s:23:"horizontal_screen_width";s:3:"783";s:23:"bottom_sharing_position";s:1:"0";s:24:"bottom_sharing_alignment";s:4:"left";s:29:"bottom_sharing_position_radio";s:10:"responsive";s:13:"footer_script";s:1:"1";s:14:"delete_options";s:1:"1";s:31:"share_count_cache_refresh_count";s:2:"10";s:30:"share_count_cache_refresh_unit";s:7:"minutes";s:14:"bitly_username";s:0:"";s:9:"bitly_key";s:0:"";s:8:"language";s:2:"vi";s:16:"twitter_username";s:0:"";s:15:"buffer_username";s:0:"";s:10:"custom_css";s:0:"";s:10:"amp_enable";s:1:"1";s:6:"fb_key";s:0:"";s:9:"fb_secret";s:0:"";}', 'yes'),
(290, 'heateor_sss_version', '3.2.26', 'yes'),
(293, 'widget_heateor_sss_sharing', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(294, 'widget_heateor_sss_floating_sharing', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(295, 'widget_heateor_sss_follow', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(296, 'siteorigin_panels_settings', 'a:0:{}', 'yes'),
(297, 'siteorigin_panels_initial_version', '2.10.6', 'no'),
(298, 'siteorigin_panels_active_version', '2.10.6', 'yes'),
(299, 'widget_siteorigin-panels-post-content', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(300, 'widget_siteorigin-panels-postloop', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(301, 'widget_siteorigin-panels-builder', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(302, 'widget_black-studio-tinymce', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(303, 'metaslider_tour_cancelled_on', 'step_show_slide_types', 'yes'),
(321, 'ms_ads_first_seen_on', '1564109063', 'yes'),
(365, '_site_transient_timeout_theme_roots', '1565254101', 'no'),
(366, '_site_transient_theme_roots', 'a:1:{s:11:"doanhnghiep";s:7:"/themes";}', 'no'),
(368, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:8:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:62:"https://downloads.wordpress.org/release/vi/wordpress-5.2.2.zip";s:6:"locale";s:2:"vi";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:62:"https://downloads.wordpress.org/release/vi/wordpress-5.2.2.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.2.2";s:7:"version";s:5:"5.2.2";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-5.2.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-5.2.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-5.2.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-5.2.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.2.2";s:7:"version";s:5:"5.2.2";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:0:"";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-5.2.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-5.2.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-5.2.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-5.2.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.2.2";s:7:"version";s:5:"5.2.2";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}i:3;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-5.2.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-5.2.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-5.2.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-5.2.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.2.1";s:7:"version";s:5:"5.2.1";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}i:4;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-5.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-5.2.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-5.2-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-5.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"5.2";s:7:"version";s:3:"5.2";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}i:5;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-5.1.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-5.1.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-5.1.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-5.1.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.1.1";s:7:"version";s:5:"5.1.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}i:6;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-5.0.4.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-5.0.4.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-5.0.4-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-5.0.4-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.0.4";s:7:"version";s:5:"5.0.4";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}i:7;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:60:"https://downloads.wordpress.org/release/wordpress-4.9.10.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:60:"https://downloads.wordpress.org/release/wordpress-4.9.10.zip";s:10:"no_content";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.10-no-content.zip";s:11:"new_bundled";s:72:"https://downloads.wordpress.org/release/wordpress-4.9.10-new-bundled.zip";s:7:"partial";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.10-partial-9.zip";s:8:"rollback";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.10-rollback-9.zip";}s:7:"current";s:6:"4.9.10";s:7:"version";s:6:"4.9.10";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:5:"4.9.9";s:9:"new_files";s:0:"";}}s:12:"last_checked";i:1565252306;s:15:"version_checked";s:5:"4.9.9";s:12:"translations";a:0:{}}', 'no'),
(369, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1565252307;s:7:"checked";a:1:{s:11:"doanhnghiep";s:3:"1.0";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(370, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1565252308;s:7:"checked";a:5:{s:59:"black-studio-tinymce-widget/black-studio-tinymce-widget.php";s:5:"2.6.8";s:36:"contact-form-7/wp-contact-form-7.php";s:5:"5.1.3";s:23:"ml-slider/ml-slider.php";s:6:"3.13.1";s:39:"siteorigin-panels/siteorigin-panels.php";s:6:"2.10.6";s:41:"sassy-social-share/sassy-social-share.php";s:6:"3.2.26";}s:8:"response";a:3:{s:59:"black-studio-tinymce-widget/black-studio-tinymce-widget.php";O:8:"stdClass":13:{s:2:"id";s:41:"w.org/plugins/black-studio-tinymce-widget";s:4:"slug";s:27:"black-studio-tinymce-widget";s:6:"plugin";s:59:"black-studio-tinymce-widget/black-studio-tinymce-widget.php";s:11:"new_version";s:5:"2.6.9";s:3:"url";s:58:"https://wordpress.org/plugins/black-studio-tinymce-widget/";s:7:"package";s:76:"https://downloads.wordpress.org/plugin/black-studio-tinymce-widget.2.6.9.zip";s:5:"icons";a:2:{s:2:"2x";s:80:"https://ps.w.org/black-studio-tinymce-widget/assets/icon-256x256.png?rev=1002774";s:2:"1x";s:80:"https://ps.w.org/black-studio-tinymce-widget/assets/icon-128x128.png?rev=1002774";}s:7:"banners";a:2:{s:2:"2x";s:83:"https://ps.w.org/black-studio-tinymce-widget/assets/banner-1544x500.png?rev=1002774";s:2:"1x";s:82:"https://ps.w.org/black-studio-tinymce-widget/assets/banner-772x250.png?rev=1002774";}s:11:"banners_rtl";a:0:{}s:14:"upgrade_notice";s:193:"<p>If you&#039;re using WPML, double check our FAQ, as version 2.6 introduced some changes regarding widgets translations.\nImportant: Always ensure to backup your database before upgrading.</p>";s:6:"tested";s:5:"5.2.2";s:12:"requires_php";s:3:"5.2";s:13:"compatibility";O:8:"stdClass":0:{}}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":12:{s:2:"id";s:28:"w.org/plugins/contact-form-7";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"5.1.4";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.5.1.4.zip";s:5:"icons";a:2:{s:2:"2x";s:66:"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007";s:2:"1x";s:66:"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007";}s:7:"banners";a:2:{s:2:"2x";s:69:"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901";s:2:"1x";s:68:"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.2.2";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:23:"ml-slider/ml-slider.php";O:8:"stdClass":12:{s:2:"id";s:23:"w.org/plugins/ml-slider";s:4:"slug";s:9:"ml-slider";s:6:"plugin";s:23:"ml-slider/ml-slider.php";s:11:"new_version";s:6:"3.14.0";s:3:"url";s:40:"https://wordpress.org/plugins/ml-slider/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/ml-slider.3.14.0.zip";s:5:"icons";a:3:{s:2:"2x";s:62:"https://ps.w.org/ml-slider/assets/icon-256x256.png?rev=1837669";s:2:"1x";s:54:"https://ps.w.org/ml-slider/assets/icon.svg?rev=1837669";s:3:"svg";s:54:"https://ps.w.org/ml-slider/assets/icon.svg?rev=1837669";}s:7:"banners";a:2:{s:2:"2x";s:65:"https://ps.w.org/ml-slider/assets/banner-1544x500.png?rev=1837669";s:2:"1x";s:64:"https://ps.w.org/ml-slider/assets/banner-772x250.png?rev=1837669";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.2.2";s:12:"requires_php";s:3:"5.2";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:14:"contact-form-7";s:8:"language";s:2:"vi";s:7:"version";s:5:"5.1.3";s:7:"updated";s:19:"2019-08-01 04:56:38";s:7:"package";s:78:"https://downloads.wordpress.org/translation/plugin/contact-form-7/5.1.3/vi.zip";s:10:"autoupdate";b:1;}}s:9:"no_update";a:2:{s:39:"siteorigin-panels/siteorigin-panels.php";O:8:"stdClass":9:{s:2:"id";s:31:"w.org/plugins/siteorigin-panels";s:4:"slug";s:17:"siteorigin-panels";s:6:"plugin";s:39:"siteorigin-panels/siteorigin-panels.php";s:11:"new_version";s:6:"2.10.6";s:3:"url";s:48:"https://wordpress.org/plugins/siteorigin-panels/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/siteorigin-panels.2.10.6.zip";s:5:"icons";a:2:{s:2:"2x";s:70:"https://ps.w.org/siteorigin-panels/assets/icon-256x256.png?rev=1044755";s:2:"1x";s:70:"https://ps.w.org/siteorigin-panels/assets/icon-128x128.png?rev=1044755";}s:7:"banners";a:1:{s:2:"1x";s:72:"https://ps.w.org/siteorigin-panels/assets/banner-772x250.jpg?rev=1044755";}s:11:"banners_rtl";a:0:{}}s:41:"sassy-social-share/sassy-social-share.php";O:8:"stdClass":9:{s:2:"id";s:32:"w.org/plugins/sassy-social-share";s:4:"slug";s:18:"sassy-social-share";s:6:"plugin";s:41:"sassy-social-share/sassy-social-share.php";s:11:"new_version";s:6:"3.2.26";s:3:"url";s:49:"https://wordpress.org/plugins/sassy-social-share/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/sassy-social-share.zip";s:5:"icons";a:1:{s:2:"1x";s:71:"https://ps.w.org/sassy-social-share/assets/icon-128x128.png?rev=1300723";}s:7:"banners";a:1:{s:2:"1x";s:73:"https://ps.w.org/sassy-social-share/assets/banner-772x250.png?rev=1866721";}s:11:"banners_rtl";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(3, 6, '_status_event', 'Vẫn đang diễn ra'),
(4, 6, '_edit_last', '1'),
(5, 6, '_edit_lock', '1562583861:1'),
(8, 8, '_wp_attached_file', '2019/07/photo-1-1562575858133628431784.jpg'),
(9, 8, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:375;s:4:"file";s:42:"2019/07/photo-1-1562575858133628431784.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:42:"photo-1-1562575858133628431784-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:42:"photo-1-1562575858133628431784-600x375.jpg";s:5:"width";i:600;s:6:"height";i:375;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(10, 6, '_thumbnail_id', '8'),
(18, 11, '_status_event', 'Vẫn đang diễn ra'),
(19, 11, '_status_event', 'Vẫn đang diễn ra'),
(20, 11, '_edit_last', '1'),
(21, 11, '_edit_lock', '1562583843:1'),
(22, 11, '_thumbnail_id', '13'),
(28, 11, '_wp_old_slug', 'ung-dung-thanh-toan-di-dong-nhat-dong-cua-sau-khi-bi-hack-500-000-usd'),
(29, 13, '_wp_attached_file', '2019/07/photo-1-1562573423031169288564.jpg'),
(30, 13, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:617;s:6:"height";i:468;s:4:"file";s:42:"2019/07/photo-1-1562573423031169288564.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:42:"photo-1-1562573423031169288564-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:42:"photo-1-1562573423031169288564-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(33, 11, '_wp_old_slug', 'ung-dung-thanh-toan-di-dong-nhat-dong-cua-sau-khi-bi-hack-500-000-usd-2'),
(37, 17, '_status_event', 'Vẫn đang diễn ra'),
(38, 17, '_status_event', 'Vẫn đang diễn ra'),
(39, 17, '_edit_last', '1'),
(40, 17, '_edit_lock', '1562637330:1'),
(45, 18, '_wp_attached_file', '2019/07/iphone-dien-thoai-1-1562596824993549172376.jpg'),
(46, 18, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:660;s:6:"height";i:495;s:4:"file";s:54:"2019/07/iphone-dien-thoai-1-1562596824993549172376.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:54:"iphone-dien-thoai-1-1562596824993549172376-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:54:"iphone-dien-thoai-1-1562596824993549172376-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(49, 17, '_wp_old_slug', 'ung-dung-thanh-toan-di-dong-nhat-dong-cua-sau-khi-bi-hack-500-000-usd'),
(50, 17, '_thumbnail_id', '18'),
(53, 22, '_status_event', 'Vẫn đang diễn ra'),
(54, 22, '_status_event', 'Vẫn đang diễn ra'),
(55, 22, '_status_event', 'Vẫn đang diễn ra'),
(56, 22, '_edit_last', '1'),
(57, 22, '_edit_lock', '1562638221:1'),
(58, 22, '_thumbnail_id', '23'),
(61, 23, '_wp_attached_file', '2019/07/photo-1-1562634342000479809947.jpg'),
(62, 23, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:463;s:4:"file";s:42:"2019/07/photo-1-1562634342000479809947.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:42:"photo-1-1562634342000479809947-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:42:"photo-1-1562634342000479809947-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(65, 22, '_wp_old_slug', 'khong-chiu-kem-canh-elon-musk-jeff-bezos-cung-chuan-bi-phong-3236-ve-tinh-internet-vao-khong-gian'),
(66, 25, '_status_event', 'Vẫn đang diễn ra'),
(67, 25, '_status_event', 'Vẫn đang diễn ra'),
(68, 25, '_status_event', 'Vẫn đang diễn ra'),
(69, 25, '_edit_last', '1'),
(70, 25, '_edit_lock', '1562666548:1'),
(71, 25, '_thumbnail_id', '26'),
(74, 26, '_wp_attached_file', '2019/07/photo-1-1562634342000479809947-1.jpg'),
(75, 26, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:329;s:4:"file";s:44:"2019/07/photo-1-1562634342000479809947-1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:44:"photo-1-1562634342000479809947-1-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:44:"photo-1-1562634342000479809947-1-600x329.jpg";s:5:"width";i:600;s:6:"height";i:329;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(78, 25, '_wp_old_slug', 'dac-biet-hieu-qua-trong-nhung-luc-phai-cai-lai-may-bang-icloud'),
(81, 22, '_wp_old_slug', 'a-cu-82-tuoi-mung-roi-nuoc-mat-khi-do-dai-hoc-nha-ngheo-luc-10-tuoi-bi-bo-bat-bo-hoc-di-chan-de'),
(90, 31, '_status_event', 'Vẫn đang diễn ra'),
(91, 31, '_status_event', 'Vẫn đang diễn ra'),
(92, 31, '_edit_last', '1'),
(93, 31, '_edit_lock', '1562655978:1'),
(94, 31, '_thumbnail_id', '34'),
(98, 32, '_wp_attached_file', '2019/07/screen-shot-2019-06-12-at-61838-am-15626093975542075326691.png'),
(99, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:660;s:6:"height";i:341;s:4:"file";s:70:"2019/07/screen-shot-2019-06-12-at-61838-am-15626093975542075326691.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:70:"screen-shot-2019-06-12-at-61838-am-15626093975542075326691-300x250.png";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:70:"screen-shot-2019-06-12-at-61838-am-15626093975542075326691-600x341.png";s:5:"width";i:600;s:6:"height";i:341;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(102, 31, '_wp_old_slug', 'ung-dung-thanh-toan-di-dong-nhat-dong-cua-sau-khi-bi-hack-500-000-usd'),
(103, 34, '_wp_attached_file', '2019/07/door-shaver-door-planer-home-depot-door-shaver-planers-door-planer-home-depot-rental-door-planer-door-planer-home-depot.jpg'),
(104, 34, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:740;s:6:"height";i:544;s:4:"file";s:131:"2019/07/door-shaver-door-planer-home-depot-door-shaver-planers-door-planer-home-depot-rental-door-planer-door-planer-home-depot.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:131:"door-shaver-door-planer-home-depot-door-shaver-planers-door-planer-home-depot-rental-door-planer-door-planer-home-depot-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:131:"door-shaver-door-planer-home-depot-door-shaver-planers-door-planer-home-depot-rental-door-planer-door-planer-home-depot-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(109, 35, '_status_event', 'Vẫn đang diễn ra'),
(110, 35, '_status_event', 'Vẫn đang diễn ra'),
(111, 35, '_status_event', 'Vẫn đang diễn ra'),
(112, 35, '_status_event', 'Vẫn đang diễn ra'),
(113, 35, '_edit_last', '1'),
(114, 35, '_edit_lock', '1562655989:1'),
(115, 35, '_thumbnail_id', '32'),
(119, 35, '_wp_old_slug', 'ba-cu-82-tuoi-mung-roi-nuoc-mat-khi-do-dai-hoc-nha-ngheo-luc-10-tuoi-bi-bo-bat-bo-hoc-di-chan-de'),
(120, 37, '_status_event', 'Vẫn đang diễn ra'),
(121, 37, '_status_event', 'Vẫn đang diễn ra'),
(122, 37, '_edit_last', '1'),
(123, 37, '_edit_lock', '1562656003:1'),
(124, 37, '_thumbnail_id', '38'),
(128, 38, '_wp_attached_file', '2019/07/photo-1-1562556570326677889521.jpg'),
(129, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:488;s:4:"file";s:42:"2019/07/photo-1-1562556570326677889521.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:42:"photo-1-1562556570326677889521-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:42:"photo-1-1562556570326677889521-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(132, 37, '_wp_old_slug', 'ung-dung-thanh-toan-di-dong-nhat-dong-cua-sau-khi-bi-hack-500-000-usd'),
(135, 37, '_wp_old_slug', 'ung-dung-thanh-toan-di-dong-nhat-dong-cua-sau-khi-bi-hack-500-000-usd-2'),
(136, 40, '_status_event', 'Vẫn đang diễn ra'),
(137, 40, '_status_event', 'Vẫn đang diễn ra'),
(138, 40, '_edit_last', '1'),
(139, 40, '_edit_lock', '1562656033:1'),
(140, 40, '_thumbnail_id', '41'),
(144, 41, '_wp_attached_file', '2019/07/mwsnap021-1562554627950844337180.png'),
(145, 41, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:660;s:6:"height";i:380;s:4:"file";s:44:"2019/07/mwsnap021-1562554627950844337180.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:44:"mwsnap021-1562554627950844337180-300x250.png";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:44:"mwsnap021-1562554627950844337180-600x380.png";s:5:"width";i:600;s:6:"height";i:380;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(148, 40, '_wp_old_slug', 'ung-dung-thanh-toan-di-dong-nhat-dong-cua-sau-khi-bi-hack-500-000-usd'),
(149, 43, '_status_event', ''),
(150, 43, '_edit_last', '1'),
(151, 43, '_edit_lock', '1562645682:1'),
(152, 43, '_wp_page_template', 'page-template-trangchu.php'),
(153, 40, 'wpb_post_views_count', '3'),
(154, 37, 'wpb_post_views_count', '2'),
(155, 35, 'wpb_post_views_count', '2'),
(156, 31, 'wpb_post_views_count', '1'),
(157, 25, 'wpb_post_views_count', '3'),
(158, 45, '_status_event', ''),
(159, 45, '_menu_item_type', 'taxonomy'),
(160, 45, '_menu_item_menu_item_parent', '0'),
(161, 45, '_menu_item_object_id', '6'),
(162, 45, '_menu_item_object', 'category'),
(163, 45, '_menu_item_target', ''),
(164, 45, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(165, 45, '_menu_item_xfn', ''),
(166, 45, '_menu_item_url', ''),
(168, 46, '_status_event', ''),
(169, 46, '_menu_item_type', 'taxonomy'),
(170, 46, '_menu_item_menu_item_parent', '0'),
(171, 46, '_menu_item_object_id', '4'),
(172, 46, '_menu_item_object', 'category'),
(173, 46, '_menu_item_target', ''),
(174, 46, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(175, 46, '_menu_item_xfn', ''),
(176, 46, '_menu_item_url', ''),
(178, 47, '_status_event', ''),
(179, 47, '_menu_item_type', 'taxonomy'),
(180, 47, '_menu_item_menu_item_parent', '0'),
(181, 47, '_menu_item_object_id', '5'),
(182, 47, '_menu_item_object', 'category'),
(183, 47, '_menu_item_target', ''),
(184, 47, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(185, 47, '_menu_item_xfn', ''),
(186, 47, '_menu_item_url', ''),
(188, 48, '_status_event', ''),
(189, 48, '_menu_item_type', 'taxonomy'),
(190, 48, '_menu_item_menu_item_parent', '0'),
(191, 48, '_menu_item_object_id', '3'),
(192, 48, '_menu_item_object', 'category'),
(193, 48, '_menu_item_target', ''),
(194, 48, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(195, 48, '_menu_item_xfn', ''),
(196, 48, '_menu_item_url', ''),
(198, 49, '_status_event', ''),
(199, 49, '_menu_item_type', 'taxonomy'),
(200, 49, '_menu_item_menu_item_parent', '0'),
(201, 49, '_menu_item_object_id', '2'),
(202, 49, '_menu_item_object', 'category'),
(203, 49, '_menu_item_target', ''),
(204, 49, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(205, 49, '_menu_item_xfn', ''),
(206, 49, '_menu_item_url', ''),
(207, 49, '_menu_item_orphaned', '1562646428'),
(208, 50, '_status_event', ''),
(209, 50, '_menu_item_type', 'custom'),
(210, 50, '_menu_item_menu_item_parent', '0'),
(211, 50, '_menu_item_object_id', '50'),
(212, 50, '_menu_item_object', 'custom'),
(213, 50, '_menu_item_target', ''),
(214, 50, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(215, 50, '_menu_item_xfn', ''),
(216, 50, '_menu_item_url', 'https://khuyenmai.tenten.vn/'),
(218, 51, '_wp_attached_file', '2019/07/logo.png'),
(219, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:226;s:6:"height";i:50;s:4:"file";s:16:"2019/07/logo.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(225, 31, 'meta-checkbox', 'yes'),
(228, 35, 'meta-checkbox', 'yes'),
(231, 37, 'meta-checkbox', 'yes'),
(234, 40, 'meta-checkbox', ''),
(239, 25, 'meta-checkbox', 'yes'),
(240, 53, '_status_event', 'Vẫn đang diễn ra'),
(241, 53, 'meta-checkbox', ''),
(242, 53, '_edit_last', '1'),
(243, 53, '_edit_lock', '1562741869:1'),
(250, 53, '_wp_old_slug', 'giagndz'),
(251, 56, '_status_event', 'Vẫn đang diễn ra'),
(252, 56, 'meta-checkbox', ''),
(253, 56, '_status_event', 'Vẫn đang diễn ra'),
(254, 56, 'meta-checkbox', ''),
(255, 56, '_edit_last', '1'),
(256, 56, '_edit_lock', '1562741895:1'),
(262, 56, '_wp_old_slug', 'thong-bao-bao-tri-he-thong-email-server-kusa-mailler-tren-server-mail-kusa'),
(263, 58, '_status_event', 'Vẫn đang diễn ra'),
(264, 58, 'meta-checkbox', ''),
(265, 58, '_status_event', 'Vẫn đang diễn ra'),
(266, 58, 'meta-checkbox', ''),
(267, 58, '_status_event', 'Vẫn đang diễn ra'),
(268, 58, 'meta-checkbox', ''),
(269, 58, '_edit_last', '1'),
(270, 58, '_edit_lock', '1562741917:1'),
(274, 58, '_wp_old_slug', 'thong-bao-bao-tri-he-thong-email-server-kusa-mailler-tren-server-mail-kusa-2'),
(275, 60, '_status_event', 'Vẫn đang diễn ra'),
(276, 60, 'meta-checkbox', ''),
(277, 60, '_status_event', 'Vẫn đang diễn ra'),
(278, 60, 'meta-checkbox', ''),
(279, 60, '_status_event', 'Vẫn đang diễn ra'),
(280, 60, 'meta-checkbox', ''),
(281, 60, '_status_event', 'Vẫn đang diễn ra'),
(282, 60, 'meta-checkbox', ''),
(283, 60, '_edit_last', '1'),
(284, 60, '_edit_lock', '1562741952:1'),
(294, 60, '_wp_old_slug', 'thong-bao-bao-tri-he-thong-email-server-kusa-mailler-tren-server-mail-kusa-2-2'),
(295, 62, '_status_event', 'Vẫn đang diễn ra'),
(296, 62, 'meta-checkbox', ''),
(297, 62, '_status_event', 'Vẫn đang diễn ra'),
(298, 62, 'meta-checkbox', ''),
(299, 62, '_status_event', 'Vẫn đang diễn ra'),
(300, 62, 'meta-checkbox', ''),
(301, 62, '_status_event', 'Vẫn đang diễn ra'),
(302, 62, 'meta-checkbox', ''),
(303, 62, '_status_event', 'Vẫn đang diễn ra'),
(304, 62, 'meta-checkbox', ''),
(305, 62, '_edit_last', '1'),
(306, 62, '_edit_lock', '1562741970:1'),
(314, 62, '_wp_old_slug', 'thong-bao-bao-tri-he-thong-email-server-tai-tenten-vn'),
(315, 64, '_status_event', ''),
(316, 64, 'meta-checkbox', ''),
(317, 64, '_edit_last', '1'),
(318, 64, '_edit_lock', '1562742745:1'),
(323, 64, '_wp_trash_meta_status', 'publish'),
(324, 64, '_wp_trash_meta_time', '1562742892'),
(325, 64, '_wp_desired_post_slug', 'giangdz'),
(326, 66, '_status_event', ''),
(327, 66, 'meta-checkbox', ''),
(328, 66, '_edit_last', '1'),
(329, 66, '_edit_lock', '1562743718:1'),
(332, 66, '_wp_trash_meta_status', 'publish'),
(333, 66, '_wp_trash_meta_time', '1562743864'),
(334, 66, '_wp_desired_post_slug', 'giang-dz-super'),
(335, 68, '_status_event', ''),
(336, 68, 'meta-checkbox', ''),
(337, 68, 'metaslider_slideshow_theme', 'none'),
(338, 68, 'ml-slider_settings', 'a:38:{s:4:"type";s:4:"flex";s:6:"random";s:5:"false";s:8:"cssClass";s:0:"";s:8:"printCss";s:4:"true";s:7:"printJs";s:4:"true";s:5:"width";s:4:"1170";s:6:"height";s:3:"450";s:3:"spw";i:7;s:3:"sph";i:5;s:5:"delay";s:4:"3000";s:6:"sDelay";i:30;s:7:"opacity";d:0.69999999999999996;s:10:"titleSpeed";i:500;s:6:"effect";s:4:"fade";s:10:"navigation";s:4:"true";s:5:"links";s:4:"true";s:10:"hoverPause";s:4:"true";s:5:"theme";s:7:"default";s:9:"direction";s:10:"horizontal";s:7:"reverse";s:5:"false";s:14:"animationSpeed";s:3:"600";s:8:"prevText";s:8:"Previous";s:8:"nextText";s:4:"Next";s:6:"slices";i:15;s:6:"center";s:5:"false";s:9:"smartCrop";s:4:"true";s:12:"carouselMode";s:5:"false";s:14:"carouselMargin";s:1:"5";s:16:"firstSlideFadeIn";s:4:"true";s:6:"easing";s:6:"linear";s:8:"autoPlay";s:4:"true";s:11:"thumb_width";i:150;s:12:"thumb_height";i:100;s:17:"responsive_thumbs";s:5:"false";s:15:"thumb_min_width";i:100;s:9:"fullWidth";s:4:"true";s:10:"noConflict";s:4:"true";s:12:"smoothHeight";s:5:"false";}'),
(339, 69, '_wp_attached_file', '2019/07/02_tintuc_hoatdongxahoi.jpg'),
(340, 69, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1170;s:6:"height";i:447;s:4:"file";s:35:"2019/07/02_tintuc_hoatdongxahoi.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"02_tintuc_hoatdongxahoi-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:35:"02_tintuc_hoatdongxahoi-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:35:"02_tintuc_hoatdongxahoi-768x293.jpg";s:5:"width";i:768;s:6:"height";i:293;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-700x300";a:4:{s:4:"file";s:35:"02_tintuc_hoatdongxahoi-700x300.jpg";s:5:"width";i:700;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-620x266";a:4:{s:4:"file";s:35:"02_tintuc_hoatdongxahoi-620x266.jpg";s:5:"width";i:620;s:6:"height";i:266;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-400x171";a:4:{s:4:"file";s:35:"02_tintuc_hoatdongxahoi-400x171.jpg";s:5:"width";i:400;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";}s:28:"meta-slider-resized-1162x447";a:4:{s:4:"file";s:36:"02_tintuc_hoatdongxahoi-1162x447.jpg";s:5:"width";i:1162;s:6:"height";i:447;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-620x239";a:4:{s:4:"file";s:35:"02_tintuc_hoatdongxahoi-620x239.jpg";s:5:"width";i:620;s:6:"height";i:239;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-400x154";a:4:{s:4:"file";s:35:"02_tintuc_hoatdongxahoi-400x154.jpg";s:5:"width";i:400;s:6:"height";i:154;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(341, 70, '_status_event', ''),
(342, 70, 'meta-checkbox', ''),
(343, 70, '_thumbnail_id', '69'),
(344, 70, 'ml-slider_type', 'image'),
(345, 70, 'ml-slider_inherit_image_title', '1'),
(346, 70, 'ml-slider_inherit_image_alt', '1'),
(347, 69, '_wp_attachment_backup_sizes', 'a:6:{s:15:"resized-700x300";a:5:{s:4:"path";s:89:"C:xampphtdocstintuc_tenten/wp-content/uploads/2019/07/02_tintuc_hoatdongxahoi-700x300.jpg";s:4:"file";s:35:"02_tintuc_hoatdongxahoi-700x300.jpg";s:5:"width";i:700;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-620x266";a:5:{s:4:"path";s:89:"C:xampphtdocstintuc_tenten/wp-content/uploads/2019/07/02_tintuc_hoatdongxahoi-620x266.jpg";s:4:"file";s:35:"02_tintuc_hoatdongxahoi-620x266.jpg";s:5:"width";i:620;s:6:"height";i:266;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-400x171";a:5:{s:4:"path";s:89:"C:xampphtdocstintuc_tenten/wp-content/uploads/2019/07/02_tintuc_hoatdongxahoi-400x171.jpg";s:4:"file";s:35:"02_tintuc_hoatdongxahoi-400x171.jpg";s:5:"width";i:400;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";}s:16:"resized-1162x447";a:5:{s:4:"path";s:90:"C:xampphtdocstintuc_tenten/wp-content/uploads/2019/07/02_tintuc_hoatdongxahoi-1162x447.jpg";s:4:"file";s:36:"02_tintuc_hoatdongxahoi-1162x447.jpg";s:5:"width";i:1162;s:6:"height";i:447;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-620x239";a:5:{s:4:"path";s:89:"C:xampphtdocstintuc_tenten/wp-content/uploads/2019/07/02_tintuc_hoatdongxahoi-620x239.jpg";s:4:"file";s:35:"02_tintuc_hoatdongxahoi-620x239.jpg";s:5:"width";i:620;s:6:"height";i:239;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-400x154";a:5:{s:4:"path";s:89:"C:xampphtdocstintuc_tenten/wp-content/uploads/2019/07/02_tintuc_hoatdongxahoi-400x154.jpg";s:4:"file";s:35:"02_tintuc_hoatdongxahoi-400x154.jpg";s:5:"width";i:400;s:6:"height";i:154;s:9:"mime-type";s:10:"image/jpeg";}}'),
(348, 70, 'ml-slider_crop_position', 'center-center'),
(349, 70, 'ml-slider_caption_source', 'image-caption'),
(350, 70, '_wp_attachment_image_alt', ''),
(351, 71, '_status_event', 'Vẫn đang diễn ra'),
(352, 71, 'meta-checkbox', ''),
(353, 71, '_edit_last', '1'),
(354, 71, '_edit_lock', '1562816708:1'),
(355, 72, '_wp_attached_file', '2019/07/bemutkeo.jpg'),
(356, 72, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:534;s:6:"height";i:348;s:4:"file";s:20:"2019/07/bemutkeo.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"bemutkeo-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(357, 71, '_thumbnail_id', '72');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(6, 1, '2019-07-08 11:00:54', '2019-07-08 11:00:54', '<h3 class="knc-sapo">Eleven Nhật Bản đã quyết định tạm dừng tính năng thanh toán di động mới ra mắt sau khi tin tặc đánh cắp 500.000 USD từ người dùng.</h3>\r\nTheo , 7-Eleven Nhật Bản đã buộc phải dừng tính năng thanh toán di động 7Pay, sau khi xuất hiện lỗ hổng nghiêm trọng cho phép bên thứ 3 thực hiện thanh toán các giao dịch không có thật trên hàng trăm tài khoản khách hàng.\r\n\r\nCông ty này đã ra mắt tính năng thanh toán di động 7Pay vào ngày 1/7 vừa qua, cho khách hàng quét mã vạch bằng ứng dụng và trừ tiền vào thẻ tín dụng hoặc thẻ ghi nợ được liên kết.\r\n\r\nTuy nhiên, 7-Eleven đã nhận được một khiếu nại từ khách hàng ngay ngày hôm sau: tài khoản bị trừ tiền trong khi họ không hề thực hiện giao dịch nào.\r\n\r\n<img class="wp-image-8 size-full aligncenter" src="http://tintuc.tenten.co/wp-content/uploads/2019/07/photo-1-1562575858133628431784.jpg" alt="" width="600" height="375" />\r\n\r\nTheo Yahoo News Japan, ứng dụng này có lỗ hổng, cho phép hacker yêu cầu đặt lại mật khẩu gửi về một email mới, chỉ cần cung cấp đúng ngày sinh, email và số điện thoại của người dùng.\r\n\r\nỨng dụng này cũng mặc định ngày sinh là 1/1/2019 nếu khách hàng không điền thông tin khai báo. Điều này càng khiến cho hacker xâm nhập vào tài khoản dễ dàng hơn.\r\n\r\nCó khoảng 900 tài khoản khách hàng bị tin tặc tấn công và theo 7-Eleven Nhật Bản, số tiền bị hacker lấy đi là 55 triệu Yên (khoảng 500.000 USD). Công ty này cho biết đã dừng hoạt động 7Pay bằng cách ngừng liên kết tới các thẻ tín dụng, đưa cảnh báo lên trang web và ngừng các đăng ký người dùng mới.\r\n\r\n7-Eleven Nhật Bản cho biết, họ sẽ bồi thường cho những người dùng bị hack tài khoản và thiết lập đường dây nóng hỗ trợ khách hàng.\r\n\r\nMột thành viên của Bộ Kinh tế, Thương mại và Công nghiệp Nhật Bản nói với 7-Eleven rằng, công ty đã không tuân thủ các hướng dẫn về bảo mật, theo Japan Times. Chính quyền Nhật Bản đã bắt giữ hai cá nhân cố gắng sử dụng tài khoản bị hack, nghi ngờ rằng họ hợp tác (hoặc đã được thuê) bởi một nhóm tội phạm nổi tiếng ở Trung Quốc chuyên trộm cắp trực tuyến.', 'Ứng dụng thanh toán di động Nhật đóng cửa sau khi bị hack 500.000 USD', 'Có khoảng 900 tài khoản khách hàng bị tin tặc tấn công và theo 7-Eleven Nhật Bản, số tiền bị hacker lấy đi là 55 triệu Yên (khoảng 500.000 USD). Công ty này cho biết đã dừng hoạt động 7Pay bằng cách ngừng liên kết tới các thẻ tín dụng, đưa cảnh báo lên trang web và ngừng các đăng ký người dùng mới.', 'publish', 'open', 'open', '', 'ung-dung-thanh-toan-di-dong-nhat-dong-cua-sau-khi-bi-hack-500-000-usd', '', '', '2019-07-08 11:06:42', '2019-07-08 11:06:42', '', 0, 'http://tintuc.tenten.co/?p=6', 0, 'post', '', 0),
(7, 1, '2019-07-08 11:00:54', '2019-07-08 11:00:54', '<h3 class="knc-sapo">Eleven Nhật Bản đã quyết định tạm dừng tính năng thanh toán di động mới ra mắt sau khi tin tặc đánh cắp 500.000 USD từ người dùng.</h3>\r\nTheo , 7-Eleven Nhật Bản đã buộc phải dừng tính năng thanh toán di động 7Pay, sau khi xuất hiện lỗ hổng nghiêm trọng cho phép bên thứ 3 thực hiện thanh toán các giao dịch không có thật trên hàng trăm tài khoản khách hàng.\r\n\r\nCông ty này đã ra mắt tính năng thanh toán di động 7Pay vào ngày 1/7 vừa qua, cho khách hàng quét mã vạch bằng ứng dụng và trừ tiền vào thẻ tín dụng hoặc thẻ ghi nợ được liên kết.\r\n\r\nTuy nhiên, 7-Eleven đã nhận được một khiếu nại từ khách hàng ngay ngày hôm sau: tài khoản bị trừ tiền trong khi họ không hề thực hiện giao dịch nào.\r\n\r\nTheo Yahoo News Japan, ứng dụng này có lỗ hổng, cho phép hacker yêu cầu đặt lại mật khẩu gửi về một email mới, chỉ cần cung cấp đúng ngày sinh, email và số điện thoại của người dùng.\r\n\r\nỨng dụng này cũng mặc định ngày sinh là 1/1/2019 nếu khách hàng không điền thông tin khai báo. Điều này càng khiến cho hacker xâm nhập vào tài khoản dễ dàng hơn.\r\n\r\nCó khoảng 900 tài khoản khách hàng bị tin tặc tấn công và theo 7-Eleven Nhật Bản, số tiền bị hacker lấy đi là 55 triệu Yên (khoảng 500.000 USD). Công ty này cho biết đã dừng hoạt động 7Pay bằng cách ngừng liên kết tới các thẻ tín dụng, đưa cảnh báo lên trang web và ngừng các đăng ký người dùng mới.\r\n\r\n7-Eleven Nhật Bản cho biết, họ sẽ bồi thường cho những người dùng bị hack tài khoản và thiết lập đường dây nóng hỗ trợ khách hàng.\r\n\r\nMột thành viên của Bộ Kinh tế, Thương mại và Công nghiệp Nhật Bản nói với 7-Eleven rằng, công ty đã không tuân thủ các hướng dẫn về bảo mật, theo Japan Times. Chính quyền Nhật Bản đã bắt giữ hai cá nhân cố gắng sử dụng tài khoản bị hack, nghi ngờ rằng họ hợp tác (hoặc đã được thuê) bởi một nhóm tội phạm nổi tiếng ở Trung Quốc chuyên trộm cắp trực tuyến.', 'Ứng dụng thanh toán di động Nhật đóng cửa sau khi bị hack 500.000 USD', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-07-08 11:00:54', '2019-07-08 11:00:54', '', 6, 'http://tintuc.tenten.co/2019/07/08/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2019-07-08 11:02:03', '2019-07-08 11:02:03', '', 'photo-1-1562575858133628431784', '', 'inherit', 'open', 'closed', '', 'photo-1-1562575858133628431784', '', '', '2019-07-08 11:02:03', '2019-07-08 11:02:03', '', 6, 'http://tintuc.tenten.co/wp-content/uploads/2019/07/photo-1-1562575858133628431784.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2019-07-08 11:02:23', '2019-07-08 11:02:23', '<h3 class="knc-sapo">Eleven Nhật Bản đã quyết định tạm dừng tính năng thanh toán di động mới ra mắt sau khi tin tặc đánh cắp 500.000 USD từ người dùng.</h3>\r\nTheo , 7-Eleven Nhật Bản đã buộc phải dừng tính năng thanh toán di động 7Pay, sau khi xuất hiện lỗ hổng nghiêm trọng cho phép bên thứ 3 thực hiện thanh toán các giao dịch không có thật trên hàng trăm tài khoản khách hàng.\r\n\r\nCông ty này đã ra mắt tính năng thanh toán di động 7Pay vào ngày 1/7 vừa qua, cho khách hàng quét mã vạch bằng ứng dụng và trừ tiền vào thẻ tín dụng hoặc thẻ ghi nợ được liên kết.\r\n\r\nTuy nhiên, 7-Eleven đã nhận được một khiếu nại từ khách hàng ngay ngày hôm sau: tài khoản bị trừ tiền trong khi họ không hề thực hiện giao dịch nào.\r\n\r\n<img class="wp-image-8 size-full aligncenter" src="http://tintuc.tenten.co/wp-content/uploads/2019/07/photo-1-1562575858133628431784.jpg" alt="" width="600" height="375" />\r\n\r\nTheo Yahoo News Japan, ứng dụng này có lỗ hổng, cho phép hacker yêu cầu đặt lại mật khẩu gửi về một email mới, chỉ cần cung cấp đúng ngày sinh, email và số điện thoại của người dùng.\r\n\r\nỨng dụng này cũng mặc định ngày sinh là 1/1/2019 nếu khách hàng không điền thông tin khai báo. Điều này càng khiến cho hacker xâm nhập vào tài khoản dễ dàng hơn.\r\n\r\nCó khoảng 900 tài khoản khách hàng bị tin tặc tấn công và theo 7-Eleven Nhật Bản, số tiền bị hacker lấy đi là 55 triệu Yên (khoảng 500.000 USD). Công ty này cho biết đã dừng hoạt động 7Pay bằng cách ngừng liên kết tới các thẻ tín dụng, đưa cảnh báo lên trang web và ngừng các đăng ký người dùng mới.\r\n\r\n7-Eleven Nhật Bản cho biết, họ sẽ bồi thường cho những người dùng bị hack tài khoản và thiết lập đường dây nóng hỗ trợ khách hàng.\r\n\r\nMột thành viên của Bộ Kinh tế, Thương mại và Công nghiệp Nhật Bản nói với 7-Eleven rằng, công ty đã không tuân thủ các hướng dẫn về bảo mật, theo Japan Times. Chính quyền Nhật Bản đã bắt giữ hai cá nhân cố gắng sử dụng tài khoản bị hack, nghi ngờ rằng họ hợp tác (hoặc đã được thuê) bởi một nhóm tội phạm nổi tiếng ở Trung Quốc chuyên trộm cắp trực tuyến.', 'Ứng dụng thanh toán di động Nhật đóng cửa sau khi bị hack 500.000 USD', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-07-08 11:02:23', '2019-07-08 11:02:23', '', 6, 'http://tintuc.tenten.co/2019/07/08/6-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2019-07-08 11:05:29', '2019-07-08 11:05:29', 'Amazon vừa xin phép chính quyền Mỹ để được phóng 3.236 vệ tinh liên lạc lên quỹ đạo thấp của Trái Đất. Với động thái này, Amazon của sáng lập kiêm CEO Jeff Bezos dường như đã sẵn sàng thách thức hạm đội vệ tinh internet của SpaceX do Elon Musk điều hành.\r\n\r\nAmazon đệ trình kế hoạch của họ lên Ủy ban Truyền thông Liên bang Mỹ vào ngày 4/7 vừa qua. Dự kiến, các vệ tinh mang tên Kuiper của Amazon sẽ cung cấp kết nối internet băng thông rộng cho hàng chục triệu người dùng và doanh nghiệp hiện chưa có điều kiện truy cập một cách thoải mái.\r\n\r\nFCC đã phê duyệt cho gần 13.000 vệ tinh hoạt động trong quỹ đạo thấp của Trái Đất. Chúng bao gồm 11.943 vệ tinh của SpaceX được phóng vào hồi tháng 5 vừa rồi.\r\n\r\nTrên quỹ đạo thấp của trái đất (ở độ cao từ 180 đến 20.000km), các vệ tinh sẽ bay xung quanh Trái Đất để duy trì độ cao và cần 90 phút để hoàn thành 1 quỹ đạo. Khi một vệ tinh khuất nơi chân trời, nó sẽ chuyển tiếp việc phát tín hiệu lại cho vệ tinh tiếp theo sau. Càng nhiều vệ tinh thì vùng phủ sóng càng lớn và đảm bảo tính liên tục.\r\n\r\n<b>Một dự án dài hạn</b>\r\n\r\nHồi tháng trước, CEO Amazon ông Jeff Bezos đã chia sẻ rằng dự án Kuiper sẽ tiêu tốn nhiều tỷ USD. Dự án này hoàn toàn tách biệt với công ty phát triển tên lửa Blue Origin, cũng thuộc sở hữu của Jeff Bezos.\r\n\r\n<i>"Đây là một dự án dài hạn, hướng tới phục vụ hàng triệu người đang thiếu quyền truy cập cơ bản vào internet băng thông rộng"</i>, Amazon tuyên bố. Trong hồ sơ, Amazon cho biết họ sẽ cung cấp kết nối internet băng thông rộng, tốc độ cao, ổn định tới người dân Mỹ ở các khu vực nông thôn và vùng sâu vùng xa.\r\n\r\nNgoài ra, Hệ thống Kuiper cũng giúp các nhà mạng di động mở rộng dịch vụ không dây. Nó cũng hứa hẹn mang lại kết nối băng thông di động chất lượng cao cho máy bay, tàu biển và các phương tiện đường bộ.\r\n\r\nTheo nghiên cứu của FCC, khoảng 21 triệu người Mỹ thiếu kết nối băng thông rộng cố định và 33 triệu người không thể truy cập dịch vụ di động tốc độ cao. Trên toàn thế giới, 3,8 tỷ người vẫn chưa có dịch vụ internet băng thông rộng nhanh và đáng tin cậy.', 'Không chịu kém cạnh Elon Musk, Jeff Bezos cũng chuẩn bị phóng 3,236 vệ tinh internet vào không gian', 'Amazon vừa xin phép chính quyền Mỹ để được phóng 3.236 vệ tinh liên lạc lên quỹ đạo thấp của Trái Đất. Với động thái này, Amazon của sáng lập kiêm CEO Jeff Bezos dường như đã sẵn sàng thách thức hạm đội vệ tinh internet của SpaceX do Elon Musk điều hành.', 'publish', 'open', 'open', '', 'khong-chiu-kem-canh-elon-musk-jeff-bezos-cung-chuan-bi-phong-3236-ve-tinh-internet-vao-khong-gian', '', '', '2019-07-08 11:06:24', '2019-07-08 11:06:24', '', 0, 'http://tintuc.tenten.co/?p=11', 0, 'post', '', 0),
(12, 1, '2019-07-08 11:05:29', '2019-07-08 11:05:29', '<h3 class="knc-sapo">Eleven Nhật Bản đã quyết định tạm dừng tính năng thanh toán di động mới ra mắt sau khi tin tặc đánh cắp 500.000 USD từ người dùng.</h3>\r\nTheo , 7-Eleven Nhật Bản đã buộc phải dừng tính năng thanh toán di động 7Pay, sau khi xuất hiện lỗ hổng nghiêm trọng cho phép bên thứ 3 thực hiện thanh toán các giao dịch không có thật trên hàng trăm tài khoản khách hàng.\r\n\r\nCông ty này đã ra mắt tính năng thanh toán di động 7Pay vào ngày 1/7 vừa qua, cho khách hàng quét mã vạch bằng ứng dụng và trừ tiền vào thẻ tín dụng hoặc thẻ ghi nợ được liên kết.\r\n\r\nTuy nhiên, 7-Eleven đã nhận được một khiếu nại từ khách hàng ngay ngày hôm sau: tài khoản bị trừ tiền trong khi họ không hề thực hiện giao dịch nào.\r\n\r\n<img class="wp-image-8 size-full aligncenter" src="http://tintuc.tenten.co/wp-content/uploads/2019/07/photo-1-1562575858133628431784.jpg" alt="" width="600" height="375" />\r\n\r\nTheo Yahoo News Japan, ứng dụng này có lỗ hổng, cho phép hacker yêu cầu đặt lại mật khẩu gửi về một email mới, chỉ cần cung cấp đúng ngày sinh, email và số điện thoại của người dùng.\r\n\r\nỨng dụng này cũng mặc định ngày sinh là 1/1/2019 nếu khách hàng không điền thông tin khai báo. Điều này càng khiến cho hacker xâm nhập vào tài khoản dễ dàng hơn.\r\n\r\nCó khoảng 900 tài khoản khách hàng bị tin tặc tấn công và theo 7-Eleven Nhật Bản, số tiền bị hacker lấy đi là 55 triệu Yên (khoảng 500.000 USD). Công ty này cho biết đã dừng hoạt động 7Pay bằng cách ngừng liên kết tới các thẻ tín dụng, đưa cảnh báo lên trang web và ngừng các đăng ký người dùng mới.\r\n\r\n7-Eleven Nhật Bản cho biết, họ sẽ bồi thường cho những người dùng bị hack tài khoản và thiết lập đường dây nóng hỗ trợ khách hàng.\r\n\r\nMột thành viên của Bộ Kinh tế, Thương mại và Công nghiệp Nhật Bản nói với 7-Eleven rằng, công ty đã không tuân thủ các hướng dẫn về bảo mật, theo Japan Times. Chính quyền Nhật Bản đã bắt giữ hai cá nhân cố gắng sử dụng tài khoản bị hack, nghi ngờ rằng họ hợp tác (hoặc đã được thuê) bởi một nhóm tội phạm nổi tiếng ở Trung Quốc chuyên trộm cắp trực tuyến.', 'Ứng dụng thanh toán di động Nhật đóng cửa sau khi bị hack 500.000 USD', 'Có khoảng 900 tài khoản khách hàng bị tin tặc tấn công và theo 7-Eleven Nhật Bản, số tiền bị hacker lấy đi là 55 triệu Yên (khoảng 500.000 USD). Công ty này cho biết đã dừng hoạt động 7Pay bằng cách ngừng liên kết tới các thẻ tín dụng, đưa cảnh báo lên trang web và ngừng các đăng ký người dùng mới.', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-07-08 11:05:29', '2019-07-08 11:05:29', '', 11, 'http://tintuc.tenten.co/2019/07/08/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2019-07-08 11:06:20', '2019-07-08 11:06:20', '', 'photo-1-1562573423031169288564', '', 'inherit', 'open', 'closed', '', 'photo-1-1562573423031169288564', '', '', '2019-07-08 11:06:20', '2019-07-08 11:06:20', '', 11, 'http://tintuc.tenten.co/wp-content/uploads/2019/07/photo-1-1562573423031169288564.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2019-07-08 11:06:24', '2019-07-08 11:06:24', 'Amazon vừa xin phép chính quyền Mỹ để được phóng 3.236 vệ tinh liên lạc lên quỹ đạo thấp của Trái Đất. Với động thái này, Amazon của sáng lập kiêm CEO Jeff Bezos dường như đã sẵn sàng thách thức hạm đội vệ tinh internet của SpaceX do Elon Musk điều hành.\r\n\r\nAmazon đệ trình kế hoạch của họ lên Ủy ban Truyền thông Liên bang Mỹ vào ngày 4/7 vừa qua. Dự kiến, các vệ tinh mang tên Kuiper của Amazon sẽ cung cấp kết nối internet băng thông rộng cho hàng chục triệu người dùng và doanh nghiệp hiện chưa có điều kiện truy cập một cách thoải mái.\r\n\r\nFCC đã phê duyệt cho gần 13.000 vệ tinh hoạt động trong quỹ đạo thấp của Trái Đất. Chúng bao gồm 11.943 vệ tinh của SpaceX được phóng vào hồi tháng 5 vừa rồi.\r\n\r\nTrên quỹ đạo thấp của trái đất (ở độ cao từ 180 đến 20.000km), các vệ tinh sẽ bay xung quanh Trái Đất để duy trì độ cao và cần 90 phút để hoàn thành 1 quỹ đạo. Khi một vệ tinh khuất nơi chân trời, nó sẽ chuyển tiếp việc phát tín hiệu lại cho vệ tinh tiếp theo sau. Càng nhiều vệ tinh thì vùng phủ sóng càng lớn và đảm bảo tính liên tục.\r\n\r\n<b>Một dự án dài hạn</b>\r\n\r\nHồi tháng trước, CEO Amazon ông Jeff Bezos đã chia sẻ rằng dự án Kuiper sẽ tiêu tốn nhiều tỷ USD. Dự án này hoàn toàn tách biệt với công ty phát triển tên lửa Blue Origin, cũng thuộc sở hữu của Jeff Bezos.\r\n\r\n<i>"Đây là một dự án dài hạn, hướng tới phục vụ hàng triệu người đang thiếu quyền truy cập cơ bản vào internet băng thông rộng"</i>, Amazon tuyên bố. Trong hồ sơ, Amazon cho biết họ sẽ cung cấp kết nối internet băng thông rộng, tốc độ cao, ổn định tới người dân Mỹ ở các khu vực nông thôn và vùng sâu vùng xa.\r\n\r\nNgoài ra, Hệ thống Kuiper cũng giúp các nhà mạng di động mở rộng dịch vụ không dây. Nó cũng hứa hẹn mang lại kết nối băng thông di động chất lượng cao cho máy bay, tàu biển và các phương tiện đường bộ.\r\n\r\nTheo nghiên cứu của FCC, khoảng 21 triệu người Mỹ thiếu kết nối băng thông rộng cố định và 33 triệu người không thể truy cập dịch vụ di động tốc độ cao. Trên toàn thế giới, 3,8 tỷ người vẫn chưa có dịch vụ internet băng thông rộng nhanh và đáng tin cậy.', 'Không chịu kém cạnh Elon Musk, Jeff Bezos cũng chuẩn bị phóng 3,236 vệ tinh internet vào không gian', 'Amazon vừa xin phép chính quyền Mỹ để được phóng 3.236 vệ tinh liên lạc lên quỹ đạo thấp của Trái Đất. Với động thái này, Amazon của sáng lập kiêm CEO Jeff Bezos dường như đã sẵn sàng thách thức hạm đội vệ tinh internet của SpaceX do Elon Musk điều hành.', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-07-08 11:06:24', '2019-07-08 11:06:24', '', 11, 'http://tintuc.tenten.co/2019/07/08/11-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2019-07-08 11:06:42', '2019-07-08 11:06:42', '<h3 class="knc-sapo">Eleven Nhật Bản đã quyết định tạm dừng tính năng thanh toán di động mới ra mắt sau khi tin tặc đánh cắp 500.000 USD từ người dùng.</h3>\r\nTheo , 7-Eleven Nhật Bản đã buộc phải dừng tính năng thanh toán di động 7Pay, sau khi xuất hiện lỗ hổng nghiêm trọng cho phép bên thứ 3 thực hiện thanh toán các giao dịch không có thật trên hàng trăm tài khoản khách hàng.\r\n\r\nCông ty này đã ra mắt tính năng thanh toán di động 7Pay vào ngày 1/7 vừa qua, cho khách hàng quét mã vạch bằng ứng dụng và trừ tiền vào thẻ tín dụng hoặc thẻ ghi nợ được liên kết.\r\n\r\nTuy nhiên, 7-Eleven đã nhận được một khiếu nại từ khách hàng ngay ngày hôm sau: tài khoản bị trừ tiền trong khi họ không hề thực hiện giao dịch nào.\r\n\r\n<img class="wp-image-8 size-full aligncenter" src="http://tintuc.tenten.co/wp-content/uploads/2019/07/photo-1-1562575858133628431784.jpg" alt="" width="600" height="375" />\r\n\r\nTheo Yahoo News Japan, ứng dụng này có lỗ hổng, cho phép hacker yêu cầu đặt lại mật khẩu gửi về một email mới, chỉ cần cung cấp đúng ngày sinh, email và số điện thoại của người dùng.\r\n\r\nỨng dụng này cũng mặc định ngày sinh là 1/1/2019 nếu khách hàng không điền thông tin khai báo. Điều này càng khiến cho hacker xâm nhập vào tài khoản dễ dàng hơn.\r\n\r\nCó khoảng 900 tài khoản khách hàng bị tin tặc tấn công và theo 7-Eleven Nhật Bản, số tiền bị hacker lấy đi là 55 triệu Yên (khoảng 500.000 USD). Công ty này cho biết đã dừng hoạt động 7Pay bằng cách ngừng liên kết tới các thẻ tín dụng, đưa cảnh báo lên trang web và ngừng các đăng ký người dùng mới.\r\n\r\n7-Eleven Nhật Bản cho biết, họ sẽ bồi thường cho những người dùng bị hack tài khoản và thiết lập đường dây nóng hỗ trợ khách hàng.\r\n\r\nMột thành viên của Bộ Kinh tế, Thương mại và Công nghiệp Nhật Bản nói với 7-Eleven rằng, công ty đã không tuân thủ các hướng dẫn về bảo mật, theo Japan Times. Chính quyền Nhật Bản đã bắt giữ hai cá nhân cố gắng sử dụng tài khoản bị hack, nghi ngờ rằng họ hợp tác (hoặc đã được thuê) bởi một nhóm tội phạm nổi tiếng ở Trung Quốc chuyên trộm cắp trực tuyến.', 'Ứng dụng thanh toán di động Nhật đóng cửa sau khi bị hack 500.000 USD', 'Có khoảng 900 tài khoản khách hàng bị tin tặc tấn công và theo 7-Eleven Nhật Bản, số tiền bị hacker lấy đi là 55 triệu Yên (khoảng 500.000 USD). Công ty này cho biết đã dừng hoạt động 7Pay bằng cách ngừng liên kết tới các thẻ tín dụng, đưa cảnh báo lên trang web và ngừng các đăng ký người dùng mới.', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-07-08 11:06:42', '2019-07-08 11:06:42', '', 6, 'http://tintuc.tenten.co/2019/07/08/6-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2019-07-09 01:56:38', '2019-07-09 01:56:38', '<h4 class="knc-sapo">Nếu bạn từng phải cài lại máy (restore) các thiết bị iDevices thì sẽ biết rằng đây là một quá trình lâu dài và ''mệt mỏi''. Nhưng bạn có biết rằng, quá trình này sẽ nhanh hơn rất nhiều nếu ta sử dụng đá lạnh?</h4>\r\n<img class="wp-image-18 size-full aligncenter" src="http://tintuc.tenten.co/wp-content/uploads/2019/07/iphone-dien-thoai-1-1562596824993549172376.jpg" alt="" width="660" height="495" />\r\n\r\nSở dĩ việc cài lại máy chậm là do CPU của iPhone khi hoạt động hết công suất trong một thời gian nhất định sẽ bị nóng và giảm hiệu năng (throttling). Chính vì vậy, việc ''kẹp'' iPhone giữa những viên đá mát lạnh sẽ giúp nó chạy nhanh hơn một cách đáng kể. Theo như anh Justin Searls, người chia sẻ thủ thuật này thì nó giúp thời gian cài lại giảm xuống còn một nửa, rất hữu hiệu!\r\n\r\nNhưng người dùng cũng nên cẩn thận khi làm theo thủ thuật này, không nên để thiết bị <i>bên trong tủ đá</i> vì đá có thể chảy ra và làm hỏng các linh kiện điện tử. Điều này tối quan trọng với các dòng iPhone và iPad thế hệ cũ, thường không được trang bị bất cứ chuẩn chống nước nào. Người dùng cũng có thể để chúng vào túi zip để tránh hiện tượng này.', 'Đặc biệt hiệu quả trong những lúc phải cài lại máy bằng iCloud.', 'Nếu bạn từng phải cài lại máy (restore) các thiết bị iDevices thì sẽ biết rằng đây là một quá trình lâu dài và ''mệt mỏi''. Nhưng bạn có biết rằng, quá trình này sẽ nhanh hơn rất nhiều nếu ta sử dụng đá lạnh?', 'publish', 'open', 'open', '', 'dac-biet-hieu-qua-trong-nhung-luc-phai-cai-lai-may-bang-icloud', '', '', '2019-07-09 01:57:50', '2019-07-09 01:57:50', '', 0, 'http://tintuc.tenten.co/?p=17', 0, 'post', '', 0),
(18, 1, '2019-07-09 01:56:04', '2019-07-09 01:56:04', '', 'iphone-dien-thoai-1-1562596824993549172376', '', 'inherit', 'open', 'closed', '', 'iphone-dien-thoai-1-1562596824993549172376', '', '', '2019-07-09 01:56:04', '2019-07-09 01:56:04', '', 17, 'http://tintuc.tenten.co/wp-content/uploads/2019/07/iphone-dien-thoai-1-1562596824993549172376.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2019-07-09 01:56:38', '2019-07-09 01:56:38', '<h4 class="knc-sapo"><img class="alignnone size-medium wp-image-18" src="http://tintuc.tenten.co/wp-content/uploads/2019/07/iphone-dien-thoai-1-1562596824993549172376-600x400.jpg" alt="" width="300" height="200" /></h4>\r\n<img class="wp-image-18 size-full aligncenter" src="http://tintuc.tenten.co/wp-content/uploads/2019/07/iphone-dien-thoai-1-1562596824993549172376.jpg" alt="" width="660" height="495" />\r\n\r\nSở dĩ việc cài lại máy chậm là do CPU của iPhone khi hoạt động hết công suất trong một thời gian nhất định sẽ bị nóng và giảm hiệu năng (throttling). Chính vì vậy, việc ''kẹp'' iPhone giữa những viên đá mát lạnh sẽ giúp nó chạy nhanh hơn một cách đáng kể. Theo như anh Justin Searls, người chia sẻ thủ thuật này thì nó giúp thời gian cài lại giảm xuống còn một nửa, rất hữu hiệu!\r\n\r\nNhưng người dùng cũng nên cẩn thận khi làm theo thủ thuật này, không nên để thiết bị <i>bên trong tủ đá</i> vì đá có thể chảy ra và làm hỏng các linh kiện điện tử. Điều này tối quan trọng với các dòng iPhone và iPad thế hệ cũ, thường không được trang bị bất cứ chuẩn chống nước nào. Người dùng cũng có thể để chúng vào túi zip để tránh hiện tượng này.', 'Đặc biệt hiệu quả trong những lúc phải cài lại máy bằng iCloud.', 'Nếu bạn từng phải cài lại máy (restore) các thiết bị iDevices thì sẽ biết rằng đây là một quá trình lâu dài và ''mệt mỏi''. Nhưng bạn có biết rằng, quá trình này sẽ nhanh hơn rất nhiều nếu ta sử dụng đá lạnh?', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-07-09 01:56:38', '2019-07-09 01:56:38', '', 17, 'http://tintuc.tenten.co/2019/07/09/17-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2019-07-09 01:57:41', '2019-07-09 01:57:41', '<h4 class="knc-sapo"></h4>\n<img class="wp-image-18 size-full aligncenter" src="http://tintuc.tenten.co/wp-content/uploads/2019/07/iphone-dien-thoai-1-1562596824993549172376.jpg" alt="" width="660" height="495" />\n\nSở dĩ việc cài lại máy chậm là do CPU của iPhone khi hoạt động hết công suất trong một thời gian nhất định sẽ bị nóng và giảm hiệu năng (throttling). Chính vì vậy, việc ''kẹp'' iPhone giữa những viên đá mát lạnh sẽ giúp nó chạy nhanh hơn một cách đáng kể. Theo như anh Justin Searls, người chia sẻ thủ thuật này thì nó giúp thời gian cài lại giảm xuống còn một nửa, rất hữu hiệu!\n\nNhưng người dùng cũng nên cẩn thận khi làm theo thủ thuật này, không nên để thiết bị <i>bên trong tủ đá</i> vì đá có thể chảy ra và làm hỏng các linh kiện điện tử. Điều này tối quan trọng với các dòng iPhone và iPad thế hệ cũ, thường không được trang bị bất cứ chuẩn chống nước nào. Người dùng cũng có thể để chúng vào túi zip để tránh hiện tượng này.', 'Đặc biệt hiệu quả trong những lúc phải cài lại máy bằng iCloud.', 'Nếu bạn từng phải cài lại máy (restore) các thiết bị iDevices thì sẽ biết rằng đây là một quá trình lâu dài và ''mệt mỏi''. Nhưng bạn có biết rằng, quá trình này sẽ nhanh hơn rất nhiều nếu ta sử dụng đá lạnh?', 'inherit', 'closed', 'closed', '', '17-autosave-v1', '', '', '2019-07-09 01:57:41', '2019-07-09 01:57:41', '', 17, 'http://tintuc.tenten.co/2019/07/09/17-autosave-v1/', 0, 'revision', '', 0),
(21, 1, '2019-07-09 01:57:50', '2019-07-09 01:57:50', '<h4 class="knc-sapo">Nếu bạn từng phải cài lại máy (restore) các thiết bị iDevices thì sẽ biết rằng đây là một quá trình lâu dài và ''mệt mỏi''. Nhưng bạn có biết rằng, quá trình này sẽ nhanh hơn rất nhiều nếu ta sử dụng đá lạnh?</h4>\r\n<img class="wp-image-18 size-full aligncenter" src="http://tintuc.tenten.co/wp-content/uploads/2019/07/iphone-dien-thoai-1-1562596824993549172376.jpg" alt="" width="660" height="495" />\r\n\r\nSở dĩ việc cài lại máy chậm là do CPU của iPhone khi hoạt động hết công suất trong một thời gian nhất định sẽ bị nóng và giảm hiệu năng (throttling). Chính vì vậy, việc ''kẹp'' iPhone giữa những viên đá mát lạnh sẽ giúp nó chạy nhanh hơn một cách đáng kể. Theo như anh Justin Searls, người chia sẻ thủ thuật này thì nó giúp thời gian cài lại giảm xuống còn một nửa, rất hữu hiệu!\r\n\r\nNhưng người dùng cũng nên cẩn thận khi làm theo thủ thuật này, không nên để thiết bị <i>bên trong tủ đá</i> vì đá có thể chảy ra và làm hỏng các linh kiện điện tử. Điều này tối quan trọng với các dòng iPhone và iPad thế hệ cũ, thường không được trang bị bất cứ chuẩn chống nước nào. Người dùng cũng có thể để chúng vào túi zip để tránh hiện tượng này.', 'Đặc biệt hiệu quả trong những lúc phải cài lại máy bằng iCloud.', 'Nếu bạn từng phải cài lại máy (restore) các thiết bị iDevices thì sẽ biết rằng đây là một quá trình lâu dài và ''mệt mỏi''. Nhưng bạn có biết rằng, quá trình này sẽ nhanh hơn rất nhiều nếu ta sử dụng đá lạnh?', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-07-09 01:57:50', '2019-07-09 01:57:50', '', 17, 'http://tintuc.tenten.co/2019/07/09/17-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2019-07-09 01:59:32', '2019-07-09 01:59:32', '<h4 class="knc-sapo">Nhà nghèo và phải đi chăn dê kiếm sống sau khi tốt nghiệp trung học, bà cụ ở đảo Síp sau cùng đã thi đậu đại học sau 60 năm.</h4>\r\nỞ độ tuổi xế chiều, nhiều người thường hay nghĩ về tiền lương hưu thì bà cụ Despina Tsikkouri ở Cộng hòa Síp lại "vui như Tết" khi giấc mơ đậu đại học bao nhiêu năm qua vừa trở thành sự thật.\r\n\r\nTheo tờ Cyprus Mail đăng tải, bà Despina đang chờ đến tháng 9 để nhập học khoa Triết và cổ điển tại Đại học Síp. "<i>Giấc mơ của tôi là học tiếp kể từ khi tốt nghiệp trung học cách đây hơn 60 năm. Nhưng khi đề cập đến chuyện đó thì cha tôi nhìn chỗ khác phớt lờ và đi uống cà phê</i>".\r\n\r\n<img class="wp-image-23 size-full aligncenter" src="http://tintuc.tenten.co/wp-content/uploads/2019/07/photo-1-1562634342000479809947.jpg" alt="" width="640" height="463" />\r\n\r\nBà chia sẻ rằng bà rất thích học các lớp ban đêm dành cho người lớn do Bộ Giáo dục tổ chức. "<i>Tôi học tiếng Pháp, tiếng Ý, triết học, sơ cứu, may và thậm chí cắm hoa. Và tôi còn đọc sách hầu như mọi lúc</i>", bà kể. Sau khi chồng bị liệt và qua đời cách đây 10 năm, bà quyết định sẽ luyện thi vào đại học. "<i>Các con đã lớn và tự kiếm sống nên tôi tự hỏi tôi sẽ làm gì và ngồi xem ti vi thôi sao. Do đó tôi nói với các con là tôi sẽ thi đại học</i>", bà kể.\r\n\r\nCác con bà rất ủng hộ quyết định của bà. "<i>Tôi không ngủ được suốt vài ngày trước khi có kết quả vì quá lo lắng. Khi thi đậu đại học, tôi đã mừng rơi nước mắt. Không bao giờ là quá muộn. Không có gì phải viện cớ khi người ta theo đuổi giấc mơ. Tuổi tác và mọi thứ khác chỉ là cái cớ</i>", bà nói.', 'Bà cụ 82 tuổi "mừng rơi nước mắt" khi đỗ đại học: Nhà nghèo, lúc 10 tuổi bị bố bắt bỏ học đi chăn dê!', 'Theo tờ Cyprus Mail đăng tải, bà Despina đang chờ đến tháng 9 để nhập học khoa Triết và cổ điển tại Đại học Síp. "Giấc mơ của tôi là học tiếp kể từ khi tốt nghiệp trung học cách đây hơn 60 năm. Nhưng khi đề cập đến chuyện đó thì cha tôi nhìn chỗ khác phớt lờ và đi uống cà phê".', 'publish', 'open', 'open', '', 'ba-cu-82-tuoi-mung-roi-nuoc-mat-khi-do-dai-hoc-nha-ngheo-luc-10-tuoi-bi-bo-bat-bo-hoc-di-chan-de', '', '', '2019-07-09 02:12:42', '2019-07-09 02:12:42', '', 0, 'http://tintuc.tenten.co/?p=22', 0, 'post', '', 0),
(23, 1, '2019-07-09 01:58:55', '2019-07-09 01:58:55', '', 'photo-1-1562634342000479809947', '', 'inherit', 'open', 'closed', '', 'photo-1-1562634342000479809947', '', '', '2019-07-09 01:58:55', '2019-07-09 01:58:55', '', 22, 'http://tintuc.tenten.co/wp-content/uploads/2019/07/photo-1-1562634342000479809947.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2019-07-09 01:59:32', '2019-07-09 01:59:32', '<h4 class="knc-sapo">Nhà nghèo và phải đi chăn dê kiếm sống sau khi tốt nghiệp trung học, bà cụ ở đảo Síp sau cùng đã thi đậu đại học sau 60 năm.</h4>\r\nỞ độ tuổi xế chiều, nhiều người thường hay nghĩ về tiền lương hưu thì bà cụ Despina Tsikkouri ở Cộng hòa Síp lại "vui như Tết" khi giấc mơ đậu đại học bao nhiêu năm qua vừa trở thành sự thật.\r\n\r\nTheo tờ Cyprus Mail đăng tải, bà Despina đang chờ đến tháng 9 để nhập học khoa Triết và cổ điển tại Đại học Síp. "<i>Giấc mơ của tôi là học tiếp kể từ khi tốt nghiệp trung học cách đây hơn 60 năm. Nhưng khi đề cập đến chuyện đó thì cha tôi nhìn chỗ khác phớt lờ và đi uống cà phê</i>".\r\n\r\n<img class="wp-image-23 size-full aligncenter" src="http://tintuc.tenten.co/wp-content/uploads/2019/07/photo-1-1562634342000479809947.jpg" alt="" width="640" height="463" />\r\n\r\nBà chia sẻ rằng bà rất thích học các lớp ban đêm dành cho người lớn do Bộ Giáo dục tổ chức. "<i>Tôi học tiếng Pháp, tiếng Ý, triết học, sơ cứu, may và thậm chí cắm hoa. Và tôi còn đọc sách hầu như mọi lúc</i>", bà kể. Sau khi chồng bị liệt và qua đời cách đây 10 năm, bà quyết định sẽ luyện thi vào đại học. "<i>Các con đã lớn và tự kiếm sống nên tôi tự hỏi tôi sẽ làm gì và ngồi xem ti vi thôi sao. Do đó tôi nói với các con là tôi sẽ thi đại học</i>", bà kể.\r\n\r\nCác con bà rất ủng hộ quyết định của bà. "<i>Tôi không ngủ được suốt vài ngày trước khi có kết quả vì quá lo lắng. Khi thi đậu đại học, tôi đã mừng rơi nước mắt. Không bao giờ là quá muộn. Không có gì phải viện cớ khi người ta theo đuổi giấc mơ. Tuổi tác và mọi thứ khác chỉ là cái cớ</i>", bà nói.', 'à cụ 82 tuổi "mừng rơi nước mắt" khi đỗ đại học: Nhà nghèo, lúc 10 tuổi bị bố bắt bỏ học đi chăn dê!', 'Theo tờ Cyprus Mail đăng tải, bà Despina đang chờ đến tháng 9 để nhập học khoa Triết và cổ điển tại Đại học Síp. "Giấc mơ của tôi là học tiếp kể từ khi tốt nghiệp trung học cách đây hơn 60 năm. Nhưng khi đề cập đến chuyện đó thì cha tôi nhìn chỗ khác phớt lờ và đi uống cà phê".', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-07-09 01:59:32', '2019-07-09 01:59:32', '', 22, 'http://tintuc.tenten.co/2019/07/09/22-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2019-07-09 02:09:13', '2019-07-09 02:09:13', 'Trong thế giới cổ đại, những người Hy Lạp tin rằng 9 vị thần thơ (hay 9 nàng thơ- 9 Muses) là những người mang lại cảm hứng cho người phàm và những khoảnh khắc xuất thần, bộc phát ý tưởng mới của con người cũng đến từ 9 vị thần này.\r\n\r\nNgày nay, con người chắc chắn không còn tin vào những chuyện thần thoại như vậy nhưng mọi người vẫn thích nghe các câu chuyện bộc phát ý tưởng xuất thần, ví dụ như Newton từ quả táo phát minh ra định luật vạn vật hấp dẫn, Archimedes nằm trong bồn tắm đã giải quyết vấn đề trọng lượng và cách thức vật nổi.\r\n\r\nDù những câu chuyện này chỉ là truyền thuyết nhưng con người ngày nay vẫn thích lắng nghe và chia sẻ chúng.\r\n\r\nTuy nhiên, đối với những người lao động ngày nay, đặc biệt là giới văn phòng, những câu chuyện này không cung cấp nhiều lời khuyên thực tế cho lắm. Thời nay, nhân viên không thể ngồi thảnh thơi dưới gốc cây chờ 1 quả táo rụng hay nằm trong bồn tắm rồi chạy trần truồng ra ngoài đường chỉ để tìm kiếm giải pháp cho một vấn đề.\r\n\r\nDẫu vậy, nghiên cứu khoa học ngày nay cho thấy nhân viên ngày này có thể sử dụng nhiều cách khác nhau để tạo ra những giây phút xuất thần như vậy.\r\n\r\nCác nhà khoa học khuyên rằng chúng ta nên có những giây phút giải lao thường xuyên hơn, đi vệ sinh, uống nước hay tạm thời rời bỏ tâm trí khỏi công việc nếu gặp vấn đề khó giải quyết.\r\n\r\nNguyên nhân cho lời khuyên trên là thực tế chứng minh những giây phút xuất thần thường đến khi tâm trí con người không tập trung vào giải quyết vấn đề khó, hay còn được gọi là thời kỳ ấp ủ ý tưởng (Incubation) trong tâm lý học.\r\n\r\nCụ thể, việc tạm dừng giải quyết công việc và nghỉ thư giãn sẽ khiến ý tưởng đột phá từ từ được ấp ủ, hình thành trong vô thức. Điều này cũng tương tự như khi Newton ngồi thành thơi nhìn trái táo rơi hay Archimedes nằm trong bồn tắm.\r\n\r\n<img class="wp-image-26 size-full aligncenter" src="http://tintuc.tenten.co/wp-content/uploads/2019/07/photo-1-1562634342000479809947-1.jpg" alt="" width="640" height="329" />\r\n\r\nMột nghiên cứu mới đây của chuyên gia Sophie Ellwood đã chứng minh được giả thuyết này. Bà Ellwood phân 90 học viên thành 3 nhóm và yêu cầu tất cả làm bài kiểm tra, cụ thể là viết tất cả những tác dụng mà họ có thể tưởng tượng của đồ vật trong đề thi. Bằng cách này, bà Ellwood có thể kiểm tra độ sáng tạo của từng nhóm.\r\n\r\nNhóm 1 được hoàn thành bài thi trong 4 phút liên tục. Nhóm 2 bị gián đoạn sau 2 phút và được yêu cầu làm 1 bài thi khác tương tự trong 2 phút, sau đó được quay trở lại làm đề thi đầu với 2 phút thêm. Nhóm 3 bị gián đoạn sau 2 phút và được yêu cầu làm 1 đề thi chẳng liên quan gì đến đề 1 trong 2 phút và cũng được cho quay lại làm bài thi đầu.\r\n\r\nNhư vậy cả 3 nhóm đều có 4 phút làm bài thi đầu nhưng kết quả cho thấy nhóm 3 cho ra nhiều ý tưởng nhất dù bị gián đoạn với bài thi khác chẳng liên quan gì mấy. Xếp sau đó là nhóm thứ 2 và nhóm 1 với thời gian làm bài không bị gián đoạn lại cho ra ít ý tưởng nhất.\r\n\r\nKết quả trên cho thấy, dù chỉ cần nghỉ giải lao vài phút thôi, khả năng bộc phát ý tưởng trong tiềm thức của con người cũng có thể cho ra nhiều sáng kiến bất ngờ hơn việc liên tục tập trung và căng thẳng giải quyết vấn đề.\r\n\r\nNhững nhà nghiên cứu giải thích rằng khi não bộ quá tập trung vào một vấn đề khó giải quyết, tâm trí con người trở nên bế tắc khi dòng suy nghĩ liên tục đi vào lối mòn. Nói cách khác, con người dễ lặp lại các hướng suy nghĩ giống nhau khi phải làm việc liên tục không nghỉ ngơi và khó có thể đưa ra một hướng đi mới.\r\n\r\nCác nhà nghiên cứu khuyến nghị nhân viên nên dành nhiều thời gian nghỉ giải lao và để những vấn đề khó giải quyết tự động trôi vào trong tiềm thức, qua đó thoát khỏi lối mòn suy nghĩ. Khi quay trở lại công việc, tâm trí chúng ta sẽ rộng mở hơn để nhìn thấy những giải pháp mới dần hình thành trong tiềm thức và đây là lúc những giây phút xuất thần hay bộc lộ nhất.\r\n\r\nĐiều thú vị của nghiên cứu trên là các chuyên gia khuyên chúng ta, đặc biệt là những nhân viên có thời gian hạn hẹp, cố gắng lưu những công việc giang dở cho các giây phút nghỉ giải lao này. Theo đó, việc làm một công việc hoàn toàn không liên quan trong thời gian quá lâu có thể khiến chúng ta bị sao lãng. Vì vậy tốt hơn hết các nhân viên nên nghỉ giải lao và làm những việc không quá xa vời với công việc như dọn dẹp email rác, thu dọn lại bàn làm việc hoặc thậm chí là chỉ cần đi vệ sinh.', 'Ngày hôm nay các bạn đã đi vệ sinh được mấy lần rồi? Khoa học chứng minh đi "giải quyết" nhiều hơn sẽ sáng tạo hơn!', 'Nếu bạn từng phải cài lại máy (restore) các thiết bị iDevices thì sẽ biết rằng đây là một quá trình lâu dài và ''mệt mỏi''. Nhưng bạn có biết rằng, quá trình này sẽ nhanh hơn rất nhiều nếu ta sử dụng đá lạnh?', 'publish', 'open', 'open', '', 'ngay-hom-nay-cac-ban-da-di-ve-sinh-duoc-may-lan-roi-khoa-hoc-chung-minh-di-giai-quyet-nhieu-hon-se-sang-tao-hon', '', '', '2019-07-09 14:09:46', '2019-07-09 07:09:46', '', 0, 'http://tintuc.tenten.co/?p=25', 0, 'post', '', 0),
(26, 1, '2019-07-09 02:08:58', '2019-07-09 02:08:58', '', 'photo-1-1562634342000479809947', '', 'inherit', 'open', 'closed', '', 'photo-1-1562634342000479809947-2', '', '', '2019-07-09 02:08:58', '2019-07-09 02:08:58', '', 25, 'http://tintuc.tenten.co/wp-content/uploads/2019/07/photo-1-1562634342000479809947-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2019-07-09 02:09:13', '2019-07-09 02:09:13', 'Trong thế giới cổ đại, những người Hy Lạp tin rằng 9 vị thần thơ (hay 9 nàng thơ- 9 Muses) là những người mang lại cảm hứng cho người phàm và những khoảnh khắc xuất thần, bộc phát ý tưởng mới của con người cũng đến từ 9 vị thần này.\r\n\r\nNgày nay, con người chắc chắn không còn tin vào những chuyện thần thoại như vậy nhưng mọi người vẫn thích nghe các câu chuyện bộc phát ý tưởng xuất thần, ví dụ như Newton từ quả táo phát minh ra định luật vạn vật hấp dẫn, Archimedes nằm trong bồn tắm đã giải quyết vấn đề trọng lượng và cách thức vật nổi.\r\n\r\nDù những câu chuyện này chỉ là truyền thuyết nhưng con người ngày nay vẫn thích lắng nghe và chia sẻ chúng.\r\n\r\nTuy nhiên, đối với những người lao động ngày nay, đặc biệt là giới văn phòng, những câu chuyện này không cung cấp nhiều lời khuyên thực tế cho lắm. Thời nay, nhân viên không thể ngồi thảnh thơi dưới gốc cây chờ 1 quả táo rụng hay nằm trong bồn tắm rồi chạy trần truồng ra ngoài đường chỉ để tìm kiếm giải pháp cho một vấn đề.\r\n\r\nDẫu vậy, nghiên cứu khoa học ngày nay cho thấy nhân viên ngày này có thể sử dụng nhiều cách khác nhau để tạo ra những giây phút xuất thần như vậy.\r\n\r\nCác nhà khoa học khuyên rằng chúng ta nên có những giây phút giải lao thường xuyên hơn, đi vệ sinh, uống nước hay tạm thời rời bỏ tâm trí khỏi công việc nếu gặp vấn đề khó giải quyết.\r\n\r\nNguyên nhân cho lời khuyên trên là thực tế chứng minh những giây phút xuất thần thường đến khi tâm trí con người không tập trung vào giải quyết vấn đề khó, hay còn được gọi là thời kỳ ấp ủ ý tưởng (Incubation) trong tâm lý học.\r\n\r\nCụ thể, việc tạm dừng giải quyết công việc và nghỉ thư giãn sẽ khiến ý tưởng đột phá từ từ được ấp ủ, hình thành trong vô thức. Điều này cũng tương tự như khi Newton ngồi thành thơi nhìn trái táo rơi hay Archimedes nằm trong bồn tắm.\r\n\r\n<img class="wp-image-26 size-full aligncenter" src="http://tintuc.tenten.co/wp-content/uploads/2019/07/photo-1-1562634342000479809947-1.jpg" alt="" width="640" height="329" />\r\n\r\nMột nghiên cứu mới đây của chuyên gia Sophie Ellwood đã chứng minh được giả thuyết này. Bà Ellwood phân 90 học viên thành 3 nhóm và yêu cầu tất cả làm bài kiểm tra, cụ thể là viết tất cả những tác dụng mà họ có thể tưởng tượng của đồ vật trong đề thi. Bằng cách này, bà Ellwood có thể kiểm tra độ sáng tạo của từng nhóm.\r\n\r\nNhóm 1 được hoàn thành bài thi trong 4 phút liên tục. Nhóm 2 bị gián đoạn sau 2 phút và được yêu cầu làm 1 bài thi khác tương tự trong 2 phút, sau đó được quay trở lại làm đề thi đầu với 2 phút thêm. Nhóm 3 bị gián đoạn sau 2 phút và được yêu cầu làm 1 đề thi chẳng liên quan gì đến đề 1 trong 2 phút và cũng được cho quay lại làm bài thi đầu.\r\n\r\nNhư vậy cả 3 nhóm đều có 4 phút làm bài thi đầu nhưng kết quả cho thấy nhóm 3 cho ra nhiều ý tưởng nhất dù bị gián đoạn với bài thi khác chẳng liên quan gì mấy. Xếp sau đó là nhóm thứ 2 và nhóm 1 với thời gian làm bài không bị gián đoạn lại cho ra ít ý tưởng nhất.\r\n\r\nKết quả trên cho thấy, dù chỉ cần nghỉ giải lao vài phút thôi, khả năng bộc phát ý tưởng trong tiềm thức của con người cũng có thể cho ra nhiều sáng kiến bất ngờ hơn việc liên tục tập trung và căng thẳng giải quyết vấn đề.\r\n\r\nNhững nhà nghiên cứu giải thích rằng khi não bộ quá tập trung vào một vấn đề khó giải quyết, tâm trí con người trở nên bế tắc khi dòng suy nghĩ liên tục đi vào lối mòn. Nói cách khác, con người dễ lặp lại các hướng suy nghĩ giống nhau khi phải làm việc liên tục không nghỉ ngơi và khó có thể đưa ra một hướng đi mới.\r\n\r\nCác nhà nghiên cứu khuyến nghị nhân viên nên dành nhiều thời gian nghỉ giải lao và để những vấn đề khó giải quyết tự động trôi vào trong tiềm thức, qua đó thoát khỏi lối mòn suy nghĩ. Khi quay trở lại công việc, tâm trí chúng ta sẽ rộng mở hơn để nhìn thấy những giải pháp mới dần hình thành trong tiềm thức và đây là lúc những giây phút xuất thần hay bộc lộ nhất.\r\n\r\nĐiều thú vị của nghiên cứu trên là các chuyên gia khuyên chúng ta, đặc biệt là những nhân viên có thời gian hạn hẹp, cố gắng lưu những công việc giang dở cho các giây phút nghỉ giải lao này. Theo đó, việc làm một công việc hoàn toàn không liên quan trong thời gian quá lâu có thể khiến chúng ta bị sao lãng. Vì vậy tốt hơn hết các nhân viên nên nghỉ giải lao và làm những việc không quá xa vời với công việc như dọn dẹp email rác, thu dọn lại bàn làm việc hoặc thậm chí là chỉ cần đi vệ sinh.', 'Ngày hôm nay các bạn đã đi vệ sinh được mấy lần rồi? Khoa học chứng minh đi "giải quyết" nhiều hơn sẽ sáng tạo hơn!', 'Nếu bạn từng phải cài lại máy (restore) các thiết bị iDevices thì sẽ biết rằng đây là một quá trình lâu dài và ''mệt mỏi''. Nhưng bạn có biết rằng, quá trình này sẽ nhanh hơn rất nhiều nếu ta sử dụng đá lạnh?', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2019-07-09 02:09:13', '2019-07-09 02:09:13', '', 25, 'http://tintuc.tenten.co/2019/07/09/25-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2019-07-09 02:12:42', '2019-07-09 02:12:42', '<h4 class="knc-sapo">Nhà nghèo và phải đi chăn dê kiếm sống sau khi tốt nghiệp trung học, bà cụ ở đảo Síp sau cùng đã thi đậu đại học sau 60 năm.</h4>\r\nỞ độ tuổi xế chiều, nhiều người thường hay nghĩ về tiền lương hưu thì bà cụ Despina Tsikkouri ở Cộng hòa Síp lại "vui như Tết" khi giấc mơ đậu đại học bao nhiêu năm qua vừa trở thành sự thật.\r\n\r\nTheo tờ Cyprus Mail đăng tải, bà Despina đang chờ đến tháng 9 để nhập học khoa Triết và cổ điển tại Đại học Síp. "<i>Giấc mơ của tôi là học tiếp kể từ khi tốt nghiệp trung học cách đây hơn 60 năm. Nhưng khi đề cập đến chuyện đó thì cha tôi nhìn chỗ khác phớt lờ và đi uống cà phê</i>".\r\n\r\n<img class="wp-image-23 size-full aligncenter" src="http://tintuc.tenten.co/wp-content/uploads/2019/07/photo-1-1562634342000479809947.jpg" alt="" width="640" height="463" />\r\n\r\nBà chia sẻ rằng bà rất thích học các lớp ban đêm dành cho người lớn do Bộ Giáo dục tổ chức. "<i>Tôi học tiếng Pháp, tiếng Ý, triết học, sơ cứu, may và thậm chí cắm hoa. Và tôi còn đọc sách hầu như mọi lúc</i>", bà kể. Sau khi chồng bị liệt và qua đời cách đây 10 năm, bà quyết định sẽ luyện thi vào đại học. "<i>Các con đã lớn và tự kiếm sống nên tôi tự hỏi tôi sẽ làm gì và ngồi xem ti vi thôi sao. Do đó tôi nói với các con là tôi sẽ thi đại học</i>", bà kể.\r\n\r\nCác con bà rất ủng hộ quyết định của bà. "<i>Tôi không ngủ được suốt vài ngày trước khi có kết quả vì quá lo lắng. Khi thi đậu đại học, tôi đã mừng rơi nước mắt. Không bao giờ là quá muộn. Không có gì phải viện cớ khi người ta theo đuổi giấc mơ. Tuổi tác và mọi thứ khác chỉ là cái cớ</i>", bà nói.', 'Bà cụ 82 tuổi "mừng rơi nước mắt" khi đỗ đại học: Nhà nghèo, lúc 10 tuổi bị bố bắt bỏ học đi chăn dê!', 'Theo tờ Cyprus Mail đăng tải, bà Despina đang chờ đến tháng 9 để nhập học khoa Triết và cổ điển tại Đại học Síp. "Giấc mơ của tôi là học tiếp kể từ khi tốt nghiệp trung học cách đây hơn 60 năm. Nhưng khi đề cập đến chuyện đó thì cha tôi nhìn chỗ khác phớt lờ và đi uống cà phê".', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-07-09 02:12:42', '2019-07-09 02:12:42', '', 22, 'http://tintuc.tenten.co/2019/07/09/22-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2019-07-09 10:45:56', '2019-07-09 03:45:56', '<h3 class="knc-sapo">Vừa qua, Synnex FPT chính thức trở thành nhà phân phối của thương hiệu hàng đầu thế giới về camera an ninh- CP Plus. Giờ đây, các doanh nghiệp sẽ dễ dàng tiếp cận đến các thiết bị CP Plus để thiết lập một giải pháp an ninh toàn diện cho các công trình khách sạn, bệnh viện, trường học, nhà ở…</h3>\r\n<div data-check-position="genk_body_start">CP Plus là nhãn hàng đầu tiên về camera giám sát được phân phối bởi Synnex FPT. Sự hợp tác này mở ra một sức mạnh song phương, tiến tới kỳ vọng chiếm lĩnh thị trường camera an ninh tại Việt Nam. Đó là sức mạnh từ giá trị thương hiệu nổi tiếng thế giới trong giải pháp Giám sát &amp; An ninh chuyên dụng cùng một nhà phân phối hàng đầu tại Việt Nam về các thiết bị công nghệ.</div>\r\n<div id="ContentDetail" class="knc-content">\r\n\r\nĐại diện nhà phân phối Synnex FPT cho biết: Mục tiêu của chúng tôi là đa dạng hóa mặt hàng, mong muốn mang đến cho người tiêu dùng Việt Nam những sản phẩm tốt bậc nhất từ những thương hiệu nổi tiếng thế giới. Chúng tôi cân nhắc và đánh giá cẩn thận những nhu cầu của thị trường trong nước nhằm "phân phối" tốt những thiết bị cần thiết đến người tiêu dùng tại Việt Nam. Hiện nay, CP Plus là công ty trẻ &amp; phát triển nhanh, được xếp hạng trong Top 4 các công ty về giải pháp an ninh của thế giới, Top 2 Châu Á về thương hiệu An ninh &amp; Giám sát. Các sản phẩm CP Plus trước khi được ra mắt thị trường đều vượt qua các bài kiểm tra chất lượng nghiêm ngặt, đảm bảo các chứng nhận quốc tế như UL, CE, FCC, v.v. Đồng thời đây cũng là nhãn hàng có qui trình và hệ thống đạt chuẩn ISO/IEC 27001:2013 về các yêu cầu của ngành quản lí bảo mật thông tin.\r\n\r\nGiờ đây, thông qua mạng lưới phân phối sản phẩm công nghệ lớn bậc nhất với hơn 2.771 đại lý tại 63/63 tỉnh thành cùng hệ thống 12 trung tâm dịch vụ bảo hành, sửa chữa FPT Services lớn trên cả nước, các thiết bị CPPlus sẽ dễ dàng có mặt và tiếp cận tốt hơn đến người dùng. Đặc biệt, nhà phân phối Synnex FPT còn cho biết, các sản phẩm CP Plus còn đi kèm chế độ 1 đổi 1 mới giúp đảm bảo tốt hơn quyền lợi của khách hàng khi sử dụng.\r\n\r\nTại thị trường Việt Nam, CP Plus mang đến nhiều lựa chọn về nhu cầu, mức giá và đối tượng sử dụng. Các sản phẩm trải đều trong các phân khúc khách hàng hộ gia đình, các star-up đến các doanh nghiệp lớn, chuỗi siêu thị có nhu cầu quản lý tập trung, phân quyền với các tính năng thông minh, chất lượng hình ảnh cao. Trong đó, mức giá thấp nhất cho dòng sản phẩm hộ gia đình với yêu cầu chất lượng hình ảnh tương đối chỉ từ 849 nghìn đồng.\r\n\r\nTại đây, nhà phân phối Synnex FPT cũng đặc biệt giới thiệu các dòng cận –cao cấp với khả năng đáp ứng tốt bài toán ngân sách và cấu hình phù hợp với các môi trường văn phòng hoặc các trung tâm thương mại hiện nay. Các thiết bị giám sát này thuộc dòng camera IP với độ phân giải lên đến 4K. Để giúp nâng cao chất lượng ghi hình, CP Plus cũng đưa vào các dòng này công nghệ xử lí hình ảnh màu trong điều kiện ánh sáng cực thấp 0.0005 lux, công nghệ Fish eye. Loạt công nghệ hỗ trợ khác bao gồm chống ngược sáng thực DWDR, chế độ ngày đêm (ICR), tự động cân bằng ánh sáng trắng AWB, chức năng giảm nhiễu số 3D-DNR, chống sương mù Defog, ROI, chức năng tự động điều chỉnh độ lợi sáng- AGC hay tầm xa hồng ngoại đến 100m.\r\n\r\n</div>', 'Synnex FPT “bắt tay” với CP Plus và kỳ vọng mở rộng thị phần camera an ninh', 'CP Plus là nhãn hàng đầu tiên về camera giám sát được phân phối bởi Synnex FPT. Sự hợp tác này mở ra một sức mạnh song phương, tiến tới kỳ vọng chiếm lĩnh thị trường camera an ninh tại Việt Nam. Đó là sức mạnh từ giá trị thương hiệu nổi tiếng thế giới trong giải pháp Giám sát & An ninh chuyên dụng cùng một nhà phân phối hàng đầu tại Việt Nam về các thiết bị công nghệ.', 'publish', 'open', 'open', '', 'synnex-fpt-bat-tay-voi-cp-plus-va-ky-vong-mo-rong-thi-phan-camera-an-ninh', '', '', '2019-07-09 14:08:38', '2019-07-09 07:08:38', '', 0, 'http://tintuc.tenten.co/?p=31', 0, 'post', '', 0),
(32, 1, '2019-07-09 10:45:53', '2019-07-09 03:45:53', '', 'screen-shot-2019-06-12-at-61838-am-15626093975542075326691', '', 'inherit', 'open', 'closed', '', 'screen-shot-2019-06-12-at-61838-am-15626093975542075326691', '', '', '2019-07-09 10:45:53', '2019-07-09 03:45:53', '', 31, 'http://tintuc.tenten.co/wp-content/uploads/2019/07/screen-shot-2019-06-12-at-61838-am-15626093975542075326691.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(33, 1, '2019-07-09 10:45:56', '2019-07-09 03:45:56', '<h3 class="knc-sapo">Vừa qua, Synnex FPT chính thức trở thành nhà phân phối của thương hiệu hàng đầu thế giới về camera an ninh- CP Plus. Giờ đây, các doanh nghiệp sẽ dễ dàng tiếp cận đến các thiết bị CP Plus để thiết lập một giải pháp an ninh toàn diện cho các công trình khách sạn, bệnh viện, trường học, nhà ở…</h3>\r\n<div data-check-position="genk_body_start">CP Plus là nhãn hàng đầu tiên về camera giám sát được phân phối bởi Synnex FPT. Sự hợp tác này mở ra một sức mạnh song phương, tiến tới kỳ vọng chiếm lĩnh thị trường camera an ninh tại Việt Nam. Đó là sức mạnh từ giá trị thương hiệu nổi tiếng thế giới trong giải pháp Giám sát &amp; An ninh chuyên dụng cùng một nhà phân phối hàng đầu tại Việt Nam về các thiết bị công nghệ.</div>\r\n<div id="ContentDetail" class="knc-content">\r\n\r\nĐại diện nhà phân phối Synnex FPT cho biết: Mục tiêu của chúng tôi là đa dạng hóa mặt hàng, mong muốn mang đến cho người tiêu dùng Việt Nam những sản phẩm tốt bậc nhất từ những thương hiệu nổi tiếng thế giới. Chúng tôi cân nhắc và đánh giá cẩn thận những nhu cầu của thị trường trong nước nhằm "phân phối" tốt những thiết bị cần thiết đến người tiêu dùng tại Việt Nam. Hiện nay, CP Plus là công ty trẻ &amp; phát triển nhanh, được xếp hạng trong Top 4 các công ty về giải pháp an ninh của thế giới, Top 2 Châu Á về thương hiệu An ninh &amp; Giám sát. Các sản phẩm CP Plus trước khi được ra mắt thị trường đều vượt qua các bài kiểm tra chất lượng nghiêm ngặt, đảm bảo các chứng nhận quốc tế như UL, CE, FCC, v.v. Đồng thời đây cũng là nhãn hàng có qui trình và hệ thống đạt chuẩn ISO/IEC 27001:2013 về các yêu cầu của ngành quản lí bảo mật thông tin.\r\n\r\nGiờ đây, thông qua mạng lưới phân phối sản phẩm công nghệ lớn bậc nhất với hơn 2.771 đại lý tại 63/63 tỉnh thành cùng hệ thống 12 trung tâm dịch vụ bảo hành, sửa chữa FPT Services lớn trên cả nước, các thiết bị CPPlus sẽ dễ dàng có mặt và tiếp cận tốt hơn đến người dùng. Đặc biệt, nhà phân phối Synnex FPT còn cho biết, các sản phẩm CP Plus còn đi kèm chế độ 1 đổi 1 mới giúp đảm bảo tốt hơn quyền lợi của khách hàng khi sử dụng.\r\n\r\nTại thị trường Việt Nam, CP Plus mang đến nhiều lựa chọn về nhu cầu, mức giá và đối tượng sử dụng. Các sản phẩm trải đều trong các phân khúc khách hàng hộ gia đình, các star-up đến các doanh nghiệp lớn, chuỗi siêu thị có nhu cầu quản lý tập trung, phân quyền với các tính năng thông minh, chất lượng hình ảnh cao. Trong đó, mức giá thấp nhất cho dòng sản phẩm hộ gia đình với yêu cầu chất lượng hình ảnh tương đối chỉ từ 849 nghìn đồng.\r\n\r\nTại đây, nhà phân phối Synnex FPT cũng đặc biệt giới thiệu các dòng cận –cao cấp với khả năng đáp ứng tốt bài toán ngân sách và cấu hình phù hợp với các môi trường văn phòng hoặc các trung tâm thương mại hiện nay. Các thiết bị giám sát này thuộc dòng camera IP với độ phân giải lên đến 4K. Để giúp nâng cao chất lượng ghi hình, CP Plus cũng đưa vào các dòng này công nghệ xử lí hình ảnh màu trong điều kiện ánh sáng cực thấp 0.0005 lux, công nghệ Fish eye. Loạt công nghệ hỗ trợ khác bao gồm chống ngược sáng thực DWDR, chế độ ngày đêm (ICR), tự động cân bằng ánh sáng trắng AWB, chức năng giảm nhiễu số 3D-DNR, chống sương mù Defog, ROI, chức năng tự động điều chỉnh độ lợi sáng- AGC hay tầm xa hồng ngoại đến 100m.\r\n\r\n</div>', 'Synnex FPT “bắt tay” với CP Plus và kỳ vọng mở rộng thị phần camera an ninh', 'CP Plus là nhãn hàng đầu tiên về camera giám sát được phân phối bởi Synnex FPT. Sự hợp tác này mở ra một sức mạnh song phương, tiến tới kỳ vọng chiếm lĩnh thị trường camera an ninh tại Việt Nam. Đó là sức mạnh từ giá trị thương hiệu nổi tiếng thế giới trong giải pháp Giám sát & An ninh chuyên dụng cùng một nhà phân phối hàng đầu tại Việt Nam về các thiết bị công nghệ.', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2019-07-09 10:45:56', '2019-07-09 03:45:56', '', 31, 'http://tintuc.tenten.co/31-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2019-07-09 10:47:28', '2019-07-09 03:47:28', '', 'door-shaver-door-planer-home-depot-door-shaver-planers-door-planer-home-depot-rental-door-planer-door-planer-home-depot', '', 'inherit', 'open', 'closed', '', 'door-shaver-door-planer-home-depot-door-shaver-planers-door-planer-home-depot-rental-door-planer-door-planer-home-depot', '', '', '2019-07-09 10:47:28', '2019-07-09 03:47:28', '', 31, 'http://tintuc.tenten.co/wp-content/uploads/2019/07/door-shaver-door-planer-home-depot-door-shaver-planers-door-planer-home-depot-rental-door-planer-door-planer-home-depot.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2019-07-09 11:06:12', '2019-07-09 04:06:12', 'Theo nguồn tin từ Nikkei, hãng Nintendo của Nhật sẽ chuyển một số hoạt động sản xuất của chiếc máy chơi game cầm tay Switch từ Trung Quốc sang Việt Nam, do lo ngại cuộc chiến thương mại Mỹ Trung sẽ phủ bóng đen lên thiết bị chơi game đình đám này.\r\n\r\nHiện tại, gần như toàn bộ chiếc Switch được sản xuất tại Trung Quốc thông qua các hãng gia công, bao gồm cả Foxconn. Do đó, những nhà máy của công ty này tại Việt Nam có thể đảm nhận phần công việc chuyển từ Trung Quốc sang chỉ trong vòng vài tháng.\r\n\r\nKhoảng 40% trong tổng số 17 triệu chiếc console Switch được bán trong năm tài khóa 2018 thuộc về thị trường châu Mỹ - chủ yếu là Mỹ - thị trường lớn nhất của Nintendo theo doanh số. Do vậy công ty đang tích cực tìm cách tránh các rủi ro về thuế quan, khi họ cảm thấy đây sẽ là đòn đánh chí mạng dành cho cả hoạt động của công ty lẫn khách hàng của họ.\r\n<div class="VCSortableInPreviewMode noCaption" data-vivaldi-spatnav-clickable="1"><img class="size-medium wp-image-32 aligncenter" src="http://tintuc.tenten.co/wp-content/uploads/2019/07/screen-shot-2019-06-12-at-61838-am-15626093975542075326691-600x341.png" alt="" width="600" height="341" /></div>\r\n<div data-vivaldi-spatnav-clickable="1">\r\n\r\nNintendo lên kế hoạch giữ mục tiêu đối với doanh số toàn cầu của chiếc Switch trong năm tài khóa 2019 là 18 triệu sản phẩm, do vậy, việc tăng cường sản xuất tại Việt Nam có thể mang lại sự sụt giảm sản xuất tương ứng ở Trung Quốc đối với kế hoạch ban đầu.\r\n\r\nHiện tại, chiếc Switch đang được bán lẻ tại Mỹ với giá khoảng 300 USD. Nhưng mức giá này có thể tăng thêm hàng chục USD nữa nếu Nintendo bắt người tiêu dùng phải gánh chịu hầu hết hoặc tất cả gánh nặng của mức thuế quan 25%, đang đe dọa áp lên các sản phẩm sản xuất tại Trung Quốc. Hiện chiếc máy chơi game console này đang không phải chịu thuế nhập khẩu vào Mỹ.\r\n\r\nTại hội nghị thượng đỉnh vào cuối tháng Sáu vừa qua, tổng thống Mỹ Donald Trump và người đồng cấp, chủ tịch Trung Quốc Tập Cận Bình đã đồng ý mở lại các cuộc đàm phán song phương về thương mại, dẫn đến việc bãi bỏ vòng thuế quan thứ tư theo kế hoạch của Washington. Nhưng các nhà sản xuất trên thế giới vẫn đang lo ngại rằng cuộc xung đột này sẽ kéo dài, khiến nhiều công ty xem xét lại chiến lược sản xuất tại Trung Quốc.\r\n\r\nHãng điện tử Nhật Bản, Sharp đang nhắm đến việc chuyển hoạt động sản xuất một số dòng laptop cho thị trường Mỹ sang Việt Nam, trong khi hãng Ricoh dự định chuyển hoàn toàn việc sản xuất máy văn phòng sang Thái Lan. Vòng thuế quan thứ tư của Mỹ, nếu được áp dụng, sẽ làm giá các mặt hàng điện tử tăng vọt.\r\n\r\n</div>', 'Tránh bóng ma thuế quan, Nintendo chuyển việc sản xuất máy chơi game Switch sang Việt Nam', 'Theo nguồn tin từ Nikkei, hãng Nintendo của Nhật sẽ chuyển một số hoạt động sản xuất của chiếc máy chơi game cầm tay Switch từ Trung Quốc sang Việt Nam, do lo ngại cuộc chiến thương mại Mỹ Trung sẽ phủ bóng đen lên thiết bị chơi game đình đám này.', 'publish', 'open', 'open', '', 'tranh-bong-ma-thue-quan-nintendo-chuyen-viec-san-xuat-may-choi-game-switch-sang-viet-nam', '', '', '2019-07-09 14:08:49', '2019-07-09 07:08:49', '', 0, 'http://tintuc.tenten.co/?p=35', 0, 'post', '', 0),
(36, 1, '2019-07-09 11:06:12', '2019-07-09 04:06:12', 'Theo nguồn tin từ Nikkei, hãng Nintendo của Nhật sẽ chuyển một số hoạt động sản xuất của chiếc máy chơi game cầm tay Switch từ Trung Quốc sang Việt Nam, do lo ngại cuộc chiến thương mại Mỹ Trung sẽ phủ bóng đen lên thiết bị chơi game đình đám này.\r\n\r\nHiện tại, gần như toàn bộ chiếc Switch được sản xuất tại Trung Quốc thông qua các hãng gia công, bao gồm cả Foxconn. Do đó, những nhà máy của công ty này tại Việt Nam có thể đảm nhận phần công việc chuyển từ Trung Quốc sang chỉ trong vòng vài tháng.\r\n\r\nKhoảng 40% trong tổng số 17 triệu chiếc console Switch được bán trong năm tài khóa 2018 thuộc về thị trường châu Mỹ - chủ yếu là Mỹ - thị trường lớn nhất của Nintendo theo doanh số. Do vậy công ty đang tích cực tìm cách tránh các rủi ro về thuế quan, khi họ cảm thấy đây sẽ là đòn đánh chí mạng dành cho cả hoạt động của công ty lẫn khách hàng của họ.\r\n<div class="VCSortableInPreviewMode noCaption" data-vivaldi-spatnav-clickable="1"><img class="size-medium wp-image-32 aligncenter" src="http://tintuc.tenten.co/wp-content/uploads/2019/07/screen-shot-2019-06-12-at-61838-am-15626093975542075326691-600x341.png" alt="" width="600" height="341" /></div>\r\n<div data-vivaldi-spatnav-clickable="1">\r\n\r\nNintendo lên kế hoạch giữ mục tiêu đối với doanh số toàn cầu của chiếc Switch trong năm tài khóa 2019 là 18 triệu sản phẩm, do vậy, việc tăng cường sản xuất tại Việt Nam có thể mang lại sự sụt giảm sản xuất tương ứng ở Trung Quốc đối với kế hoạch ban đầu.\r\n\r\nHiện tại, chiếc Switch đang được bán lẻ tại Mỹ với giá khoảng 300 USD. Nhưng mức giá này có thể tăng thêm hàng chục USD nữa nếu Nintendo bắt người tiêu dùng phải gánh chịu hầu hết hoặc tất cả gánh nặng của mức thuế quan 25%, đang đe dọa áp lên các sản phẩm sản xuất tại Trung Quốc. Hiện chiếc máy chơi game console này đang không phải chịu thuế nhập khẩu vào Mỹ.\r\n\r\nTại hội nghị thượng đỉnh vào cuối tháng Sáu vừa qua, tổng thống Mỹ Donald Trump và người đồng cấp, chủ tịch Trung Quốc Tập Cận Bình đã đồng ý mở lại các cuộc đàm phán song phương về thương mại, dẫn đến việc bãi bỏ vòng thuế quan thứ tư theo kế hoạch của Washington. Nhưng các nhà sản xuất trên thế giới vẫn đang lo ngại rằng cuộc xung đột này sẽ kéo dài, khiến nhiều công ty xem xét lại chiến lược sản xuất tại Trung Quốc.\r\n\r\nHãng điện tử Nhật Bản, Sharp đang nhắm đến việc chuyển hoạt động sản xuất một số dòng laptop cho thị trường Mỹ sang Việt Nam, trong khi hãng Ricoh dự định chuyển hoàn toàn việc sản xuất máy văn phòng sang Thái Lan. Vòng thuế quan thứ tư của Mỹ, nếu được áp dụng, sẽ làm giá các mặt hàng điện tử tăng vọt.\r\n\r\n</div>', 'Tránh bóng ma thuế quan, Nintendo chuyển việc sản xuất máy chơi game Switch sang Việt Nam', 'Theo nguồn tin từ Nikkei, hãng Nintendo của Nhật sẽ chuyển một số hoạt động sản xuất của chiếc máy chơi game cầm tay Switch từ Trung Quốc sang Việt Nam, do lo ngại cuộc chiến thương mại Mỹ Trung sẽ phủ bóng đen lên thiết bị chơi game đình đám này.', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2019-07-09 11:06:12', '2019-07-09 04:06:12', '', 35, 'http://tintuc.tenten.co/35-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2019-07-09 11:08:39', '2019-07-09 04:08:39', '<h3 class="knc-sapo">Homa Việt Nam thông báo ra mắt dòng sản phẩm IoT Hub Kết Nối Đa Giao Thức khuấy động thị trường nhà thông minh tại Việt Nam</h3>\r\n<div data-check-position="genk_body_start">Khái niệm nhà thông minh có mặt tại Việt Nam khoảng hơn 10 năm trước và trở nên phổ biến trong vài năm gần đây với sự phát triển của cuộc cách mạng công nghiệp 4.0. Theo Statista, doanh thu từ thị trường nhà thông minh tại Việt Nam ước tính đạt 83 triệu USD năm 2019, đến năm 2023 ước tính 437 triệu USD. Tốc độ tăng trưởng dự kiến là 51,7% trong giai đoạn 2019 - 2023. Nhà thông minh được dự đoán sẽ còn tiếp tục bùng nổ trong tương lai. Nhiều chuyên gia nhận định, làn sóng cách mạng công nghiệp 4.0 cộng với sự phát triển của các sản phẩm thị trường bất động sản hiện nay sẽ khiến nhà thông minh dần được ưa chuộng hơn. Sự phổ biến của smartphone tại Việt Nam cũng giúp đơn giản hóa cách thức sử dụng nhà thông minh với người dùng. Công nghệ IoT và trí tuệ nhân tạo, Big Data...với nhiều ứng dụng trong Smarthome đem lại nhiều tiện nghi thú vị, thỏa mãn nhu cầu gia chủ.</div>\r\n<div data-check-position="genk_body_start">\r\n\r\n<img class="size-medium wp-image-38 aligncenter" src="http://tintuc.tenten.co/wp-content/uploads/2019/07/photo-1-1562556570326677889521-600x400.jpg" alt="" width="600" height="400" />\r\n\r\nMới đây, Homa Techs Inc. - nhà cung cấp thiết bị mạng Kết Nối Vạn Vật (Internet of Things – IoT) và thiết bị nhà/tòa nhà thông minh được tích hợp cùng công nghệ Trí Tuệ Nhân Tạo Tinh Giản, thông báo sẽ chính thức ra mắt dòng sản phẩm IoT Hub Kết Nối Đa Giao Thức. Theo Homa dòng sản phẩm này không chỉ hoạt động như một WiFi Router mạnh mẽ mà còn là bộ điều khiển trung tâm thông minh, sử dụng các chuẩn kết nối phổ biến trên thị trường: WiFi, Zigbee, Z-wave, Bluetooth BLE, G.hn PLC... Tất cả các thiết bị sau khi kết nối với loT Hub sẽ hoạt động đồng bộ trên cùng hệ thông phần mềm và ứng dụng của Homa. Các Hub Đa Năng này có khả năng kết nối với nhau bằng công nghệ đường trục độc quyền của Homa, phối hợp với đường truyền Wifi và PLC G.hn tạo thành mạng lưới để mở rộng vùng phủ sóng.\r\n\r\nLà một cái tên khá mới trong thị trường nhà thông minh tại Việt Nam nên thông tin về dòng sản phẩm mới của doanh nghiệp nhận được rất nhiều sự quan tâm và chú ý từ giới trong ngành. Theo Homa, dòng sản phẩm IoT Hub Kết Nối Đa Giao Thức còn được trang bị dòng chip mới nhất của Qualcomm cũng như cài đặt thuật toán trí tuệ nhân tạo tinh giản của Homa, cho phép xử lý cục bộ các tác vụ phân tích hình ảnh, âm thanh và nhiều loại tín hiệu khác mà trước đây phải cần đến những server mạnh mẽ.\r\n\r\n</div>', 'Đột phá mới hứa hẹn làm thay đổi định nghĩa nhà thông minh tại thị trường Việt Nam', 'Mới đây, Homa Techs Inc. - nhà cung cấp thiết bị mạng Kết Nối Vạn Vật (Internet of Things – IoT) và thiết bị nhà/tòa nhà thông minh được tích hợp cùng công nghệ Trí Tuệ Nhân Tạo Tinh Giản, thông báo sẽ chính thức ra mắt dòng sản phẩm IoT Hub Kết Nối Đa Giao Thức', 'publish', 'open', 'open', '', 'dot-pha-moi-hua-hen-lam-thay-doi-dinh-nghia-nha-thong-minh-tai-thi-truong-viet-nam', '', '', '2019-07-09 14:09:02', '2019-07-09 07:09:02', '', 0, 'http://tintuc.tenten.co/?p=37', 0, 'post', '', 0),
(38, 1, '2019-07-09 11:08:12', '2019-07-09 04:08:12', '', 'photo-1-1562556570326677889521', '', 'inherit', 'open', 'closed', '', 'photo-1-1562556570326677889521', '', '', '2019-07-09 11:08:12', '2019-07-09 04:08:12', '', 37, 'http://tintuc.tenten.co/wp-content/uploads/2019/07/photo-1-1562556570326677889521.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2019-07-09 11:08:39', '2019-07-09 04:08:39', '<h3 class="knc-sapo">Homa Việt Nam thông báo ra mắt dòng sản phẩm IoT Hub Kết Nối Đa Giao Thức khuấy động thị trường nhà thông minh tại Việt Nam</h3>\r\n<div data-check-position="genk_body_start">Khái niệm nhà thông minh có mặt tại Việt Nam khoảng hơn 10 năm trước và trở nên phổ biến trong vài năm gần đây với sự phát triển của cuộc cách mạng công nghiệp 4.0. Theo Statista, doanh thu từ thị trường nhà thông minh tại Việt Nam ước tính đạt 83 triệu USD năm 2019, đến năm 2023 ước tính 437 triệu USD. Tốc độ tăng trưởng dự kiến là 51,7% trong giai đoạn 2019 - 2023. Nhà thông minh được dự đoán sẽ còn tiếp tục bùng nổ trong tương lai. Nhiều chuyên gia nhận định, làn sóng cách mạng công nghiệp 4.0 cộng với sự phát triển của các sản phẩm thị trường bất động sản hiện nay sẽ khiến nhà thông minh dần được ưa chuộng hơn. Sự phổ biến của smartphone tại Việt Nam cũng giúp đơn giản hóa cách thức sử dụng nhà thông minh với người dùng. Công nghệ IoT và trí tuệ nhân tạo, Big Data...với nhiều ứng dụng trong Smarthome đem lại nhiều tiện nghi thú vị, thỏa mãn nhu cầu gia chủ.</div>\r\n<div data-check-position="genk_body_start">\r\n\r\n<img class="size-medium wp-image-38 aligncenter" src="http://tintuc.tenten.co/wp-content/uploads/2019/07/photo-1-1562556570326677889521-600x400.jpg" alt="" width="600" height="400" />\r\n\r\nMới đây, Homa Techs Inc. - nhà cung cấp thiết bị mạng Kết Nối Vạn Vật (Internet of Things – IoT) và thiết bị nhà/tòa nhà thông minh được tích hợp cùng công nghệ Trí Tuệ Nhân Tạo Tinh Giản, thông báo sẽ chính thức ra mắt dòng sản phẩm IoT Hub Kết Nối Đa Giao Thức. Theo Homa dòng sản phẩm này không chỉ hoạt động như một WiFi Router mạnh mẽ mà còn là bộ điều khiển trung tâm thông minh, sử dụng các chuẩn kết nối phổ biến trên thị trường: WiFi, Zigbee, Z-wave, Bluetooth BLE, G.hn PLC... Tất cả các thiết bị sau khi kết nối với loT Hub sẽ hoạt động đồng bộ trên cùng hệ thông phần mềm và ứng dụng của Homa. Các Hub Đa Năng này có khả năng kết nối với nhau bằng công nghệ đường trục độc quyền của Homa, phối hợp với đường truyền Wifi và PLC G.hn tạo thành mạng lưới để mở rộng vùng phủ sóng.\r\n\r\nLà một cái tên khá mới trong thị trường nhà thông minh tại Việt Nam nên thông tin về dòng sản phẩm mới của doanh nghiệp nhận được rất nhiều sự quan tâm và chú ý từ giới trong ngành. Theo Homa, dòng sản phẩm IoT Hub Kết Nối Đa Giao Thức còn được trang bị dòng chip mới nhất của Qualcomm cũng như cài đặt thuật toán trí tuệ nhân tạo tinh giản của Homa, cho phép xử lý cục bộ các tác vụ phân tích hình ảnh, âm thanh và nhiều loại tín hiệu khác mà trước đây phải cần đến những server mạnh mẽ.\r\n\r\n</div>', 'Đột phá mới hứa hẹn làm thay đổi định nghĩa nhà thông minh tại thị trường Việt Nam', 'Mới đây, Homa Techs Inc. - nhà cung cấp thiết bị mạng Kết Nối Vạn Vật (Internet of Things – IoT) và thiết bị nhà/tòa nhà thông minh được tích hợp cùng công nghệ Trí Tuệ Nhân Tạo Tinh Giản, thông báo sẽ chính thức ra mắt dòng sản phẩm IoT Hub Kết Nối Đa Giao Thức', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2019-07-09 11:08:39', '2019-07-09 04:08:39', '', 37, 'http://tintuc.tenten.co/37-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2019-07-09 11:16:13', '2019-07-09 04:16:13', '<h3 class="knc-sapo">Chơi game trên màn hình 21:9 của Sony Xperia 1 mang đến trải nghiệm khác biệt và nhiều lợi thế.</h3>\r\nSmartphone đang ngày càng phát triển thêm nhiều những tính năng và công nghệ mới lạ. Tuy nhiên, chỉ riêng Sony vẫn trung thành với những giá trị truyền thống của mình. Thay đổi lớn nhất và khác biệt nhất của chiếc smartphone Xperia 1 vừa ra mắt, có lẽ là màn hình siêu dài 21:9.\r\n\r\nĐối với những chiếc máy tính cá nhân, màn hình với tỷ lệ siêu dài có thể làm thay đổi trải nghiệm của chúng ta, đặc biệt là khi xem phim hay chơi game. Vậy màn hình siêu dài trên smartphone thì sao? Daniel Marchena từ XDA TV đã giúp chúng ta tìm ra câu trả lời.\r\n\r\nCó khá nhiều tác vụ trên smartphone hoàn toàn không phụ thuộc vào tỷ lệ màn hình, chúng chỉ đơn giản là thay đổi để có thể chiếm trọn phần màn hình hiển thị, cho dù là 16:9 hay 21:9. Tuy nhiên việc chơi game trên màn hình 21:9 cũng tùy thuộc vào từng loại game.\r\n\r\n<img class="size-medium wp-image-41 aligncenter" src="http://tintuc.tenten.co/wp-content/uploads/2019/07/mwsnap021-1562554627950844337180-600x380.png" alt="" width="600" height="380" />\r\n\r\nDaniel đã thử qua khá nhiều tựa game như: Afterpulse, Angry Birds, Asphalt 9, Crossy Road, Shooty Skies, Minecraft và Fortnite. Hầu hết các tựa game này đều hoạt động tốt trên màn hình 21:9, khi có thể hiển thị full màn hình. Chỉ riêng Stardew Valley là khá tệ, khi vẫn giữ nguyên tỷ lệ 16:9 và để lại một khoảng trống màu đen rất lớn.', 'Thử chơi game trên màn hình siêu dài 21:9 của Sony Xperia 1', 'Chơi game trên màn hình 21:9 của Sony Xperia 1 mang đến trải nghiệm khác biệt và nhiều lợi thế.', 'publish', 'open', 'open', '', 'ung-dung-thanh-toan-di-dong-nhat-dong-cua-sau-khi-bi-hack-500-000-usd-2', '', '', '2019-07-09 14:09:32', '2019-07-09 07:09:32', '', 0, 'http://tintuc.tenten.co/?p=40', 0, 'post', '', 0),
(41, 1, '2019-07-09 11:15:47', '2019-07-09 04:15:47', '', 'mwsnap021-1562554627950844337180', '', 'inherit', 'open', 'closed', '', 'mwsnap021-1562554627950844337180', '', '', '2019-07-09 11:15:47', '2019-07-09 04:15:47', '', 40, 'http://tintuc.tenten.co/wp-content/uploads/2019/07/mwsnap021-1562554627950844337180.png', 0, 'attachment', 'image/png', 0),
(42, 1, '2019-07-09 11:16:13', '2019-07-09 04:16:13', '<h3 class="knc-sapo">Chơi game trên màn hình 21:9 của Sony Xperia 1 mang đến trải nghiệm khác biệt và nhiều lợi thế.</h3>\r\nSmartphone đang ngày càng phát triển thêm nhiều những tính năng và công nghệ mới lạ. Tuy nhiên, chỉ riêng Sony vẫn trung thành với những giá trị truyền thống của mình. Thay đổi lớn nhất và khác biệt nhất của chiếc smartphone Xperia 1 vừa ra mắt, có lẽ là màn hình siêu dài 21:9.\r\n\r\nĐối với những chiếc máy tính cá nhân, màn hình với tỷ lệ siêu dài có thể làm thay đổi trải nghiệm của chúng ta, đặc biệt là khi xem phim hay chơi game. Vậy màn hình siêu dài trên smartphone thì sao? Daniel Marchena từ XDA TV đã giúp chúng ta tìm ra câu trả lời.\r\n\r\nCó khá nhiều tác vụ trên smartphone hoàn toàn không phụ thuộc vào tỷ lệ màn hình, chúng chỉ đơn giản là thay đổi để có thể chiếm trọn phần màn hình hiển thị, cho dù là 16:9 hay 21:9. Tuy nhiên việc chơi game trên màn hình 21:9 cũng tùy thuộc vào từng loại game.\r\n\r\n<img class="size-medium wp-image-41 aligncenter" src="http://tintuc.tenten.co/wp-content/uploads/2019/07/mwsnap021-1562554627950844337180-600x380.png" alt="" width="600" height="380" />\r\n\r\nDaniel đã thử qua khá nhiều tựa game như: Afterpulse, Angry Birds, Asphalt 9, Crossy Road, Shooty Skies, Minecraft và Fortnite. Hầu hết các tựa game này đều hoạt động tốt trên màn hình 21:9, khi có thể hiển thị full màn hình. Chỉ riêng Stardew Valley là khá tệ, khi vẫn giữ nguyên tỷ lệ 16:9 và để lại một khoảng trống màu đen rất lớn.', 'Thử chơi game trên màn hình siêu dài 21:9 của Sony Xperia 1', 'Chơi game trên màn hình 21:9 của Sony Xperia 1 mang đến trải nghiệm khác biệt và nhiều lợi thế.', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2019-07-09 11:16:13', '2019-07-09 04:16:13', '', 40, 'http://tintuc.tenten.co/40-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2019-07-09 11:16:47', '2019-07-09 04:16:47', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2019-07-09 11:16:47', '2019-07-09 04:16:47', '', 0, 'http://tintuc.tenten.co/?page_id=43', 0, 'page', '', 0),
(44, 1, '2019-07-09 11:16:47', '2019-07-09 04:16:47', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2019-07-09 11:16:47', '2019-07-09 04:16:47', '', 43, 'http://tintuc.tenten.co/43-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2019-07-09 11:35:00', '2019-07-09 04:35:00', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2019-07-09 11:35:00', '2019-07-09 04:35:00', '', 0, 'http://tintuc.tenten.co/?p=45', 5, 'nav_menu_item', '', 0),
(46, 1, '2019-07-09 11:35:00', '2019-07-09 04:35:00', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2019-07-09 11:35:00', '2019-07-09 04:35:00', '', 0, 'http://tintuc.tenten.co/?p=46', 3, 'nav_menu_item', '', 0),
(47, 1, '2019-07-09 11:35:00', '2019-07-09 04:35:00', ' ', '', '', 'publish', 'closed', 'closed', '', '47', '', '', '2019-07-09 11:35:00', '2019-07-09 04:35:00', '', 0, 'http://tintuc.tenten.co/?p=47', 4, 'nav_menu_item', '', 0),
(48, 1, '2019-07-09 11:35:00', '2019-07-09 04:35:00', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2019-07-09 11:35:00', '2019-07-09 04:35:00', '', 0, 'http://tintuc.tenten.co/?p=48', 2, 'nav_menu_item', '', 0),
(49, 1, '2019-07-09 11:27:08', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-07-09 11:27:08', '0000-00-00 00:00:00', '', 0, 'http://tintuc.tenten.co/?p=49', 1, 'nav_menu_item', '', 0),
(50, 1, '2019-07-09 11:34:59', '2019-07-09 04:34:59', '', 'Tin khuyến mãi', '', 'publish', 'closed', 'closed', '', 'tin-khuyen-mai', '', '', '2019-07-09 11:34:59', '2019-07-09 04:34:59', '', 0, 'http://tintuc.tenten.co/?p=50', 1, 'nav_menu_item', '', 0),
(51, 1, '2019-07-09 13:50:25', '2019-07-09 06:50:25', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2019-07-09 13:50:25', '2019-07-09 06:50:25', '', 0, 'http://tintuc.tenten.co/wp-content/uploads/2019/07/logo.png', 0, 'attachment', 'image/png', 0),
(53, 1, '2019-07-10 13:45:00', '2019-07-10 06:45:00', 'TENTEN xin trân trọng thông báo Bảo trì hệ thống Email Server Kusa Mailler trên Server mail Kusa. Thời gian: Từ 21h00 đến 23h00, Thứ 3 ngày 28/05/2019.', 'Thông báo bảo trì hệ thống Email Server Kusa Mailler trên server mail Kusa', 'TENTEN xin trân trọng thông báo Bảo trì hệ thống Email Server Kusa Mailler trên Server mail Kusa. Thời gian: Từ 21h00 đến 23h00, Thứ 3 ngày 28/05/2019.', 'publish', 'open', 'open', '', 'thong-bao-bao-tri-he-thong-email-server-kusa-mailler-tren-server-mail-kusa', '', '', '2019-07-10 13:59:59', '2019-07-10 06:59:59', '', 0, 'http://tintuc.tenten.co/?p=53', 0, 'post', '', 0),
(54, 1, '2019-07-10 13:45:00', '2019-07-10 06:45:00', 'sdasdaasdsda', 'giagndz', 'saddsasda', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2019-07-10 13:45:00', '2019-07-10 06:45:00', '', 53, 'http://tintuc.tenten.co/53-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2019-07-10 13:59:30', '2019-07-10 06:59:30', 'TENTEN xin trân trọng thông báo Bảo trì hệ thống Email Server Kusa Mailler trên Server mail Kusa. Thời gian: Từ 21h00 đến 23h00, Thứ 3 ngày 28/05/2019.', 'Thông báo bảo trì hệ thống Email Server Kusa Mailler trên server mail Kusa', 'TENTEN xin trân trọng thông báo Bảo trì hệ thống Email Server Kusa Mailler trên Server mail Kusa. Thời gian: Từ 21h00 đến 23h00, Thứ 3 ngày 28/05/2019.', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2019-07-10 13:59:30', '2019-07-10 06:59:30', '', 53, 'http://tintuc.tenten.co/53-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2019-07-10 14:00:35', '2019-07-10 07:00:35', 'TENTEN xin trân trọng thông báo Bảo trì hệ thống Email Server trên Server mail 02. Thời gian: Từ 20h00 đến 22h00, Thứ 7 ngày 18/05/2019.', 'Thông báo bảo trì hệ thống Email Server trên Server mail 02', 'TENTEN xin trân trọng thông báo Bảo trì hệ thống Email Server trên Server mail 02. Thời gian: Từ 20h00 đến 22h00, Thứ 7 ngày 18/05/2019.', 'publish', 'open', 'open', '', 'thong-bao-bao-tri-he-thong-email-server-kusa-mailler-tren-server-mail-kusa-2', '', '', '2019-07-10 14:00:35', '2019-07-10 07:00:35', '', 0, 'http://tintuc.tenten.co/?p=56', 0, 'post', '', 0),
(57, 1, '2019-07-10 14:00:35', '2019-07-10 07:00:35', 'TENTEN xin trân trọng thông báo Bảo trì hệ thống Email Server trên Server mail 02. Thời gian: Từ 20h00 đến 22h00, Thứ 7 ngày 18/05/2019.', 'Thông báo bảo trì hệ thống Email Server trên Server mail 02', 'TENTEN xin trân trọng thông báo Bảo trì hệ thống Email Server trên Server mail 02. Thời gian: Từ 20h00 đến 22h00, Thứ 7 ngày 18/05/2019.', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2019-07-10 14:00:35', '2019-07-10 07:00:35', '', 56, 'http://tintuc.tenten.co/56-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2019-07-10 14:00:57', '2019-07-10 07:00:57', 'Theo thông báo từ VNNIC về việc thực hiện bảo trì hệ thống kỹ thuật, cổng kết nối cho tên miền không dấu .VN sẽ tạm ngưng tiếp nhận các yêu cầu đăng ký, gia hạn,...', 'Thông báo tạm ngưng tiếp nhận yêu cầu đăng ký, gia hạn tên miền .VN', 'Theo thông báo từ VNNIC về việc thực hiện bảo trì hệ thống kỹ thuật, cổng kết nối cho tên miền không dấu .VN sẽ tạm ngưng tiếp nhận các yêu cầu đăng ký, gia hạn,...', 'publish', 'open', 'open', '', 'thong-bao-bao-tri-he-thong-email-server-kusa-mailler-tren-server-mail-kusa-2-2', '', '', '2019-07-10 14:00:57', '2019-07-10 07:00:57', '', 0, 'http://tintuc.tenten.co/?p=58', 0, 'post', '', 0),
(59, 1, '2019-07-10 14:00:57', '2019-07-10 07:00:57', 'Theo thông báo từ VNNIC về việc thực hiện bảo trì hệ thống kỹ thuật, cổng kết nối cho tên miền không dấu .VN sẽ tạm ngưng tiếp nhận các yêu cầu đăng ký, gia hạn,...', 'Thông báo tạm ngưng tiếp nhận yêu cầu đăng ký, gia hạn tên miền .VN', 'Theo thông báo từ VNNIC về việc thực hiện bảo trì hệ thống kỹ thuật, cổng kết nối cho tên miền không dấu .VN sẽ tạm ngưng tiếp nhận các yêu cầu đăng ký, gia hạn,...', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2019-07-10 14:00:57', '2019-07-10 07:00:57', '', 58, 'http://tintuc.tenten.co/58-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2019-07-10 14:01:26', '2019-07-10 07:01:26', 'TENTEN xin trân trọng thông báo: Bảo trì hệ thống Email Server. Thời gian: Từ 22h00 đến 23h00, Thứ 4 ngày 17/04/2019', 'Thông báo bảo trì hệ thống Email Server tại TENTEN.VN', 'TENTEN xin trân trọng thông báo: Bảo trì hệ thống Email Server. Thời gian: Từ 22h00 đến 23h00, Thứ 4 ngày 17/04/2019', 'publish', 'open', 'open', '', 'thong-bao-bao-tri-he-thong-email-server-tai-tenten-vn', '', '', '2019-07-10 14:01:26', '2019-07-10 07:01:26', '', 0, 'http://tintuc.tenten.co/?p=60', 0, 'post', '', 0),
(61, 1, '2019-07-10 14:01:26', '2019-07-10 07:01:26', 'TENTEN xin trân trọng thông báo: Bảo trì hệ thống Email Server. Thời gian: Từ 22h00 đến 23h00, Thứ 4 ngày 17/04/2019', 'Thông báo bảo trì hệ thống Email Server tại TENTEN.VN', 'TENTEN xin trân trọng thông báo: Bảo trì hệ thống Email Server. Thời gian: Từ 22h00 đến 23h00, Thứ 4 ngày 17/04/2019', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2019-07-10 14:01:26', '2019-07-10 07:01:26', '', 60, 'http://tintuc.tenten.co/60-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2019-07-10 14:01:52', '2019-07-10 07:01:52', 'TENTEN xin trân trọng thông báo: Bảo trì định kỳ hệ thống Failover Hosting. Thời gian: Từ 0h00 đến 00h10, Chủ nhật ngày 01/04/2018', 'Thông báo bảo trì định kỳ hệ thống Failover Hosting', 'TENTEN xin trân trọng thông báo: Bảo trì định kỳ hệ thống Failover Hosting. Thời gian: Từ 0h00 đến 00h10, Chủ nhật ngày 01/04/2018', 'publish', 'open', 'open', '', 'thong-bao-bao-tri-dinh-ky-he-thong-failover-hosting', '', '', '2019-07-10 14:01:52', '2019-07-10 07:01:52', '', 0, 'http://tintuc.tenten.co/?p=62', 0, 'post', '', 0),
(63, 1, '2019-07-10 14:01:52', '2019-07-10 07:01:52', 'TENTEN xin trân trọng thông báo: Bảo trì định kỳ hệ thống Failover Hosting. Thời gian: Từ 0h00 đến 00h10, Chủ nhật ngày 01/04/2018', 'Thông báo bảo trì định kỳ hệ thống Failover Hosting', 'TENTEN xin trân trọng thông báo: Bảo trì định kỳ hệ thống Failover Hosting. Thời gian: Từ 0h00 đến 00h10, Chủ nhật ngày 01/04/2018', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2019-07-10 14:01:52', '2019-07-10 07:01:52', '', 62, 'http://tintuc.tenten.co/62-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2019-07-10 14:13:31', '2019-07-10 07:13:31', 'saddaasd', 'giangdz', 'dassda', 'trash', 'open', 'open', '', 'giangdz__trashed', '', '', '2019-07-10 14:14:52', '2019-07-10 07:14:52', '', 0, 'http://tintuc.tenten.co/?p=64', 0, 'post', '', 0),
(65, 1, '2019-07-10 14:13:31', '2019-07-10 07:13:31', 'saddaasd', 'giangdz', 'dassda', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2019-07-10 14:13:31', '2019-07-10 07:13:31', '', 64, 'http://tintuc.tenten.co/64-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2019-07-10 14:15:03', '2019-07-10 07:15:03', 'abcdef', 'giang dz super', 'adasddsa', 'trash', 'open', 'open', '', 'giang-dz-super__trashed', '', '', '2019-07-10 14:31:04', '2019-07-10 07:31:04', '', 0, 'http://tintuc.tenten.co/?p=66', 0, 'post', '', 0),
(67, 1, '2019-07-10 14:15:03', '2019-07-10 07:15:03', 'abcdef', 'giang dz super', 'adasddsa', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2019-07-10 14:15:03', '2019-07-10 07:15:03', '', 66, 'http://tintuc.tenten.co/66-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2019-07-11 10:17:43', '2019-07-11 03:17:43', '', 'New Slideshow', '', 'publish', 'closed', 'closed', '', 'new-slideshow', '', '', '2019-07-11 10:21:15', '2019-07-11 03:21:15', '', 0, 'http://tintuc.tenten.co/?post_type=ml-slider&#038;p=68', 0, 'ml-slider', '', 0),
(69, 1, '2019-07-11 10:18:16', '2019-07-11 03:18:16', '', '02_tintuc_hoatdongxahoi', '', 'inherit', 'open', 'closed', '', '02_tintuc_hoatdongxahoi', '', '', '2019-07-11 10:18:16', '2019-07-11 03:18:16', '', 0, 'http://tintuc.tenten.co/wp-content/uploads/2019/07/02_tintuc_hoatdongxahoi.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2019-07-11 10:18:17', '2019-07-11 03:18:17', '', 'Slider 68 - image', '', 'publish', 'closed', 'closed', '', 'slider-68-image', '', '', '2019-07-11 10:21:15', '2019-07-11 03:21:15', '', 0, 'http://tintuc.tenten.co/?post_type=ml-slide&#038;p=70', 0, 'ml-slide', '', 0),
(71, 1, '2019-07-11 10:25:05', '2019-07-11 03:25:05', '"Lạnh giá không khiến ta cô đơn mà sẽ đem trái tim chúng ta xích lại gần nhau hơn". Với chủ đề "THẮP SÁNG NỤ CƯỜI VÙNG CAO 2015", mong muốn góp hơi ấm, góp yêu thương cho vùng cao lạnh giá, ngày 31/1/2015 vừa qua, sau gần 2 tuần kêu gọi sự ủng hộ của đông đảo Khách hàng, Cán bộ công nhân viên Công ty cùng các Nhà hảo tâm trên khắp mọi miền đất nước, trải qua quãng đường dài gần 500km đường đèo, đoàn từ thiện TENTEN.VN đã có buổi trao tặng những món quà ý nghĩa tới tận tay người dân nghèo xã Mường Lạn - Sốp Cộp - Sơn La.', 'Thắp sáng nụ cười vùng cao 2019', '"Lạnh giá không khiến ta cô đơn mà sẽ đem trái tim chúng ta xích lại gần nhau hơn". Với chủ đề "THẮP SÁNG NỤ CƯỜI VÙNG CAO 2015", mong muốn góp hơi ấm, góp yêu thương cho vùng cao lạnh giá, ngày 31/1/2015 vừa qua, sau gần 2 tuần kêu gọi sự ủng hộ của đông đảo Khách hàng, Cán bộ công nhân viên Công ty cùng các Nhà hảo tâm trên khắp mọi miền đất nước, trải qua quãng đường dài gần 500km đường đèo, đoàn từ thiện TENTEN.VN đã có buổi trao tặng những món quà ý nghĩa tới tận tay người dân nghèo xã Mường Lạn - Sốp Cộp - Sơn La.', 'publish', 'open', 'open', '', 'thap-sang-nu-cuoi-vung-cao-2019', '', '', '2019-07-11 10:25:05', '2019-07-11 03:25:05', '', 0, 'http://tintuc.tenten.co/?p=71', 0, 'post', '', 0),
(72, 1, '2019-07-11 10:25:02', '2019-07-11 03:25:02', '', 'bemutkeo', '', 'inherit', 'open', 'closed', '', 'bemutkeo', '', '', '2019-07-11 10:25:02', '2019-07-11 03:25:02', '', 71, 'http://tintuc.tenten.co/wp-content/uploads/2019/07/bemutkeo.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2019-07-11 10:25:05', '2019-07-11 03:25:05', '"Lạnh giá không khiến ta cô đơn mà sẽ đem trái tim chúng ta xích lại gần nhau hơn". Với chủ đề "THẮP SÁNG NỤ CƯỜI VÙNG CAO 2015", mong muốn góp hơi ấm, góp yêu thương cho vùng cao lạnh giá, ngày 31/1/2015 vừa qua, sau gần 2 tuần kêu gọi sự ủng hộ của đông đảo Khách hàng, Cán bộ công nhân viên Công ty cùng các Nhà hảo tâm trên khắp mọi miền đất nước, trải qua quãng đường dài gần 500km đường đèo, đoàn từ thiện TENTEN.VN đã có buổi trao tặng những món quà ý nghĩa tới tận tay người dân nghèo xã Mường Lạn - Sốp Cộp - Sơn La.', 'Thắp sáng nụ cười vùng cao 2019', '"Lạnh giá không khiến ta cô đơn mà sẽ đem trái tim chúng ta xích lại gần nhau hơn". Với chủ đề "THẮP SÁNG NỤ CƯỜI VÙNG CAO 2015", mong muốn góp hơi ấm, góp yêu thương cho vùng cao lạnh giá, ngày 31/1/2015 vừa qua, sau gần 2 tuần kêu gọi sự ủng hộ của đông đảo Khách hàng, Cán bộ công nhân viên Công ty cùng các Nhà hảo tâm trên khắp mọi miền đất nước, trải qua quãng đường dài gần 500km đường đèo, đoàn từ thiện TENTEN.VN đã có buổi trao tặng những món quà ý nghĩa tới tận tay người dân nghèo xã Mường Lạn - Sốp Cộp - Sơn La.', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2019-07-11 10:25:05', '2019-07-11 03:25:05', '', 71, 'http://tintuc.tenten.co/71-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Chưa được phân loại', 'khong-phan-loai', 0),
(2, 'Tin khuyến mại', 'tin-khuyen-mai', 0),
(3, 'Tin hữu ích', 'tin-huu-ich', 0),
(4, 'Tin bảo trì', 'tin-bao-tri', 0),
(5, 'Tin công ty', 'tin-cong-ty', 0),
(6, 'Hoạt động xã hội', 'hoat-dong-xa-hoi', 0),
(7, 'menu primary', 'menu-primary', 0),
(8, '68', '68', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(6, 3, 0),
(11, 3, 0),
(17, 3, 0),
(22, 3, 0),
(25, 3, 0),
(31, 3, 0),
(35, 3, 0),
(37, 3, 0),
(40, 3, 0),
(45, 7, 0),
(46, 7, 0),
(47, 7, 0),
(48, 7, 0),
(50, 7, 0),
(53, 4, 0),
(56, 4, 0),
(58, 4, 0),
(60, 4, 0),
(62, 4, 0),
(64, 4, 0),
(66, 1, 0),
(70, 8, 0),
(71, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 0),
(3, 3, 'category', '', 0, 9),
(4, 4, 'category', '', 0, 5),
(5, 5, 'category', '', 0, 0),
(6, 6, 'category', '', 0, 1),
(7, 7, 'nav_menu', '', 0, 5),
(8, 8, 'ml-slider', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:"fa1d9d8e7d964d184699238f78f858c9a37ac3dd4fb0c96bde71ecb22f4d964d";a:4:{s:10:"expiration";i:1562906002;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36";s:5:"login";i:1562733202;}s:64:"d0aec83d780d016292978abe3aab19d61b9403d0fc6e2fae00b51b31cd66f041";a:4:{s:10:"expiration";i:1562987762;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36";s:5:"login";i:1562814962;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&hidetb=1&siteorigin_panels_setting_tab=welcome'),
(20, 1, 'wp_user-settings-time', '1562815504'),
(21, 1, 'closedpostboxes_post', 'a:0:{}'),
(22, 1, 'metaboxhidden_post', 'a:8:{i:0;s:12:"revisionsdiv";i:1;s:13:"trackbacksdiv";i:2;s:10:"postcustom";i:3;s:16:"commentstatusdiv";i:4;s:11:"commentsdiv";i:5;s:7:"slugdiv";i:6;s:9:"authordiv";i:7;s:19:"tinh-trang-dropdown";}'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(25, 1, 'nav_menu_recently_edited', '7'),
(26, 1, 'wp_metaslider_user_saw_callout_unsplash', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B3TRn3DJJNB94P3iUwOHH1/LEkAxqA/', 'admin', 'truonggiang120795@gmail.com', '', '2019-07-08 04:17:18', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=371;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=358;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

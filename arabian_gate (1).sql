-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2018 at 01:05 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arabian_gate`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutus`
--

CREATE TABLE `aboutus` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `photo` text NOT NULL,
  `desc` text NOT NULL,
  `title_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aboutus`
--

INSERT INTO `aboutus` (`id`, `title`, `photo`, `desc`, `title_ar`, `desc_ar`, `link`) VALUES
(2, 'WHAT WE DO', '1', 'Designing your Business (Content, Websites, Company identity, Branding, Mobile apps & Web apps).', 'test', 'مجرد تجربة', 'https://www.facebook.com/'),
(3, 'VISION & MISSION', 'camera', 'Using the latest design software and are meticulous in our crafting of a site.', '', '', ''),
(4, 'OUR GOALS', 'star', 'your site will have the opportunity to enjoy a far greater audience than many other sites.', '', '', ''),
(6, 'OUR PHILOSOPHY', 'briefcase', 'your site will have the opportunity to enjoy a far greater audience than many other sites.\r\n', '', '', ''),
(7, 'HISTORY', 'comments', 'Multi Mega web solution is based in Cairo, Egypt; first began producing commercial websites in 2008.', '', '', ''),
(8, 'dfdf', '1', 'test2', 'test', 'مجرد تجربة', 'https://www.facebook.com/');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `page_title` text NOT NULL,
  `custom_url` text NOT NULL,
  `meta_title` text NOT NULL,
  `photo` text NOT NULL,
  `photo_alt` text NOT NULL,
  `desc` text NOT NULL,
  `blog` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `cat_id` int(11) NOT NULL,
  `created_at` text NOT NULL,
  `updated_at` text NOT NULL,
  `status` int(11) NOT NULL,
  `blog_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_title_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keyword_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `custom_url_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `viewers` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `page_title`, `custom_url`, `meta_title`, `photo`, `photo_alt`, `desc`, `blog`, `meta_keyword`, `meta_description`, `cat_id`, `created_at`, `updated_at`, `status`, `blog_ar`, `desc_ar`, `page_title_ar`, `meta_title_ar`, `meta_description_ar`, `meta_keyword_ar`, `title_ar`, `custom_url_ar`, `viewers`) VALUES
(1, 'تحديث جديد للواتس اب', 'WhatsApp Update', 'WhatsApp-Update-for-Android', 'تحديث جديد من الـ WhatsApp عند مستخدمي نظام الـ Android | Multi Mega', 'ROswpS_16826162_879456342156682_8552631274243181972_o.jpg', 'WhatsApp', 'الـ Update الجديد بيسمح للمستخدمين بإنهم يلتقطوا صور أو فيديو من خلال أيقونة الكاميرا اللي جت مكان أيقونة الـ Contacts', '<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">الـ Update الجديد بيسمح للمستخدمين بإنهم يلتقطوا صور أو فيديو من خلال أيقونة الكاميرا اللي جت مكان أيقونة الـ Contacts</span></span></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">- وتقدر كمان تختار أي فيديو أو صورة متحركة أو ثابتة وتشاركهم كـ تحديث لحالتك الشخصية و تقدر ترفع أكتر من صورة بأكتر من تعليق وكلهم هيظهروا في بروفايلك&nbsp;</span></span></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">◄ دا غير إن الفيديوهات اللي مدتها 45 ثانية والصور اللي هترفعها كـ تحديث لحالتك الشخصية هتفضل متاحة للـ Contacts عندك لمدة 24 ساعة فقط!</span></span></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">وتقدر تتحكم في ظهور الصور والفيديوهات دي عن طريق 3 اختيارات في الـ Privacy وهم:<br />\r\n1. My contacts<br />\r\n2. My contacts Except<br />\r\n3.&nbsp; Only share with</span></span></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">◄ وممكن كمان تعدِّل على الصور قبل ما تشاركها مع أصحابك على الـ WhatsApp وتـ Reply على الصور والفيديوهات اللي أصحابك هيشاركوها معاك&nbsp;<img alt=\"\" src=\"https://www.facebook.com/images/emoji.php/v7/f4c/1/16/1f642.png\" style=\"height:16px; width:16px\" /></span></span></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">تحديث الـ WhatsApp المرة دي مختلف تمامًا عن التحديثات القديمة للتطبيق وهيكون متاح لجميع المستخدمين على مستوى العالم .</span></span></span></p>\r\n', 'شييي', '<p>الـ Update الجديد بيسمح للمستخدمين بإنهم يلتقطوا صور أو فيديو من خلال أيقونة الكاميرا اللي جت مكان أيقونة الـ Contacts</p>\r\n', 4, '2017-03-08 10:53:38', '2018-08-09 15:01:34', 1, '<p>تحديث جديد للواتس ابتحديث جديد للواتس ابتحديث جديد للواتس ابتحديث جديد للواتس ابتحديث جديد للواتس ابتحديث جديد للواتس ابتحديث جديد للواتس ابتحديث جديد للواتس ابتحديث جديد للواتس ابتحديث جديد للواتس ابتحديث جديد للواتس ابتحديث جديد للواتس ابتحديث جديد للواتس ابتحديث جديد للواتس ابتحديث جديد للواتس ابتحديث جديد للواتس ابتحديث جديد للواتس اب</p>\r\n', 'تحديث جديد للواتس ابتحديث جديد للواتس اب', '', '', '', '', 'تحديث جديد للواتس اب', 'تحديث جديد للواتس اب', 0),
(4, 'هنعملك إعلان ويوصل لـ 50 ألف شخص !', 'هنعملك إعلان ويوصل لـ 50 ألف شخص', 'هنعملك-إعلان-ويوصل-لـ50-ألف-شخص', 'هنعملك إعلان ويوصل لـ 50 ألف شخص | مالتى ميجا ', 'Wnl9zJ_15844091_1383778614999519_3165529115632108893_o.jpg', 'تسويق', 'متخليهمش يضحكوا عليك بـ \" هنعملك إعلان ويوصل لـ 50 ألف شخص ! .. العبرة مش بالعدد العبرة بمين هيتفاعل والـ 50 الف دول انت اصلا عاوزهم ولا لاء وهل هما من الجمهور المستهدف بتاعك ولا لاء !', '<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">متخليهمش يضحكوا عليك بـ &quot; هنعملك إعلان ويوصل لـ 50 ألف شخص ! .. العبرة مش بالعدد العبرة بمين هيتفاعل والـ 50 الف دول انت اصلا عاوزهم ولا لاء وهل هما من الجمهور المستهدف بتاعك ولا لاء !</span></span></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">ممكن يكون الـ reach الخاص بالاعلان اللى هيتعمل لك 10 ألاف شخص فقط ومع ذلك ييجى عائد كويس منه .. وممكن يكون أكثر ومفيش أى فائدة مرجوة منه !</span></span></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">العبرة مش بالرقم .. الموضوع بيتداخل فيه عوامل متعددة منها :-</span></span></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">1- المحتوى الخاص بالاعلان : بدأ إزاى ؟ بيتكلم عن إيه ؟ بيناقش ايه ؟ بيوجه كلامه لمين ؟ هل التوجيه ده صح ولا لاء ؟ .. هل المحتوى هيشد ولا لاء ؟ .. هل المحتوى فعلا مناسب وصحيح للفئة والجمهور اللى بتستهدفه ؟ .. هل هو طويل بشكل يتناسب مع طبيعة الحاجة اللى بتسوق لها ؟.. هل طول الكلام مضر ولا مفيد ؟ .. هل الاعلان فيه call to action اصلا ولا لاء ؟ واسئلة كتيرة جدا لازم تحطها فى الاعتبار .</span></span></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">2 - التصميم الخاص بالاعلان : .مش أى صور والسلام .. هل الصور مناسبة وتخلى اللى بيعمل scroll على الفيسبوك أو تويتر هيتوقف عندها ويشوفها .. هل فيه رسالة قوية او شعار مناسب إنت كاتبه بشكل يكون مميز للى هيشوفه ويشد إنتباهه .. هل ألوان التصميم مناسبة ؟ ايه طبيعة ونوعية الصور او التصميمات اللى انت مختارها .. هل هى نشاز او فيه افضل منها او متكافئة مع المحتوى اللى مكتوب ؟ .. وغيرها من اعتبارات بتحطها وانت بتشتغل ؟</span></span></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">3 - الاستهداف او ما يعرف بـ الـ target : هل إنت اخترت ودرست جمهورك صح .. هل عرفت هما مين ؟ عايشين فين &quot; اعمارهم ايه ؟ حالتهم الاجتماعية ايه ؟ درجتهم العلمية الحالية ايه ؟ اهتمامتهم ايه ؟ أسلوب حياتهم ايه ؟ نشاطهم على السويشال ميديا بيدور فى ايه بالضبط وبيهتموا بايه فيها ؟</span></span></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">~ ايه هى الميزانية المناسب اللى ممكن تحطها فى الاعلان ده ؟<br />\r\n~ ايه هى الايام المناسبة اللى تشغل فيها اعلانك ؟<br />\r\n~ امتى توقف الاعلان ؟<br />\r\n~ ازاى تقيس نجاحك فى الاعلان ؟<br />\r\n&nbsp;~ إزاى تعرف ان لازم تزود فى الاعلان ده فى اليوم الفلانى او مع اى نتائج بالضبط ؟</span></span></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">~ عملت تارجت وكان مناسب جدا ومع ذلك مجابش معاك نتائج فتبدأ تحلل وتشوف هل المشكلة فى التصميم ولا المحتوى ولا من القناة نفسها اللى بتشتغل عليها زى ماحصل مع الفيسبوك فى منتصف شهر 12 وخاصة كل فترة لما بيحصل تحديثات جديدة فى نظام الاعلانات فيه او عموما .</span></span></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">- كل اللى فوق ده لمحة من اللى بيحصل أثناء عمل الإعلان ! .. كل دى أسئلة بيبقى لها وقت ودراسة وتفكير وهموم وضغط ومسئولية .. مسئولية الشغل ومسئولية نجاح ومسئولية ان فيه إيدك فلوس ناس مينفعش تصرفها فى الأرض ولازم تراعى ربنا أولا ثم الناس دى انهم حاطين أمل فى شغلك إنه يبقى مورد دخل ونجاح لهم فى شغلهم خاصة فى الظروف الحالية !</span></span></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">فمتخليش كلام اللى بيقولك &quot; هدخلك 30 الف شخص او 100 ألف شخص يشوفوك &quot; يخدعك .. وبلاش تستسهل الأمر ده لأنها فعلا مش سهلة ومش بسيطة ومش أى حد يعملها على عكس الكلام اللى بيتقال ولو نجحت فى مرة او عشرات المرات فيه عشرات المرات غيرهم هيبقى فيهم فشل والعبرة بالدراسة والتجربة والفهم .</span></span></span></p>\r\n', 'تسويق , اعلان , تسويق الكترونى , ريتش ', 'متخليهمش يضحكوا عليك بـ \" هنعملك إعلان ويوصل لـ 50 ألف شخص ! .. العبرة مش بالعدد العبرة بمين هيتفاعل والـ 50 الف دول انت اصلا عاوزهم ولا لاء وهل هما من الجمهور المستهدف بتاعك ولا لاء !', 1, '2017-03-15 15:01:52', '2017-04-04 11:06:59', 1, '', '', '', '', '', '', NULL, NULL, 0),
(5, 'الفرق بين رجال الاعمال فى البيزنس', 'الفرق بين رجال الاعمال فى البيزنس', 'الفرق-بين-رجال-الأعمال-فى-البيزنس', 'الفرق بين رجال الأعمال فى البيزنس | مالتى ميجا Multi Mega - Business', 'mTIhKM_blog.jpg', 'بيزنس', 'إيه الفرق بين رجل الأعمال المهروس فى السوق واللى لسه بيحاول يكون رجل أعمال \" بيفكر يبدأ مشروعه الخاص \"، كل واحد فيهم بيواجهه كل حاجة بشكل مختلف، نبدأ برجل الأعمال المهروس :', '<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">إيه الفرق بين رجل الأعمال المهروس فى السوق واللى لسه بيحاول يكون رجل أعمال &quot; بيفكر يبدأ مشروعه الخاص &quot;، كل واحد فيهم بيواجهه كل حاجة بشكل مختلف، نبدأ برجل الأعمال المهروس :</span></span></span><br />\r\n&nbsp;</p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\"><strong>&bull; الصعوبات:</strong><br />\r\n&nbsp;صاحب العمل بالفعل بيكون نجح لكن المشكلة ان النجاح ممكن ميستمرش ودة بسبب المشاكل اللى ممكن يقابلها&nbsp;<br />\r\n- الحياه الاقتصادية الغير مستقرة و ازمة السيولة ...<br />\r\n&nbsp;- خطأ تسويقي .. يبقى الشركة ليها نشاط كبير بس مش واضح ممكن يكون بيحقق مبيعات كبيره لكن مش معروف كبراند قوى &quot; يعنى معرفة محدودة &quot; فى اطار معين .</span></span></span><br />\r\n&nbsp;</p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\"><strong>&bull; الهدف:</strong><br />\r\n&nbsp;الهدف بيكون الاستمرارية بنفس الكفاءه اكتر من التفكير فى تحسين الاداء بمعنى ان صاحب العمل بيستقر على اداء معين و يوقف طموحه عند الاداء دة طالما بيحققه الربح المطلوب فقط لا غير..</span></span></span><br />\r\n&nbsp;</p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\"><strong>&bull; طريقة النجاح والادارة:</strong><br />\r\n&nbsp;على الرغم من نجاح شركات كتير فى السوق الا ان طريقة الادارة مختلفة ودة بيأثر على نسبة النجاح،وبتتجه الادارة لواحده من الطرق دى مع اى موظف &quot; الشركة مش بتقف على حد &quot; او &quot; انت جزء من كيان &quot; لكن الشركة الانجح هى اللى تقدر تستخدم الطريقتين حسب نوع الموظف واختيار التوقيت المناسب للحزم واللين ...</span></span></span><br />\r\n&nbsp;</p>\r\n\r\n<p dir=\"rtl\"><strong><span style=\"color:#800000\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\">◄ اما بقى بالنسبة لأى شخص لسه بيحاول يبقى صاحب مشروع جديد الحياه بتختلف معاه شوية:</span></span></span></strong></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\"><strong>&bull; الصعوبات:</strong><br />\r\n- التكاليف ورأس المال ؟!!! وهبدأ ازاى اصلا ؟!&nbsp;<br />\r\n- تكوين فريق عمل مناسب بالامكانيات المتاحه وفى نفس الوقت يكون عنده الوفاء والأمانة المهنية&nbsp;<br />\r\n&nbsp;- القرار المناسب ... من اصعب الحاجات اللى ممكن صاحب المشروع يعملها هى القرار انه يأخد قرار صح فى الوقت الصح...</span></span></span><br />\r\n&nbsp;</p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\"><strong>&bull; الهدف:</strong><br />\r\n&nbsp;دايما بيكون الهدف هو التجديد والتحسين من الاداء بمعنى ان لسه فى اكتر لازم يتعمل ... علشان لسه موصلناش</span></span></span><br />\r\n&nbsp;</p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\"><strong>&bull; طريقة النجاح والادارة:</strong><br />\r\n&nbsp;غالبا ما يتبع طريقة &quot; احنا كيان واحد وعائلة &quot; حفاظًا على فريق العمل لاقصى حد والمشاركة والتحفيز بكل الطرق سواء بالسلب او بالايجاب &quot;كنوع من التشجيع &quot;.</span></span></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">- على الرغم من ان الاختلاف مش كبير الا ان الاتنين مقاتلين فى حرب مع اختلاف كل منهم لنوع السلاح والدرع اللى معاه للحماية من غدر السوق مش اكتر.</span></span></span></p>\r\n', 'Business , بيزنس , رجل اعمال , start up ,مالتى ميجا ', 'الاختلاف بيكون واضع بين رجال الأعمال فى طريقة تعاملهم مع البيزنس الخاص بيهم ; ودة يرجع لانهم بينقسموا لنوعين . النوع الأول : رجل الاعمال المهروس والنوع التانى : رجل الاعمال صاحب الـ start up', 3, '2017-03-26 11:52:33', '2017-03-26 11:56:20', 1, '', '', '', '', '', '', NULL, NULL, 0),
(6, 'أداه الـ MailChimp  وأهمية ال Email Marketing', 'أداه الـ MailChimp  وأهمية ال Email Marketing', 'email-Marketing-mailchimp-tool', 'أداه الـ MailChimp  وأهمية ال Email Marketing |مالتي ميجا Multi Mega', 'msblMV_mc.jpg', 'email marketing', 'خدمة - البريد الإلكتروني - وعلى الرغم من أهميتها إلا إن فيه تجاهل كبير ليها من ناحية الـ Marketers ومبيستخدموش الـ E-mail وهما بيعملوا أي Campaign !\r\n؛ ودا راجع لأن البعض منهم بيعتبره وسيلة تقليدية وراح زمانه', '<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">خدمة - البريد الإلكتروني - وعلى الرغم من أهميتها إلا إن فيه تجاهل كبير ليها من ناحية الـ Marketers ومبيستخدموش الـ E-mail وهما بيعملوا أي Campaign ! </span></span></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">؛ ودا راجع لأن البعض منهم بيعتبره وسيلة تقليدية وراح زمانها :D </span></span></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">◄ لكن وكالعادة جوجل دايمًا بيفاجئنا وأضاف في حملته الأخيرة بعض اللمسات الإجتماعية عشان يرجَّع بيها الـ E-mail لأمجاده كـ أفضل وسيلة للتواصل بصفة عامة ومن أهم الأدوات التسويقية بصفة خاصة (Y) </span></span></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">- وزي ما احنا عارفين الـ E-mail يعتبر من أهم قنوات التواصل اللي بتستخدمها الشركات والأفراد بشكل يومي ومستمر، وبنقوم بتصفح الـ E-mail عشرات المرات خلال ساعة واحدة! :)</span></span></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">= ومن مميزات إستخدام الـ E-mail في التسويق إنه غير مكلف بالمرة ونتائجه هايلة -في حالة لو تم توظيفه بشكل سليم- , دا غير إنه بيساعدنا في إنشاء وإرسال نشرات بريدية إحترافية بكل سهولة ومرونة وبيخلينا نتحكم في توقيت الـ Campaign أكتر من أي وسيلة تانية ..</span></span></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">إحنا بنقول كل دا ليه دلوقتي ؟ :D </span></span></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">◄ عشان نقولك إن MailChimp اللي هو يعتبر من أفضل الـ Tools اللي بتساعد على إنشاء وإدارة النشرات البريدية، وبيتميز إنه بيخليك تقدر تبعت أكتر 12 ألف رسالة لـ 2000 عنوان بريدي بشكل مجاني</span></span></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">+ &nbsp;إنه سهل ومرن في التعامل وبيوفرلك Reports وإحصائيات مهمة عن نشرتك البريدية</span></span></span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">◄ دا كمان هيخليك تقدر تعمل Facebook Ads Campaign وتباشرها من غير ما تضطر تروح للفيس بوك، وكمان هيساعدك توصل لـ Audience جديدة ;) </span></span></span></p>\r\n', 'MailChimp , Email Marketing , Multi Mega , مالتى ميجا , Digital Marking, تسويق الكترونى ', 'التسويق عبر الايميل \" Email Marketing \" يعد من اهم الوسائل التى يجب استخدامها فى التسويق الالكترونى ', 1, '2017-03-26 12:17:55', '2017-04-04 11:06:10', 1, '', '', '', '', '', '', NULL, NULL, 0),
(7, 'مبادىء الديجيتال ماركتنج ', 'مبادىء الديجيتال ماركتنج ', 'مبادىء-الديجيتال-ماركتنج ', 'مبادىء الديجيتال ماركتنج ', 'MWHNm6_اتعلم1.jpg', 'ديجيتال ماركتنج', 'اللي عايزين يتعلموا ديچيتال ماركتينج عددهم كل يوم بيزيد ومعظمهم بيسألوا نفس السؤال..\r\n\r\n\" أتعلمه أونلاين أحسن ولا أوفلاين وحد يتابع معايا عشان ألتزم وافهم؟\".', '<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">اللي عايزين يتعلموا ديچيتال ماركتينج عددهم كل يوم بيزيد ومعظمهم بيسألوا نفس السؤال..</span></span></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">&quot; أتعلمه أونلاين أحسن ولا أوفلاين وحد يتابع معايا عشان ألتزم وافهم؟&quot;.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">الأول لازم تسأل نفسك: أنا ليه عايز أتعلم ديچيتال ماركتينج؟</span></span></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">فيه أسباب كتير تخليك تتعلمه زي إن كل الشركات دلوقتي بقت معتمدة عليه بشكل كبير وسوق العمل فيه بقى أكبر , وعشان هو من أهم العلوم الموجودة دلوقتي وأهميته بتزيد يوم بعد يوم ~</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">نرجع للسؤال الأولاني..</span></span></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">&quot; أتعلم أونلاين أحسن ولا أوفلاين وحد يتابع معايا عشان ألتزم وافهم؟&quot;.</span></span></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">= إحنا بنقولك اتعلم ديچيتال ماركتينج</span></span></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">سيبك من دوشة كورسات السوشيال ميديا اللي بتديك قشور وفي الآخر بتخرج منها زي ما دخلت!</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">اتعلم تسويق معانا كل يوم حد وانت قاعد في بيتك وفاتح اللاب توب وفي إيدك كوباية الكاكاو الحلوة وطبَّق معانا كلمة كلمة لإننا هنقولك الزتونة :D </span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">وهنتابع معاك ونجاوبك على إستفساراتك لحد ما توصل للمستوى اللي يرضيك، وكل دا بطريقة سهلة ومش معقدة ^_^ </span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">من الآخر.. إحنا مش هنديلك سمكة، هنعلمك إزاي تصطادها ;) </span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">والنهارده هنبدأ معاك بحاجة خفيفة ونقولك:</span></span></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">◄ إيه هو التسويق؟ </span></span></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">بعض الناس معتقدة إن التسويق مقصود بيه الدعاية والإعلان , ودا إعتقاد خاطئ!</span></span></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">= التسويق ببساطة هو إنك تشوف احتياجات الناس وتلبيها.</span></span></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">أو زي ما قال -فيليب كوتلر- الأب الروحي للتسويق: </span></span></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">= التسويق هو إرضاء الناس بطريقة ربحية&nbsp;</span></span></span><br />\r\n&nbsp;</p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">لكن لو عايزين تعريف محدد للتسويق مش هنلاقي!</span></span></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">; لأن ملهوش تعريف محدد، بحكم إنه عملية إبتكارية ومتجددة دايمًا.</span></span></span><br />\r\n&nbsp;</p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">وبعض تعريفات التسويق اللي قالها -فيليب كوتلر- في كتابه وهو بيتكلم عن التسويق:</span></span></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">= التسويق هدفه إشباع حاجات ورغبات الأفراد</span></span></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">= التسويق بيتم بين طرفين في إطار عملية تبادلية</span></span></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">= التسويق نشاط إنساني يهتم بالأفراد</span></span></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">ولو سألت كل اللي اتعلموا ماركتينج هتخرج بإجابات مختلفة ومتعددة.. وكلها إجابات صحيحة :D </span></span></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">بعد ما عرفت تعريف التسويق لازم تقرأ كتاب: كوتلر يتحدث عن التسويق</span></span></span></p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">= دا لو انت عايز تبقى ماركتير شاطر ;) </span></span></span></p>\r\n', 'ديجيتال ماركتينج , تسويق الكترونى , كولتر , digital marketing , marketing . multi mega ,مالتى ميجا ', 'الديجيتال ماركتنج مش صعب لو لقيت الطريقة الأمثل انك تتعلمه وعلشان متهوش وتدور كتير تابع معانا اكيد هتتعلم', 1, '2017-03-26 12:54:40', '2017-03-26 13:08:52', 1, '', '', '', '', '', '', NULL, NULL, 0),
(8, 'أيه هو الـ Backlink?!', 'أيه هو الـ Backlink?!', 'ايه-هو-الـbacklink', 'أيه هو الـ Backlink?! | مالتى ميجا Multi Mega- Digital Marketing', '6Jk4Zj_backlinks.jpg', 'Backlink', 'الـ Back link هو أداة بيستخدمها أصحاب المواقع عشان ينشروا مواقعهم علي شبكة الانترنت.. إزاي ؟', '<p>&nbsp;</p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">◄ الـ Back link هو أداة بيستخدمها أصحاب المواقع عشان ينشروا مواقعهم علي شبكة الانترنت.. إزاي ؟<br />\r\n<br />\r\nهقولك ازاى&nbsp;<img alt=\"\" src=\"https://www.facebook.com/images/emoji.php/v8/f7f/1/16/1f60a.png\" style=\"height:16px; width:16px\" /><br />\r\n<br />\r\n= في ناس بتقول إن الـ Back link هو أداة لتحسين نتائج الموقع علي محركات البحث وخصوصا جوجل&nbsp;<br />\r\n<br />\r\n◄ وفيه ناس تانية بتقول إنه انتشار للموقع علي شبكة الانترنت عشان لما تبحث عن الموقع يبقى موجود في كل مكان حواليك&nbsp;<br />\r\n<br />\r\n- يعني إيه ؟!<br />\r\n<br />\r\n◄◄ محركات البحث عناكب بتجري في الشبكة الكبيرة وبتحاول تلم الخيوط جنب بعض , المفروض إنك تكتر الخيوط بتاعة الموقع بتاعك عشان يبقى ليك انتشار كبير علي الانترنت&nbsp;<img alt=\"\" src=\"https://www.facebook.com/images/emoji.php/v8/f57/1/16/1f609.png\" style=\"height:16px; width:16px\" /><br />\r\n<br />\r\n&bull; من الاخر كده الـ Back link زي Yنك تروح علي كل بيت وتكتب عنوانك ..<br />\r\n= فـ أكيد أي حد ماشي في الشارع هيشوف عنوانك واضح .<br />\r\n= اه كده فهمت !<br />\r\n<br />\r\n- طب إيه أنواعه ؟<br />\r\n◄ الباك لينك نوعين: &quot; داخلي وخارجي &quot;<br />\r\n<br />\r\n- الداخلي هو إنك في صحفات موقعك تربط صفحات تانية .<br />\r\n&nbsp;= يعني مثلا لو عندك بلوج وورد بريس أو جوملا أو غيرها لازم تفعل خاصية المواضيع المتشابهه وهي في العادي مفعلة أو إنك تحط لينك الموضوع جوه موضوع تاني، زي مثلا لو أنا عامل مجموعة مواضيع مترابطة ببعض فـ بربط لينكاتها جوه بعض&nbsp;<img alt=\"\" src=\"https://www.facebook.com/images/emoji.php/v8/e40/1/16/LIKE.png\" style=\"height:16px; width:16px\" />(Y)&nbsp;<br />\r\n<br />\r\n- أما الخارجي فـ هو إنك تحط لينكات لموقعك في مواقع تانية تفيد موقعك بس بهدوء وبروية مش سبام وخلاص!<br />\r\n<br />\r\n◄ المفروض كمان إنك تشوف المنتديات والمواقع التانية وتبتدي تحط لينكات ليك جوه المنتديات دي أو صور خاصة بموقعك أو تنشر فيديوهاتك , المهم متكنش سبام ولا تكون مخالف لقوانين المواقع .<br />\r\n<br />\r\n&bull;&bull; يعنى وضعك للباك لينك الخاص بيك يكون بشكل محترف .. زى ردود تقنية أو مساعدات او يكون فى التوقيع الخاص بيك إو إحالة أو نصائح .. مش مجرد نشر للينكات وخلاص&nbsp;<img alt=\"\" src=\"https://www.facebook.com/images/emoji.php/v8/f4c/1/16/1f642.png\" style=\"height:16px; width:16px\" /><br />\r\n<br />\r\n* في النهاية أحب أقولك أن الباك لينك هو مجرد اداة لرفع موقعك علي محركات البحث .. بس لو موقعك مافيهوش حاجة مفيدة يبقى كأنك معملتش حاجة !&nbsp;<img alt=\"\" src=\"https://www.facebook.com/images/emoji.php/v8/f4c/1/16/1f642.png\" style=\"height:16px; width:16px\" /></span></span></span><br />\r\n&nbsp;</p>\r\n', 'backlink , SEO , Digital Marketing , تسويق الكترونى , مالتى ميجا , multi mega', ' في ناس بتقول إن الـ Back link هو أداة لتحسين نتائج الموقع علي محركات البحث وخصوصا جوجل \r\n وفيه ناس تانية بتقول إنه انتشار للموقع علي شبكة الانترنت عشان لما تبحث عن الموقع يبقى موجود في كل مكان حواليك ', 1, '2017-03-26 14:13:08', '2017-03-26 14:13:08', 1, '', '', '', '', '', '', NULL, NULL, 0),
(9, 'ازاى تكتب محتوى جيد : الجزء الأول', 'ازاى تكتب محتوى جيد : الجزء الأول', 'ازاى-تكتب-محتوى-جيد-الجزء-الأول', 'ازاى تكتب محتوى جيد : الجزء الأول | مالتي ميجا  Multi Mega - Digital Marketing', 'JKplfZ_1.jpg', 'محتوى', 'الـ Content الصح محتاج خطوط رئيسية وأولويات لازم تراعيها وانت بتعمله .. لأنه مش أي كلام بيتكتب وخلاص ', '<p>&nbsp;</p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">الـ Content الصح محتاج خطوط رئيسية وأولويات لازم تراعيها وانت بتعمله .. لأنه مش أي كلام بيتكتب وخلاص !&nbsp;<img alt=\"\" src=\"https://www.facebook.com/images/emoji.php/v8/ff2/1/16/1f615.png\" style=\"height:16px; width:16px\" /><br />\r\n<br />\r\nعلشان كدا هنبدأ سوا سلسلة سريعة من النصائح الخاصة بإستراتيچية كتابة &quot; المحتوى &quot; :-<br />\r\n<br />\r\n1. ابدأ بمخطط واضح<br />\r\n&nbsp;إنك تبدأ بمخطط وخطة ثابتة لشغلك هتساعدك إنك تغطي كافة إحتياجاتك وكمان هتوفر عليك الوقت وتوفر لك أرضية ثابتة تقدر تبدأ منها وتعتمد عليها.<br />\r\n<br />\r\nفـ .. قبل كتابة أي Content لازم تجاوب على 3 أسئلة وتراعيهم كـ أساس في مخططك :<br />\r\n&bull; إنت ليه بتعمل content أصلًا ؟!<br />\r\n&bull; إيه نوع الـ content اللي انت محتاج له ؟<br />\r\n&bull; إزاي نعمل الـ contentt علشان نحقق أهدافنا اللي احنا عاوزين نوصل لها ؟<br />\r\n<br />\r\n◄ ليه بتعمل content .. علشان تبيع، علشان تخلي جمهور يكون متابع ليك، علشان تسوق لخدمة معينة، علشان تستقبل تفاعل معين.. إنت بقى ليه بتعمله تحديدًا وعاوز منه إيه ويوصل لك إيه ؟<br />\r\n<br />\r\n◄ إيه نوع الـ content اللي انت محتاج له .. وهنا إنت بتدرس السوق أو الوَسَط اللي انت مستهدفه وبتشوف إيه أنسب شكل للتواصل مع الشرائح اللي انت عاوز توصل ليها ..<br />\r\n&nbsp;هل الكلام &quot; المكتوب &quot; مناسب لهم فقط؟ وإيه طبيعته؟ واللهجة اللي بتتكلم بيها.. والتوجيه اللي انت بتمشي عليه في الكلام دا , ولا الصور مناسبة أكتر؟ ولا الفيديوهات؟ ولا التلاتة مع بعض بخطة معينة بتوقيتات معينة.<br />\r\n<br />\r\n◄ إزاي تعمل الـ content اللي هيحقق هدفك .. بتدرس هنا بعناية مستمرة وببحث متواصل إيه أنسب الطرق اللي تعمل بيها المحتوى بتاعك ودي مرتبطة بتحديد نوع المحتوى بكل أشكاله..<br />\r\n&nbsp;بتشوف إيه اللي بيتفاعل معاه الناس أكتر، بتشوف إيه أنسب طريقة بتحقق معاك نجاح، بتحاول تطور من نفسك وتعمل أفكار مميزة تساعدك على نجاحك.<br />\r\n<br />\r\n* فـ إنك تحط الحاجات دي كـ بداية وأساس في &quot; المخطط &quot; اللي هتعمله..<br />\r\n<br />\r\n◄◄ هتساعدك في تجهيز وبناء شغلك بشكل سليم وتساعدك على التركيز في الإجابة على الأسئلة المهمة اللي نجاح شغلك بيتوقف عليها&nbsp;<img alt=\"\" src=\"https://www.facebook.com/images/emoji.php/v8/e40/1/16/LIKE.png\" style=\"height:16px; width:16px\" /></span></span></span><br />\r\n&nbsp;</p>\r\n', 'Digital marketing, Multi mega , محتوى جيد , محتوى , مالتى ميجا', 'انواع المحتوى و كيفية كتابته - بعض النصائح الهامة فى خطوط رئيسية وسريعة مقدمة من مالتى ميجا ', 1, '2017-03-26 14:21:54', '2017-03-26 14:21:54', 1, '', '', '', '', '', '', NULL, NULL, 0),
(10, 'ازاى تكتب محتوى جيد : الجزء التانى ', 'ازاى تكتب محتوى جيد : الجزء التانى ', 'ازاى-تكتب-محتوى-جيد-الجزء-التانى ', 'ازاى تكتب محتوى جيد : الجزء التانى | مالتى ميجا Multi Mega - Digital Marketing', 'fxSIyU_15726536_1378075435569837_8621741740108726355_n.jpg', 'محتوى ', 'انك تكتب محتوى مش موضوع سهل ولا اى حد يعرف يكتبه بأحتراف وعلشان كده فى المقالة دى هنوضحلك ازاى تكتب محتوى جيد فى خطوات بسيطة ', '<p>&nbsp;</p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">اتكلمنا <a href=\"http://multimega-eg.com/%D8%A7%D8%B2%D8%A7%D9%89-%D8%AA%D9%83%D8%AA%D8%A8-%D9%85%D8%AD%D8%AA%D9%88%D9%89-%D8%AC%D9%8A%D8%AF-%D8%A7%D9%84%D8%AC%D8%B2%D8%A1-%D8%A7%D9%84%D8%A3%D9%88%D9%84\">المقالة&nbsp;اللي فاتت</a> عن أول 3 أسئلة لازم تبدأ بيهم إستراتيچية الـ Content وهما :<br />\r\n<br />\r\n&bull; إنت ليه بتعمل content أصلًا ؟!<br />\r\n&bull; إيه نوع الـ content اللي انت محتاج له ؟<br />\r\n&bull; إزاي نعمل الـ contentt علشان نحقق أهدافنا اللي احنا عاوزين نوصل لها ؟<br />\r\n<br />\r\n◄المرة دى هنأخد أول سؤال منهم ونتكلم عنه، وهو :-<br />\r\n- إنت ليه بتعمل content أصلا ؟!&nbsp;<img alt=\"\" src=\"https://www.facebook.com/images/emoji.php/v8/f51/1/16/1f603.png\" style=\"height:16px; width:16px\" /><br />\r\n<br />\r\n* ودا ممكن يساعدك إنك تجاوب عليه بإنك تشوف الـ 3 جمل دول :-<br />\r\nأ. إيه هي أهدافك التسويقية ؟<br />\r\n&nbsp;= إنت ناوي على إيه من عملية التسويق اللي بتعملها ؟ إيه أهدافك اللي انت عايز تحققها ؟<br />\r\n<br />\r\nعايز تكون رقم واحد في مبيعات &quot; منتج معين &quot; , عايز توصل لحجم مبيعات أو إنتشار معين , عايز تحقق قيمة وشهرة في وقت معين .<br />\r\n<br />\r\nب. إيه هي أهداف المحتوى بتاعك ؟<br />\r\n= المحتوى بتاعك إنت عايز تستفيد منه إيه وتوصل بيه لإيه ؟!<br />\r\n&nbsp;يعني عايز : تنتشر من خلاله، تزود التفاعل عتدك، تقدم سلع ومنتجات معينة، تروج لفكرة، تنال الثقة من المتابعين.. إلخ.<br />\r\n<br />\r\nج. إيه &quot; المنتج - الخدمة - النشاط - اللي هتسوق له ؟<br />\r\n&nbsp;وليَّكن مثلا &quot; ملابس &quot; فـ إنت هنا بتشوف الملابس دي : لمين كـ نوع رجال ولا نساء، لِـ سن معين، لـ فئة معينة، لـ مستوى معين .<br />\r\n<br />\r\n= وبتشوف إيه اللي ينفع معاهم من عدة نواحي زي :-<br />\r\n&bull; طبيعة المحتوى اللي هتوجهه ليهم والكلام واللهجة المستخدمة<br />\r\n&bull; شكل المحتوى نفسه<br />\r\n&bull; إيه الحاجات اللي هتتكلم عنها وتشد إنتباههم بيها ليك وللمنتج دا<br />\r\n<br />\r\n◄ دا بشكل أساسي ممكن تشتغل عليه وانت أكيد حسب النشاط اللي بتشتغل فيه هتلاقي أولويات بتضاف لِـ خطة المحتوى الخاصة بيك&nbsp;</span></span></span></p>\r\n', 'محتوى جيد , تسويق الكترونى , digital marketing , content', 'انك تكتب محتوى مش موضوع سهل ولا اى حد يعرف يكتبه بأحتراف وعلشان كده فى المقالة دى هنوضحلك ازاى تكتب محتوى جيد فى خطوات بسيطة ', 1, '2017-03-26 14:39:05', '2017-03-28 09:53:26', 1, '', '', '', '', '', '', NULL, NULL, 0),
(11, 'الخليج والتجارة الالكترونية', 'الخليج والتجارة الالكترونية', 'الخليج-والتجارة-الالكترونية', 'الخليج والتجارة الالكترونية | مالتى ميجا  Multi Mega - Digital Marketing', 'VxyV4I_so.jpg', 'تجارة الكترونية', 'الخليج والتجارة الالكترونية الفترة اللي فاتت اتجه معظم البراندات العالمية الى التجارة الالكترونية وفعلا استثمرو مبالغ مش قليلة في مواقع الشراء الاونلاين, مش بس كده ده كتير مننا بيفكر انه يعمل متجر الكتروني ويستهدف عملاء اكتر ويزود نسبة المبيعات عنده.', '<p>&nbsp;</p>\r\n\r\n<p dir=\"rtl\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">الخليج والتجارة الالكترونية<br />\r\n&nbsp;الفترة اللي فاتت اتجه معظم البراندات العالمية الى التجارة الالكترونية وفعلا استثمرو مبالغ مش قليلة في مواقع الشراء الاونلاين, مش بس كده ده كتير مننا بيفكر انه يعمل متجر الكتروني ويستهدف عملاء اكتر ويزود نسبة المبيعات عنده.<br />\r\nالخليج سابق جدا في الموضوع ده, وخصوصا السعودية اللي 466% من السعوديين بيفضل الشراء الالكتروني, مع العلم ان فيه ارقام تانية بتقول ان 65% من سكان السعودية (السعوديين وغير السعوديين) بيفضلو الشراء والدفع الالكتروني عن الدفع عند الاستلام.<br />\r\n&nbsp;الخبراء كمان بيأكدو ان نسبة النمو في التجارة الالكترونية هتحقق اكتر من 50 مليار سعودي مع نهاية العام الحالي علي الرغم من انها صناعة ناشئة في المملكة, وبالرقم ده هاتبقى السعودية اكثر الدول نشاطا في مجال التجارة الالكترونية علي مستوى العالم العربي ويمكن قريب اوي عالميا كمان.<br />\r\n<br />\r\nوالتطور الفظيع ده طبعا راجع للاسباب الاتية:<br />\r\n&bull; توافر طرق دفع مختلفة ومناسبة<br />\r\n&bull; تحسن وسائل الشحن<br />\r\n&bull; انتشار الهواتف الذكية<br />\r\n&bull; تغير المناخ الاقتصادي السعودي<br />\r\n&bull; تغير ثقافة المستخدمين عن التجارة الالكترونية ومفهومها<br />\r\n&bull; تدني اختراقات البطاقات الائتمانية<br />\r\n<br />\r\n&nbsp;كمان نتائج التقارير عن الفترة اللي فاتت بتؤكد ان خمسة مليون سعودي بيشتري اون لاين.</span></span></span></p>\r\n', 'تجارة , تجارة الكترونية , بيزنس , مالتى ميجا , Multi Mega ,  business', 'الخليج والتجارة الالكترونية الفترة اللي فاتت اتجه معظم البراندات العالمية الى التجارة الالكترونية وفعلا استثمرو مبالغ مش قليلة في مواقع الشراء الاونلاين, مش بس كده ده كتير مننا بيفكر انه يعمل متجر الكتروني ويستهدف عملاء اكتر ويزود نسبة المبيعات عنده.', 3, '2017-03-26 14:52:29', '2017-03-26 14:52:29', 1, '', '', '', '', '', '', NULL, NULL, 0),
(12, 'الإيموشن بقى في كل حتة .. اخر تحديث للفيس بوك', 'الإيموشن بقى في كل حتة .. اخر تحديث للفيس بوك', 'الإيموشن-في-الشات-تحديث-جديد-للـفيسبوك', 'الإيموشن بقى في كل حتة .. اخر تحديث للفيس بوك | مالتى ميجا Multi Mega - Update ', 'kHwyGS_11111.png', 'Emoij ', 'يحاول مارك ارضاء كل مستخدمي موقع التواصل الأجتماعى فيس بوك ', '<p dir=\"rtl\"><span style=\"font-size:18px\"><span style=\"color:#000000\">يحاول مارك ارضاء كل مستخدمي موقع التواصل الإجتماعى &quot;فيس بوك&quot; بزيادة وجود الإيموشن كـ Reactions&nbsp;في الشات &quot;الرسائل&quot; بنفس الشكل الخاص بالـ post&nbsp;&nbsp;زي: Love - Wow - Sad..<br />\r\n<br />\r\nالـ Facebook بيبقى أسهل&nbsp;<img alt=\"yes\" src=\"http://multimega-eg.com/admin-assets/ckeditor/plugins/smiley/images/thumbs_up.png\" style=\"height:23px; width:23px\" title=\"yes\" /><br />\r\n<br />\r\nملحوظة : التحديث لم يصل إلي&nbsp;كل مستخدمي الـ Facebook حتى الآن ...</span></span></p>\r\n', 'facebook , update , Emoij , اخر تحديث , تحديث فيسبوك , مالتى ميجا , multi mega', 'يحاول مارك ارضاء كل مستخدمي موقع التواصل الأجتماعى فيس بوك بزيادة وجود الإيموشن', 4, '2017-03-30 09:09:25', '2017-03-30 09:37:25', 1, '', '', '', '', '', '', NULL, NULL, 0),
(13, 'Tone of voice - الجزء الأول', 'Tone of voice - الجزء الاول', 'tone-of-voice-صوت-البراند', 'Tone of voice - صوت البراند |Multi Mega - Marketing', '3vVxcL_AAEAAQAAAAAAAAfpAAAAJDVkNzNjM2E4LTQ4NDUtNDIxNi04NzUxLTc4MGRhOTZmYjg4YQ.png', 'tone of voice', 'هو أساس الـ Brandبتاعك وهو اللي بيربطك بعميلك ويخليه يفتكرك لما يحصله حاجة قريبة من اللي انت قولته في حياته العادية تكون بس قريبة من الـ Brand  بتاعك , يعني هو Track اللي بيمشي عليه الخدمة بتاعتك أو المنتج بتاعك.', '<p dir=\"RTL\"><span style=\"color:#000000\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\">تون أوف فويس ..&nbsp;بتتنطق كده</span></span></span></p>\r\n\r\n<p dir=\"RTL\"><span style=\"color:#000000\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\">هو أساس الـ <span dir=\"LTR\">Brand</span>بتاعك وهو اللي بيربطك بعميلك ويخليه يفتكرك لما يحصله حاجة قريبة من اللي انت قولته&nbsp;في حياته العادية تكون بس قريبة من الـ <span dir=\"LTR\">Brand &nbsp;</span> بتاعك, يعني هو <span dir=\"LTR\">Track</span> اللي بيمشي عليه الخدمة بتاعتك أو المنتج اللي انت بتقدمه.</span></span></span></p>\r\n\r\n<p dir=\"RTL\"><span style=\"color:#000000\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\">زي مثلا الـ <span dir=\"LTR\">Slogan</span> أو الـ <span dir=\"LTR\">Color code</span> أو شكل الإعلان بتاعك هيشوفه العميل ازاي؟!</span></span></span></p>\r\n\r\n<p dir=\"RTL\"><span style=\"color:#000000\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\">المهم مش هتقول ايه.. المهم هتقوله ازاي؟! وعن طريق ايه ؟!&nbsp;إزاي تلمس مشاعر العميل بتاعك عشان توطَّد العلاقة&nbsp;بينك وبينه، وإنه مهما حصل&nbsp;بينكم مش هتقدروا تستغنوا عن بعض،&nbsp;زي مثلًا&nbsp;ما بنلاقي&nbsp;شركات كتيرة مبهدلة العملاء بتوعها والناس كل يوم تقول دي&nbsp;شركات سيئة ولكن مش بتبطل تستخدمها ولا تشتري منها!</span></span></span></p>\r\n\r\n<p dir=\"RTL\"><span style=\"color:#000000\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\">؛ ودا لأنها بقت ركن من أركان حياتهم&nbsp;وميقدروش يستغنوا&nbsp;عنها،&nbsp;وهو ده النجاح اللي وصلت له&nbsp;شركات كتيرة في مصر وبره&nbsp;مصر.</span></span></span></p>\r\n\r\n<p dir=\"RTL\"><span style=\"color:#000000\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\">الـ <span dir=\"LTR\">Tone of voice</span> هتلاقيها في كل حاجة من الـ<span dir=\"LTR\">Brand&nbsp;</span> مش في الـ <span dir=\"LTR\">Logo </span>&nbsp;بتاعه بس، لأ&nbsp;في الشنطة اللي بتشتري فيها حاجة منه،&nbsp;في الظرف لو بعتلك جواب،&nbsp;في الورقة لو طبعلك فاتورة،&nbsp;في المكان بتاعه لما تروح تزوره..</span></span></span></p>\r\n\r\n<p dir=\"RTL\"><span style=\"color:#000000\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\">و مش علي الموقع بتاعه والـ <span dir=\"LTR\">social media channels </span>&nbsp;وخلاص،&nbsp;لأ.. في طريقة موظف بيمثله عشان دايمًا يزرع في دماغك الكيان كله مش خدمة واحدة ولا منتج واحد لأ&nbsp;بيزرع الكيان كله،&nbsp;والأمثلة كتيرة جدًا يعني مثلًا&nbsp;شركة <span dir=\"LTR\">Apple</span> أول ما&nbsp;تنزل تليفون جديد المحبين ليها بيروحوا يشتروه بجنون حتى لو كان بيعمل أكتر من 10 آلاف جنيه هيشتروه برده؛&nbsp;لأنهم بيعشقوا أي منتج تنزله <span dir=\"LTR\">Apple</span>.</span></span></span></p>\r\n\r\n<p dir=\"RTL\"><span style=\"color:#000000\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\">يعني الـ <span dir=\"LTR\">Tone of voice</span> هو الطريق اللي هيمشي عليه الـ <span dir=\"LTR\">Branding</span> بتاعك،&nbsp;يعني لو بتخاطب ناس راقية هاتلهم أحمد عز وماجد الكدواني في وسط أرقى أماكن في العالم،&nbsp;ولما تحب تخاطب&nbsp;ستات بيوت هاتلهم شيف من الشيفات المشهورين،&nbsp;ولما&nbsp;تكلم شباب هاتلهم مغنيين شباب أو ممثلين محبوبين لسه&nbsp;طالعين في أدوار شبابية.</span></span></span></p>\r\n\r\n<p dir=\"RTL\"><span style=\"color:#000000\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\">ممكن نكون طوِّلنا&nbsp;شوية بس حبينا نوصل نقطة تعريف الـ <span dir=\"LTR\">Tone of voice</span>&nbsp;عشان المقالات اللي جاية تكون سهلة&nbsp;وواضحة.</span></span></span></p>\r\n', 'Tone of voice ,  Branding , Digital Marketing , Marketing , Social Media', 'ما هو صوت البراند ؟ وما اهميته ومدى تأثيره على البراند الخاص بيك ...Tone of voice \" Branding\" - Digital Marketing', 1, '2017-04-23 11:46:30', '2017-05-04 08:31:03', 1, '', '', '', '', '', '', NULL, NULL, 0),
(14, 'أهمية الـ Tone of voice الجزء الثاني', 'اهمية الـ Tone of voice ', 'اهمية-tone-of-voice', 'اهمية صوت البراند - tone of voice |Multi Mega - Marketing', '7SS9mX_safe_image (5).jpg', 'tone of voice', 'ليه الـ Tone of voice مهمة لأي Brand :\r\nأول حاجة لازم تفهم إنك عشان توطد الثقة مابينك كـ Brand ومع العميل لازم تخاطبه بطريقة يحبها ويفهمها وتكون مألوفة علي قلبه وعقله, علماء علم النفس قالو إن في علاقة وطيدة مابين الألفة والثقة, يعني مثلا شخص إنت إتعودت عليه', '<p dir=\"rtl\" style=\"text-align:justify\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:rgb(0, 0, 0)\"><a href=\"http://multimega-eg.com/tone-of-voice-%D8%B5%D9%88%D8%AA-%D8%A7%D9%84%D8%A8%D8%B1%D8%A7%D9%86%D8%AF\">في المقالة اللي فاتت اتكلمنا عن معنى التون أوف فويس</a>..&nbsp;في المقالة دي هنتكلم شوية عن أهمية الـ Tone of voice&nbsp;</span></span></span></p>\r\n\r\n<p dir=\"rtl\" style=\"text-align:justify\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:rgb(0, 0, 0)\">ليه الـ <a href=\"http://multimega-eg.com/tone-of-voice-%D8%B5%D9%88%D8%AA-%D8%A7%D9%84%D8%A8%D8%B1%D8%A7%D9%86%D8%AF\">Tone of voice</a> مهمة لأي Brand ؟<br />\r\nأول حاجة لازم تفهم إنك عشان توطَّد الثقة مابينك كـ Brand وبين&nbsp;العميل لازم تخاطبه بطريقة يحبها ويفهمها وتكون مألوفة علي قلبه وعقله،&nbsp;علماء علم النفس قالوا إن في علاقة وطيدة مابين الألفة والثقة،&nbsp;يعني مثلًا&nbsp;شخص انت اتعودت عليه وكل يوم بتشوفه قدامك وتسمع صوته بطريقة بتحبها هتبتدي تألفه وتتعود عليه وتثق فيه وتشعر معاه بالراحة،&nbsp;الثقة والألفة مهمة جدًا.</span></span></span></p>\r\n\r\n<p dir=\"rtl\" style=\"text-align:justify\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:rgb(0, 0, 0)\">أحيانًا ممكن شركة كبيرة تختار ممثل غتيت يعمل دور رخم في إعلانها،&nbsp;فـ الناس تكره الـ Brand وعشان كده تلاقي الشركات بتختار ممثلي الإعلانات بعناية بحيث يكونوا مناسبين للشريحة اللي بيخاطبوها،&nbsp;يعني تختار لاعيبة كورة لو بتخاطب ناس بتحب الرياضة أو مهتمة بنادي معين، وبما إننا&nbsp;شعب بيحب الكورة فهي تعتبر أسهل حاجة تقدر منتجات كتيرة ومختلفة تستغلها زي الجبنة والشيكولاتة وممكن منتجات العناية بالبشرة أو حتى السناكس.</span></span></span></p>\r\n\r\n<p dir=\"rtl\" style=\"text-align:justify\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:rgb(0, 0, 0)\">تاني حاجة.. إيه اللي يفرق Brand عن التاني ؟ الـ <a href=\"http://multimega-eg.com/tone-of-voice-%D8%B5%D9%88%D8%AA-%D8%A7%D9%84%D8%A8%D8%B1%D8%A7%D9%86%D8%AF\">Tone of voice</a> &nbsp;هو اللي هيخليك&nbsp;مميز وفريد من نوعك ولو فكرت إنك تقلد خليك متأكد إنك هتتعرف بسهولة والناس هتبتدي تحس إنك عادي،&nbsp;عشان كده الـ <a href=\"http://multimega-eg.com/tone-of-voice-%D8%B5%D9%88%D8%AA-%D8%A7%D9%84%D8%A8%D8%B1%D8%A7%D9%86%D8%AF\">Tone of voice</a> لازم يكون مختلف ويعبر عن نقاط القوة عندك وعن اللي بيدوَّر عليه العميل المستهدف،&nbsp;بمجرد مايسمع إعلانك أو يشوفه يميزك عن المنافسين ويفهم رسالتك بسهولة.</span></span></span></p>\r\n\r\n<p dir=\"rtl\" style=\"text-align:justify\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:rgb(0, 0, 0)\">هقولكم مثال سريع: كلنا عارفين &quot;Oppo&quot; ماركة لسه&nbsp;نازلة السوق بتنافس بقوة دلوقتي &quot;مش وقت&nbsp;تحليل&quot; والماركة ببساطة بتستهدف الشباب اللي بيدور علي موبيلات فيها كاميرات ذكية وقوية فنزل بالـ Slogan بتاعه علي طول &ldquo;Camera Phone&rdquo; في رسالة واضحة للعميل أنه الكاميرا بتاعته أقوى مافيه خصوصًا إننا بقالنا كام سنة مش بنشوف جديد في عالم الهواتف والفرق دلوقتي في البروسيسور والرامات والكاميرا وحجم الشاشة والذاكرة والباقي كله مش مهم للعميل،&nbsp;عشان كدا هو&nbsp;استهدف على&nbsp;طول الناس اللي بتدور علي كاميرا كويسة، دا غير إنه لِعِب&nbsp;علي موضوع الرياضة فـ استخدمت&nbsp;لاعيبة كورة مشهورة عشان تستهدف حب الشباب للرياضة والفريق ده بالذات وشعبيته.</span></span></span></p>\r\n\r\n<p dir=\"rtl\" style=\"text-align:justify\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:rgb(0, 0, 0)\">نرجع لأهمية الـ <a href=\"http://multimega-eg.com/tone-of-voice-%D8%B5%D9%88%D8%AA-%D8%A7%D9%84%D8%A8%D8%B1%D8%A7%D9%86%D8%AF\">Tone of voice</a> إنك كمان تقدر تستخدمه في إنك تقنع العميل المستهدف بالخدمة أو المنتج بتاعك بسهولة،&nbsp;لأنك مهم جدًا&nbsp;تربط العميل بالإسم نفسه كـ Brand مش كمنتج أو كخدمة،&nbsp;يعني ببساطة انت بتقول للعميل إنك مهما نزلت&nbsp;من منتجات أو خدمات هيشتريها؛ لأنها منك من غير ما يفكر،&nbsp;ومهم جدًا تحسس العميل بإحساس كويس تجاه المنتجات بتاعتك وطريقة عرضها اللي لازم دايمًا تكون قريبة منه ومن طريقة تفكيره،&nbsp;وده طبعًا Branding بشكل كبير والشركات بتستخدم <a href=\"http://multimega-eg.com/tone-of-voice-%D8%B5%D9%88%D8%AA-%D8%A7%D9%84%D8%A8%D8%B1%D8%A7%D9%86%D8%AF\">Tone of voice</a> هنا كـ وسيلة هامة لجذب انتباه عميلها.</span></span></span></p>\r\n\r\n<p dir=\"rtl\" style=\"text-align:justify\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:rgb(0, 0, 0)\">مثال سريع تاني: شركة الضحى &quot;لتعبئة المواد الغذائية&quot; لو بصيت للشركة هتلاقيهم مش بيصنَّعوا منتجاتهم وممكن مش بيزرعوها، ده ببساطة بيجيب من مزارعين رز وسكر ويطحن قمح عشان يبقى دقيق ويغلفه كويس وبشياكة ويبيعه؛ عشان أول ما يوصل لإيدك تتأكد إنه فريد من نوعه ولما تعرف سعره تتأكد إنه أنسب سعر ليك،,وساعتها هتقدر تحكم وتتأكد&nbsp;إنه منتج كويس وتبدأ&nbsp;تشتري&nbsp;كل منتجاته،&nbsp;هنا هو&nbsp;نجح في صنع الـ Brandعن طريق التغليف وإختيار منتج كويس وتسعير مناسب.</span></span></span></p>\r\n\r\n<p dir=\"rtl\" style=\"text-align:justify\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:rgb(0, 0, 0)\">وزي منتج تاني عمل مكرونة وخلى الـ Slogan بتاعها &quot;ماتاكلش&nbsp;عجين&quot;؛&nbsp;عشان تفضل صورته دايمًا قدامك إنه منتج عالي الجودة؛ لأنه ببساطة ربط المشكلة اللي بتقابل ربات البيوت &quot;إن المكرونة الوحشة بتعجن&quot; عشان يقدر&nbsp;يخاطبهم&nbsp;بشتى طبقاتهم&nbsp;وتفكيرهم ودوَّر على&nbsp;الحاجة اللي بتجمع الإختلافات دي&nbsp;كلها ألا وهي &quot;المكرونة بتعجن&quot; واستخدم معاها&nbsp;Slogan صح عشان يخلي كل ربة بيت&nbsp;تشتري المنتج وهي مغمضة بل وكمان ممكن تشك في نفسها لو عجنت منها مرة وتقول إنها معملتهاش كويس وإنها هي اللي أخطأت &quot;ده يعني لا قدر الله لو المنتج طلع وحش&quot;، وكل ده عشان بنى الثقة من قبل كده ودخل صح علي العميل.</span></span></span></p>\r\n\r\n<p dir=\"rtl\" style=\"text-align:justify\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:rgb(0, 0, 0)\">ببساطة يعني لازم تشوف هتتكلم مع عميلك إزاي،&nbsp;لازم تدرس شخصيته الأول وتفهم أنهي لغة بيتكلمها وبيتكلمها إزاي وبيحب إيه وبيكره إيه وإيه اللي بيدور عليه في منتجك عشان تقدر&nbsp;</span></span></span><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:rgb(0, 0, 0)\">توطَّد علاقتك معاه بمنتهى السهولة&nbsp;وتتكون الألفة مابينكم بهدوء.</span></span></span></p>\r\n\r\n<p dir=\"rtl\" style=\"text-align:justify\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:18px\"><span style=\"color:rgb(0, 0, 0)\">ومتنساش إن&nbsp;لغة الكلام مهمة جدًا عند أي حد وهتلاقي الكلام ده في خطابات السياسين أو القادة الحربيين أو حتى مدربين الموارد البشرية.</span></span></span></p>\r\n\r\n<p dir=\"rtl\" style=\"text-align:justify\"><font color=\"#000000\" face=\"arial, helvetica, sans-serif\"><span style=\"font-size:18px\">تابعنا عشان تعرف إزاي تبدأ وتعبر عن شخصية الـ Brand بتاعك وازاي تقدر تطبق وتشتغل على كل اللي قولناه في&nbsp;الـ Tone of voice ..</span></font></p>\r\n', 'Digital Marketing , tone of voice , Branding , براند  , تسويق الكترونى', 'تعرف على اهمية صوت البراند واختيارك له - tone of voice - Branding \" Digital Marketing\"', 1, '2017-04-23 12:09:45', '2017-05-04 09:55:18', 1, '', '', '', '', '', '', NULL, NULL, 0);
INSERT INTO `blog` (`id`, `title`, `page_title`, `custom_url`, `meta_title`, `photo`, `photo_alt`, `desc`, `blog`, `meta_keyword`, `meta_description`, `cat_id`, `created_at`, `updated_at`, `status`, `blog_ar`, `desc_ar`, `page_title_ar`, `meta_title_ar`, `meta_description_ar`, `meta_keyword_ar`, `title_ar`, `custom_url_ar`, `viewers`) VALUES
(15, 'الجزء الثالث - اتكلم Your Tone', 'الجزء الثالث - اتكلم Your Tone', 'talkyourtone', 'اتكلم Your Tone', 'mZnfRm_brandvoice.jpg', 'Tone Of Voice', 'نغمة صوت الشركة أو المنتج Company’s Tone of voice بيعبر دايمًا عن القيمة اللي بتحاول تنقلها الشركة للناس عن خدماتها ومنتجاتها، لازم تتزرع الأول في المجتمع الداخلي للشركة قبل ما تخرج للعالم الخارجي، ولازم تكون بتتكلم عن المستوى الحقيقي الحالي للمنتج أو الخدمة', '<p dir=\"RTL\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\">في المقالة الأولى اتكلمنا عن &quot;معنى <span dir=\"LTR\">Tone of voice</span>&quot; تقدر تشوفها <a href=\"http://www.multimega-eg.com/tone-of-voice-%D8%B5%D9%88%D8%AA-%D8%A7%D9%84%D8%A8%D8%B1%D8%A7%D9%86%D8%AF\">من هنا</a></span></span></span></p>\r\n\r\n<p dir=\"RTL\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\">وفي المقالة الثانية اتكلمنا عن &quot;ليه <span dir=\"LTR\">Tone of voice</span>&quot; تقدر تشوفها <a href=\"http://www.multimega-eg.com/%D8%A7%D9%87%D9%85%D9%8A%D8%A9-tone-of-voice\">من هنا</a></span></span></span></p>\r\n\r\n<p dir=\"RTL\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\">النهارده إن شاء الله هنتكلم عن ازاي تتكلم مع جمهورك عن المنتج بتاعك أو الـ <span dir=\"LTR\">Brand </span>&nbsp;الخاص بيك؟</span></span></span></p>\r\n\r\n<p dir=\"RTL\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\">نغمة صوت الشركة أو المنتج <span dir=\"LTR\">Company&rsquo;s Tone of voice</span> بيعبر دايمًا عن القيمة اللي بتحاول تنقلها الشركة للناس عن خدماتها ومنتجاتها،&nbsp;لازم تتزرع الأول في المجتمع الداخلي للشركة قبل ما تخرج للعالم الخارجي،&nbsp;ولازم تكون بتتكلم عن المستوي الحقيقي الحالي للمنتج أو الخدمة..</span></span></span></p>\r\n\r\n<p dir=\"RTL\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\">يعني مثلًا&nbsp;مينفعش&nbsp;تكون بتبيع عقارات في الهرم أو فيصل وتقول للعملاء &quot;استمتع بالرفاهية والهدوء&quot; !</span></span></span></p>\r\n\r\n<p dir=\"RTL\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\">بس ممكن تقول &quot;انت أقرب لكل حاجة&quot;، والعكس صحيح في المشاريع الجديدة اللي ممكن تكون علي طريق مصر السويس أو التجمعات والقاهرة الجديدة،&nbsp;وعشان ده يحصل لازم تفهم انت فين بالظبط في السوق؟&nbsp;وده ممكن تعرفه الأول من شركائك في العمل.</span></span></span></p>\r\n\r\n<p dir=\"RTL\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\">وعشان تعرف ده لازم تسأل نفسك الأول: انت عاوز تقول إيه للعالم؟ وأول ما تجاوب علي السؤال ده ساعتها تقدر تبدأ.</span></span></span></p>\r\n\r\n<p dir=\"RTL\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\">مثال: حملة &quot;تانك&quot; اللي كانت موجودة من فترة علي الميديا وفي الشوارع &quot; يتضرب بيه المثل&quot; أو &quot;فلتر تانك يواجه أصعب ميَّه&nbsp;في مصر&quot;، الحملة كانت جميلة أوي وأكثر من رائعة وانعكس ده علي المبيعات فعلًا ووَّجِهِت الناس ناحية الفلتر وفوايده وقوة فلتر تانك قصاد كل التحديات اللي في مصر ما بين الناس اللي بتغلِّي المياه،&nbsp;والمياه اللي بتنزل صفرا من الحنفية،&nbsp;وما بين الناس اللي مش شايفين إن المياه فيها حاجة وكويسة!</span></span></span></p>\r\n\r\n<p dir=\"RTL\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\">الشركة جاوبت علي السؤال اللي سألناه من شوية &quot; انت عاوز تقول إيه للعالم ؟&quot;، وقالت في كل فيديو من الحملة إجابة مختلفة قصاد التحديات اللي ممكن تواجهها أي شركة تنقية مياه في مصر وهي:</span></span></span></p>\r\n\r\n<ol dir=\"rtl\">\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\">المياه المعكرة &quot;تنقية المياه وتصفيتها تمامًا&nbsp;من الشوائب المرئية&quot;.</span></span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\">المياه ذات الطعم المختلف &quot;تنقية المياه ذو الرائحة والطعم&quot;.</span></span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\">الناس اللي بيتغلبوا علي كل ده بالغليّ &quot;إقناع العميل بإن الغليّ مش بيقدر علي الرواسب اللي مش بتتبخر وإن شمعات الفلتر بتجذب الرواسب دي&nbsp;زي المغناطيس وتخرجلك مياه نضيفة&quot;.</span></span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\">السعر &quot; كتبوا&nbsp;السعر في آخر كل فيديو عشان يقولوا للناس إن الموضوع ده مش غالي مقابل&nbsp;إنك تحافظ على&nbsp;صحة أسرتك&quot;.</span></span></span></li>\r\n</ol>\r\n\r\n<p dir=\"RTL\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\">مثال آخر: حملة فودافون بيزنس <span dir=\"LTR\">&ldquo;Ready Business&rdquo;</span> واللي استضافت فيها أصحاب أعمال حقيقيين من الواقع،&nbsp;زي:</span></span></span></p>\r\n\r\n<ol dir=\"rtl\">\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\">شركة كبيرة معروفة زي &quot;كريم&quot; تحت رسالة &quot;الشركات اللي بتتعامل مع موظفين كتيييييييييييير وعملاء أكتر&quot;.</span></span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\">شركة <span dir=\"LTR\">Startup</span> معروفة ما بين الشباب زي &quot;بيقولك&quot; تحت رسالة &quot;شركات التقنية متوسطة الحجم اللي بتحتاج الإنترنت في شغلها ومتقدرش تستغني عنه&quot;.</span></span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\">مطعم مش كبير بس مشهور جدًا زي &quot;سمسمة&quot; تحت رسالة &quot;راقب البيزنس بتاعك وحافظ على&nbsp;خدمتك وزوِّد إنتاجك&quot;.</span></span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\">بنك قوي جدًا في قطاع الأعمال &quot;<span dir=\"LTR\">CIB</span>&quot; ونقل رسالة &quot;الأمان في تعاملاتك التقنية وتوصيل فروعك مهما كان عددها وعدد موظفينك&quot;.</span></span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\">مجموعة &quot;كيم بينسكي&quot; في مصر تحت رسالة &quot;الرفاهية والسرعة اللي بتدوَّر عليهم لشركتك&quot;.</span></span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\">&quot;كوفي بين&quot; الغني عن التعريف وهو طبعًا فرانشيز في مصر وخدمة <span dir=\"LTR\">SMS</span> الصريحة اللي أثارها تحت رسالة &quot;تواصل مع عملائك المحددين بقوة وبسرعة&quot;.</span></span></span></li>\r\n</ol>\r\n\r\n<p dir=\"RTL\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\">في كل الأمثلة اللي فاتت دي كانت الشركات بتجاوب إجابات محددة على&nbsp;كل حاجة عايزة تقولها للناس،&nbsp;طبعًا في كل مرة كان بيجاوب فيها علي السؤال كان بينقل رسالته للعملاء بطريقة يفهموها،&nbsp;وده يرجعنا تاني لمعنى وأهمية <span dir=\"LTR\">Tone of voice</span> في نقل رسالة حملتك لقلوب وعقول العملاء بتوعك.</span></span></span></p>\r\n\r\n<p dir=\"RTL\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\">الملخص: عشان تعرف تبدأ في حملة بخصوص منتجك أو خدمتك لازم تعرف الأول&nbsp;3 حاجات:</span></span></span></p>\r\n\r\n<ol dir=\"rtl\">\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\">إيه قيمة <span dir=\"LTR\">&ldquo;Value&rdquo;</span> منتجك أو خدمتك؟ - إيه اللي يفرق عن المنافس بتاعك -</span></span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\">إيه اللي عايز&nbsp;تقوله للناس؟ - عايز&nbsp;تعبر عن القيمة دي&nbsp;ازاي -</span></span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\">هتنقل الكلام ده ازاي؟ - عن طريق حملة فيها توعية عن المنتج ولا عن احتياج العميل ليك ولا عن طريق الرفاهية اللي بيدور عليها العملاء بتوعك -</span></span></span></li>\r\n</ol>\r\n\r\n<p dir=\"RTL\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\">الإجابات دي&nbsp;لازم تعرفها من الناس اللي شغالين معاك؛ لأنهم أكتر ناس شايفين الخدمة والمنتج ونقاط القوة ونقاط الضعف.</span></span></span></p>\r\n\r\n<p dir=\"RTL\"><span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"color:#000000\">لو عندك حملة ومش عارف تبدأها ازاي؟ تقدر تبعتلنا علي الإيميل الخاص بينا </span><a href=\"mailto:Hi@mm4web.net\"><span style=\"color:#000000\"><span dir=\"LTR\">Hi@mm4web.net</span></span></a><span style=\"color:#000000\"> المعلومات الكافية عن منتجك أو خدمتك ووسيلة التواصل، واحنا هنقدملك إستشارة وخطة عمل مجانًا لمدة 3 شهور.</span></span></span></p>\r\n\r\n<p dir=\"RTL\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\">لسه المقالات ماانتهتش .. تابعونا عشان تعرفوا أكتر عن نغمة صوت منتجك أو شركتك.</span></span></span></p>\r\n', 'Digital Marketing , tone of voice , Branding , براند  , تسويق الكترونى', 'نغمة صوت الشركة أو المنتج Company’s Tone of voice بيعبر دايما عن القيمة اللي بتحاول تنقلها الشركة للناس عن خدماتها و منتجاتها, لازم تتزرع الأول في المجتمع الداخلي للشركة قبل ما تخرج للعالم الخارجي, ولازم تكون بتتكلم عن المستوي الحقيقي الحالي للمنتج أو الخدمة', 1, '2017-05-20 12:36:08', '2017-05-23 15:05:12', 1, '', '', '', '', '', '', NULL, NULL, 0),
(16, ' 2017 الجديد x آيفون ', '2017 الجديد x آيفون', '2017-الجديد-x-آيفون', 'آيفون x الجديد 2017 لمستخدمي نظام الـ IOS | Multi Mega', 'dg4J3j_iphone x.png', 'x آيفون', 'شركة آبل تعقد مؤتمر بكاليفورنيا لتعلن رسميا عن إطلاق الهاتف الذكي\r\n\r\nآيفون x الجديد 2017 من قاعة ستيف جوبز', '<p dir=\"rtl\">قامت شركة آبل بعقد مؤتمر بكاليفورنيا لتعلن رسميا عن إطلاق الهاتف الذكي&nbsp;<strong>آيفون x الجديد 2017</strong></p>\r\n\r\n<p dir=\"rtl\">من قاعة ستيف جوبز بمناسبة مرور 10 أعوام &nbsp;على انطلاق هواتف IOS&nbsp;</p>\r\n\r\n<p dir=\"rtl\">و سيطرح آيفون x<strong>&nbsp;</strong>فى الأسواق على مستوى العالم فى نوفمبر القادم<br />\r\nو بدا شرح التقنيات والمميزات الحديثة للهاتف آيفون x<strong> </strong>عن طريق رئيس شركة أبل تيم كوك.</p>\r\n\r\n<p dir=\"rtl\"><br />\r\nو أهم هذه المميزات :<br />\r\n1 . إزالة الزر الموجود اسفل الهاتف لتوسيع مقاس الشاشة , وبدلا من استخدام الزر تقوم بسحب الشاشة للأعلى لتصل للشاشه الرئيسيه .<br />\r\n2. استخدام تعريف الوجه لفتح قفل الشاشة بدلا من بصمة اليد كما ان هذه الخاصيه تعمل ايضا فى الظلام و لا تتأثر هذه الخاصية بارتداء قبعة أو ترك اللحية لان الحمايه ستكون ضد الاقنعه فقط .<br />\r\n3. الهاتف مزود بشاشه 6,8 بوصه بدقة 1125X2436 بيكسل و ستكون الشاشه من نوع OLED<br />\r\n4. امكانية الشحن السريع و يدوم الشحن حتى 50 بالمئة خلال 30 دقيقة<br />\r\nو مزود بالشحن اللاسلكي و مدة التحدث لاسلكيا حتى 21 ساعه و لاستخدام الانترنت حتى 12 ساعة</p>\r\n\r\n<p dir=\"rtl\">5.مزود بشريحة All Bionic و متوفر منه اللون الفضى والرمادى .<br />\r\n6. خاصية استشعار لرسم الوجوه و التحكم فى تعبيرات الوجه من خلال الرموز emoji التعبيرية المتحركة .<br />\r\n7. كما انه لاول مره الخلفية تصنع من زجاج لدعم خاصية الشحن اللاسلكى .<br />\r\n8 .و تم ايضا اضافة تقنية اخرى جديدة و هى مقاومة المياه والغبار كما أضاف تيم كوك ان سعره يتراوح بين 995 : 1000 دولار.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"rtl\">كما اوضح ان نسبة الخطأ فى تعريف البصمة كانت واحد لكل مائة ألف ولكن نسبة الخطأ فى خاصية تعريف الوجه لآيفون x واحد لكل مليون و من المؤكد ان شركة ابل نجحت كعادتها ان تكون اكثر حماية وأمان على مستوى العالم .</p>\r\n', 'آيفون x , I phone x , آيفون x الجديد 2017 , IOS', 'قامت شركة آبل بعقد مؤتمر بكاليفورنيا لتعلن رسميا عن إطلاق الهاتف الذكي آيفون x الجديد 2017\r\n\r\nمن قاعة ستيف جوبز بمناسبة مرور 10 أعوام  على انطلاق هواتف ios \r\n\r\nو سيطرح آيفون x فى الأسواق على مستوى العالم فى نوفمبر القادم', 4, '2017-09-19 00:04:54', '2017-09-24 13:04:22', 1, '', '', '', '', '', '', NULL, NULL, 0),
(18, 'test blog', 'kjoio', 'kjkjk', 'تجربة', 'xz1GoJ_info-box27.png', 'lkjoioouo', 'sldlsdfls', '<p>klajfkjsls kdldklokdlskdsd skd</p>\r\n\r\n<p>sdsldlsdsds</p>\r\n\r\n<p>dsdsdlsldsldsl</p>\r\n', 'jadkakdkjqdk', '<p>مسيمس</p>\r\n', 3, '2018-07-31 15:17:16', '2018-07-31 15:17:16', 1, '<p>تجربة</p>\r\n', 'تجربة', '', 'kjuou999', '<p>نميشنينشس</p>\r\n', 'mjcjs', 'تجربة', 'تجربة', 0),
(19, 'test4', 'ff', 'test5', 'akskask', 'yQEDx9_case3.jpg', 'aksxa', 'kjzsjajsja', '<p>akxkakskaks</p>', 'KKKK', '<p>AXAKSKASK</p>', 1, '2018-09-01 15:56:40', '2018-09-01 16:40:59', 1, '<p>ksASKkskKSKk</p>', 'aklsakska', 'kaskaks', 'KSasKSK', '<p>AMXAJSJA</p>', 'KIKII', 'تجربة 3', 'تجربة', 8);

-- --------------------------------------------------------

--
-- Table structure for table `blogcats`
--

CREATE TABLE `blogcats` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `title` text NOT NULL,
  `meta_title` text NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `created_at` text NOT NULL,
  `updated_at` text NOT NULL,
  `custom_url` text NOT NULL,
  `name_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_title_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_url_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blogcats`
--

INSERT INTO `blogcats` (`id`, `name`, `title`, `meta_title`, `meta_description`, `meta_keyword`, `created_at`, `updated_at`, `custom_url`, `name_ar`, `meta_title_ar`, `meta_description_ar`, `page_title_ar`, `custom_url_ar`, `title_ar`) VALUES
(1, 'Digital Marketing', 'Digital Marketing', 'Learn More about Digital Marketing | Multi Mega', 'Learn More about Digital Marketing & Help yourself ', '', '2017-03-08 10:03:23', '2017-03-15 14:14:37', 'Digital-Marketing', 'التسويق الالكترونى', '', '', '', '', ''),
(3, 'Business', 'Business', 'Business', 'Business', '', '2017-03-08 14:50:15', '2017-03-08 14:50:15', 'multimega-Business', '', '', '', '', '', ''),
(4, 'Updates', 'Updates', 'Read More About Any Update| Multi Mega', 'Read More About any Update', 'facebook , twitter , Marketing , update , Whats app , what\'s up , تسويق ', '2017-03-14 15:07:07', '2017-03-15 14:11:37', 'Updates', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `bloggallary`
--

CREATE TABLE `bloggallary` (
  `id` int(11) NOT NULL,
  `photo` text NOT NULL,
  `blog_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bloggallary`
--

INSERT INTO `bloggallary` (`id`, `photo`, `blog_id`) VALUES
(2, 'Pkj7gT_pskKkI', 18),
(3, '2CpJPo_XoVAxy', 19),
(4, 'vui3rE_aivdXw', 19),
(5, '9HLLat_0WQlgi', 19);

-- --------------------------------------------------------

--
-- Table structure for table `cats`
--

CREATE TABLE `cats` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `name_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cats`
--

INSERT INTO `cats` (`id`, `name`, `name_ar`) VALUES
(4, 'Web Sites', 'مواقع الانترنت'),
(5, 'Social Media', ''),
(6, 'Designs', 'التصميمات'),
(8, 'Videos', 'فيديوهات'),
(9, 'Web Application', '');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `position` text NOT NULL,
  `text` text NOT NULL,
  `status` int(11) NOT NULL,
  `photo` text NOT NULL,
  `photo_alt` text NOT NULL,
  `name_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `position`, `text`, `status`, `photo`, `photo_alt`, `name_ar`, `position_ar`, `text_ar`) VALUES
(3, 'Fouad Naeem', 'Aracan Group', 'Wonderful company did a great job', 1, 'W1DmLb_13435345_266195107070718_8129467420472937305_n.jpg', '', 'فؤاد نعيم', 'اركان جروب', 'انها شركة رائعة'),
(4, 'Essam Mahmmed', 'Egy Medical', 'Great work and fruitful cooperation', 1, 'YKE47C_298091_2320576448372_1873446759_n.jpg', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `created_at` text NOT NULL,
  `updated_at` text NOT NULL,
  `seen` int(11) NOT NULL,
  `coursename` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `name`, `email`, `phone`, `subject`, `message`, `created_at`, `updated_at`, `seen`, `coursename`) VALUES
(22, 'Mohamed Saeed', 'm.saeed@mm4web.net', '', 'Test', 'Test gfkjg fdgk fdgkj dfgkj fd', '2016-11-11 16:54:43', '2016-11-11 16:54:55', 1, NULL),
(23, 'Barnypok', 'jfvynms4281rt@hotmail.com', '', 'xgxUqgmFJU', 'U2Fqg9 http://www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com', '2017-01-05 02:51:20', '2017-02-23 08:16:17', 1, NULL),
(24, 'Aya', 'aya@gmail.com', '', 'Test From Product Page', 'Contact Us Test', '2017-03-20 09:22:02', '2017-09-05 08:32:12', 1, NULL),
(25, 'Ahmed shaaban', 'Ahmedonp@gmail.com', '', ' تسويق اليكترونى', 'برجاء التواصل بخصوص عروض التسويق اليكترونى \r\n٠١١٤٩٢٢٣٣٠٠ \r\n٠١٠٩٠٨٣٩٨٧٦', '2017-03-30 19:59:41', '2017-09-05 08:32:24', 1, NULL),
(26, 'mohamed osama', 'mohamedosama1126@gmail.com', '', 'front-end jobs', 'hello , \r\n\r\nI\'m asking about if there are any available Full Time job opportunities or internship for \" Front End Web Developer\" ?\r\n\r\nBest Regards', '2017-06-10 15:55:23', '2017-09-05 08:32:27', 1, NULL),
(27, 'xsqwmkvtkb', 'yolanda_jun71@rambler.ru', '', 'We ask you to provide hosting VPS / VDS', 'Hi! \r\n  \r\nWe ask you to provide hosting VPS / VDS, for specialized mailings by e-mail for various activities. \r\nLoad on VPS / VDS mailings do not create so-as the sending server itself will be located elsewhere. \r\n  \r\nRequirements for hosting and VPS / VDS server: \r\n  \r\n1.Operating system: CentOS 6.0 - 6.7 x64. \r\n  \r\n2. Server control panel is not required. \r\n  \r\n3. Virtualization: Virtuozzo, OpenVZ, XEN, KVM. \r\n  \r\n4. Requirements for hardware: \r\n  \r\nCPU: from 600 MHz, memory: from 256 mb, drive: from 2 GB. \r\n  \r\n5.Open 25th port. \r\n  \r\n  \r\nQuestions to the hoster: \r\n  \r\nThe cost of VPS / VDS with these parameters? \r\n  \r\nLimits for sending letters per day? \r\n  \r\nDo you provide VPS / VDS with your DNS? \r\n  \r\nIs it possible to edit the PTR record? \r\n  \r\nThe cost of additional ip-addresses? \r\n  \r\nAbility to provide and cost of hosting VPS / VDS (not necessarily for you), for \"mass mailings\" by E-mail? \r\n  \r\nThank you! \r\nP.S. \r\nContacts-forma@seznam.cz', '2017-07-12 05:38:06', '2017-09-05 08:32:29', 1, NULL),
(28, 'Mahmoud youssuf', 'mahmoudyoussuf4@gmail.com', '', 'Ui/Ux designer', 'My portfolio\r\nwww.behance.net/sevendee', '2017-08-09 16:24:18', '2017-09-05 08:32:31', 1, NULL),
(29, 'Mousa Fakida', 'mosafakida@gmail.com', '', 'jnjnngektngiongiingiogn', 'ijtijgbtmbjtijgtiejgp[ejgij5gjiejgij58jgirjgprijjgirjg', '2017-09-05 08:55:03', '2017-09-05 09:03:55', 1, NULL),
(32, 'Yong Quisenberry', 'mailbanger@email.com', '', 'Want the 42 million USA business database?', 'Hello,\r\n\r\nDo you want to market your product or service to 42 million USA businesses and 26 million executives with contact info, gender, credit score if available and more?\r\n\r\nI recently used this idea to help our clients almost triple their monthly run rate.\r\n\r\nThe ultimate marketing packaging for B2B, acquire these files once (with sortable categories and use unlimited\r\nwith free updates for 1 year\r\n\r\nhttp://www.mailbanger.com/usa-business-database-executive-edition', '2018-03-14 20:20:19', '2018-03-14 20:20:19', 0, NULL),
(33, 'Reagan Welton', 'reagan.welton31@outlook.com', '', 'Money Robot Submitter - Your SEO Software for multimega-eg.com', 'Hello Multi Mega | Contact Us (Massage OR Call us)\r\n\r\nMoney Robot Submitter is the most powerful SEO automation tool.\r\nDesigned to publishing your content and backlinks to thousands of websites.\r\nRead More:  http://bit.ly/Money_Robot_SEO', '2018-04-11 14:14:34', '2018-04-11 14:14:34', 0, NULL),
(34, 'Jeanette Poff', 'poff.jeanette@outlook.com', '', 'Money Robot Submitter - Your SEO Software for multimega-eg.com', 'Hi Multi Mega | Contact Us (Massage OR Call us)\r\n\r\nMoney Robot Submitter is the most powerful SEO automation tool.\r\nDesigned to publishing your content and backlinks to thousands of websites.\r\nRead More:  http://bit.ly/Money_Robot_SEO', '2018-04-14 05:26:40', '2018-04-14 05:26:40', 0, NULL),
(35, 'ddddddd', 'iusidfuod@gmail.com', '', 'dddddddddddd', 'dddddddddddddddddd', '2018-04-22 15:07:50', '2018-04-22 15:07:50', 0, NULL),
(36, 'Maryellen Weinstein', 'weinstein.maryellen@outlook.com', '', 'Secret 3-Step Amazon Formula for multimega-eg.com', 'Hi there Multi Mega | Contact Us (Massage OR Call us)\r\n\r\nDiscover The Secret 3-Step Amazon Formula\r\nStart Earning Affiliate Commissions On Demand!\r\nStart Seeing Regular Big Commission Checks!\r\nWatch this video:  http://bit.ly/Shop_ABot\r\n', '2018-04-27 06:47:18', '2018-04-27 06:47:18', 0, NULL),
(37, 'Mel Mcdowell', 'mel.mcdowell53@outlook.com', '', 'Watch me Rank On Page #1 In 60 Seconds for multimega-eg.com', 'Good day Multi Mega | Contact Us (Massage OR Call us)\r\n \r\nNEW SOFTWARE - Live Event Blaster 2\r\nWatch me Rank On Page #1 In 60 Seconds !\r\nGet Instant Access to The ONLY SOFTWARE That RANKS Hundreds Of Live Events For You \r\nAnd Keeps The Rankings Sticking For Good!!\r\nRead More:  http://bit.ly/Live_Event_Blaster\r\n', '2018-04-27 06:49:53', '2018-04-27 06:49:53', 0, NULL),
(38, 'Garry Feuerstein', 'feuerstein.garry53@gmail.com', '', 'Free Video Shows How To Make 5-50X ROI In The Untapped Crypto Market With for multimega-eg.com', 'Hello there Multi Mega | Contact Us (Massage OR Call us)\r\n\r\nTURN $1 INTO $5, $10 … EVEN $50 ALL DAY LONG\r\nFree Video Shows How To Make 5-50X ROI In The Untapped Crypto Market With \r\nThe World’s 1st FULLY AUTOMATED CryptoCurrency Software\r\n\r\nWatch this video: http://bit.ly/Crypto_Suite\r\n', '2018-04-27 08:05:56', '2018-04-27 08:05:56', 0, NULL),
(39, 'ProFunding247', 'noreply@profunding247.com', '', 'SBA Capital to Grow Your Business', 'Hi, letting you know that http://ProFunding247.com can find your business a SBA or private loan for $2,000 - $350K Without high credit or collateral. \r\n \r\nFind Out how much you qualify for by clicking here: \r\n \r\nhttp://ProFunding247.com \r\n \r\nMinimum requirements include your company being established for at least a year and with current gross revenue of at least 120K. Eligibility and funding can be completed in as fast as 48hrs. Terms are personalized for each business so I suggest applying to find out exactly how much you can get on various terms. \r\n \r\nThis is a free service from a qualified lender and the approval will be based on the annual revenue of your business. These funds are Non-Restrictive, allowing you to spend the full amount in any way you require including business debt consolidation, hiring, marketing, or Absolutely Any Other expense. \r\n \r\nIf you need fast and easy business funding take a look at these programs now as there is limited availability: \r\n \r\nhttp://ProFunding247.com \r\n \r\nHave a great day, \r\nThe Pro Funding 247 Team \r\n \r\nunsubscribe/remove - http://ProFunding247.com/r.php?url=multimega-eg.com&id=e99', '2018-04-27 09:07:22', '2018-04-27 09:07:22', 0, NULL),
(40, 'Maira Picot', 'picot.maira@outlook.com', '', 'Make money online is getting easier in 2018 !!', 'Howdy Multi Mega | Contact Us (Massage OR Call us)\r\n\r\nIf you\'re not making consistent online income yet, then I have very good news for you today...\r\nPatric Chan has just launched the NEW VERSION of his premier product, which has helped many students to make money online.\r\nIn this new version, it can allow you to make money online even faster and easier in 2018, probably in just days from now…\r\nWatch this video:  http://bit.ly/2p1AVrE\r\n  \r\nThanks multimega-eg.com\r\n', '2018-04-27 21:53:48', '2018-04-27 21:53:48', 0, NULL),
(41, 'Celia Vincent', 'celia.vincent@gmail.com', '', 'Watch me Rank On Page #1 In 60 Seconds for multimega-eg.com', 'Hello Multi Mega | Contact Us (Massage OR Call us)\r\n \r\nNEW SOFTWARE - Live Event Blaster 2\r\nWatch me Rank On Page #1 In 60 Seconds !\r\nGet Instant Access to The ONLY SOFTWARE That RANKS Hundreds Of Live Events For You \r\nAnd Keeps The Rankings Sticking For Good!!\r\nRead More:  http://bit.ly/Live_Event_Blaster\r\n', '2018-05-01 04:28:19', '2018-05-01 04:28:19', 0, NULL),
(42, 'Dewey Hilderbrand', 'hilderbrand.dewey80@googlemail.com', '', 'WANT MORE SALE ? Connect With Customers. Grow Your Business...', 'Hi Multi Mega | Contact Us (Massage OR Call us)\r\n\r\nFind your audience, build a relationship and sell your products. \r\nReach your business goals with AWeber’s email marketing and automation platform.\r\nWith AWeber, you get all the email marketing tools you need to create and send beautiful and engaging emails. \r\nFor a behind-the-scenes look at how you can use AWeber.\r\nSign up free to our Test Drive email series: http://bit.ly/easy_email\r\n   \r\n', '2018-05-01 11:33:58', '2018-05-01 11:33:58', 0, NULL),
(43, 'iwbkhayeg', 'bnqnzd@bkrfhk.com', '', 'eufHZcpXSCjX', 'Rc1DR5  <a href=\"http://rnfemgjxuraq.com/\">rnfemgjxuraq</a>, [url=http://tckjvscphqoz.com/]tckjvscphqoz[/url], [link=http://uhqgrcpqftcv.com/]uhqgrcpqftcv[/link], http://efmldodafhvx.com/', '2018-05-08 06:16:21', '2018-05-08 06:16:21', 0, NULL),
(44, 'hlhtzrifa', 'vekusx@ltpdcg.com', '', 'btjQtZxhayXnViZPv', 'WYxJfT  <a href=\"http://gkhjvbccocmi.com/\">gkhjvbccocmi</a>, [url=http://ghddjagdmbip.com/]ghddjagdmbip[/url], [link=http://apqlsmjxmuhu.com/]apqlsmjxmuhu[/link], http://cfhfttgvbgwa.com/', '2018-05-08 10:29:48', '2018-05-08 10:29:48', 0, NULL),
(45, 'Darrel Grady', 'dos@lotusboutiquehotel.vn', '', 'booking multimega-eg.com', 'regarding reservation', '2018-05-16 15:08:23', '2018-05-16 15:08:23', 0, NULL),
(46, 'Arya', 'arya.jadon@primeps.in', '', '15 days trail of Mega CRM', '15 days trial', '2018-05-29 05:12:10', '2018-05-29 05:12:10', 0, NULL),
(47, 'Randy', 'Randy@TalkWithLead.com', '', 'Concerning multimega-eg.com', 'Hi,\r\n\r\nMy name is Randy and I was looking at a few different sites online and came across your site multimega-eg.com.  I must say - your website is very impressive.  I found your website on the first page of the Search Engine. \r\n\r\nHave you noticed that 70 percent of visitors who leave your website will never return?  In most cases, this means that 95 percent to 98 percent of your marketing efforts are going to waste, not to mention that you are losing more money in customer acquisition costs than you need to.\r\n \r\nAs a business person, the time and money you put into your marketing efforts is extremely valuable.  So why let it go to waste?  Our users have seen staggering improvements in conversions with insane growths of 150 percent going upwards of 785 percent. Are you ready to unlock the highest conversion revenue from each of your website visitors?  \r\n\r\nTalkWithLead is a widget which captures a website visitor’s Name, Email address and Phone Number and then calls you immediately, so that you can talk to the Lead exactly when they are live on your website — while they\'re hot!\r\n  \r\nTry the TalkWithLead Live Demo now to see exactly how it works.  Visit: https://www.talkwithlead.com/Contents/LiveDemo.aspx\r\n\r\nWhen targeting leads, speed is essential - there is a 100x decrease in Leads when a Lead is contacted within 30 minutes vs being contacted within 5 minutes.\r\n\r\nIf you would like to talk to me about this service, please give me a call.  We do offer a 30 days free trial.  \r\n\r\nThanks and Best Regards,\r\nRandy', '2018-06-10 19:41:50', '2018-06-10 19:41:50', 0, NULL),
(48, 'Mohamed Abdelfattah', 'mohabdelfattahbkr@gmail.com', '', 'iOS internship ', 'if you still need iOS internship please send email . ', '2018-06-29 00:00:13', '2018-06-29 00:00:13', 0, NULL),
(49, 'Robby Haralson', 'haralson.robby@googlemail.com', '', 'The 2 Week Diet - 2018  is a revolutionary new dietary system that not only guarantees to help you lose weight, it also promises to eliminate more body fat - faster than anything you’ve tried before.', 'The 2 Week Diet is an extreme rapid weight loss system that can help you lose up to 16 pounds of pure body fat in just 2 weeks! Get your personalized diet plan for 2 week weight loss, our 14 day diet, and how to lose weight in 2 weeks from our official website.\r\n\r\nWHAT TAKES MOST DIETS 2-3 MONTHS, \r\nTHE 2 WEEK DIET ACHIEVES IN ONLY 14 DAYS, INCLUDING…\r\n\r\nDON\'T MISS OUT  ==>  http://bit.ly/The_2_Week_Diet_Ok\r\n\r\n\r\n\r\n', '2018-07-08 03:32:47', '2018-07-08 03:32:47', 0, NULL),
(58, 'Ahmed Mohamed Elgaml', 'admin@dashboard.com', '', 'lslds', 'adad', '2018-07-23 17:31:35', '2018-07-23 17:31:35', 0, NULL),
(59, 'moahmed', 'mohameds@mm4web.net', '', '0111211584', 'asdadsasdaaadadsa', '2018-07-25 15:21:39', '2018-07-31 15:11:04', 1, NULL),
(60, 'ahmedelgaml', 'ahmed.m_elgaml@yahoo.com', '', 'test', 'ljlk;l', '2018-08-03 21:20:04', '2018-08-03 21:20:04', 0, NULL),
(61, 'ahmedelgaml', 'ahmed.gamal@mm4web.net', '', 'task', 'mnknkl', '2018-08-03 21:20:51', '2018-08-03 21:20:51', 0, NULL),
(62, 'Ahmed Mohamed Elgaml', 'ahmed.gamal@mm4web.net', '', 'task', 'k,hkj', '2018-08-03 21:22:25', '2018-08-03 21:22:25', 0, NULL),
(63, 'عربى', 'omnia@dashboard.com', '', 'test', 'lkjllkl', '2018-08-03 21:24:17', '2018-08-03 21:24:17', 0, NULL),
(64, 'ahmedelgaml', 'omnia@dashboard.com', '', 'task', ',mxamda', '2018-08-04 21:16:24', '2018-08-04 21:16:24', 0, NULL),
(65, 'عربى', 'admin@dashboard.com', '', 'task', 'lqslqlsklq', '2018-08-04 21:17:45', '2018-08-04 21:17:45', 0, NULL),
(66, 'عربى', 'ahmed.m_elgaml@yahoo.com', '', 'lslds', 'kjlkjlk', '2018-08-04 22:05:36', '2018-08-04 22:05:36', 0, NULL),
(67, 'ahmedelgaml', 'omnia@dashboard.com', '', 'lslds', 'kmzcmzmc', '2018-08-04 22:29:02', '2018-08-04 22:29:02', 0, NULL),
(68, 'visine', 'admin@dashboard.com', '', 'task', 'lzldk;lakdlad', '2018-08-04 22:29:45', '2018-08-04 22:29:45', 0, NULL),
(69, 'helpers.php', 'ahmed.m_elgaml@yahoo.com', '', 'ffgf', 'lldfdfldlfdd', '2018-08-05 11:01:30', '2018-08-05 11:01:30', 0, NULL),
(70, 'mega_test', 'meena@dashboard.com', '', 'jdjs', 'lgldfglfg', '2018-08-05 11:11:36', '2018-08-05 11:11:36', 0, NULL),
(71, 'ahmedelgaml', 'admin@dashboard.com', '', 'lslds', ',cxksjcksd', '2018-08-09 10:41:23', '2018-08-09 10:41:23', 0, NULL),
(72, 'ahmedelgaml', 'ahmed.m_elgaml@yahoo.com', '', 'dsdsdsd', 'ssdsds', '2018-08-09 10:57:26', '2018-08-09 10:57:26', 0, NULL),
(73, 'ahmedelgaml', 'ahmed.gamal@mm4web.net', '', 'test', 'skldkskld', '2018-08-09 11:14:32', '2018-08-09 11:14:32', 0, NULL),
(74, 'Ahmed Mohamed Elgaml', 'ahmed.m_elgaml@yahoo.com', '', 'task', 'kadkakd', '2018-08-09 11:17:38', '2018-08-09 11:17:38', 0, NULL),
(75, 'ahmedelgaml', 'ahmed.m_elgaml@yahoo.com', '', 'task', 'KJKLSDKKSA', '2018-08-09 11:36:50', '2018-08-09 11:36:50', 0, 'marketing');

-- --------------------------------------------------------

--
-- Table structure for table `contact_information`
--

CREATE TABLE `contact_information` (
  `id` int(11) NOT NULL,
  `address` text NOT NULL,
  `phone` text NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact_information`
--

INSERT INTO `contact_information` (`id`, `address`, `phone`, `email`) VALUES
(1, '13B 153St., Maadi, Cairo', '01033332756', 'admin@dashboard.com');

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `title_ar` text NOT NULL,
  `photo` text NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `title`, `title_ar`, `photo`, `number`) VALUES
(1, 'test', 'تجربة 3', 'NKanz8_case1.jpg', 3000);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `photo` text NOT NULL,
  `lat` text NOT NULL,
  `lang` text NOT NULL,
  `desc` text,
  `desc_ar` text,
  `name_ar` text NOT NULL,
  `custom_url` text NOT NULL,
  `custom_url_ar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `photo`, `lat`, `lang`, `desc`, `desc_ar`, `name_ar`, `custom_url`, `custom_url_ar`) VALUES
(1, 'egypt', '7vKJ7F_book9.png', '26.820553', '30.802498000000014', 'jhkkkjkk', 'jhjhjhjhj', 'مصر', 'kakzsak', 'اريح بالضغط على الاعلانات');

-- --------------------------------------------------------

--
-- Table structure for table `countries_info`
--

CREATE TABLE `countries_info` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `photo` text NOT NULL,
  `country_id` text NOT NULL,
  `status` text NOT NULL,
  `title_ar` text NOT NULL,
  `desc` text NOT NULL,
  `desc_ar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries_info`
--

INSERT INTO `countries_info` (`id`, `title`, `photo`, `country_id`, `status`, `title_ar`, `desc`, `desc_ar`) VALUES
(1, 'dfdf', 'Em4Zmn_case3.jpg', '1', '1', 'test', 'pay per click', 'تاانتن');

-- --------------------------------------------------------

--
-- Table structure for table `countries_links`
--

CREATE TABLE `countries_links` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `title_ar` text NOT NULL,
  `link` text NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries_links`
--

INSERT INTO `countries_links` (`id`, `title`, `title_ar`, `link`, `country_id`) VALUES
(1, 'test ticket3', 'تجربة 2', 'https://www.facebook.com/', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `photo`, `status`, `link`) VALUES
(1, 'pVgFym_book9.png', 1, 'https://www.youtube.com/'),
(2, '0y7zhy_client2-hover.png', 1, ''),
(4, 'uqDYRx_client3-hover.png', 1, ''),
(6, 'UdLyiF_client4-hover.png', 1, 'Test 11111'),
(7, 'PmjJFi_client1-hover.png', 1, 'Test 11111');

-- --------------------------------------------------------

--
-- Table structure for table `main`
--

CREATE TABLE `main` (
  `id` int(11) NOT NULL,
  `logo` text NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `photo_alt` varchar(100) NOT NULL,
  `gp` text NOT NULL,
  `be` text NOT NULL,
  `tw` text NOT NULL,
  `yt` text NOT NULL,
  `fb` text NOT NULL,
  `rss` text NOT NULL,
  `mobile` text NOT NULL,
  `address2` text NOT NULL,
  `mobile2` text NOT NULL,
  `phone2` text NOT NULL,
  `aboutus` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `aboutus_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ourcompany` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ourcompany_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ceo_word` text NOT NULL,
  `ceo_word_ar` text NOT NULL,
  `vision` text NOT NULL,
  `vision_ar` text NOT NULL,
  `mission` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `main`
--

INSERT INTO `main` (`id`, `logo`, `phone`, `address`, `photo_alt`, `gp`, `be`, `tw`, `yt`, `fb`, `rss`, `mobile`, `address2`, `mobile2`, `phone2`, `aboutus`, `aboutus_ar`, `address_ar`, `address2_ar`, `ourcompany`, `ourcompany_ar`, `ceo_word`, `ceo_word_ar`, `vision`, `vision_ar`, `mission`) VALUES
(1, 'IpbeiN__640x_ac142b417f4094189b0b93d845802eb33ddb04c8d92ebccebb640be4a842ce5a.jpg', '(+2) 02 223802701', '13B 153St., Maadi, Cairo', 'Multi mega', 'https://plus.google.com/107718111103496829092', 'https://www.behance.net/multi-mega', 'https://twitter.com/MultiMegaws', 'https://www.youtube.com/channel/UCQ3aJXLi7hnvh-oRO0QkIwA/videos?shelf_id=0&view=0&sort=dd', 'https://www.facebook.com/MultiMega.EGY/', '', '(+2) 01004282491', 'Om Elsahek Alhazm, Safway, Qatif', '009660555089077', '096655555555555', 'Multi Mega web solution is based in Cairo, Egypt; first began producing commercial websites in 2008.', 'تجريبي ', 'المعادى - القاهرة', 'جيزان -السعودية ', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `phone` text NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `site_information`
--

CREATE TABLE `site_information` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `title_ar` text NOT NULL,
  `desc` text NOT NULL,
  `desc_ar` text NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `site_information`
--

INSERT INTO `site_information` (`id`, `title`, `title_ar`, `desc`, `desc_ar`, `photo`) VALUES
(1, 'test ticket', 'wewewe', 'pay per click', 'مجرد تجربة', '79I9Ps_pricing3.png');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `photo` text NOT NULL,
  `title` text NOT NULL,
  `desc` text NOT NULL,
  `status` int(11) NOT NULL,
  `photo_alt` text NOT NULL,
  `title_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `photo`, `title`, `desc`, `status`, `photo_alt`, `title_ar`, `desc_ar`) VALUES
(5, 'diqpSA_case4.jpg', 'teachers', 'اجنبى', 1, 'kenacomb', 'akskaks', 'تجربة 3'),
(6, 'RZ4Fwr_slider1.png', 'Test 11111', 'Test 11111', 1, 'Test 11111', 'Test 11111', 'Test 11111'),
(7, '13rfam_01.PNG', 'Test 11111', 'Test 11111', 1, 'Test 11111', 'Test 11111Test 11111', 'Test 11111');

-- --------------------------------------------------------

--
-- Table structure for table `slider2`
--

CREATE TABLE `slider2` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_alt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider2`
--

INSERT INTO `slider2` (`id`, `title`, `desc`, `photo`, `photo_alt`, `title_ar`, `desc_ar`, `link`, `status`) VALUES
(1, 'test', 'test test testtesttest', 'UJs1QZ_services3.png', 'test', 'تجريبي ', 'تجربةتجربةتجربةتجربةتجربةتجربةتجربة', 'https://www.youtube.com/', 1),
(2, 'test2', 'test2', 'K70hzs_services2.png', 'test2', 'تجربة 2', 'تجربة 2', 'https://www.facebook.com/', 1),
(3, 'test3', 'test3', 'UxdJjS_services3.png', 'test3', 'تجربة 3', 'تجربة 3', 'https://www.facebook.com/', 1),
(4, 'Email marketing', 'Email marketing', '8HtTGg_services4.png', 'Email marketing', '', '', '', 1),
(5, 'pay per click', 'pay per click', 'HM5siY_slider2.png', 'pay per click', 'الاستضافة', 'تجربة 2', 'https://www.youtube.com/', 0);

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE `subscribe` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `created_at` text NOT NULL,
  `updated_at` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscribe`
--

INSERT INTO `subscribe` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', '2017-03-02 08:32:36', '2017-03-02 08:32:36'),
(2, 'admin@gmail.com11', '2017-03-02 08:32:59', '2017-03-02 08:32:59'),
(3, 'admin@dashboard.com', '2017-03-02 08:33:41', '2017-03-02 08:33:41'),
(4, 'aya@gmail.com', '2017-03-02 08:35:12', '2017-03-02 08:35:12'),
(5, 'admin@gmail.com12', '2017-03-02 08:35:31', '2017-03-02 08:35:31'),
(6, 'eaglezm@gmail.com', '2017-03-02 17:03:16', '2017-03-02 17:03:16'),
(7, 'devinwolfe91@yahoo.com', '2017-04-21 10:45:09', '2017-04-21 10:45:09'),
(8, '9809.b.b.m@gmail.com', '2017-04-21 10:50:01', '2017-04-21 10:50:01'),
(9, 'taylorwbyrd@yahoo.com', '2017-04-21 11:02:18', '2017-04-21 11:02:18'),
(10, 'contact@settelecom.fr', '2017-04-21 11:29:43', '2017-04-21 11:29:43'),
(11, 'chad@athomepcsupport.com', '2017-04-21 11:36:57', '2017-04-21 11:36:57'),
(12, 'andgod190@gmail.com', '2017-04-21 12:32:43', '2017-04-21 12:32:43'),
(13, 'ddavisusa@yahoo.com', '2017-04-21 13:11:20', '2017-04-21 13:11:20'),
(14, 'natalie.afton@gmail.com', '2017-04-21 13:19:52', '2017-04-21 13:19:52'),
(15, 'stevevetter@gmail.com', '2017-04-21 13:49:29', '2017-04-21 13:49:29'),
(16, 'brade777@yahoo.com', '2017-04-21 14:03:14', '2017-04-21 14:03:14'),
(17, 'mrjetorres@hotmail.com', '2017-04-21 14:06:02', '2017-04-21 14:06:02'),
(18, 'karaikovice@gmail.com', '2017-04-21 15:02:24', '2017-04-21 15:02:24'),
(19, 'mikewochner@bellsouth.net', '2017-04-21 15:44:05', '2017-04-21 15:44:05'),
(20, 'areacode323@yahoo.com', '2017-04-21 15:45:07', '2017-04-21 15:45:07'),
(21, 'zzafirova@gmail.com', '2017-04-21 16:09:58', '2017-04-21 16:09:58'),
(22, 'gmoon47784@aol.com', '2017-04-21 16:20:57', '2017-04-21 16:20:57'),
(23, 'stephen_cotner@yahoo.com', '2017-04-21 17:29:18', '2017-04-21 17:29:18'),
(24, 'norton721@embarqmail.com', '2017-04-21 17:32:32', '2017-04-21 17:32:32'),
(25, 'tyler_linkerr@yahoo.com', '2017-04-21 18:11:55', '2017-04-21 18:11:55'),
(26, 'dima08@gmail.com', '2017-04-21 18:47:37', '2017-04-21 18:47:37'),
(27, 'lrio2001@gmail.com', '2017-04-21 19:02:41', '2017-04-21 19:02:41'),
(28, 'hensley1981@yahoo.com', '2017-04-21 19:08:49', '2017-04-21 19:08:49'),
(29, 'probuilderads@gmail.com', '2017-04-21 20:48:14', '2017-04-21 20:48:14'),
(30, 'sirtj12@hotmail.com', '2017-04-21 21:33:53', '2017-04-21 21:33:53'),
(31, 'jamescolley.jc@gmail.com', '2017-04-21 22:18:52', '2017-04-21 22:18:52'),
(32, 'naleenie159@yahoo.com', '2017-04-21 23:33:41', '2017-04-21 23:33:41'),
(33, 'jsjanjam@gmail.com', '2017-04-22 00:26:08', '2017-04-22 00:26:08'),
(34, 'alfredwbuckley@gmail.com', '2017-04-22 02:19:13', '2017-04-22 02:19:13'),
(35, 'sdilling17@yahoo.com', '2017-04-22 02:25:56', '2017-04-22 02:25:56'),
(36, 'theman87@msn.com', '2017-04-22 02:31:13', '2017-04-22 02:31:13'),
(37, '540pto@gmail.com', '2017-04-22 02:39:57', '2017-04-22 02:39:57'),
(38, 'futbolteen9@gmail.com', '2017-04-22 03:13:59', '2017-04-22 03:13:59'),
(39, 'boyblu19@yahoo.com', '2017-04-22 03:27:58', '2017-04-22 03:27:58'),
(40, 'ndwaldo@yahoo.com', '2017-04-22 03:49:36', '2017-04-22 03:49:36'),
(41, 'gerardoxochitl@yahoo.com', '2017-04-22 04:42:45', '2017-04-22 04:42:45'),
(42, 'etzfree@yahoo.com', '2017-04-22 06:08:24', '2017-04-22 06:08:24'),
(43, 'fennell77@gmail.com', '2017-04-22 06:24:47', '2017-04-22 06:24:47'),
(44, 'rrabie@charter.net', '2017-04-22 06:44:08', '2017-04-22 06:44:08'),
(45, 'shrosenblum@yahoo.com', '2017-04-22 07:32:18', '2017-04-22 07:32:18'),
(46, 'wucando@gmail.com', '2017-04-22 07:41:50', '2017-04-22 07:41:50'),
(47, 'noleybaby30@aol.com', '2017-04-22 07:46:03', '2017-04-22 07:46:03'),
(48, 'brown_terrance84@yahoo.com', '2017-04-22 07:55:07', '2017-04-22 07:55:07'),
(49, 'twisha.trp@gmail.com', '2017-04-22 08:18:01', '2017-04-22 08:18:01'),
(50, 'bcchavez2000@yahoo.com', '2017-04-22 08:32:06', '2017-04-22 08:32:06'),
(51, 'jkeaquintero@yahoo.com', '2017-04-22 09:09:47', '2017-04-22 09:09:47'),
(52, 'tony.hongzh@gmail.com', '2017-04-22 09:58:23', '2017-04-22 09:58:23'),
(53, 'andreas@paramountocs.com', '2017-04-22 10:19:17', '2017-04-22 10:19:17'),
(54, 'jeannacg@yahoo.com', '2017-04-22 10:27:39', '2017-04-22 10:27:39'),
(55, 'kgrace80@hotmail.com', '2017-04-22 10:32:01', '2017-04-22 10:32:01'),
(56, 'mars2099@yahoo.com', '2017-04-22 10:54:58', '2017-04-22 10:54:58'),
(57, 'mmbenish@hotmail.com', '2017-04-22 10:56:32', '2017-04-22 10:56:32'),
(58, 'sulfuricsoul@yahoo.com', '2017-04-22 11:29:34', '2017-04-22 11:29:34'),
(59, 'shanahanlon@yahoo.com', '2017-04-22 11:43:50', '2017-04-22 11:43:50'),
(60, 'keithdanielsmith616@gmail.com', '2017-04-22 11:45:25', '2017-04-22 11:45:25'),
(61, 'drone1238@yahoo.com', '2017-04-22 11:48:32', '2017-04-22 11:48:32'),
(62, 'njhancock@sbcglobal.net', '2017-04-22 12:40:17', '2017-04-22 12:40:17'),
(63, 'theultima123@yahoo.com', '2017-04-22 13:46:00', '2017-04-22 13:46:00'),
(64, 'msampayan@yahoo.com', '2017-04-22 14:44:06', '2017-04-22 14:44:06'),
(65, 'piperofpeace@gmail.com', '2017-04-22 15:31:41', '2017-04-22 15:31:41'),
(66, 'aandreou@yahoo.com', '2017-04-22 16:11:43', '2017-04-22 16:11:43'),
(67, 'sparklemelly@hotmail.com', '2017-04-22 16:34:07', '2017-04-22 16:34:07'),
(68, 'harlemtoni@aol.com', '2017-04-22 17:14:19', '2017-04-22 17:14:19'),
(69, 'thegroobsters@gmail.com', '2017-04-22 17:23:11', '2017-04-22 17:23:11'),
(70, 'ojaf313@aol.com', '2017-04-22 17:44:19', '2017-04-22 17:44:19'),
(71, 'maryknollvicencio@yahoo.com', '2017-04-22 17:48:33', '2017-04-22 17:48:33'),
(72, 'fms0907@gmail.com', '2017-04-22 18:19:00', '2017-04-22 18:19:00'),
(73, 'rachelmbayer@gmail.com', '2017-04-22 18:47:08', '2017-04-22 18:47:08'),
(74, 'pinestka81@yahoo.com', '2017-04-22 19:04:46', '2017-04-22 19:04:46'),
(75, 'bellevue_beth@yahoo.com', '2017-04-22 19:06:53', '2017-04-22 19:06:53'),
(76, 'dnlmonkey@yahoo.com', '2017-04-22 19:08:08', '2017-04-22 19:08:08'),
(77, 'amanda.nather@yahoo.com', '2017-04-22 19:28:20', '2017-04-22 19:28:20'),
(78, 'sexyanita32@aol.com', '2017-04-22 20:00:11', '2017-04-22 20:00:11'),
(79, 'lhoffman@mtpleasantny.com', '2017-04-22 20:21:46', '2017-04-22 20:21:46'),
(80, 'bourcon@yahoo.com', '2017-04-22 20:31:22', '2017-04-22 20:31:22'),
(81, 'machion7@gmail.com', '2017-04-22 21:22:34', '2017-04-22 21:22:34'),
(82, 'izabelleepapa@yahoo.com', '2017-04-22 21:49:19', '2017-04-22 21:49:19'),
(83, 'bondarenko.volodymyr@yahoo.co.uk', '2017-04-22 22:22:24', '2017-04-22 22:22:24'),
(84, 'abishopmaas@gmail.com', '2017-04-22 22:29:24', '2017-04-22 22:29:24'),
(85, 'philz32@hotmail.com', '2017-04-22 22:42:08', '2017-04-22 22:42:08'),
(86, 'wolfspider86@gmail.com', '2017-04-22 23:15:09', '2017-04-22 23:15:09'),
(87, 'imjudypooh@yahoo.com', '2017-04-22 23:40:45', '2017-04-22 23:40:45'),
(88, 'amd786@hotmail.com', '2017-04-23 00:02:55', '2017-04-23 00:02:55'),
(89, 'spirit_lynx@hotmail.com', '2017-04-23 00:19:02', '2017-04-23 00:19:02'),
(90, 'pemdasbuilders@yahoo.com', '2017-04-23 00:53:28', '2017-04-23 00:53:28'),
(91, 'naomiespinoza@yahoo.com', '2017-04-23 01:00:45', '2017-04-23 01:00:45'),
(92, 'pudgie197826@yahoo.com', '2017-04-23 01:14:30', '2017-04-23 01:14:30'),
(93, 'tinsel86@aol.com', '2017-04-23 01:40:35', '2017-04-23 01:40:35'),
(94, 'walkingondocs@yahoo.com', '2017-04-23 02:48:48', '2017-04-23 02:48:48'),
(95, 'ivan@dimkovic.com', '2017-04-23 02:49:51', '2017-04-23 02:49:51'),
(96, 'floreseka@yahoo.com', '2017-04-23 05:47:17', '2017-04-23 05:47:17'),
(97, 'gratefultohim@aol.com', '2017-04-23 06:48:20', '2017-04-23 06:48:20'),
(98, 'cccharity@yahoo.com', '2017-04-23 08:09:35', '2017-04-23 08:09:35'),
(99, 'pathmc@comcast.net', '2017-04-23 08:48:47', '2017-04-23 08:48:47'),
(100, 'jharpphoto@yahoo.com', '2017-04-23 12:20:00', '2017-04-23 12:20:00'),
(101, 'scottmyeilding@gmail.com', '2017-04-23 14:02:23', '2017-04-23 14:02:23'),
(102, 'bobani@me.com', '2017-04-23 14:21:21', '2017-04-23 14:21:21'),
(103, 'kcerreta67@yahoo.com', '2017-04-23 14:36:35', '2017-04-23 14:36:35'),
(104, 'andrew-fraser@hotmail.co.uk', '2017-04-23 14:40:14', '2017-04-23 14:40:14'),
(105, 'jholland@etihad.ae', '2017-04-23 15:12:50', '2017-04-23 15:12:50'),
(106, 'taank714@yahoo.com', '2017-04-23 16:32:53', '2017-04-23 16:32:53'),
(107, 'soohoo_daniel@yahoo.com', '2017-04-23 17:03:53', '2017-04-23 17:03:53'),
(108, 'liv4godalone@yahoo.com', '2017-04-23 17:10:29', '2017-04-23 17:10:29'),
(109, 'iamsampson@yahoo.com', '2017-04-23 18:23:23', '2017-04-23 18:23:23'),
(110, 'rwashington3586@yahoo.com', '2017-04-23 18:26:36', '2017-04-23 18:26:36'),
(111, 'markwendellg@yahoo.com', '2017-04-23 18:43:12', '2017-04-23 18:43:12'),
(112, 'rket022@optonline.net', '2017-04-23 19:31:37', '2017-04-23 19:31:37'),
(113, 'ariacomputersuk@gmail.com', '2017-04-23 19:42:43', '2017-04-23 19:42:43'),
(114, 'albright.richard99@yahoo.com', '2017-04-23 19:57:39', '2017-04-23 19:57:39'),
(115, 'milapsheth@yahoo.com', '2017-04-23 20:20:34', '2017-04-23 20:20:34'),
(116, 'pa1458@yahoo.com', '2017-04-23 20:24:20', '2017-04-23 20:24:20'),
(117, 'alexulbrecht@yahoo.de', '2017-04-23 21:11:57', '2017-04-23 21:11:57'),
(118, 'cbergeon@gmail.com', '2017-04-23 21:25:35', '2017-04-23 21:25:35'),
(119, 'msmitty20@hotmail.com', '2017-04-23 22:52:25', '2017-04-23 22:52:25'),
(120, 'jasonlee07905@gmail.com', '2017-04-23 23:13:06', '2017-04-23 23:13:06'),
(121, 'normamenaged@hotmail.com', '2017-04-23 23:27:20', '2017-04-23 23:27:20'),
(122, 'sstvns66@gmail.com', '2017-04-24 00:19:33', '2017-04-24 00:19:33'),
(123, 'hitman619@cox.net', '2017-04-24 01:14:56', '2017-04-24 01:14:56'),
(124, 'lfinazzi@css-services.it', '2017-04-24 01:42:22', '2017-04-24 01:42:22'),
(125, 'fraczkiewiczoz61@hotmail.com', '2017-04-24 02:26:28', '2017-04-24 02:26:28'),
(126, 'rmoss29@yahoo.com', '2017-04-24 02:34:21', '2017-04-24 02:34:21'),
(127, 'cbsmiff@juno.com', '2017-04-24 03:16:02', '2017-04-24 03:16:02'),
(128, 'abuse@zohocorp.com', '2017-04-24 04:16:00', '2017-04-24 04:16:00'),
(129, 'thorne207@hotmail.com', '2017-04-24 04:44:28', '2017-04-24 04:44:28'),
(130, 'joeykc24@yahoo.com', '2017-04-24 05:35:21', '2017-04-24 05:35:21'),
(131, 'ndpoto@gmail.com', '2017-04-24 06:01:35', '2017-04-24 06:01:35'),
(132, 'chelseapylant@yahoo.com', '2017-04-24 06:24:15', '2017-04-24 06:24:15'),
(133, 'bob_runyeard@hotmail.com', '2017-04-24 07:33:29', '2017-04-24 07:33:29'),
(134, 'patrick.gallais2@wanadoo.fr', '2017-04-24 09:15:37', '2017-04-24 09:15:37'),
(135, 'buncobabetoo@gmail.com', '2017-04-24 09:16:28', '2017-04-24 09:16:28'),
(136, 'helen.nguyen114@gmail.com', '2017-04-24 09:36:28', '2017-04-24 09:36:28'),
(137, 'ahmed.gamal@mm4web.net', '2018-07-22 23:53:43', '2018-07-22 23:53:43'),
(138, 'ahmed.m_elgaml90@yahoo.com', '2018-07-22 23:53:55', '2018-07-22 23:53:55'),
(139, 'ahmed.m_elgaml@yahoo.com', '2018-07-22 23:54:38', '2018-07-22 23:54:38'),
(140, 'ahmed.m_elgaml@yahoo.com', '2018-07-23 09:59:58', '2018-07-23 09:59:58'),
(141, 'ahmed.gamal@mm4web.net', '2018-07-23 18:21:57', '2018-07-23 18:21:57'),
(142, 'ahmed.gamal@mm4web.net', '2018-07-23 18:21:58', '2018-07-23 18:21:58'),
(143, 'thelegend_forever90@yahoo.com', '2018-07-24 14:41:41', '2018-07-24 14:41:41'),
(144, 'ahmed.m_elgaml@yahoo.com', '2018-07-24 14:44:00', '2018-07-24 14:44:00'),
(145, 'ahmed.m_elgaml@yahoo.com', '2018-07-24 14:50:26', '2018-07-24 14:50:26'),
(146, 'ahmed.gamal@mm4web.net', '2018-07-24 14:51:19', '2018-07-24 14:51:19'),
(147, 'admin@dashboard.com', '2018-07-25 08:49:26', '2018-07-25 08:49:26'),
(148, 'moahmeds@mm4web.net', '2018-07-25 13:00:55', '2018-07-25 13:00:55'),
(149, 'ahmed.gamal@mm4web.net', '2018-07-28 21:36:23', '2018-07-28 21:36:23'),
(150, 'omnia@dashboard.com', '2018-07-28 21:37:51', '2018-07-28 21:37:51'),
(151, 'ahmed.m_elgaml@yahoo.com', '2018-07-28 21:50:44', '2018-07-28 21:50:44'),
(152, 'ahmed.m_elgaml@yahoo.com', '2018-07-28 21:51:12', '2018-07-28 21:51:12'),
(153, 'admin@dashboard.com', '2018-07-28 21:58:10', '2018-07-28 21:58:10'),
(154, 'omnia@dashboard.com', '2018-07-28 22:24:21', '2018-07-28 22:24:21'),
(155, 'omnia@dashboard.com', '2018-07-28 22:26:47', '2018-07-28 22:26:47'),
(156, 'admin@demo.com', '2018-07-28 22:35:41', '2018-07-28 22:35:41'),
(157, 'admin@demo.com', '2018-07-28 22:36:40', '2018-07-28 22:36:40'),
(158, 'ahmed.gamal@mm4web.net', '2018-07-28 22:44:03', '2018-07-28 22:44:03'),
(159, 'ahmed.gamal@mm4web.net', '2018-07-28 22:45:26', '2018-07-28 22:45:26'),
(160, 'ahmed.gamal@mm4web.net', '2018-07-28 22:46:24', '2018-07-28 22:46:24'),
(161, 'ahmed.gamal@mm4web.net', '2018-07-28 22:57:01', '2018-07-28 22:57:01'),
(162, 'm.saeed@mm4web.net', '2018-08-01 14:05:03', '2018-08-01 14:05:03'),
(163, 'admin@dashboard.com', '2018-08-03 14:32:42', '2018-08-03 14:32:42'),
(164, 'ahmed.m_elgaml@yahoo.com', '2018-08-04 22:10:35', '2018-08-04 22:10:35'),
(165, 'admin@dashboard.com', '2018-08-05 10:55:34', '2018-08-05 10:55:34'),
(166, 'admin@dashboard.com', '2018-08-05 11:01:03', '2018-08-05 11:01:03'),
(167, 'ahmed.m_elgaml@yahoo.com', '2018-08-05 11:05:00', '2018-08-05 11:05:00'),
(168, 'meena@dashboard.com', '2018-08-05 11:05:23', '2018-08-05 11:05:23'),
(169, 'omar.atef@mm4web.net', '2018-08-13 11:19:53', '2018-08-13 11:19:53');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `tag` text NOT NULL,
  `blog_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag`, `blog_id`) VALUES
(1, 'افلام', 1),
(2, 'مسرح,سينما', 19);

-- --------------------------------------------------------

--
-- Table structure for table `teamwork`
--

CREATE TABLE `teamwork` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `position` text NOT NULL,
  `photo_alt` text NOT NULL,
  `photo` text NOT NULL,
  `fb` text NOT NULL,
  `tw` text NOT NULL,
  `in` text NOT NULL,
  `gp` text NOT NULL,
  `name_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position_ar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teamwork`
--

INSERT INTO `teamwork` (`id`, `name`, `position`, `photo_alt`, `photo`, `fb`, `tw`, `in`, `gp`, `name_ar`, `position_ar`) VALUES
(3, 'Mohamed Saeed', 'Founder & CEO', '', 'IGqVgf_DSC01825.jpg', 'https://www.facebook.com/mohamed.saeeed', '', '', '', 'محمد سعيد', 'رئيس  مجلس الادارة'),
(4, 'Ibrahim Saeed', 'Executive Manager', '', 'XjzLnO_4LIoUj_1.jpg', 'https://www.facebook.com/', '', '', '', '', ''),
(25, 'Shorouq Medhat', 'PR Specialist', '', 'bcbPo4_shorouq.png', 'https://www.facebook.com/MultiMega.EGY/', '', '', '', '', ''),
(30, 'Mohamed Saeed ', 'Account Manager', '', 'v00JTP_Photo0538.jpg', '', '', '', '', 'محمد سعيد حسن', 'مدير حسابات'),
(34, 'Ibrahim Hamdy', 'PHP Developer', '', 'pKCMlf_FB_IMG_1513244552690.jpg', '', '', '', '', '', ''),
(35, 'Kareem El- Hossany', 'Content Creator', '', 'rmvW4i_B612_20170430_171843.jpg', '', '', '', '', '', ''),
(37, 'Eslam Talat', 'Mobile Developer ', '', 'zedqQe_eslam.jpg', '', '', '', '', '', ''),
(39, 'Mohamed Elnashar', 'Art Director', '', 'VuekBM_nashar.jpg', '', '', '', '', '', ''),
(42, 'Omar Atef ', 'Account Manager Specialist', '', 'sCuNTf_IMG_٢٠١٧١٢١٤_١٢١٦٥٠_٥٣٢.JPG', '', '', '', '', '', ''),
(44, 'Yehia Ahmed', 'Mobile Developer ', '', 'YmdQuZ_22222.png', '', '', '', '', '', ''),
(47, 'Ahmed Gaml ', 'PHP Developer', '', 'mzaIQa_Unknown_Person.png', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `updated_at` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `permission` int(10) NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `country` text NOT NULL,
  `address` text NOT NULL,
  `username` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `permission`, `phone`, `country`, `address`, `username`, `status`) VALUES
(1, 'Admin', 'm.saeed@mm4web.net', '$2y$10$lCKr0CMiTxK6LOhrxbAn1Oh2Qi7PlG8MWJSf6t2wpiSmxt2Cd3oci', '7C647eVAx9BuZWhHsCk8xKnFtQJbnxBf8j0xbbT9cHNHZPmCfeqlB0gl1jxJ', '2016-05-20 08:21:19', '2018-02-12 11:13:17', 1, '', '1', '', '', 1),
(3, 'ahmedelgaml', 'admin@dashboard.com', '$2y$10$O9Syb/uAAa7wWjGLeuc.Be.r9iI0qN.OkdLaR2qqlcziKKeG2D/5i', '8q7rnwAtHr0caESFqOwgHQCLw4EYOAxm0TmMMBGaadsjKM8Vyoba4ineW9De', '2018-09-01 17:29:24', '2018-09-01 17:29:24', 1, '01125477722', 'مصر', 'cairo', 'admin@dashboard.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vblogtags`
--

CREATE TABLE `vblogtags` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutus`
--
ALTER TABLE `aboutus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `blogcats`
--
ALTER TABLE `blogcats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bloggallary`
--
ALTER TABLE `bloggallary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_id` (`blog_id`);

--
-- Indexes for table `cats`
--
ALTER TABLE `cats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_information`
--
ALTER TABLE `contact_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries_info`
--
ALTER TABLE `countries_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries_links`
--
ALTER TABLE `countries_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main`
--
ALTER TABLE `main`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_information`
--
ALTER TABLE `site_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider2`
--
ALTER TABLE `slider2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribe`
--
ALTER TABLE `subscribe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teamwork`
--
ALTER TABLE `teamwork`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vblogtags`
--
ALTER TABLE `vblogtags`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutus`
--
ALTER TABLE `aboutus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `blogcats`
--
ALTER TABLE `blogcats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `bloggallary`
--
ALTER TABLE `bloggallary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `cats`
--
ALTER TABLE `cats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `contact_information`
--
ALTER TABLE `contact_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `countries_info`
--
ALTER TABLE `countries_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `countries_links`
--
ALTER TABLE `countries_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `main`
--
ALTER TABLE `main`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `site_information`
--
ALTER TABLE `site_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `slider2`
--
ALTER TABLE `slider2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `subscribe`
--
ALTER TABLE `subscribe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `teamwork`
--
ALTER TABLE `teamwork`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `vblogtags`
--
ALTER TABLE `vblogtags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blog_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `blogcats` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bloggallary`
--
ALTER TABLE `bloggallary`
  ADD CONSTRAINT `bloggallary_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

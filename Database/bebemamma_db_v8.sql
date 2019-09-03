-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- 생성 시간: 19-07-24 11:30
-- 서버 버전: 5.7.23
-- PHP 버전: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `bebemamma`
--
CREATE DATABASE IF NOT EXISTS `bebemamma` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bebemamma`;

-- --------------------------------------------------------

--
-- 테이블 구조 `babymeal`
--

DROP TABLE IF EXISTS `babymeal`;
CREATE TABLE `babymeal` (
  `product_id` int(10) NOT NULL,
  `product_name` varchar(20) NOT NULL,
  `brand` varchar(10) NOT NULL,
  `ingredient` varchar(100) NOT NULL,
  `filename` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='what baby can eat as a meal';

--
-- 테이블의 덤프 데이터 `babymeal`
--

INSERT INTO `babymeal` (`product_id`, `product_name`, `brand`, `ingredient`, `filename`) VALUES
(1, '흑미미음', '베베쿡', '쌀가루,흑미가루', 'bebe_chicken_bam_water-rice.JPG'),
(2, '쌀미음', '베베쿡', '쌀가루', 'bebe_rice_water-rice.JPG'),
(3, '단호박미음', '베베쿡', '쌀가루,단호박', 'bebe_pumpkin_water-rice.JPG'),
(4, '브로콜리미음', '베베쿡', '쌀가루,브로콜리', 'bebe_brocoli_water-rice.JPG'),
(5, '고구마미음', '베베쿡', '쌀가루,고구마', 'bebe_sweetpotato_water-rice.JPG'),
(6, '감자미음', '베베쿡', '쌀가루,감자', 'bebe_potato_water-rice.JPG'),
(7, '애호박미음', '베베쿡', '쌀가루,애호박', 'bebe_youngpumpkin_water-rice.JPG'),
(8, '한우얼갈이배추죽', '베베쿡', '쌀가루,한우,얼갈이배추', 'bebe_bam_blacksesame_soup.JPG'),
(9, '단호박브로컬리죽', '베베쿡', '쌀가루,단호박,브로콜리', 'bebe_hanwoo_pumpkin_soup.JPG'),
(10, '호박닭살죽', '베베쿡', '쌀가루,애호박,닭가슴살,분유', 'bebe_pumpkin_brocolli_soup.JPG'),
(11, '사과감자죽', '베베쿡', '쌀가루,감자,사과', 'bebe_apple_potato_soup.JPG'),
(12, '양배추한우죽', '베베쿡', '쌀가루,양배추,한우', 'bebe_lettuce_hanwoo_soup.JPG'),
(13, '고구마타락죽', '베베쿡', '쌀가루,고구마,분유', 'bebe_sweetpotato_tarak_soup.JPG'),
(14, '한우근대죽', '베베쿡', '쌀가루,한우,근대', 'bebe_hanwoo_geundae_soup.JPG'),
(15, '사과타락죽', '베베쿡', '쌀가루,사과,분유', 'bebe_apple_tarak_soup.JPG'),
(16, '한우감자죽', '베베쿡', '쌀가루,한우,감자', 'bebe_hanwoo_potato_soup.JPG'),
(17, '수수고구마죽', '베베쿡', '쌀가루,고구마,차수수가루', 'bebe_susu_sweetpotato_soup.JPG'),
(18, '한우김가루죽', '베베쿡', '쌀가루,한우,김가루', 'bebe_hanwoo_kimpowder_soup.JPG'),
(19, '양송이배추죽', '베베쿡', '쌀가루,배추,양송이버섯', 'bebe_yangsongee_soup.JPG'),
(20, '애호박한우죽', '베베쿡', '쌀가루,애호박,한우', 'bebe_hanwoo_errgaree_lettuce_soup.JPG'),
(21, '사과적양배추죽', '베베쿡', '쌀가루,사과,붉은양배추', 'bebe_apple_red_lettuce_soup.JPG'),
(22, '배한우죽', '베베쿡', '쌀가루,한우,배', 'bebe_pearl_hanwoo_soup.JPG'),
(23, '찹쌀비타민죽', '베베쿡', '쌀가루,감자,비타민채,찹쌀가루', 'bebe_chapsal_vitamin_soup.JPG'),
(24, '브로콜리닭살죽', '베베쿡', '쌀가루,닭가슴살,브로콜리,분유', 'bebe_brocoli_chicken_soup.JPG'),
(25, '찹쌀시금치죽', '베베쿡', '쌀가루,찹쌀가루,시금치', 'bebe_chapsal_spinach_soup.JPG'),
(26, '시금치닭살죽', '베베쿡', '쌀가루,닭가슴살,시금치,분유', 'bebe_spinach_chicken_soup.JPG'),
(27, '감자배추죽', '베베쿡', '쌀가루,감자,배추', 'bebe_potato_lettuce_soup.JPG'),
(28, '한우무죽', '베베쿡', '쌀가루,무,한우', 'bebe_hanwoo_radish_soup.JPG'),
(29, '고구마당근죽', '베베쿡', '쌀가루,고구마,당근', 'bebe_sweetpotato_carrot_soup.JPG'),
(30, '한우로메인죽', '베베쿡', '쌀,쇠고기육수,야채육수,한우,로메인,쥬키니,양파', 'bebe_hanwoo_puretofu_soup.JPG'),
(31, '순두부버섯죽', '베베쿡', '쌀,야채육수,순두부,새송이버섯,비타민채', 'bebe_puretofu_mushroom_soup.JPG'),
(32, '한우감자버섯죽', '베베쿡', '쌀,쇠고기육수,야채육수,애호박,한우,감자,새송이버섯,팽이버섯,양파,뽕잎분말', 'bebe_hanwoo_potato_mushroom_soup.JPG'),
(33, '닭살애호박죽', '베베쿡', '쌀,야채육수,닭가슴살,쥬키니,애호박,분유', 'bebe_chicken_young_pumpkin_soup.JPG'),
(34, '한우감자시금치죽', '베베쿡', '쌀,쇠고기육수,야채육수,한우,감자,시금치,뽕잎분말', 'bebe_hanwoo_potato_spinach_soup.JPG'),
(35, '고구마오트밀죽', '베베쿡', '쌀,고구마,당근,오트밀가루', 'bebe_sweetpotato_oatmeal_soup.JPG'),
(36, '한우야채죽', '베베쿡', '쌀,쇠고기육수,야채육수,한우,애호박,양배추,당근,양파,뽕잎분말', 'bebe_hanwoo_vegetable_soup.JPG'),
(37, '닭살단호박죽', '베베쿡', '쌀,야채육수,단호박,닭가슴살,분유,뽕잎분말', 'bebe_chicken_sweet_pumpkin_soup.JPG'),
(38, '한우청경채죽', '베베쿡', '쌀,쇠고기육수,야채육수,한우,청경채,양파,뽕잎분말', 'bebe_hanwoo_cheonggyeongchae_soup.JPG'),
(39, '고구마단호박죽', '베베쿡', '쌀,야채육수,고구마,단호박,당근', 'bebe_sweetpotato_sweet_pumpkin_soup.JPG'),
(40, '순두부대추죽', '베베쿡', '쌀,순두부,건대추,뽕잎분말', 'bebe_puretofu_jujube_soup.JPG'),
(41, '잔멸치무죽', '베베쿡', '쌀,야채육수,무,시금치,잔멸치', 'bebe_littleanchovy_raddish_soup.JPG'),
(42, '한우양배추죽', '베베쿡', '쌀,쇠고기육수,야채육수,한우,양배추,양파,뽕잎분말', 'bebe_hanwoo_lettuce_soup.JPG'),
(43, '브로콜리단호박죽', '베베쿡', '쌀,단호박,고구마,브로콜리', 'bebe_brocoli_sweet_pumpkin_soup.JPG'),
(44, '한우와야채영양죽', '베베쿡', '쌀,한우,쥬키니,당근,브로콜리,양파,뽕잎분말', 'bebe_hanwoo_vegetable_nutrition_soup.JPG'),
(45, '애호박다시마죽', '베베쿡', '쌀,애호박,건다시마,뽕잎분말', 'bebe_young_pumpkin_dacima_soup.JPG'),
(46, '두부청경채죽', '베베쿡', '쌀,두부,야채육수,쇠고기육수,청경채,얼갈이배추,양파', 'bebe_tofu_cheonggyeongchae_soup.JPG'),
(47, '배즙한우죽', '베베쿡', '쌀,한우,야채육수,쇠고기육수,배,청경채,양배추,뽕잎분말', 'bebe_pearl_juice_hanwoo_soup.JPG'),
(48, '두부야채죽', '베베쿡', '쌀,순두부,얼갈이배추,애호박,볶음콩가루,뽕잎분말', 'bebe_tofu_vegetable_soup.JPG'),
(49, '한우청경채죽', '베베쿡', '쌀,한우,야채육수,쇠고기육수,청경채,얼갈이배추,양파', 'bebe_hanwoo_cheonggyeongchae_soup.JPG'),
(50, '감자배추죽', '베베쿡', '쌀가루,감자,배추', 'bebe_potato_cabbage_soup.JPG'),
(51, '한우무죽', '베베쿡', '쌀가루,무,한우', 'bebe_hanwoo_raddish_soup.JPG'),
(52, '고구마오트밀죽', '베베쿡', '쌀,고구마,당근,오트밀가루', 'bebe_sweetpotato_oatmeal_soup.JPG'),
(53, '시금치치즈섞음밥', '베베쿡', '쌀,애호박,시금치,찹쌀,당근,양파,치즈,양파가루', 'bebe_spinach_cheese_rice.JPG'),
(54, '고구마단호박죽', '베베쿡', '쌀,야채육수,고구마,단호박,당근', 'bebe_sweetpotato_sweet_pumpkin_soup.JPG'),
(55, '한우야채죽', '베베쿡', '쌀,쇠고기육수,야채육수,한우,애호박,양배추,당근,양파,뽕잎분말', 'bebe_hanwoo_vegetable_soup.JPG'),
(56, '한우청경채죽', '베베쿡', '쌀,한우,야채육수,쇠고기육수,청경채,얼갈이배추,양파', 'bebe_hanwoo_cheonggyeongchae_soup.JPG'),
(57, '한우양배추죽', '베베쿡', '쌀,쇠고기육수,야채육수,한우,양배추,양파,뽕잎분말', 'bebe_hanwoo_lettuce_soup.JPG'),
(58, '브로콜리단호박죽', '베베쿡', '쌀,단호박,고구마,브로콜리', 'bebe_brocoli_sweet_pumpkin_soup.JPG'),
(59, '한우와야채영양죽', '베베쿡', '쌀,한우,쥬키니,당근,브로콜리,양파,뽕잎분말', 'bebe_hanwoo_vegetable_nutrition_soup.JPG'),
(60, '애호박다시마죽', '베베쿡', '쌀,애호박,건다시마,뽕잎분말', 'bebe_young_pumpkin_dacima_soup.JPG'),

(61, '쌀미음', '풀무원', '쌀가루,찹쌀가루', 'pul_rice_rice-water.JPG'),
(62, '사과미음', '풀무원', '쌀가루,찹쌀가루,사과퓨레', 'pul_apple_rice-water.JPG'),
(63, '청경채미음', '풀무원', '쌀가루,찹쌀가루,청경채', 'pul_cheonggyeongchae_rice-water.JPG'),
(64, '애호박미음', '풀무원', '쌀가루,찹쌀가루,애호박', 'pul_pumkin_rice-water.JPG'),
(65, '한우사과미음', '풀무원', '쌀가루,사과퓨레,쇠고기', 'pul_hanwoo_apple_rice-water.JPG'),
(66, '애호박감자미음', '풀무원', '쌀가루,증숙감자,애호박', 'pul_young_pumpkin_potato_rice-water.JPG'),
(67, '청경채고구마미음', '풀무원', '쌀가루,증숙고구마,청경채', 'pul_cheonggyeongchae_sweetpotato_rice-water.JPG'),
(68, '한우배미음', '풀무원', '쌀가루,배퓨레,쇠고기', 'pul_hanwoo_pearl_rice-water.JPG'),
(69, '단호박콜리플라워미음', '풀무원', '쌀가루,단호박퓨레,콜리플라워', 'pul_sweet_pumpkin_coliflower_rice-water.JPG'),
(70, '찹쌀브로콜리미음', '풀무원', '쌀가루,브로콜리', 'pul_brocolli_rice-water.JPG'),
(71, '사과양배추미음', '풀무원', '쌀가루,사과퓨레,양배추', 'pul_hanwoo_apple_onion_soup.JPG'),
(72, '닭가슴살단호박퓨레', '풀무원', '쌀가루,찹쌀가루,채소상탕,단호박퓨레,단호박,증숙고구마,양파퓨레', 'pul_chickenbreast_pumkin_puree.JPG'),
(73, '찹쌀달걀바나나죽', '풀무원', '쌀가루,찹쌀가루,채소상탕,유정란,단호박,증숙고구마,바바나퓨레,클로렐라원말', 'pul_chapsal_egg_banana_soup.JPG'),
(74, '한우두부퓨레', '풀무원', '찹쌀가루,두부,콜리플라워,쇠고기,증숙고구마,양파퓨레', 'pul_bean_carrot_tofu_soup.JPG'),
(75, '닭가슴살애호박당근죽', '풀무원', '쌀가루,닭가슴살,채소상탕,당근,애호박,양파퓨레,단호박퓨레,클로렐라원말', 'pul_chickenbreast_young_pumkin_carrot_soup.JPG'),
(76, '한우쌈배추적고구마퓨레', '풀무원', '쌀가루,쇠고기,채소상탕,양배추,무,양파퓨레,클로렐라원말', 'pul_hanwoo_brocolli_potato_soup.JPG'),
(77, '한우양배추무국', '풀무원', '쌀가루,쇠고기,채소상탕,무,양파퓨레,클로렐라원말', 'pul_hanwoo_lettuce_moo_soup.JPG'),
(78, '닭가슴살시금치퓨레', '풀무원', '쌀가루,찹쌀가루,채소상탕,감자,증숙감자,시금치퓨레,당근,양파퓨레', 'pul_chickenbreast_spinach_puree.JPG'),
(79, '한우당근양파죽', '풀무원', '쌀가루,쇠고기,채소상탕,양파퓨레,클로렐라원말', 'pul_chickenbreast_pumkin_carrot_soup.JPG'),
(80, '닭가슴살브로콜리감자퓨레', '풀무원', '쌀가루,찹쌀가루,채소상탕,증숙감자,닭가슴살,양배추,브로콜리', 'pul_chickenbreast_brocoli_potato_puree.JPG'),
(81, '두부단호박죽', '풀무원', '쌀가루,두부,채소상탕,증숙감자,단호박퓨레,클로렐라원말', 'pul_tofu_sweet_pumpkin_soup.JPG'),
(82, '청경채완두콩퓨레', '풀무원', '쌀가루,청경채,완두콩퓨레,증숙고구마,찹쌀가루,채소상탕', 'pul_cheonggyeongchae_wandobean_puree.JPG'),
(83, '닭가슴살적고구마죽', '풀무원', '쌀가루,찹쌀가루,채소상탕,증숙고구마,닭가슴살,양배추', 'pul_chickenbreast_red_sweetpotato_soup.JPG'),
(84, '한우바나나퓨레', '풀무원', '쌀가루,쇠고기,바나나퓨레,무,단호박,찹쌀가루,채소상탕', 'pul_hanwoo_banana_puree.JPG'),
(85, '청경채완두콩퓨레', '풀무원', '쌀가루,청경채,쌈배추,양파퓨레,클로렐라원말,채소상탕', 'pul_hanwoo_cabage_raddish_soup.JPG'),
(86, '한우고구마당근죽', '풀무원', '쌀가루,채소상탕,쇠고기,고구마,당근,양파퓨레,클로렐라원말', 'pul_cheonggyeongchae_wandobean_puree.JPG'),
(87, '한우브로콜리감자죽', '풀무원', '쌀가루,쇠고기,채소상탕,브로콜리,무,당근,클로렐라원말', 'pul_hanwoo_brocolli_potato_soup.JPG'),
(88, '시금치멸치닭죽', '풀무원', '쌀가루,닭가슴살,채소상탕,증숙고구마,시금치퓨레,멸치분말', 'pul_spinach_anchovy_chicken_soup.JPG'),
(89, '완두콩당근두부죽', '풀무원', '쌀가루,두부,채소상탕,완두콩퓨레,당근,증숙고구마,클로렐라원말', 'pul_wandobean_carror_tofu_soup.JPG'),
(90, '닭가슴살표고버섯죽', '풀무원', '쌀가루,닭가슴살,무,양파퓨레,증숙고구마,표고버섯,클로렐라원말', 'pul_chickenbreast_mushroom_soup.JPG'),
(91, '한우단호박양파죽', '풀무원', '쌀가루,당근,쌈배추,양파퓨레,단호박,클로렐라원말,채소상탕', 'pul_hanwoo_pumpkin_onion_soup.JPG');
(92, '한우오이양파죽', '풀무원', '쌀가루,당근,쌈배추,양파퓨레,오이,쇠고기,클로렐라원말,채소상탕', 'pul_hanwoo_cucumber_onion_soup.JPG');
(93, '한우브로콜리양파죽', '풀무원', '쌀가루,당근,브로콜리,쌈배추,양파퓨레,쇠고기,클로렐라원말,채소상탕', 'pul_hanwoo_brocolli_lettuce_soup.JPG');
(94, '두부달걀표고버섯죽', '풀무원', '쌀가루,당근,쌈배추,양파퓨레,표고버섯,계란,대두,클로렐라원말,채소상탕', 'pul_tofu_egg_pyogo_mushroom_soup.JPG');
(95, '팽이버섯달걀두부죽', '풀무원', '쌀가루,당근,팽이버섯,달걀,양파퓨레,두부,클로렐라원말,채소상탕', 'pul_pangi_mushroom_egg_tofu_soup.JPG');
(96, '닭가슴살청경채쌈배추죽', '풀무원', '쌀가루,찹쌀가루,청경채,채소상탕,증숙감자,닭가슴살,양배추', 'pul_chickenbreast_cheonggyeongchae_cabbage_soup.JPG'),
(97, '닭가슴살멸치당근죽', '풀무원', '쌀가루,당근,쌈배추,양파퓨레,클로렐라원말,당근,,닭가슴살,채소상탕', 'pul_chickenbreast_anchovy_carrot_rice.JPG');
(98, '아보카도단호박닭죽', '풀무원', '쌀가루,당근,양파퓨레,당근,클로렐라원말,닭가슴살,아보카도펄프,채소상탕', 'pul_abocado_sweet_pumpkin_chicken_soup.JPG');
(99, '사과바나나닭죽', '풀무원', '쌀가루,사과,닭가슴살,쌈배추,양파퓨레,단호박,클로렐라원말,채소상탕', 'pul_apple_banana_chicken_soup.JPG');
(100, '닭가슴살바나나죽', '풀무원', '쌀가루,바나나,닭가슴살,쌈배추,당근퓨레,무,클로렐라원말,채소상탕', 'pul_chicken_banana_soup.JPG');
(101, '고구마당근죽', '풀무원', '쌀가루,고구마,당근', 'pul_sweet_potato_pumpkin_soup.JPG'),
(102, '한우로메인죽', '풀무원', '쌀,쇠고기육수,야채육수,한우,로메인,쥬키니,양파', 'pul_hanwoo_romain_soup.JPG'),
(103, '순두부새송이죽', '풀무원', '쌀,야채육수,순두부,새송이버섯,비타민채', 'pul_pure_tofu_new_mushroom_soup.JPG'),
(104, '한우버섯죽', '풀무원', '쌀,쇠고기육수,야채육수,애호박,한우,감자,새송이버섯,팽이버섯,양파,뽕잎분말', 'pul_hanwoo_mushroom_soup.JPG'),
(105, '닭살애호박죽', '풀무원', '쌀,야채육수,닭가슴살,쥬키니,애호박,분유', 'pul_chicken_young_pumpkin_soup.JPG'),
(106, '한우감자시금치죽', '풀무원', '쌀,쇠고기육수,야채육수,한우,감자,시금치,뽕잎분말', 'pul_hanwoo_potato_spinach_soup.JPG'),
(107, '고구마오트밀죽', '풀무원', '쌀,고구마,당근,오트밀가루', 'pul_sweetpotato_oatmeal_soup.JPG'),
(108, '한우아욱죽', '풀무원', '쌀,쇠고기육수,야채육수,한우,쌀,아욱,뽕잎분말', 'pul_hanwoo_oak_soup.JPG'),
(109, '닭살단호박죽', '풀무원', '쌀,야채육수,단호박,닭가슴살,분유,뽕잎분말', 'pul_chicken_sweetpotato_soup.JPG'),
(110, '순두부대추죽', '풀무원', '쌀,순두부,건대추,뽕잎분말', 'pul_pure_tofu_jujube_soup.JPG'),
(111, '한우배추죽', '풀무원', '쌀,쇠고기육수,야채육수,한우,얼갈이배추,배추,양파,뽕잎분말', 'pul_hanwoo_cabbage_soup.JPG'),
(112, '한우대추찹쌀죽', '풀무원', '쌀,한우,야채육수,쇠고기육수,늙은호박,찹쌀,건대추', 'pul_hanwoo_jujube_chapsal_soup.JPG'),
(113, '단호박어린잎채소죽', '풀무원', '쌀,쇠고기육수,쌀,단호박,비타민채,당근,청경채,로메인,뽕잎분말', 'pul_pumpkin_young_leaves_vegetable_soup.JPG'),
(114, '닭살배추진밥', '풀무원', '쌀,닭가슴살,야채육수,배추,무,찹쌀,양파,분유,다시마가루,양파가루', 'pul_chicken_cabbage_real_rice.JPG'),
(115, '시금치치즈섞음밥', '풀무원', '쌀,애호박,시금치,찹쌀,당근,양파,치즈,양파가루', 'pul_spinach_cheese_mix_rice.JPG'),
(116, '한우대추죽', '풀무원', '쌀,한우,야채육수,쇠고기육수,늙은호박,찹쌀,건대추', 'pul_hanwoo_jujube_soup.JPG'),
(117, '삼색야채무른밥', '풀무원', '쌀,야채육수,단호박,당근,감자,찹쌀,비타민채,양파,참기름 ,뽕잎분말', 'pul_three_color_vegetable_notstrong_rice.JPG'),
(118, '한우아스파라거스진밥', '풀무원', '쌀,야채육수,한우,새송이버섯,찹쌀,당근,양파,아스파라거스,다진마늘,생강즙', 'pul_hanwoo_aspararus_rice.JPG'),
(119, '닭살들깨가루진밥', '풀무원', '쌀,야채육수,닭가슴살,애호박,새송이버섯,찹쌀,청경채,양파,다진마늘,생강즙', 'pul_chicken_perilla_rice.JPG'),
(120, '한우영양솥밥', '풀무원', '쌀,한우,야채육수,찹쌀,양송이버섯,밤,다진마늘,생강즙,참기름', 'pul_hanwoo_nutrition_sot_rice.JPG'),

(121, '순수쌀미음', '베이비본', '멥쌀', 'babybon_pure_sal_rice-water.JPG');
(121, '닭안심미음', '베이비본', '멥쌀, 닭고기', 'babybon_chicken_ansim_rice-water.JPG');
(122, '단호박미음', '베이비본', '멥쌀, 단호박', 'babybon_pumpkin_rice-water.JPG');
(123, '고구마미음', '베이비본', '멥쌀, 고구마', 'babybon_sweet_potato_rice-water.JPG');
(124, '한우미음', '베이비본', '멥쌀, 한우', 'babybon_hanwoo_rice-water.JPG');
(125, '감자미음', '베이비본', '멥쌀, 감자', 'babybon_potato_rice-water.JPG');
(126, '배미음', '베이비본', '멥쌀, 배', 'babybon_pearl_rice-water.JPG');
(127, '한우김가루죽', '베이비본', '멥쌀, 한우, 김가루', 'babybon_hanwoo_kimpowder_soup.JPG');
(128, '콜리플라워당근죽', '베이비본', '멥쌀, 콜리플라워, 당근', 'babybon_coliflower_carrot_soup.JPG');
(129, '단호박감자타락죽', '베이비본', '멥쌀, 단호박, 감자, 분유', 'babybon_sweet_pumpkin_potato_tarak_soup.JPG');
(130, '현미닭죽', '베이비본', '멥쌀, 닭가슴살, 사과, 현미', 'babybon_hyunmi_chicken_soup.JPG');
(131, '감자당근죽', '베이비본', '멥쌀, 감자, 당근', 'babybon_potato_carrot_soup.JPG');
(132, '한우배죽', '베이비본', '멥쌀, 배, 한우', 'babybon_hanwoo_pearl_soup.JPG');
(133, '찹쌀비타민닭죽', '베이비본', '멥쌀, 닭가슴살, 찹쌀, 비타민', 'babybon_chapsal_vitamin_chicken_soup.JPG');
(134, '완두단호박죽', '베이비본', '멥쌀, 단호박, 완두', 'babybon_hanwoo_sweet_pumpkin_soup.JPG');
(135, '수수고구마죽', '베이비본', '멥쌀, 고구마, 수수가루', 'babybon_susu_sweet_potato_soup.JPG');
(136, '콜리플라워닭죽', '베이비본', '멥쌀, 닭가슴살, 콜리플라워', 'babybon_coliflower_chicken_soup.JPG');
(137, '찹쌀배죽', '베이비본', '멥쌀, 배, 찹쌀, 차조', 'babybon_chapsal_pearl_soup.JPG');
(138, '고구마타락죽', '베이비본', '멥쌀, 고구마, 분유', 'babybon_sweet_potato_tarak_soup.JPG');
(139, '한우수수죽', '베이비본', '멥쌀, 한우, 배, 수수가루', 'babybon_hanwoo_susu_soup.JPG');
(140, '한우시금치죽', '베이비본', '멥쌀, 한우, 시금치', 'babybon_hanwoo_spinach_soup.JPG');
(141, '사과적양배추죽', '베이비본', '멥쌀,사과,붉은양배추', 'babybon_apple_red_lettuce_soup.JPG'),
(142, '배한우죽', '베이비본', '멥쌀,한우,배', 'babybon_pearl_hanwoo_soup.jpg'),
(143, '찹쌀비타민죽', '베이비본', '멥쌀,감자,비타민채,찹쌀가루', 'babybon_chapsal_vitamin_soup.JPG'),
(144, '브로콜리닭살죽', '베이비본', '멥쌀,닭가슴살,브로콜리,분유', 'babybon_brocoli_chicken_soup.JPG'),
(145, '찹쌀시금치죽', '베이비본', '멥쌀,찹쌀가루,시금치', 'babybon_chapsal_spinach_soup.JPG'),
(146, '시금치닭살죽', '베이비본', '멥쌀,닭가슴살,시금치,분유', 'babybon_spinach_chicken_soup.JPG'),
(147, '감자콜리플라워죽', '베이비본', '멥쌀,감자,콜리플라워', 'babybon_potato_coliflower_soup.JPG'),
(148, '한우무죽', '베이비본', '멥쌀,무,한우', 'babybon_hanwoo_raddish_soup.JPG'),
(149, '고구마당근죽', '베이비본', '멥쌀,고구마,당근', 'babybon_sweet_potato_carrot_soup.JPG'),
(150, '한우가지로메인죽', '베이비본', '멥쌀,쇠고기육수,가지,야채육수,한우,로메인,쥬키니,양파', 'babybon_hanwoo_eggplant_romain_soup.JPG'),
(151, '순두부버섯죽', '베이비본', '멥쌀,야채육수,순두부,새송이버섯,비타민채', 'babybon_pure_tofu_mushroom_soup.JPG'),
(152, '한우감자버섯죽', '베이비본', '멥쌀,쇠고기육수,야채육수,애호박,한우,감자,새송이버섯,팽이버섯,양파,뽕잎분말', 'babybon_hanwoo_potato_mushroom_soup.JPG'),
(153, '닭살애호박죽', '베이비본', '멥쌀,야채육수,닭가슴살,쥬키니,애호박,분유', 'babybon_chicken_young_pumpkin_soup.JPG'),
(154, '한우감자시금치죽', '베이비본', '멥쌀,쇠고기육수,야채육수,한우,감자,시금치,뽕잎분말', 'babybon_hanwoo_potato_spinach_soup.JPG'),
(155, '순두부감자오이죽', '베이비본', '멥쌀,감자,오이,순두부', 'babybon_pure_tofu_potato_cucumber_soup.JPG'),
(156, '한우강낭콩죽', '베이비본', '멥쌀,쇠고기육수,야채육수,한우,강낭콩,양배추,당근,양파,뽕잎분말', 'babybon_hanwoo_gangnag_bean_soup.JPG'),
(157, '닭살단호박죽', '베이비본', '멥쌀,야채육수,단호박,닭가슴살,분유,뽕잎분말', 'babybon_chicken_sweet_pumpkin_soup.JPG'),
(158, '한우청경채죽', '베이비본', '멥쌀,쇠고기육수,야채육수,한우,청경채,양파,뽕잎분말', 'babybon_hanwoo_cheonggyeongchae_soup.JPG'),
(159, '단호박고구마죽', '베이비본', '멥쌀,야채육수,고구마,단호박,당근', 'babybon_pumpkin_sweet_potato_soup.JPG'),
(160, '순두부대추죽', '베이비본', '멥쌀,배,대파,양파,콜리플라워,찹쌀', 'babybon_beet_pearl_soup.JPG'),
(161, '감자배추죽', '베이비본', '멥쌀,감자,배추,청경채', 'babybon_potato_cabbage_soup.JPG'),
(162, '한우미역깨죽', '베이비본', '멥쌀,미역,들깨,무,한우', 'babybon_hanwoo_miyeak_sesame_soup.JPG'),
(163, '고구마오트밀죽', '베이비본', '멥쌀,고구마,당근,오트밀가루', 'babybon_sweet_potato_oatmeal_soup.JPG'),
(164, '시금치감자죽', '베이비본', '멥쌀,시금치,찹쌀,감자,양파,치즈,양파가루', 'babybon_spinach_potato_soup.JPG'),
(165, '고구마단호박시금치죽', '베이비본', '멥쌀,야채육수,고구마,시금치,단호박,당근', 'babybon_sweet_potato_sweet_pumpkin_spinach_soup.JPG'),
(166, '한우가지연두부죽', '베이비본', '멥쌀,쇠고기육수,야채육수,한우,가지,두부,양배추,당근,양파', 'babybon_hanwoo_eggplane_tofu_soup.JPG'),
(167, '한우영양솥밥', '베이비본', '멥쌀,한우,야채육수,찹쌀,양송이버섯,밤,다진마늘,생강즙,참기름', 'babybon_hanwoo_nutrition_sot_rice.JPG'),
(168, '한우버섯밥', '베이비본', '멥쌀,쇠고기육수,야채육수,한우,양배추,버섯,양파,뽕잎분말', 'babybon_hanwoo_mushroom_rice.JPG'),
(169, '브로콜리단호박죽', '베이비본', '멥쌀,단호박,고구마,브로콜리', 'babybon_brocoli_sweet_pumpkin_soup.JPG'),
(170, '한우와야채영양죽', '베이비본', '멥쌀,한우,쥬키니,당근,브로콜리,양파,뽕잎분말', 'babybon_hanwoo_vegetable_nutrition_soup.JPG'),
(171, '애호박버섯죽', '베이비본', '멥쌀,애호박,버섯,건다시마,뽕잎분말', 'babybon_young_pumpkin_mushroom_soup.JPG'),
(172, '순두부대추죽', '베이비본', '멥쌀,순두부,건대추,뽕잎분말', 'babybon_pure_tofu_jujube_soup.JPG'),
(173, '한우배추진밥', '베이비본', '멥쌀,쇠고기육수,야채육수,한우,얼갈이배추,배추,양파,뽕잎분말', 'babybon_hanwoo_cabbage_real_rice.JPG'),
(174, '한우블루베리진밥', '베이비본', '멥쌀,한우,블루베리,야채육수,쇠고기육수', 'babybon_hanwoo_blueberry_real_rice.JPG'),
(175, '단호박어린잎채소죽', '베이비본', '멥쌀,쇠고기육수,쌀,단호박,비타민채,당근,청경채,로메인,뽕잎분말', 'babybon_chicken_cabbage_real_rice.JPG'),
(176, '닭살배추진밥', '베이비본', '멥쌀,닭가슴살,야채육수,배추,무,찹쌀,양파,분유,다시마가루,양파가루', 'babybon_chicken_cabbage_real_rice.JPG'),
(177, '닭살들깨가루진밥', '베이비본', '멥쌀,야채육수,닭가슴살,애호박,새송이버섯,찹쌀,청경채,양파,다진마늘,생강즙', 'babybon_chicken_perilla_rice.JPG'),
(178, '한우대추죽', '베이비본', '멥쌀,한우,야채육수,쇠고기육수,늙은호박,찹쌀,건대추', 'babybon_hanwoo_jujube_soup.JPG'),
(179, '삼색야채무른밥', '베이비본', '멥쌀,야채육수,단호박,당근,감자,찹쌀,비타민채,양파,참기름 ,뽕잎분말', 'babybon_three_color_vegetable_rice.JPG'),
(180, '한우아스파라거스진밥', '베이비본', '멥쌀,야채육수,한우,새송이버섯,찹쌀,당근,양파,콩나물,다진마늘,생강즙', 'babybon_hanwoo_bean_namul_real_rice.JPG'),


-- --------------------------------------------------------

--
-- 테이블 구조 `ingreinfo`
--

DROP TABLE IF EXISTS `ingreinfo`;
CREATE TABLE `ingreinfo` (
  `ingre_id` int(10) NOT NULL,
  `ingre` int(15) NOT NULL,
  `protein` int(1) NOT NULL,
  `calcium` int(1) NOT NULL,
  `iron` int(1) NOT NULL,
  `zinc` int(1) NOT NULL,
  `vitaA` int(1) NOT NULL,
  `vitaB` int(1) NOT NULL,
  `vitaC` int(1) NOT NULL,
  `vitaD` int(1) NOT NULL,
  `vitaE` int(1) NOT NULL,
  `vitaK` int(1) NOT NULL,
  `allergy` int(1) NOT NULL,
  `period` varchar(10) NOT NULL,
  `image` varchar(50) NOT NULL,
  `no1recfood` varchar(10) NOT NULL,
  `no2recfood` varchar(10) NOT NULL,
  `no3recfood` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ingredient in babymeal material';

--
-- 테이블의 덤프 데이터 `ingreinfo`
--

INSERT INTO `ingreinfo` (`ingre_id`, `ingre`, `protein`, `calcium`, `iron`, `zinc`, `vitaA`, `vitaB`, `vitaC`, `vitaD`, `vitaE`, `vitaK`, `allergy`, `period`, `image`, `no1recfood`, `no2recfood`, `no3recfood`) VALUES
(1, 0, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 1, 'early', '', '브로콜리배죽', '브로콜리생선죽', ''),
(2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'early', '', '', '', ''),
(3, 0, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1, 0, 'early', '', '', '', ''),
(4, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'early', '', '', '', ''),
(5, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'middle', '', '', '', ''),
(6, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 'middle', '', '', '', ''),
(7, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 1, 1, 'middle', '', '', '', ''),
(8, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 'middle', '', '', '', ''),
(9, 0, 1, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 'middle', '', '', '', ''),
(10, 0, 1, 1, 0, 1, 1, 1, 1, 0, 1, 0, 1, 'middle', '', '', '', ''),
(11, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 'middle', '', '', '', ''),
(12, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0, 1, 'middle', '', '', '', ''),
(13, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 'middle', '', '', '', ''),
(14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'middle', '', '', '', ''),
(15, 0, 1, 1, 1, 1, 0, 1, 0, 0, 1, 0, 1, 'middle', '', '', '', ''),
(16, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'middle', '', '', '', ''),
(17, 0, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 1, 'middle', '', '', '', ''),
(18, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 'middle', '', '', '', ''),
(19, 0, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 'middle', '', '', '', ''),
(20, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 'middle', '', '', '', ''),
(21, 0, 1, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, 'middle', '', '', '', ''),
(22, 0, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 1, 'middle', '', '', '', ''),
(23, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 1, 0, 'middle', '', '', '', ''),
(24, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'middle', '', '', '', ''),
(25, 0, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 1, 'middle', '', '', '', ''),
(26, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 'middle', '', '', '', ''),
(27, 0, 1, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 'middle', '', '', '', ''),
(28, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'end', '', '', '', ''),
(29, 0, 1, 0, 0, 0, 1, 1, 1, 0, 1, 0, 1, 'middle', '', '', '', ''),
(30, 0, 1, 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 'end', '', '', '', ''),
(31, 0, 1, 1, 1, 1, 0, 1, 0, 0, 1, 0, 0, 'end', '', '', '', ''),
(32, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 'end', '', '', '', ''),
(33, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'middle', '', '', '', ''),
(34, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 'middle', '', '', '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `meminfo`
--

DROP TABLE IF EXISTS `meminfo`;
CREATE TABLE `meminfo` (
  `mem_id` varchar(15) NOT NULL,
  `password` varchar(20) NOT NULL,
  `mem_name` varchar(20) NOT NULL,
  `mem_gender` varchar(1) NOT NULL,
  `baby_name` varchar(20) NOT NULL,
  `baby_gender` varchar(1) NOT NULL,
  `baby_month` int(10) NOT NULL,
  `baby_height` float NOT NULL,
  `baby_weight` float NOT NULL,
  `skinproblem` int(10) DEFAULT NULL,
  `allergy` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='member information';

--
-- 테이블의 덤프 데이터 `meminfo`
--

INSERT INTO `meminfo` (`mem_id`, `password`, `mem_name`, `mem_gender`, `baby_name`, `baby_gender`, `baby_month`, `baby_height`, `baby_weight`, `skinproblem`, `allergy`) VALUES
('p1', '1234', '오병호', 'M', '오주석', 'M', 2, 47.5, 3.3, 1, '땅콩'),
('p10', '1234', '송가경', 'W', '차현', 'W', 18, 82.6, 11.72, 1, '계란'),
('p11', '1234', '강세라', 'W', '배타미', 'W', 21, 85.1, 12.3, 1, '복숭아'),
('p2', '1234', '김주완', 'M', '김노아', 'M', 4, 65.9, 7.58, 0, '계란'),
('p3', '1234', '권수빈', 'W', '김현정', 'W', 6, 67.4, 8.07, 1, '복숭아'),
('p4', '1234', '권수지', 'W', '오수진', 'W', 8, 73.51, 7.03, 1, '갑각류'),
('p5', '1234', '이미나', 'W', '장은빈', 'W', 9, 72.84, 11.26, 0, '우유'),
('p6', '1234', '김민지', 'W', '김사라', 'W', 10, 74.65, 9.45, 0, '땅콩, 계란'),
('p7', '1234', '차승훈', 'M', '차승민', 'M', 12, 80.1, 11, 0, '대두'),
('p8', '1234', '김휘동', 'M', '김짱구', 'M', 15, 87.34, 15.34, 0, '계란, 복숭아, 갑각류'),
('p9', '1234', '이문혁', 'M', '이다희', 'W', 17, 80.3, 8.21, 1, '땅콩');

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `babymeal`
--
ALTER TABLE `babymeal`
  ADD PRIMARY KEY (`product_id`);

--
-- 테이블의 인덱스 `ingreinfo`
--
ALTER TABLE `ingreinfo`
  ADD PRIMARY KEY (`ingre_id`);

--
-- 테이블의 인덱스 `meminfo`
--
ALTER TABLE `meminfo`
  ADD PRIMARY KEY (`mem_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

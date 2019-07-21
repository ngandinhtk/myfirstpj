-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2019 at 11:25 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bakeryshopdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(101, 'Kimngan', 'password'),
(102, 'admin02', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `blogid` int(11) NOT NULL,
  `image_link` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`title`, `date`, `content`, `blogid`, `image_link`, `description`) VALUES
('What To Know Before You Bake Cupcakes', '2019-06-04', 'Ever wondered why our cupcakes look so uniform? This is a handy tool we use for both scooping out cupcakes, but also layer cakes and frostings.\r\nIt allows you to get even measurements for both the batter mixtures to bake your sponge and also your frostings so that these can be equal across the batch.\r\nIt’s a lot easier than using normal spoons and the quick release mechanism ensures the scoop is nice and clean for each serving.\r\n \r\nWe recommend getting your food portioning scoop from a specialist cake shop online or catering supplier. At a pinch, ice cream scoops can work too!\r\nOvens often operate at different temperatures to what we assume. This could mean that they are too hot or too cool which in turn affects the overall cooking time, leading to overcooked in the case of too hot or under-baked in the case of too cool.\r\nOven thermometers are a cheap and easy way of calibrating your oven so that you are sure you are baking at the correct temperature every time.\r\n', 1, 'b1.jpg', 'Ever wondered why our cupcakes look so uniform? This is a handy tool we use for both scooping out cupcakes, but also layer cakes and frostings.'),
('Bake it for Babies 2019', '2019-04-08', 'Each week, around 10 seemingly healthy babies in the UK die suddenly and unexpectedly. The Lullaby Trust funds research into the causes and prevention of sudden infant death, supports families bereaved by the death of a baby or toddler and raises awareness of safer sleep for babies.\r\nTaking part in Bake it for Babies is an incredibly easy and fun way to help save lives. Anyone can get involved, whether you’re a whizz with a whisk or just starting to dabble with dough. Get friends, family and colleagues to join in and make something yummy for money!\r\n \r\nWhen you sign up for Bake it for Babies you’ll receive a free fundraising pack full of all the ingredients you need to make your bake sale a showstopper. What’s more, once you confirm the date and location of your event, you’ll receive a free Lullaby Trust t-shirt and cake toppers.\r\n', 3, 'b2.jpg', 'Taking part in Bake it for Babies is an incredibly easy and fun way to help save lives. Anyone can get involved, whether you’re a whizz with a whisk or just starting to dabble with dough.'),
('What is Red Velvet Cake?', '2018-12-20', 'We are obsessed with it and certainly have enjoyed our fair share of it at The Hummingbird Bakery, but what exactly is our bestselling Red Velvet flavour and where did this mysterious recipe come from?\r\n \r\nWhere does Red Velvet cake come from?\r\nRed Velvet cake hails from the Southern United States and is a red vanilla sponge made with buttermilk and cocoa to give it a unique flavour and a light taste of chocolate.\r\n \r\nBut if you’re in London and want to try the real deal, your Red Velvet cake most certainly comes from us! (Or at least that’s what we hope...!)\r\n \r\nWhen was Red Velvet cake first made?\r\nFirst mentions of Red Velvet cake go back 200 years or thereabouts to the 19th century, so it has long been a favourite dessert across America.\r\n\r\n \r\nWhat is Red Velvet cake frosted with?\r\nIt is usually topped with cream cheese frosting or, in some recipes, with a roux icing (sometimes called boiled milk frosting, flour buttercream or ermine frosting) that is made in a saucepan. Sometimes they are frosted with buttercream, but at our bakeries we use cream cheese frosting because we are fans of its tangy flavour.\r\n', 4, 'b3.jpg', '\r\nWhere does Red Velvet cake come from?\r\nRed Velvet cake hails from the Southern United States and is a red vanilla sponge made with buttermilk and cocoa to give it a unique flavour and a light taste of chocolate.'),
('Sweet baking ideas for Valentine’s Day', '2019-02-10', 'Everything turns heart-shaped around Valentine’s Day – and cakes are no exception! If you have a heart-shaped baking tin you’d like to try out, you can adapt your recipes with a little practice to work in your new tin.\r\nIf you’re working from a recipe, it’s worth remembering that changing the dimensions of the tin will alter the cooking times and thus your sponge may need more or less time depending on the size you want the cake to be.\r\nAs a guideline, only fill your cake tin two-thirds full to leave rising room and test that the centre of the sponge is cooked through with a metal skewer – if it comes out cleanly it is ready.\r\nAn oven thermometer will help you to check you are baking at the correct temperature.\r\nExperiment with a few attempts to get the timing right, especially if the cake is for a special occasion. Even The Hummingbird Bakery’s recipe developers need a few goes to get their bakes right!  \r\n \r\n\r\n', 5, 'b4.jpg', 'Everything turns heart-shaped around Valentine’s Day – and cakes are no exception! If you have a heart-shaped baking tin you’d like to try out, you can adapt your recipes with a little practice to work in your new tin.\r\n'),
('Ideas for baking with the kids', '2018-10-18', 'Stay safe in the kitchen and explain the dangers when cooking around sharp knives and hot ovens. Doing this before you start to measure out any ingredients is a good idea as children are less likely to be distracted by all the delicious food around them.\r\nChoose an easy recipe to follow and measure out all the ingredients beforehand.\r\nReading through the steps first will help kids to learn how to follow a recipe correctly in stages.\r\nRunny golden syrup, melted chocolate, handfuls of sprinkles and lots of flour – needless to say, your kitchen may be a little on the messy side following an afternoon baking with the kids.\r\nMaking a mess around the mixing bowl is all part of the fun, though it’s always worthwhile getting little hands to have a go at the washing up bowl too!\r\nAdding colour to frosting is lots of fun and allows children to see just how different coloured toppings are made.\r\nLet them stir the food colouring in and watch the frosting magically change colour. Decorating is a chance to really let loose!\r\n', 6, 'b5.jpg', '\r\nRunny golden syrup, melted chocolate, handfuls of sprinkles and lots of flour – needless to say, your kitchen may be a little on the messy side following an afternoon baking with the kids.'),
('A history of the cupcake', '2019-05-16', 'There is no single inventor of the cupcake. The history of the cupcake isn’t entirely clear as most recipes were developed in home kitchens and passed down through families and friends, with adaptations often made out of ease or convenience.  \r\nIt is likely that the small size, dainty appearance and individual portioning made the cupcake an easy alternative to the rituals of slicing a whole cake and serving with forks. The heat of an oven was also an expense and reducing the size of the cakes to be baked was economical.  \r\nFurthermore, as we know from baking cupcakes with our little ones, their size and shape is great for children and for sharing, making them a handy dessert for birthday parties and celebrations. And let’s face it: no one likes to share cake!\r\nAs we know from our many-shaped novelty cake tins out there, cake mixture can be baked into virtually any shape. It’s likely that little teacups, ceramic cups or ramekins, rather than a specially shaped tin or paper cases, became the first foray into cup-shaped cakes.  \r\nLike with many foods, advances in food technology allowed cakes to travel. Commercial shop-bought cupcakes appeared around 1919 when American bakery company Hostess introduced a single-portioned ‘CupCake’ as a snack cake.  \r\n', 7, 'b6.jpg', 'The history of the cupcake isn’t entirely clear as most recipes were developed in home kitchens and passed down through families and friends, with adaptations often made out of ease or convenience.  ');

-- --------------------------------------------------------

--
-- Table structure for table `catalog`
--

CREATE TABLE `catalog` (
  `id` int(11) NOT NULL,
  `products_log` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `catalog`
--

INSERT INTO `catalog` (`id`, `products_log`) VALUES
(1, 'cakes'),
(2, 'cupcakes'),
(3, 'weddingcake');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `name` varchar(30) COLLATE utf32_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf32_unicode_ci NOT NULL,
  `content` text COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`name`, `email`, `content`) VALUES
('q', 'ngandinhtk@gmail.com', 'Ã¡d'),
('qÆ°e', 'ngandinhtk@gmail.com', 'qqqsdasd'),
('qÆ°e', 'ngandinhtk@gmail.com', 'qqqsdasd'),
('ngÃ¢n', 'ngandinhtk02@gmail.c', 'Ä‘Ã¢y lÃ  cÃ²mment'),
('XiaomÃ¬', 'ngandinhtk02@gmail.c', 'xin chÃ o'),
('Ngan đinh', 'ngandinhtk@gmail.com', 'xin chào'),
('Xiaomi', 'ngandinhtk02@gmail.c', 'Đây là comment'),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `corporate`
--

CREATE TABLE `corporate` (
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `bill_id` int(11) NOT NULL,
  `user_address` varchar(40) COLLATE utf32_unicode_ci NOT NULL,
  `user_email` varchar(40) COLLATE utf32_unicode_ci NOT NULL,
  `user_name` varchar(40) COLLATE utf32_unicode_ci NOT NULL,
  `phone` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`bill_id`, `user_address`, `user_email`, `user_name`, `phone`) VALUES
(2, 'TPhcm', 'ngandinhtk02@gmail.com', 'Ngan Dinh ', 908027603);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `bill_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `total_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`bill_id`, `quantity`, `product_id`, `product_name`, `total_price`) VALUES
(2, 1, 7, 'Mile High Chocolate Salted Caramel Cake', 67),
(2, 1, 8, 'Lemon Raspberry Ripple Cake', 97);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `calalog_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(800) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `calalog_id`, `name`, `price`, `image_link`, `description`) VALUES
(7, 1, 'Mile High Chocolate Salted Caramel Cake', 67, 'cakes1.jpg', 'Are you ready to join the Mile High club? We’re talking a first-class ticket to a slice of sensational Chocolate Salted Caramel Cake, cheeky! Soaring sky-high, this decadent cake has six layers of the richest chocolate sponge imaginable sandwiched with golden salted caramel, smothered with chocolate frosting and scattered with caramel curls. It’s as naughty as it sounds.\r\nOur cakes are freshly baked to order from scratch at each of our bakeries using quality ingredients, and we pride ourselves in not using preservatives.\r\n'),
(8, 1, 'Lemon Raspberry Ripple Cake', 30, 'cakes2.jpg', 'When life gives us lemonsâ€¦ we make Lemon Raspberry Ripple Cake! Fresh lemon sponge layered with raspberry jam and lemon cream cheese frosting. Juicy raspberries and the sharpness of zingy lemon zest lift this classic sponge cake.\r\nOur cakes are freshly baked to order from scratch at each of our bakeries using quality ingredients, and we pride ourselves in not using preservatives. \r\nThe Lemon Raspberry Ripple Cake contains 3-layers of sponge.\r\n'),
(9, 1, 'Made Without Gluten - Red Velvet Cake', 31, 'cakes3.jpg', 'Our customersâ€™ all-time favourite. Three layers of deep red vanilla cake with a light taste of chocolate, topped with cream cheese frosting. This decadent layer cake is sure to please.\r\nBecause The Hummingbird Bakeryâ€™s â€˜Made Withoutâ€™ range is made using no gluten containing ingredients*, youâ€™ll never have to go without.\r\nOur cakes are freshly baked to order from scratch at each of our bakeries using quality ingredients, and we pride ourselves in not using preservatives.'),
(10, 1, 'Rainbow Number Cake', 30, 'cakes4.jpg', 'We make finding a magical birthday cake as easy as 1,2,3! Whichever number you are celebrating, our irresistible Number Cakes topped with rainbow sprinkles will only add to the party fun. Layers of rainbow coloured vanilla sponge baked fresh onsite at our bakeries to our authentic American recipe smothered in your choice of chocolate or vanilla buttercream frostings customisable in a range of colours.\r\nOur cakes are freshly baked from scratch at each of our bakeries using quality ingredients, and we pride ourselves in not using preservatives.  Our Rainbow Cakes contain 6-layers of sponge.\r\n'),
(11, 1, 'Carrot Cake', 29, 'cakes5.jpg', 'Three layers of moist sponge, walnuts, and freshly grated carrots; spiced with cinnamon and nutmeg.\r\nOur cakes are freshly baked to order from scratch at each of our bakeries using quality ingredients, and we pride ourselves in not using preservatives. \r\n'),
(12, 1, 'Snickers Cheesecake', 35, 'cakes6.jpg', 'It took a few marathon baking sessions to come up with an 8\" cheesecake that tasted just like a Snickers bar, but we think youâ€™ll go nuts for this recipe. A crushed Oreo biscuit base topped with a smooth chocolate cheesecake which weâ€™ve stirred generous pieces of Snickers into and covered in caramel sauce, milk and dark chocolate drizzles.\r\nOur cheesecakes are freshly baked to order from scratch at each of our bakeries using quality ingredients, and we pride ourselves in not using preservatives. \r\n'),
(13, 1, 'Maltesers Cheesecake', 35, 'cakes7.jpg', 'If youâ€™re a Maltesers fan, youâ€™ll have a ball with this retro fabulous Maltesers Cheesecake. A crushed Oreo biscuit base topped with luxurious malt dark chocolate cheesecake, malt milk chocolate cheesecake and a final layer of fresh malty whipped cream. A few Maltesers around the edge finish this 8\" malty marvel.\r\nOur cheesecakes are prepared to order from scratch at each of our bakeries using quality ingredients, and we pride ourselves in not using preservatives.\r\n'),
(14, 1, 'Pink Ombre Cake', 35, 'cupcakes8.jpg', 'Prepare for the wow moment! Reveal a colourful sponge surprise when you slice into our ombrÃ© cakes. Layers of light American-recipe vanilla sponge cake arranged in a beautiful gradient of pink coloured sponges from light at the top to dark on the bottom layer covered in smooth vanilla buttercream. Add writing to personalise your ombrÃ© cake with a name or special message.'),
(15, 1, 'Vanilla Cake', 28, 'cakes9.jpg', 'You canâ€™t get more classic than this â€“ layers of light, moist yellow vanilla sponge, with plenty of vanilla or chocolate buttercream frosting. Our vanilla frosting can be coloured a delightful blue, green, pink or yellow. If you pick sprinkles on the vanilla frosting, these will be colourful stars and strands. If you pick sprinkles on the chocolate frosting, these will be tasty chocolate curls.\r\nOur cakes are freshly baked from scratch at each of our bakeries using quality ingredients, and we pride ourselves in not using preservatives.  The round Vanilla Sponge Cakes contain 3-layers of sponge, whilst the sheetcake contains 2-layers.\r\n'),
(16, 2, 'Chocolate Cupcakes', 3, 'cupcakes1.jpg', 'Fluffy chocolate sponge with a light buttercream frosting in vanilla or chocolate. Vanilla frosting can be coloured a delightful blue, green, pink or yellow. If you pick sprinkles on the vanilla frosting, these will be colourful stars and strands. If you pick sprinkles on the chocolate frosting, these will be tasty chocolate vermicelli sprinkles.\r\nOur cupcakes are freshly baked to order from scratch at each of our bakeries using quality ingredients, and we pride ourselves in not using preservatives. \r\n'),
(17, 2, 'Vanilla Cupcakes', 3, 'cupcakes2.jpg', ''),
(18, 2, 'Vegan Red Velvet Cupcakes', 4, 'cupcakes3.jpg', 'Going vegan doesnâ€™t mean going without, especially not where our bestselling cupcake is\r\nconcerned. Judging by its irresistible taste and light texture made to our secret\r\nHummingbird Bakery recipe, we think this is absolutely the best and most authentic vegan Red Velvet out there. This is a deep red vanilla cake with a light taste of chocolate, topped with a vegan cream cheese frosting.\r\nOur cupcakes are freshly baked to order from scratch at each of our bakeries using quality ingredients, and we pride ourselves in not using preservatives. \r\n'),
(19, 2, 'Cookies and Cream Cupcakes', 4, 'cupcakes4.jpg', 'Is it a cookiecake? Is it a cupcookie? Weâ€™re undecided, but either way, itâ€™s 100% irresistible. Pour yourself a cold glass of milk and get ready for chunks of OreoÂ® cookies swirled through smooth vanilla frosting and rich chocolate sponge with cookie chunks baked in. Far too delicious to dunk...\r\nOur cupcakes are freshly baked to order from scratch at each of our bakeries using quality ingredients, and we pride ourselves in not using preservatives. \r\n'),
(20, 2, 'Monthly Special: Banoffee Cupcakes', 3, 'cupcakes5.jpg', 'Banoffee Pie with whipped cream, sliced fresh bananas, thick caramel and chocolate shavings might just be one of our favourite American desserts. We think Banoffee Pie fans will love this indulgent Banoffee Cupcake with a light sponge made with fresh banana and digestive biscuit pieces filled with dulce de leche and topped with banana cream cheese frosting and a generous scattering of chocolate curls and crushed biscuits. Dig in and enjoy!\r\nOur cupcakes are freshly baked to order from scratch at each of our bakeries using quality ingredients, and we pride ourselves in not using preservatives. \r\n'),
(21, 2, 'Black Bottom Cupcakes', 4, 'cupcakes6.jpg', 'A decadent, dark and dense chocolate sponge, baked with a cheesecake centre, and frosted with cream cheese frosting.\r\nOur cupcakes are freshly baked to order from scratch at each of our bakeries using quality ingredients, and we pride ourselves in not using preservatives\r\n'),
(22, 2, 'Nutella Cupcakes', 3, 'cupcakes7.jpg', 'Getting the perfect Nutella cupcake with a smooth Nutella filling, rich hazelnut and chocolate Nutella frosting and fluffy chocolate sponge is a hard nut to crack... But our bakers have done it! The Nutella cupcake is one delicious creation thatâ€™s nut to be missed.\r\nOur cupcakes are freshly baked to order from scratch at each of our bakeries using quality ingredients, and we pride ourselves in not using preservatives. \r\n'),
(23, 2, 'Carrot Cupcakes', 3, 'cupcakes8.jpg', 'Made with beautifully moist sponge, freshly grated carrots and walnuts, spiced with cinnamon, ground ginger and nutmeg. Topped with cream cheese frosting and cinnamon.\r\nOur cupcakes are freshly baked to order from scratch at each of our bakeries using quality ingredients, and we pride ourselves in not using preservatives. \r\n'),
(24, 2, 'Salted Caramel Cupcakes', 3, 'cupcakes9.jpg', 'Strike gold with the Salted Caramel Cupcake, scattered with real Maldon sea salt. Dig through light chocolate sponge and youâ€™ll uncover a golden centre of indulgent dulce de leche hidden by our signature caramel frosting. Youâ€™ll treasure every crumb!\r\nOur cupcakes are freshly baked to order from scratch at each of our bakeries using quality ingredients, and we pride ourselves in not using preservatives. \r\n'),
(25, 3, 'Rustic Wedding Cake', 210, 'Wedding1.jpg', 'Layers of light sponge frosted with a rustic, textured finish.\r\n\r\nOur wedding cakes are freshly baked to order from scratch using quality ingredients, and we pride ourselves in not using preservatives. '),
(26, 3, 'Rainbow Sprinkles Wedding Cake', 208, 'Wedding2.jpg', 'Smoothly frosted layers of sponge with a rainbow sprinkle design on the front edge of each tier.\r\n\r\nOur wedding cakes are freshly baked to order from scratch at each of our bakeries using quality ingredients, and we pride ourselves in not using preservatives.'),
(27, 3, 'Red Velvet Wedding Cake', 200, 'wedding3.jpg', 'Classic Hummingbird Bakery banded-style design with Red Velvet sponge crumbs around the edge of each tier.\r\n\r\nOur wedding cakes are freshly baked to order from scratch using quality ingredients, and we pride ourselves in not using preservatives. '),
(28, 3, 'Wedding Band Cake', 220, 'wedding4.jpg', 'A classic Hummingbird Bakery-style hand-finished design in sleek, banded frosting.\r\nOur wedding cakes are freshly baked to order from scratch using quality ingredients, and we pride ourselves in not using preservatives. '),
(29, 3, 'OmbrÃ© Sponge Wedding Cake', 200, 'Wedding5.jpg', 'Tiered cake with pink ombre-effect sponge and a classic Hummingbird Bakery-style banded frosting design.\r\n\r\nOur wedding cakes are freshly baked to order from scratch at each of our bakeries using quality ingredients, and we pride ourselves in not using preservatives. '),
(30, 3, 'Snowfall Wedding Cake', 215, 'Wedding6.jpg', 'Layers of sponge with classic Hummingbird Bakery-style banded frosting design, decorated by hand with edible white nonpareil sprinkles.\r\nOur wedding cakes are freshly baked to order from scratch using quality ingredients, and we pride ourselves in not using preservatives. ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `address`, `phone`) VALUES
(11, 'Ngan Kim', 'ngandinhtk@gmail.com', '1111111', '245 Ba Hom', '0908027603'),
(13, 'Nguyen Thoi', 'ngandinhtk02@gmail.com', '12112', 'TPhcm', '0909444222'),
(18, 'ngandinh01', 'ngandinhtk@gmail.com', '111111', '245 Ba Hom', '0908027603'),
(19, 'ngandinh01', 'ngandinhtk02@gmail.com', '0908908729', '79 Cach Mang Thang 8', '123'),
(20, 'kimngan9', 'ngandinhtk02@gmail.com', '0908027603', '67 Pham Van Chi', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blogid`);

--
-- Indexes for table `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`bill_id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`bill_id`,`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_product_calatog` (`calalog_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `blogid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_product_calatog` FOREIGN KEY (`calalog_id`) REFERENCES `catalog` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

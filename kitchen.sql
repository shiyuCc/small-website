-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2015 at 01:06 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kitchen`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE IF NOT EXISTS `account` (
  `user` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`user`, `password`) VALUES
('123', '1234'),
('admin', 'admin'),
('chenwei', 'dhjakdfka'),
('dasdas', '32131'),
('eds', 'sadad'),
('eqwe', '1231'),
('fsdaaf', 'eqweq'),
('guest', '123'),
('jkhkj', 'dsdad'),
('qweq', '123'),
('shiyu', '123456'),
('test', 'qwerasdf'),
('weqw', 'sdqadqwd'),
('zasd', 'wqe');

-- --------------------------------------------------------

--
-- Table structure for table `hits`
--

CREATE TABLE IF NOT EXISTS `hits` (
  `recipe_id` int(50) NOT NULL,
  `num` int(200) NOT NULL,
  PRIMARY KEY (`recipe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hits`
--

INSERT INTO `hits` (`recipe_id`, `num`) VALUES
(1, 3),
(2, 9),
(3, 10),
(4, 7),
(5, 11),
(6, 8),
(7, 2),
(8, 6),
(9, 5),
(10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE IF NOT EXISTS `ingredients` (
  `ingredient_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `unit` varchar(10) NOT NULL,
  PRIMARY KEY (`ingredient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`ingredient_id`, `name`, `unit`) VALUES
(1, 'fish', 'grams'),
(2, 'chicken', 'grams'),
(3, 'beef', 'grams'),
(4, 'pork', 'grams'),
(5, 'lamb', 'grams'),
(6, 'asparagus', 'grams'),
(7, 'carrot', 'grams'),
(8, 'agaric', 'grams'),
(9, 'soy sauce', 'tablespoon'),
(10, 'rice wine', 'tablespoon'),
(11, 'oil', 'tablespoon'),
(12, 'ginger', 'grams'),
(13, 'garlic', 'grams'),
(14, 'vermicelli', 'grams'),
(15, 'salt', 'teaspoon'),
(16, 'sugar', 'teaspoon'),
(17, 'scallion', 'grams'),
(18, 'chili', 'grams'),
(19, 'thick bean sauce', 'grams'),
(20, 'bamboo shoot', 'grams'),
(21, 'vinegar', 'teaspoon'),
(22, 'eggplant', 'grams'),
(23, 'potato', 'grams'),
(24, 'onion', 'grams'),
(25, 'curry', 'grams'),
(26, 'broccoli', 'grams'),
(27, 'spare ribs', 'grams');

-- --------------------------------------------------------

--
-- Table structure for table `recipe`
--

CREATE TABLE IF NOT EXISTS `recipe` (
  `recipe_id` int(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(1000) NOT NULL,
  PRIMARY KEY (`recipe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recipe`
--

INSERT INTO `recipe` (`recipe_id`, `name`, `description`) VALUES
(1, 'Kung Pao Chicken', 'Mix together cornstarch and 1 tbsp. of the soy sauce in a medium bowl, add chicken, toss well, and set aside to marinate for 30 minutes. Meanwhile, mix together the remaining 3 tbsp. soy sauce, rice wine, sugar, stock, vinegar, sesame oil, and dark soy sauce. Set aside.Heat peanut oil in a wok or large nonstick skillet over high heat until just beginning to smoke. Add chiles, half the scallions, garlic, ginger, and chicken and stir-fry until chicken is golden, 3minutes. Add soy sauce mixture and stir-fry until sauce thickens, about 2 minutes. Stir in peanuts. Garnish with remaining scallions.'),
(2, 'Ants climbing a tree', 'Place noodles and 4 cups boiling water in a bowl; let sit until soft, about 4 minutes. Drain and toss noodles with sesame oil; set aside.Heat canola oil in a 14" flat-bottomed wok over medium-high heat. Add pork; cook, breaking up meat, until browned, 5 to 7 minutes. Add garlic and ginger; cook, stirring, until fragrant, about 1 minute. Add paste, light soy, wine, and stock; bring to a boil. Add noodles; cook, stirring occasionally, until liquid is reduced by half, 8 to 10 minutes more, and stir in dark soy and chives.'),
(3, 'steamed perch', 'Cut 4 of the salad onions into 6cm lengths, then cut these lengthways into fine strips, keeping the green and white parts separate. Wash and peel the ginger, retaining the skin. Slice the peeled ginger lengthways, then cut the slices into long strips.\r\nShortly before cooking, rinse the fish in cold water and pat it dry. Crush the remaining 2 salad onions with the side of a cleaver blade. Make 3 or 4 shallow diagonal slashes on each side of the fish. Rub it inside and out with a little salt and the rice wine; place the ginger skin and crushed salad onion in the cavity and leave to marinate for 10-15 minutes.\r\nDiscard any juices, pat the fish dry, then steam over a high heat for 8 to 10 minutes, until just cooked and the dorsal fin pulls away easily. You can also check the thickest part of the fish; the flesh should have turned opaque closest to the bone. Transfer to a serving plate.\r\nHeat the groundnut oil until smoking hot in a wok or small pan. Scatter the fish with the sliced ginger,'),
(4, 'fish flavored pork slices', 'Pour boiling water over cloud ears and soak for 20-30 minutes.\nCut pork ''silk'' style (into strips about 2 inches long and 1/16-inch thick--this is easier to do with meat that has been in the freezer for 20 minutes), marinate with 1 T soy sauce and 2 t cornstarch about 15 minutes.\nCut scallions into small rounds, keeping white and green parts separate. Sliver water chestnuts, then drain cloud ears and sliver them as well. (When the dish is prepared, the shape of the pork, water chestnut, and cloud ear strips should be the same.).\nCombine seasoning sauce ingredients and set aside.\nHeat wok until smoking, add peanut oil, swirl to heat, add garlic and toss a moment until fragrant. Then add ginger and white parts of scallions and stir-fry until fragrant. Stir in the bean paste, then add pork, cloud ears, and water chestnuts and stir-fry until the pork is cooked. As you are stir-frying, splash the wine into the wok along the sides, allowing it to sizzle as you continue to stir.\nFinally '),
(5, 'minced meat with eggplant', 'Slowly heat the deep frying oil in large pot.increase heat under deep fry oil until it is 350 to 375.  If you do not have a thermometer, drop a shred of green onion or sweet pepper into the oil; if it sizzles vigorously, the oil is probably ready.  Lower 1/3 of the eggplant wedges into the oil at a time, to prevent a boil over; you should turn the heat up as soon as the eggplant is in the oil, as their addition has lowered the temperature.\r\nIn approximately 3 minutes, the eggplant is done; remove to drain and set aside.\r\nHeat 2 or 3 Tablespoons of peanut oil in your wok until it just begins to smoke, then toss in green onion, garlic, ginger, and chili paste.  Stir fry briefly until these ingredients barely turn color;  splash in wine, toss, then add stirred sauce ingredients.  When this begins to boil, add eggplant and stir gently.  As soon as the sauce boils again, simmer 30 seconds or less, and add cornstarch slurry until sauce thickens.  Plate the dish, garnish with a drizzle of'),
(6, 'mutton slices with scallions', 'In a heated wok, (the fire is very strong), pour in around 3 tablespoons of oil, and add in chopped garlic and ginger strips, then 1 teaspoon of cooking wine.The smell of the garlic, ginger and wine comes out, add in the lamb slice, stir fry quickly.When the color of the lamb slice turns into white, add in chopped spring onion.Add in a bit more salt and cumin seed ONLY IF it is needed (if you think the taste is not strong enough) '),
(7, 'curry beef', 'Sprinkle beef with salt and pepper. Heat oil in heavy large pot over high heat. Working in batches, add beef to pot and brown on all sides, about 7 minutes per batch. Using slotted spoon, transfer to plate.\r\n\r\nHeat remaining oil in same pot over medium-high heat. Add onions until tender and brown, about 7 minutes. Return beef to pot. Add cloves, garlic, and dried red pepper to pot; stir 1 minute. Stir in milk, tomatoes, chutney, lemon juice, ginger, curry powder and salt and bring to boil. Reduce heat, cover and simmer until beef is tender, stirring occasionally, about 2 hours.\r\n\r\nUncover; increase heat to medium. Boil stew until juices are slightly thickened, about 10 minutes. Serve over rice.'),
(8, 'beef with asparagus', 'Heat peanut oil in large skillet over high heat. Working in batches, add beef in single layer and cook, undisturbed, until meat begins to blacken on bottom, about 1 minutes. Turn over and cook until second side browns, about 1 minute. Transfer beef to large plate.\r\n\r\nHeat remaining peanut oil in same skillet over medium-high heat. Add asparagus, green onions, and ginger; cooked until vegetables are tinged brown and crisp-tender, about 2 minutes. Add broth, fish sauce, and sugar; bring to boil. Return beef to skillet and cook until sauce is slightly thickened, about 1 minute. Transfer to platter and serve.'),
(9, 'chicken with broccoli', 'Heat a large nonstick skillet over high heat. Add 1 tablespoon of the oil and heat. Add the broccoli stems, and stir-fry. Add the florets and the remaining garlic, ginger, and season with 1/4 teaspoon salt, and pepper. Stir-fry until the broccoli is bright green but still crisp, about 2 minutes. Transfer to a plate.\r\n\r\nGet the skillet good and hot again, and then heat oil. Add the chicken and chili flakes if using. Stir-fry until the chicken loses its raw color and gets a little brown, about 3 minutes. Add the hoisin sauce, return the broccoli to the pan and toss to heat through. Stir in the reserved cornstarch mixture and bring to a boil to thicken. Add more water if need to thin the sauce, if necessary. Taste and season with salt and pepper, if you like. Mound the stir-fry on a serving platter or divide among 4 plates and garnish with sesame seeds; serve with rice.\r\n'),
(10, 'sweet and sour spare ribs', 'Place the ribs in a saucepan of water and bring to a boil over high heat. Skim the water, then add half of the ginger, half of the green onions, the Chinese rice wine and salt. Turn the heat to low and simmer for 15 minutes until the meat is cooked and tender. Continue skimming the pot. Strain and set aside, reserving the cooking liquid.Heat a wok or large saute pan over high heat until very hot. Pour in the cooking oil and add the remaining ginger slices and green onions. Stir fry until fragrant, about 30 seconds. Add in the strained spare ribs and stir fry for 2 minutes in the fragrant oil.Add 1 cup of the cooking liquid, the dark soy sauce and sugar. Simmer over a medium flame, spooning the liquid over the ribs, until the sauce has reduced to a heavy, syrupy consistency.Add the vinegar and cook for another 1-2 minutes, until the flavors have fused. Off the heat, stir in the sesame oil.');

-- --------------------------------------------------------

--
-- Table structure for table `recipe_ingredients`
--

CREATE TABLE IF NOT EXISTS `recipe_ingredients` (
  `recipe_id` int(50) NOT NULL,
  `ingredient_id` int(100) NOT NULL,
  `amount` int(255) NOT NULL,
  PRIMARY KEY (`recipe_id`,`ingredient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recipe_ingredients`
--

INSERT INTO `recipe_ingredients` (`recipe_id`, `ingredient_id`, `amount`) VALUES
(1, 2, 400),
(1, 7, 98),
(1, 11, 3),
(1, 12, 50),
(1, 13, 50),
(1, 15, 2),
(1, 17, 3),
(1, 18, 20),
(2, 4, 98),
(2, 11, 3),
(2, 14, 100),
(2, 15, 10),
(2, 17, 10),
(2, 19, 25),
(3, 1, 400),
(3, 9, 4),
(3, 10, 3),
(3, 11, 2),
(3, 12, 10),
(3, 15, 2),
(3, 17, 10),
(3, 18, 4),
(4, 4, 400),
(4, 7, 80),
(4, 8, 80),
(4, 9, 1),
(4, 10, 2),
(4, 11, 2),
(4, 12, 5),
(4, 15, 2),
(4, 16, 2),
(4, 17, 5),
(4, 18, 10),
(4, 20, 80),
(4, 21, 1),
(5, 4, 50),
(5, 9, 3),
(5, 10, 3),
(5, 11, 3),
(5, 12, 10),
(5, 13, 15),
(5, 15, 3),
(5, 16, 2),
(5, 17, 10),
(5, 19, 30),
(5, 22, 100),
(6, 5, 200),
(6, 9, 4),
(6, 10, 1),
(6, 11, 3),
(6, 12, 10),
(6, 15, 2),
(6, 16, 2),
(6, 17, 200),
(6, 18, 10),
(7, 3, 400),
(7, 7, 50),
(7, 11, 3),
(7, 15, 2),
(7, 16, 2),
(7, 23, 300),
(7, 24, 60),
(7, 25, 30),
(8, 3, 150),
(8, 6, 400),
(8, 9, 3),
(8, 10, 2),
(8, 11, 3),
(8, 12, 5),
(8, 13, 5),
(8, 15, 2),
(8, 16, 2),
(8, 17, 5),
(8, 18, 20),
(9, 2, 150),
(9, 7, 50),
(9, 8, 50),
(9, 9, 1),
(9, 11, 3),
(9, 13, 10),
(9, 15, 3),
(9, 17, 10),
(9, 26, 400),
(10, 9, 3),
(10, 10, 3),
(10, 11, 2),
(10, 12, 10),
(10, 15, 3),
(10, 16, 3),
(10, 17, 10),
(10, 21, 3),
(10, 27, 500);

-- --------------------------------------------------------

--
-- Table structure for table `recipe_operation`
--

CREATE TABLE IF NOT EXISTS `recipe_operation` (
  `user` varchar(10) NOT NULL,
  `recipe_id` int(50) NOT NULL,
  `is_favorite` varchar(2) NOT NULL,
  `is_delete` varchar(2) NOT NULL,
  PRIMARY KEY (`user`,`recipe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

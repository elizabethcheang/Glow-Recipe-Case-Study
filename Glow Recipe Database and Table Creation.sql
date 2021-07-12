DROP DATABASE IF EXISTS GLOW_RECIPE;
CREATE DATABASE GLOW_RECIPE;
USE GLOW_RECIPE;
-- made by elizabeth cheang

CREATE TABLE product (
product_code INT PRIMARY KEY,
product_name VARCHAR(25) NOT NULL,
description VARCHAR(1000) NOT NULL,
skin_type VARCHAR(25) NOT NULL,
skin_concern VARCHAR(25) NOT NULL
);

DESCRIBE product;
SELECT * FROM product;

-- made by Elizabeth Cheang


CREATE TABLE customer_review (
idreview INT PRIMARY KEY,
name VARCHAR(10) NOT NULL,
rating VARCHAR(3) NOT NULL,
age INT NOT NULL,
date DATE NOT NULL,
opinion VARCHAR(1000) NOT NULL,
product_product_code INT NOT NULL REFERENCES product(product_code)
);
DESCRIBE customer_review;
SELECT * FROM customer_review;
-- made by Elizabeth Cheang

CREATE TABLE customer_question (
idquestion INT PRIMARY KEY UNIQUE,
name VARCHAR(10) NOT NULL,
date_ DATE NOT NULL,
question VARCHAR(1000) NOT NULL,
answer VARCHAR(1000) NOT NULL,
product_product_code INT NOT NULL REFERENCES product(product_code)
);
DESCRIBE customer_question;
SELECT * FROM customer_question;
-- made by Elizabeth Cheang

CREATE TABLE cleanser (
product_code INT PRIMARY KEY UNIQUE,
fruit VARCHAR(10) NOT NULL,
price INT NOT NULL,
size INT NOT NULL,
photo BLOB NOT NULL
);

DESCRIBE cleanser;
SELECT * FROM cleanser;
-- made by Elizabeth Cheang

CREATE TABLE mist (
product_code INT PRIMARY KEY,
fruit VARCHAR(10) NOT NULL,
price INT NOT NULL,
size INT NOT NULL,
photo BLOB NOT NULL
);

DESCRIBE mist;
SELECT * FROM mist;
-- made by Elizabeth Cheang

CREATE TABLE mask (
product_code INT PRIMARY KEY,
fruit VARCHAR(10) NOT NULL,
price INT NOT NULL,
size INT NOT NULL,
photo BLOB NOT NULL
);

DESCRIBE mask;
SELECT * FROM mask;
-- made by Elizabeth Cheang

CREATE TABLE serum (
product_code INT PRIMARY KEY,
fruit VARCHAR(10) NOT NULL,
price INT NOT NULL,
size INT NOT NULL,
photo BLOB NOT NULL
);

DESCRIBE serum;
SELECT * FROM serum;
-- made by Elizabeth Cheang

CREATE TABLE moisturizer (
product_code INT PRIMARY KEY,
fruit VARCHAR(10) NOT NULL,
price INT NOT NULL,
size INT NOT NULL,
photo BLOB NOT NULL
);

DESCRIBE moisturizer;
SELECT * FROM moisturizer;
-- made by Elizabeth Cheang

INSERT INTO product VALUES
(10001,'Watermelon Glow Mask','A luxuriously bouncy, breathable sleeping mask that smoothes and perfects skin, overnight.','Dry Skin','Acne, Dark spots'),
(10020,'Watermelon Moisturizer','Oil free cooling gel-emulsion absorbs instantly to seal in hydration and prep skin for the day ahead.','Dry Skin','Acne, Dark spots'),
(10300,'Watermelon Glow Mist','Immerse skin into a hydrating mist so ultra-fine and delicate, it envelops your skin like a dreamy morning fog.','Dry Skin','Dryness, Dullness'),
(14000,'Blueberry Gentle Cleanser','This effective yet gentle 3-in-1 bouncy makeup eraser, cleanser, and deep clarifying mask hydrates the skin without stripping it.','Normal Skin, Oily Skin','Pores, Dryness'),
(10500,'Pineapple-C Bright Serum','Glowing, glass skin starts with a bright, smooth, and translucent complexion so reflective, skin appears like glass.','Normal Skin, Oily Skin','Dullness, Anti-Aging'),
(60023,'Avocado Melt Mask','Avocado Melt Sleeping Mask is a creamy yet breathable sleeping mask that nourishes and softens dry, tired skin overnight.','Sensitive Skin','Dullness, Anti-Aging'),
(70078,'Avocado Melt Retinol Mask','The retinol of your dreams is here to make all your radiant and plump skin dreams come true. ','Sensitive Skin','Pores, Dryness'),
(82398,'Avocado Melt Eye Mask','Reignite the sparkle in your eyes with a gentle but powerful eye sleeping mask formulated with avocado, encapsulated retinol, coffeeberry, and niacinamide.','Normal Skin','Dullness, Anti-Aging'),
(98753,'Banana Moisturizer','Banana Soufflé Moisture Cream is a soothing, lightweight moisturizer that resets, replenishes, and seals in a boost of lasting hydration for all skin types.','Normal Skin, Oily Skin','Dehydration, Sesitivity'),
(10213,'Banana Soufflé Mask','Blended with banana, magnesium, turmeric, and cica, this sweet soufflé is your recipe for calmer, hydrated healthy-looking skin.','Normal Skin, Oily Skin','Dehydration, Sesitivity');

SELECT * FROM product;
-- made by Elizabeth Cheang

INSERT INTO customer_review VALUES
(10,'Shelby','5/5',25,'2019-11-06','I love this so much.','10001'),
(20,'Megan','5/5',18,'2019-12-01','Love it every time!','10001'),
(30,'Kaitlyn','5/5',19,'2019-11-18','I been using this mask for over a year and I still get excited everytime I go to use it! definitely recommend','10001'),
(40,'Jessica','5/5',23,'2019-10-11','LOVE!Definitely a must-have!','14000'),
(50,'Dara','3/5',25,'2019-07-02','My serum is more of a gel consistency, not sure if that’s normal. Also, I was expecting more of a pineapple smell, but the scent is a little weird. Very cute packaging though','10500'),
(60,'MJ','3/5',29,'2019-08-15','its hydrating!','60023'),
(70,'Memie','2/5',29,'2019-05-18','I have the watermelon glow mask and love it! I tried this one but ended up with a hot and sensitive red patchy face with itchy eyes. Granted my face is softer-that was the up side. I’ve requested a return label.','60023'),
(80,'Annabella','3/5',20,'2019-10-13','Although this product did an amazing job at hydrating my skin, I didnt see any of the other promised effects such as illumination...','10300'),
(90,'Kaitlyn','5/5',20,'2019-09-23','when I say this cleanser changed my life I mean it lol ever since I started using it my skin has been so much more soft and clear! definitely recommend','14000'),
(100,'Alyssa','2/5',18,'2019-05-12','I like the smell and feel of this moisturizer, but that’s really all it has going for it. It doesn’t sink it it just kind of sits on top of the skin. This lotion leaves my skin incredibly oily and created a whole bunch of bumps all over my forehead.','10020');

SELECT * FROM customer_review;
-- made by Elizabeth Cheang

INSERT INTO customer_question VALUES
(101,'Faith','2019-09-29','Do you deliver to the UK?','We do! You can find our shipping policies here: glowrecipe.com/pages/shipping','10001'),
(202,'Kimmy','2019-02-08','How often can we use this mask?','Once a week or every other week.','10001'),
(303,'Allison','2019-04-19','Can I use this mask around / near my eyes?','Yes, it is gentle enough to be used close to your eyes. Would not recommend using it as eye mask though.','10001'),
(404,'Skye','2019-08-23','Do you recommend this product for oily skin?','This is the perfect lightweight, daily moisturizer for oily skin! Check out some of the reviews :)','10020'),
(505,'Rose','2019-08-13','Ready to order. How do I do it. There is no directions.','Hi! Click "add to cart" and then proceed to checkout, following the prompts to enter your payment information and shipping address. You will receive an email confirmation once the order is placed!','10020'),
(606,'Quinn','2019-10-09','What is the shelf life for this face wash?','The shelf is life of this cleanser is 12 months from the time of purchase.','14000'),
(707,'Sara','2019-08-15','Arent fragrance based cleansers bad for skin?','Hi there! This is not a fragrance-based cleanser, it contains less than 0.5% of a carefully sourced blend of gentle fragrant ingredients. Our products have been tested extensively to ensure safety for all skin types and have been awarded the Clean @ Sephora seal. This ensures our products are free of harsh irritants and certified safe for everyone.','14000'),
(808,'Lily','2019-08-26','Hi! I have lots of face freckles that I love. Will this serum fade my freckles?','Hi there! If your freckles are due to sun damage, this serum will help brighten them over time. If they are genetic freckles, it is not possible to remove with skincare alone.','10500'),
(909,'Allison','2019-02-20','How long does the product last before it expires?','The shelf is life of this cleanser is 24 months from the time of purchase.','10500'),
(1010,'Karin','2019-05-27','Can I store it in the refrigerator?','Yes, you can! It will not affect the efficacy in any way, but will provide a nice, cool treat for the skin :)','60023');

SELECT * FROM customer_question;
-- made by Elizabeth Cheang

INSERT INTO cleanser VALUES
(14000,'Blueberry', 34, 160,'blueberrycleanser.jpg');
SELECT * FROM cleanser;
-- made by Elizabeth Cheang

INSERT INTO mist VALUES
(10300,'Watermelon', 28, 75,'watermelonmist.jpg');

SELECT * FROM mist;
-- made by Elizabeth Cheang

INSERT INTO mask VALUES
(10001,'Watermelon', 45, 80,'watermelonmask.jpg'),
(60023,'Avocado', 45, 80,'avomask.jpg'),
(70078,'Avocado', 49, 50,'retinalmask.jpg'),
(82398,'Avocado', 42, 15,'eyemask.jpg'),
(10213,'Banana', 39, 50,'bananamask.jpg');
SELECT * FROM mask;
-- made by Elizabeth Cheang

INSERT INTO serum VALUES
(10500,'Pineapple', 49, 30,'pserum.jpg');

SELECT * FROM serum;
-- made by Elizabeth Cheang

INSERT INTO moisturizer VALUES
(10020,'Watermelon', 39, 60,'watermelonmoist.jpg'),
(98753,'Banana', 39, 60,'bananamoist.jpg');
SELECT * FROM moisturizer;

-- Made By Elizabeth Cheang

-- Query 1
USE GLOW_RECIPE;
SELECT name,date,rating, round(age+5.5) as estimated_age_in_five_years
FROM customer_review
WHERE rating='3/5';
-- Made By Elizabeth Cheang

-- Query 2
SELECT name,date,age,rating,char_length(opinion)
FROM customer_review
WHERE age >=25 OR name='M%'
ORDER BY rating;
-- Made By Elizabeth Cheang

-- Query 3
SELECT name,date,rating,age,length(opinion), concat(name,age) 
FROM customer_review 
WHERE rating<='4/5' OR age>=18 AND char_length(opinion) >=150
ORDER BY name;
-- Made By Elizabeth Cheang

-- Query 4
SELECT name,date,age,rating,opinion
FROM customer_review
WHERE char_length(opinion) >=500 OR rating >='5/5'
ORDER BY name ASC;
-- Made By Elizabeth Cheang

-- Query 5
SELECT name,rating, age, age+5.5 as estimated_age_in_five_years, char_length(opinion)
FROM customer_review
WHERE rating<='2/5' OR age=30 AND char_length(opinion) <=50
ORDER BY age ASC,estimated_age_in_five_years ASC,char_length(opinion) DESC;
-- Made By Elizabeth Cheang


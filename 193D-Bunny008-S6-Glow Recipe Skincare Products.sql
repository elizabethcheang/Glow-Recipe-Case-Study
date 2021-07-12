USE GLOW_RECIPE;

-- Query 1 
SELECT DISTINCT rating, count(rating)
FROM customer_review
GROUP BY rating;
-- made by Elizabeth Cheang

-- Query 2
SELECT product_name,count(rating) as number_of_reviews
FROM customer_review
JOIN product ON customer_review.product_product_code=product.product_code
GROUP BY product_name;
-- made by Elizabeth Cheang

-- Query 3
SELECT product_name, skin_type, skin_concern
FROM product
JOIN customer_review ON product.product_code=customer_review.product_product_code
JOIN mask on customer_review.product_product_code=mask.product_code
WHERE product.product_code IN
( SELECT mask.product_code
FROM mask
WHERE fruit="Avocado");
-- made by elizabeth cheang

-- Query 4
SELECT product_name,min(rating) as minimum_rating, question
FROM customer_review
JOIN product ON customer_review.product_product_code=product.product_code
JOIN customer_question ON customer_question.product_product_code=product.product_code
GROUP BY product_name;
-- made by Elizabeth Cheang

-- Query 5
SELECT product_name,rating, fruit, question
FROM customer_review
JOIN product ON customer_review.product_product_code=product.product_code
JOIN customer_question ON customer_question.product_product_code=product.product_code
JOIN mask on mask.product_code=customer_question.product_product_code
GROUP BY fruit
HAVING rating >= '3/5';
-- made by elizabeth cheang 

-- Query 6
SELECT product_name, fruit, size, opinion
FROM product
JOIN customer_review ON product.product_code=customer_review.product_product_code
JOIN mask on customer_review.product_product_code=mask.product_code
WHERE product.product_code IN
( SELECT mask.product_code
FROM mask
WHERE fruit="Watermelon")
GROUP BY product_name;
-- made by elizabeth cheang

-- Query 7
SELECT product_name, fruit, size, opinion, question
FROM product
JOIN customer_review ON product.product_code=customer_review.product_product_code
JOIN customer_question ON customer_review.product_product_code=customer_question.product_product_code
JOIN mask on customer_question.product_product_code=mask.product_code
WHERE product.product_code IN
( SELECT mask.product_code
FROM mask
WHERE fruit="Avocado")
GROUP BY product_name;
-- made by elizabeth cheang

-- Query 8
SELECT product_name,rating, fruit, opinion
FROM product
JOIN customer_review ON product.product_code=customer_review.product_product_code
JOIN mask on customer_review.product_product_code=mask.product_code
WHERE product.product_code IN
( SELECT mask.product_code
FROM mask
WHERE fruit="Watermelon")
GROUP BY product_name
HAVING rating >='3/5';
-- made by elizabeth cheang

-- Query 9
SELECT product_name,rating, question
FROM product
JOIN customer_review ON product.product_code=customer_review.product_product_code
JOIN customer_question ON customer_review.product_product_code=customer_question.product_product_code
WHERE char_length(opinion) >=100
HAVING rating <='2/5';
-- made by elizabeth cheang

-- Query 10
SELECT product_name,rating, fruit, opinion
FROM product
JOIN customer_review ON product.product_code=customer_review.product_product_code
JOIN mask on customer_review.product_product_code=mask.product_code
WHERE product.product_code IN
( SELECT mask.product_code
FROM mask
WHERE fruit="Watermelon") 
HAVING rating >='3/5'
-- made by elizabeth cheang

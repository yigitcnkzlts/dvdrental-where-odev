-- Film tablosundaki filmlerin adını ve açıklamasını listeledim
SELECT title, description
FROM film;

-- Film süresi 60 dakikadan büyük ve 75 dakikadan küçük olan filmleri getirdim
SELECT *
FROM film
WHERE length > 60 AND length < 75;

-- Kiralama ücreti 0.99 olan ve değişim maliyeti 12.99 veya 28.99 olan filmleri listeledim
SELECT *
FROM film
WHERE rental_rate = 0.99
AND (replacement_cost = 12.99 OR replacement_cost = 28.99);

-- Adı Mary olan müşterinin soyadını bulmak için sorgu yazdım
SELECT last_name
FROM customer
WHERE first_name = 'Mary';

-- Süresi 50 dakikadan büyük olmayan ve kiralama ücreti 2.99 ya da 4.99 olmayan filmleri listeledim
SELECT *
FROM film
WHERE NOT (length > 50)
AND rental_rate NOT IN (2.99, 4.99);

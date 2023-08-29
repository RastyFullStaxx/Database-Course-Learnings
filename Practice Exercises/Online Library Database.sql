-- 1. Retrieve the titles of books written by 'Jane Austen' that were published after the year 1800.
SELECT title
FROM Books
WHERE author = 'Jane Austen' AND publication_year > 1800;

-- 2. Calculate the average publication year of all books in the database.
SELECT AVG(publication_year) AS average_publication_year
FROM Books;

-- 3. Retrieve the titles and authors of books that have the same author as 'Pride and Prejudice'.
SELECT B1.title, B1.author
FROM Books B1
JOIN Books B2 ON B1.author = B2.author
WHERE B2.title = 'Pride and Prejudice';

-- 4. Count the number of books published in each year and order the results by year.
SELECT publication_year, COUNT(*) AS book_count
FROM Books
GROUP BY publication_year
ORDER BY publication_year;

-- 5. Retrieve the author who has written the most books.
SELECT author, COUNT(*) AS book_count
FROM Books
GROUP BY author
ORDER BY book_count DESC
LIMIT 1;

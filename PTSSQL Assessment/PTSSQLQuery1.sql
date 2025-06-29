-- Drop tables if they exist (optional cleanup)
DROP TABLE IF EXISTS tbl_books;
DROP TABLE IF EXISTS tbl_authors;
DROP TABLE IF EXISTS tbl_borrowers;

-- Create authors table
CREATE TABLE tbl_authors (
    author_id INT PRIMARY KEY,
    Name NVARCHAR(100)
);

-- Create books table
CREATE TABLE tbl_books (
    book_id INT PRIMARY KEY,
    Title NVARCHAR(200),
    YearPublished INT,
    AuthorId INT FOREIGN KEY REFERENCES tbl_authors(author_id)
);

-- Create borrowers table
CREATE TABLE tbl_borrowers (
    borrowers_id INT PRIMARY KEY,
    Name NVARCHAR(100),
    DueDate DATE
);

-- Insert authors
INSERT INTO tbl_authors (author_id, Name)
VALUES 
    (1, 'George Orwell'), 
    (2, 'J.K. Rowling'), 
    (3, 'Chinua Achebe');

-- Insert books
INSERT INTO tbl_books (book_id, Title, YearPublished, AuthorId)
VALUES 
    (101, '1984', 1949, 1),
    (102, 'Animal Farm', 1945, 1),
    (103, 'Harry Potter 1', 1997, 2),
    (104, 'Harry Potter 7', 2007, 2),
    (105, 'Things Fall Apart', 1958, 3),
    (106, 'New Book 2022', 2022, 3);

-- Insert borrowers
INSERT INTO tbl_borrowers (borrowers_id, Name, DueDate)
VALUES
    (1, 'Alice', '2025-06-10'),
    (2, 'Bob', '2025-06-25'),
    (3, 'Charlie', '2025-05-30');

-- Now run your query
SELECT a.Name, COUNT(b.book_id) AS BookCount
FROM tbl_authors a
JOIN tbl_books b ON a.author_id = b.AuthorId
GROUP BY a.Name
ORDER BY BookCount DESC;

-- Now List all borrowers with overdue books
SELECT borrowers_id, Name, DueDate
From tbl_borrowers
WHERE DueDate < CAST(GETDATE() AS DATE);
-- GETDATE() returns current date and time, cast to DATE ignores time.

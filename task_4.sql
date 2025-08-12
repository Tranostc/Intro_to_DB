--Write a script that prints the full description of the table books from the database alx_book_store in your MySQL server
USE alx_book_store;
SHOW CREATE TABLE Books;
SELECT 
    COLUMN_NAME AS 'Column Name',
    COLUMN_TYPE AS 'Data Type',
    IS_NULLABLE AS 'Nullable',
    COLUMN_DEFAULT AS 'Default Value',
    COLUMN_KEY AS 'Key',
    EXTRA AS 'Extra Information'
FROM 
    INFORMATION_SCHEMA.COLUMNS
WHERE 
    TABLE_SCHEMA = 'alx_book_store'
    AND TABLE_NAME = 'Books';
--How to run it
mysql -u root -p alx_book_store < task_4.sql


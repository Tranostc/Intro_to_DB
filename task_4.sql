--Write a script that prints the full description of the table books from the database alx_book_store in your MySQL server
USE alx_book_store;
SHOW CREATE TABLE Books;
--How to run it
mysql -u root -p alx_book_store < task_4.sql

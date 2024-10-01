use dp_sep_24_5_30;

-- Create employees table
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department_id INT,
    salary DECIMAL(10, 2)
);

-- Insert sample data
INSERT INTO employees (id, name, age, department_id, salary) VALUES
(1, 'John Doe', 28, 1, 55000.00),
(2, 'Jane Smith', 34, 1, 60000.00),
(3, 'Alice Johnson', 40, 2, 72000.00),
(4, 'Chris Evans', 25, 2, 48000.00),
(5, 'Emma Davis', 50, 3, 100000.00),
(6, 'Ethan Hunt', 45, 3, 95000.00),
(7, 'Lily Adams', 22, 4, 45000.00),
(8, 'Mark White', 35, 4, 55000.00),
(9, 'Tina Brooks', 38, 5, 67000.00),
(10, 'Harry Brown', 29, 5, 50000.00),
(11, 'George Wilson', 41, 1, 80000.00),
(12, 'Sophia Lee', 27, 1, 65000.00),
(13, 'James Hall', 26, 2, 56000.00),
(14, 'Olivia Martin', 31, 3, 90000.00),
(15, 'Liam Harris', 28, 4, 47000.00),
(16, 'Ava Clark', 37, 5, 75000.00),
(17, 'Noah Walker', 32, 1, 54000.00),
(18, 'Isabella King', 45, 2, 89000.00),
(19, 'Evelyn Lewis', 24, 3, 71000.00),
(20, 'Mia Scott', 33, 4, 62000.00),
(21, 'Lucas Moore', 49, 5, 98000.00),
(22, 'Jackson Young', 21, 1, 49000.00),
(23, 'Aiden Hill', 29, 2, 58000.00),
(24, 'Elijah Green', 50, 3, 105000.00),
(25, 'Benjamin Baker', 35, 4, 66000.00),
(26, 'Abigail Nelson', 30, 5, 72000.00),
(27, 'Ella Carter', 46, 1, 88000.00),
(28, 'Henry Perez', 33, 2, 65000.00),
(29, 'William Wright', 39, 3, 97000.00),
(30, 'David Anderson', 26, 4, 52000.00),
(31, 'Grace Lee', 31, 5, 74000.00),
(32, 'Daniel Roberts', 28, 1, 61000.00),
(33, 'Victoria Diaz', 47, 2, 86000.00),
(34, 'Emily Johnson', 36, 3, 90000.00),
(35, 'Carter Robinson', 44, 4, 87000.00),
(36, 'Harper Campbell', 23, 5, 57000.00),
(37, 'Mason Parker', 25, 1, 56000.00),
(38, 'Zoey Mitchell', 38, 2, 78000.00),
(39, 'Addison Rivera', 34, 3, 85000.00),
(40, 'Gabriel Phillips', 27, 4, 59000.00),
(41, 'Sophie Turner', 22, 5, 46000.00),
(42, 'Lincoln Ward', 48, 1, 94000.00),
(43, 'Scarlett Stewart', 31, 2, 63000.00),
(44, 'Chloe Gray', 39, 3, 94000.00),
(45, 'Levi James', 50, 4, 101000.00),
(46, 'Jack Watson', 28, 5, 62000.00),
(47, 'Amelia Murphy', 24, 1, 54000.00),
(48, 'Nathan Reyes', 41, 2, 79000.00),
(49, 'Eleanor Hughes', 35, 3, 83000.00),
(50, 'Sebastian Price', 42, 4, 86000.00);

INSERT INTO employees (id, name, age, department_id, salary) VALUES
(51, 'Raju Doe', 28, null, 55000.00),
(52, 'Rani Smith', 34, null, 60000.00),
(53, 'Rahul Johnson', 40, null, 72000.00);


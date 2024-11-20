CREATE DATABASE IF NOT EXISTS mydb;

-- Use the database
USE mydb;

-- Create the users table
CREATE TABLE IF NOT EXISTS users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) UNIQUE NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert data into the users table
INSERT INTO users (name, email) VALUES 
('Alice Smith', 'alice.smith@example.com'),
('Bob Johnson', 'bob.johnson@example.com'),
('Charlie Brown', 'charlie.brown@example.com'),
('Diana Prince', 'diana.prince@example.com'),
('Ethan Hunt', 'ethan.hunt@example.com'),
('Fiona Gallagher', 'fiona.gallagher@example.com'),
('George Michael', 'george.michael@example.com'),
('Hannah Baker', 'hannah.baker@example.com'),
('Ian Malcolm', 'ian.malcolm@example.com'),
('Julia Roberts', 'julia.roberts@example.com'),
('Kevin Hart', 'kevin.hart@example.com'),
('Laura Palmer', 'laura.palmer@example.com'),
('Michael Scott', 'michael.scott@example.com'),
('Nancy Drew', 'nancy.drew@example.com'),
('Oscar Isaac', 'oscar.isaac@example.com'),
('Pam Beesly', 'pam.beesly@example.com'),
('Quentin Tarantino', 'quentin.tarantino@example.com'),
('Rachel Green', 'rachel.green@example.com'),
('Steve Rogers', 'steve.rogers@example.com'),
('Tina Fey', 'tina.fey@example.com');

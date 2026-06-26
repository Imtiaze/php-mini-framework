-- Drop tables if they already exist
DROP TABLE IF EXISTS notes;
DROP TABLE IF EXISTS users;

-- Users table
CREATE TABLE users (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE
);

-- Notes table
CREATE TABLE notes (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    body TEXT NOT NULL,
    user_id INT UNSIGNED NOT NULL,

    CONSTRAINT fk_notes_users
        FOREIGN KEY (user_id)
        REFERENCES users(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- Insert users
INSERT INTO users (name, email) VALUES
('Jeffrey Way', 'jeffrey@laracasts.com'),
('John Doe', 'john@example.com'),
('Jane Doe', 'jane@example.com');

-- Insert notes
INSERT INTO notes (body, user_id) VALUES
('PHP for Beginners is the best.', 1),
('Learning PDO is fun.', 1),
('I love Laravel.', 2),
('Database relationships are important.', 3);
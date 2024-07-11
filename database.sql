-- Create the database
CREATE DATABASE IF NOT EXISTS test;
USE test;

-- Create the database
CREATE DATABASE IF NOT EXISTS test;
USE test;

-- Create the products table
CREATE TABLE IF NOT EXISTS products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255),
    price DECIMAL(10, 2),
    category VARCHAR(255),
    sale_status VARCHAR(255),
    stock_status VARCHAR(255),
    description TEXT,
    image_link VARCHAR(255)
);

-- Insert products with shuffled names and image links for games
INSERT INTO products (product_name, price, category, sale_status, stock_status, description, image_link) VALUES 
('GTA 5', '1299', 'Games', 'on sale', 'in stock', 'Experience the thrill of living a life of crime in GTA 5.', 'https://m.media-amazon.com/images/I/81kAitW5qAL._AC_UF1000,1000_QL80_.jpg'),
('Cricket 24', '2999', 'Games', 'not on sale', 'out of stock', 'Play as your favorite teams in Cricket 24.', 'https://m.media-amazon.com/images/I/815pn9-S+uL._SL1500_.jpg'),
('Uncharted', '2499', 'Games', 'on sale', 'in stock', 'Join Nathan Drake on his epic adventures in Uncharted.', 'https://m.media-amazon.com/images/I/91UKNsj5ZrL._SL1500_.jpg'),
('Cyberpunk', '3999', 'Games', 'not on sale', 'out of stock', 'Explore the dystopian world of Cyberpunk.', 'https://m.media-amazon.com/images/I/81qUSiboqXL._SL1500_.jpg'),
('God of War', '3599', 'Games', 'on sale', 'in stock', 'Embark on an epic journey with Kratos in God of War.', 'https://m.media-amazon.com/images/I/613lyxBIXoL._SL1000_.jpg'),
('Call of Duty Cold War', '4999', 'Games', 'not on sale', 'out of stock', 'Experience intense combat in Call of Duty Cold War.', 'https://m.media-amazon.com/images/I/71HgIXrMaJL._SL1378_.jpg'),
('The Crew MotorFest', '4599', 'Games', 'on sale', 'in stock', 'Join the ultimate driving festival in The Crew MotorFest.', 'https://m.media-amazon.com/images/I/81a0dp1uGbL._SL1500_.jpg'),
('HellDivers', '2899', 'Games', 'not on sale', 'out of stock', 'Fight for freedom in HellDivers.', 'https://m.media-amazon.com/images/I/51nBXV9u+jL.jpg'),
('NFS Unbound', '3299', 'Games', 'on sale', 'in stock', 'Race through the streets in NFS Unbound.', 'https://m.media-amazon.com/images/I/81uF7jCrgaL._SL1500_.jpg'),
('Tekken 8', '4799', 'Games', 'not on sale', 'out of stock', 'Battle it out in the latest installment of Tekken 8.', 'https://m.media-amazon.com/images/I/81calZhnlHL._SL1500_.jpg'),
('Resident Evil 4', '2799', 'Games', 'on sale', 'in stock', 'Survive the horrors in Resident Evil 4.', 'https://m.media-amazon.com/images/I/71KYlXpzFpL._SL1500_.jpg'),
('Spiderman Mile Morals', '5599', 'Games', 'not on sale', 'out of stock', 'Swing through the city as Miles Morales in Spiderman.', 'https://m.media-amazon.com/images/I/61R01dtOg4L._SL1343_.jpg'),
('Assassins creed valhalla', '4999', 'Games', 'on sale', 'in stock', 'Become a legendary Viking in Assassins Creed Valhalla.', 'https://m.media-amazon.com/images/I/81citugjIUL._SL1500_.jpg'),
('Avengers', '3699', 'Games', 'not on sale', 'out of stock', 'Assemble your team in Avengers.', 'https://m.media-amazon.com/images/I/81+khlNIlEL._SL1500_.jpg'),
('call of duty mordern warfare', '3399', 'Games', 'on sale', 'in stock', 'Engage in modern combat in Call of Duty Modern Warfare.', 'https://m.media-amazon.com/images/I/81eccxSYvWL._SL1500_.jpg'),
('F1 2024', '4599', 'Games', 'not on sale', 'out of stock', 'Race in the fast lane with F1 2024.', 'https://m.media-amazon.com/images/I/81gOFlzopdL._SL1500_.jpg'),
('Elden Ring', '5999', 'Games', 'on sale', 'in stock', 'Explore a vast world in Elden Ring.', 'https://m.media-amazon.com/images/I/71Jv78rB2pL._SL1500_.jpg'),
('FarCry 6', '4899', 'Games', 'not on sale', 'out of stock', 'Liberate the island in FarCry 6.', 'https://m.media-amazon.com/images/I/81ptKW1gJBL._SL1500_.jpg'),
('Hogwarts legacy', '5499', 'Games', 'on sale', 'in stock', 'Experience the magic in Hogwarts Legacy.', 'https://m.media-amazon.com/images/I/81etAae966L._SL1500_.jpg'),
('The last of us part 1', '4399', 'Games', 'not on sale', 'out of stock', 'Survive the post-apocalyptic world in The Last of Us Part 1.', 'https://m.media-amazon.com/images/I/81paEK4OI4L._SL1500_.jpg'),
('Hitman world of assassination', '3999', 'Games', 'on sale', 'in stock', 'Become the ultimate assassin in Hitman World of Assassination.', 'https://m.media-amazon.com/images/I/715Yol5uN0L._SL1500_.jpg'),
('the last of us remastered II', '4799', 'Games', 'not on sale', 'out of stock', 'Continue the story in The Last of Us Remastered II.', 'https://m.media-amazon.com/images/I/71+CHZTS2aL._SL1500_.jpg');

INSERT INTO products (product_name, price, category, sale_status, stock_status, description, image_link) VALUES 
('GTA 5', 3999, 'Games', 'on sale', 'in stock', 'Open-world action-adventure game developed by Rockstar Games.', 'https://m.media-amazon.com/images/I/81kAitW5qAL._AC_UF1000,1000_QL80_.jpg'),
('Cricket 24', 1999, 'Games', 'not on sale', 'out of stock', 'Realistic cricket simulation game with various game modes.', 'https://m.media-amazon.com/images/I/815pn9-S+uL._SL1500_.jpg'),
('Uncharted', 3499, 'Games', 'on sale', 'in stock', 'Action-adventure game following the adventures of Nathan Drake.', 'https://m.media-amazon.com/images/I/91UKNsj5ZrL._SL1500_.jpg'),
('Cyberpunk', 2899, 'Games', 'not on sale', 'out of stock', 'Open-world RPG set in a dystopian future with immersive gameplay.', 'https://m.media-amazon.com/images/I/81qUSiboqXL._SL1500_.jpg'),
('God of War', 4499, 'Games', 'on sale', 'in stock', 'Mythological action-adventure game starring Kratos.', 'https://m.media-amazon.com/images/I/613lyxBIXoL._SL1000_.jpg'),
('Call of Duty Cold war', 2999, 'Games', 'not on sale', 'out of stock', 'First-person shooter game set during the Cold War era.', 'https://m.media-amazon.com/images/I/71HgIXrMaJL._SL1378_.jpg'),
('The Crew MotorFest', 2599, 'Games', 'on sale', 'in stock', 'Open-world racing game featuring a variety of vehicles and races.', 'https://m.media-amazon.com/images/I/81a0dp1uGbL._SL1500_.jpg'),
('HellDivers', 1799, 'Games', 'not on sale', 'out of stock', 'Cooperative top-down shooter game set in a futuristic dystopia.', 'https://m.media-amazon.com/images/I/51nBXV9u+jL.jpg'),
('NFS Unbound', 3299, 'Games', 'on sale', 'in stock', 'High-speed racing game with realistic graphics and intense gameplay.', 'https://m.media-amazon.com/images/I/81uF7jCrgaL._SL1500_.jpg'),
('Tekken 8', 2799, 'Games', 'not on sale', 'out of stock', 'Popular fighting game with a diverse roster of characters.', 'https://m.media-amazon.com/images/I/81calZhnlHL._SL1500_.jpg'),
('Resident Evil 4', 2399, 'Games', 'on sale', 'in stock', 'Survival horror game with intense gameplay and challenging puzzles.', 'https://m.media-amazon.com/images/I/71KYlXpzFpL._SL1500_.jpg'),
('Spiderman Mile Morals', 4499, 'Games', 'not on sale', 'out of stock', 'Action-adventure game featuring Spiderman in an alternate universe.', 'https://m.media-amazon.com/images/I/61R01dtOg4L._SL1343_.jpg'),
('Assassins creed valhalla', 3999, 'Games', 'on sale', 'in stock', 'Action RPG set in the Viking era with open-world exploration.', 'https://m.media-amazon.com/images/I/81citugjIUL._SL1500_.jpg'),
('Avengers', 3499, 'Games', 'not on sale', 'out of stock', 'Action-adventure game featuring Marvel superheroes.', 'https://m.media-amazon.com/images/I/81+khlNIlEL._SL1500_.jpg'),
('call of duty mordern warfare', 2999, 'Games', 'on sale', 'in stock', 'First-person shooter game with modern military themes.', 'https://m.media-amazon.com/images/I/81eccxSYvWL._SL1500_.jpg'),
('F1 2024', 2799, 'Games', 'not on sale', 'out of stock', 'Formula 1 racing simulation game with realistic graphics and physics.', 'https://m.media-amazon.com/images/I/81gOFlzopdL._SL1500_.jpg'),
('Elden Ring', 4999, 'Games', 'on sale', 'in stock', 'Action RPG game developed by FromSoftware and George R. R. Martin.', 'https://m.media-amazon.com/images/I/71Jv78rB2pL._SL1500_.jpg'),
('FarCry 6', 3599, 'Games', 'not on sale', 'out of stock', 'Open-world first-person shooter game set in a tropical paradise.', 'https://m.media-amazon.com/images/I/81ptKW1gJBL._SL1500_.jpg'),
('Hogwarts legacy', 2999, 'Games', 'on sale', 'in stock', 'Action RPG set in the Wizarding World of Harry Potter.', 'https://m.media-amazon.com/images/I/81etAae966L._SL1500_.jpg'),
('The last of us part 1', 3999, 'Games', 'not on sale', 'out of stock', 'Action-adventure survival horror game set in a post-apocalyptic world.', 'https://m.media-amazon.com/images/I/81paEK4OI4L._SL1500_.jpg'),
('Hitman world of assassination', 3299, 'Games', 'on sale', 'in stock', 'Stealth action game where you play as Agent 47, a professional assassin.', 'https://m.media-amazon.com/images/I/715Yol5uN0L._SL1500_.jpg'),
('the last of us remastered II', 4999, 'Games', 'not on sale', 'out of stock', 'Action-adventure survival horror game, a sequel to The Last of Us.', 'https://m.media-amazon.com/images/I/71+CHZTS2aL._SL1500_.jpg'),
('Men Stylish Shirt', 2299, 'Apparels', 'on sale', 'in stock', 'Stylish shirt for men, perfect for casual and formal occasions.', 'https://m.media-amazon.com/images/I/81MxL9rNYFL._SY741_.jpg'),
('Casual Shirt for Men Lymio', 1699, 'Apparels', 'not on sale', 'out of stock', 'Casual shirt with Lymio brand design for men.', 'https://m.media-amazon.com/images/I/61snvxo3CjL._SY741_.jpg'),
('Men''s Casual Button Down Shirts Long Sleeve', 2299, 'Apparels', 'on sale', 'in stock', 'Long sleeve button-down shirt for casual wear.', 'https://m.media-amazon.com/images/I/51fVQasKeNL._SY741_.jpg'),
('DHRUVI TRENDZ Men Pajama Set', 1499, 'Apparels', 'on sale', 'in stock', 'Comfortable pajama set for men by Dhruvi Trendz.', 'https://m.media-amazon.com/images/I/51YrqGCAt7L._SY741_.jpg'),
('Men Stylish Cargo Black Track Pants', 2599, 'Apparels', 'not on sale', 'out of stock', 'Stylish cargo track pants for men in black color.', 'https://m.media-amazon.com/images/I/71r3RWbLWAL._SY741_.jpg'),
('Mens polyester stylish cargo Half Pant', 1299, 'Apparels', 'on sale', 'in stock', 'Comfortable half pant made from polyester fabric for men.', 'https://m.media-amazon.com/images/I/61IIKfT7AZL._SX679_.jpg'),
('Men Regular Fit Full Sleeve Satin Silk Shirt', 1999, 'Apparels', 'not on sale', 'out of stock', 'Regular fit full sleeve satin silk shirt for men.', 'https://m.media-amazon.com/images/I/7147bC40ltL._SX679_.jpg'),
('Men''s Regular Fit Causal Trouser', 2999, 'Apparels', 'on sale', 'in stock', 'Regular fit casual trouser for men, suitable for various occasions.', 'https://m.media-amazon.com/images/I/511Z+NOB06L._SX679_.jpg'),
('Casual Shirt for Men (Bubble)', 1399, 'Apparels', 'not on sale', 'out of stock', 'Casual shirt with bubble design for men.', 'https://m.media-amazon.com/images/I/71l6J5SwZVL._SY741_.jpg'),
('Lymio Track Pant for Men', 1599, 'Apparels', 'on sale', 'in stock', 'Comfortable track pants with Lymio brand for men.', 'https://m.media-amazon.com/images/I/610IIi6wHuL._SY741_.jpg');

-- Create the users table
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);
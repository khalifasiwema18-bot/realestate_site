

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `addresses` (
  `city` varchar(255) DEFAULT NULL,
  `streets` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `adminin_register` (
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `admins` (
  `id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `admins` (`id`, `name`, `password`) VALUES
('BcjKNX58e4x7bIqIvxG7', 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
('qWkSjz7fgsJLaWu3OWtk', 'gax', '40bd001563085fc35165329ea1ff5c5ecbdbbeef');



CREATE TABLE `agent_register` (
  `user_id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `user_type` enum('agent') NOT NULL DEFAULT 'agent',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `agent_register` (`user_id`, `full_name`, `email`, `password_hash`, `user_type`, `status`, `created_at`) VALUES
(1, 'hamis liana', 'hamisi@gmail.com', '$2y$10$38D3Psp1GCz3Gzpcc3Rb3.A5iXDwzELMBI4NZ.PrUmDmEx7PJFF8m', 'agent', 'active', '2025-05-28 10:04:49'),
(2, 'saidi', 'saidi@gmail.com', '$2y$10$z57OSOybrcd7DTjS7bq/5uN4lD0q2UyXQXNf1Z5FCju1FlEGLZQ1e', 'agent', 'active', '2025-05-28 10:23:10');



CREATE TABLE `category` (
  `property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `flat` (
  `property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `house` (
  `property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `messages` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `property` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `property_name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `price` varchar(10) NOT NULL,
  `type` varchar(10) NOT NULL,
  `offer` varchar(10) NOT NULL,
  `status` varchar(50) NOT NULL,
  `furnished` varchar(50) NOT NULL,
  `bhk` varchar(10) NOT NULL,
  `deposite` varchar(10) NOT NULL,
  `bedroom` varchar(10) NOT NULL,
  `bathroom` varchar(10) NOT NULL,
  `balcony` varchar(10) NOT NULL,
  `carpet` varchar(10) NOT NULL,
  `age` varchar(2) NOT NULL,
  `total_floors` varchar(2) NOT NULL,
  `room_floor` varchar(2) NOT NULL,
  `loan` varchar(50) NOT NULL,
  `lift` varchar(3) NOT NULL DEFAULT 'no',
  `security_guard` varchar(3) NOT NULL DEFAULT 'no',
  `play_ground` varchar(3) NOT NULL DEFAULT 'no',
  `garden` varchar(3) NOT NULL DEFAULT 'no',
  `water_supply` varchar(3) NOT NULL DEFAULT 'no',
  `power_backup` varchar(3) NOT NULL DEFAULT 'no',
  `parking_area` varchar(3) NOT NULL DEFAULT 'no',
  `gym` varchar(3) NOT NULL DEFAULT 'no',
  `shopping_mall` varchar(3) NOT NULL DEFAULT 'no',
  `hospital` varchar(3) NOT NULL DEFAULT 'no',
  `school` varchar(3) NOT NULL DEFAULT 'no',
  `market_area` varchar(3) NOT NULL DEFAULT 'no',
  `image_01` varchar(50) NOT NULL,
  `image_02` varchar(50) NOT NULL,
  `image_03` varchar(50) NOT NULL,
  `image_04` varchar(50) NOT NULL,
  `image_05` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `property` (`id`, `user_id`, `property_name`, `address`, `price`, `type`, `offer`, `status`, `furnished`, `bhk`, `deposite`, `bedroom`, `bathroom`, `balcony`, `carpet`, `age`, `total_floors`, `room_floor`, `loan`, `lift`, `security_guard`, `play_ground`, `garden`, `water_supply`, `power_backup`, `parking_area`, `gym`, `shopping_mall`, `hospital`, `school`, `market_area`, `image_01`, `image_02`, `image_03`, `image_04`, `image_05`, `description`, `date`) VALUES
('lnFdCQVMZYnrhQcU8ffH', 'UYeXnh52UE3E103KbYe7', 'house', 'mbezi ', '22233', 'flat', 'sale', 'ready to move', 'furnished', '1', '2823982398', '1', '1', '0', '1', '1', '0', '0', 'available', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'rAtbgejeRry8nLfKA8dm.jpeg', 'bjHrMY3wdoSAsyQBmcpM.jpg', '9elVGsQUrC3ELYAL6q64.jpeg', 'os8SavxidMqMxXwbJHpL.jpeg', 'hSMBwcwYQmFhHhbIaf9z.jpeg', 'good', '2025-05-28'),
('ngChaExB2JwBq2VoGPXH', 'BaeMyN0hIOMKpWJtwUQo', ' myumba', 'mbezi ', '100000', 'flat', 'sale', 'ready to move', 'furnished', '1', '100000', '1', '1', '0', '1', '3', '0', '0', 'available', 'yes', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'mRmXAN0mSD4J12QG4SON.jpg', 'i2y69O2JvmEvfNKGrzws.jpeg', 'dsQLMcuP5fnPeejMXOtV.jpeg', 'w2YJ1Ekt7Q2pTfLank7A.jpeg', '9N8OsgQ2kBDhxjgZl5gf.jpeg', 'good', '2025-06-05'),
('g6aQbJxF8yMErwKPgUPs', 'BaeMyN0hIOMKpWJtwUQo', 'BEACH HOUSE ON SALE MWAMBANI TANGA', 'mbezi beach', '20000', 'flat', 'sale', 'ready to move', 'furnished', '1', '2000', '1', '1', '0', '1000', '3', '2', '4', 'available', 'no', 'yes', 'no', 'no', 'no', 'yes', 'yes', 'no', 'yes', 'no', 'no', 'no', 'do5TCfB42Budh3bTIgNy.jpeg', 'mHIkrxp4F7eeNWwF0V8d.jpeg', 'xBAm722sONbnGYXxEeOO.jpeg', 'bNrGA4mqRbfS3E6t7oYJ.jpeg', 'iPpc4VIcblTyoYSGb94l.jpeg', 'good', '2025-06-05'),
('t5uuSing2Mz51sBof5vv', 'BaeMyN0hIOMKpWJtwUQo', 'BEACH HOUSE ON SALE MWAMBANI TANGA', 'upanga', '40000', 'flat', 'sale', 'ready to move', 'furnished', '1', '40000', '1', '1', '4', '16', '11', '2', '1', 'available', 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'f8A7dZJmHTjwSjMYymJh.jpeg', 'Gb0ronaOUE9okcAh4OSW.jpeg', 'HRmy9wuSoUvHPQxGzIb7.jpeg', 'r2REXAe27qI9kdkMww1O.jpeg', '9MR3n5WL5rGo0mItODMw.jpeg', 'good', '2025-06-05'),
('Cbkfwn54MRYiLsIKxEvM', 'BaeMyN0hIOMKpWJtwUQo', 'Eneo la Ekari 54 linauzwa Kisongo-Meserani, Arusha', 'Tanga', '5000', 'flat', 'sale', 'ready to move', 'furnished', '1', '5000', '1', '1', '0', '1000', '2', '2', '2', 'available', 'no', 'no', 'no', 'no', 'yes', 'no', 'yes', 'yes', 'no', 'no', 'no', 'no', 'XPbGp6Z676XXxhRTjSLI.jpeg', '7oUW3nopisEMIAz4rFLn.jpeg', 'QkL7dwZrM05MtsG5DQkV.jpeg', '9xX1T99rPMfabDb6I9zh.jpg', 'ZVt1kfgyrbOhaGFVe4jN.jpeg', 'good', '2025-06-05');



CREATE TABLE `rent` (
  `property_id` int(11) NOT NULL,
  `rent_amount` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `requests` (
  `id` varchar(20) NOT NULL,
  `property_id` varchar(20) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `receiver` varchar(20) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `requests` (`id`, `property_id`, `sender`, `receiver`, `date`) VALUES
('pX2gF1ogWWTDarNtIaQJ', 'Sulsk2BTUgQlKfdFKGiU', 'UYeXnh52UE3E103KbYe7', 'BcjKNX58e4x7bIqIvxG7', '2025-05-14'),
('Ok3TXhEkzLwkX5XEq3Q1', 'G6qOGQUBMMAZrr8KRfcy', 'UYeXnh52UE3E103KbYe7', 'BcjKNX58e4x7bIqIvxG7', '2025-05-14');



CREATE TABLE `save` (
  `property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `saved` (
  `id` varchar(20) NOT NULL,
  `property_id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `saved` (`id`, `property_id`, `user_id`) VALUES
('gwnuB0IN0dvPHrugcciY', 'G6qOGQUBMMAZrr8KRfcy', 'UYeXnh52UE3E103KbYe7');



CREATE TABLE `users` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `users` (`id`, `name`, `number`, `email`, `password`) VALUES
('UYeXnh52UE3E103KbYe7', 'hamisi', '0788378784', 'hamisi@gmail.com', 'a642a77abd7d4f51bf9226ceaf891fcbb5b299b8'),
('4ev6ZkjodefppoRwIGZW', 'admin', '0786373737', 'GAX@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
('qbG25iAfKRqCRMgaTqT5', 'admin', '0786373737', 'saidi@gmail.com', '9f8e8ed4a01ed7432b9394d627922ae3bb0a4fbe'),
('BaeMyN0hIOMKpWJtwUQo', '', '', 'saidr@gmail.com', '9f8e8ed4a01ed7432b9394d627922ae3bb0a4fbe');


ALTER TABLE `agent_register`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);


ALTER TABLE `agent_register`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;


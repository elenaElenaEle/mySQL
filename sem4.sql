create schema sem4;
use sem4;

CREATE TABLE users 
(
	id SERIAL PRIMARY KEY, -- SERIAL = BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE
    firstname VARCHAR(50),
    lastname VARCHAR(50) COMMENT 'Фамилия',
    email VARCHAR(120) UNIQUE
);

INSERT INTO users (id, firstname, lastname, email)
VALUES 
	(1, 'Reuben', 'Nienow', 'arlo50@example.org'),
	(2, 'Frederik', 'Upton', 'terrence.cartwright@example.org'),
	(3, 'Unique', 'Windler', 'rupert55@example.org'),
	(4, 'Norene', 'West', 'rebekah29@example.net'),
	(5, 'Frederick', 'Effertz', 'von.bridget@example.net'),
	(6, 'Victoria', 'Medhurst', 'sstehr@example.net'),
	(7, 'Austyn', 'Braun', 'itzel.beahan@example.com'),
	(8, 'Jaida', 'Kilback', 'johnathan.wisozk@example.com'),
	(9, 'Mireya', 'Orn', 'missouri87@example.org'),
	(10, 'Jordyn', 'Jerde', 'edach@example.com');
    

CREATE TABLE media_types(
	id SERIAL PRIMARY KEY,
    name_type VARCHAR(255)
);

INSERT INTO media_types (name_type)
VALUES 	('Photo'), ('Music'), ('Video'), ('Post');

CREATE TABLE media(
	id SERIAL PRIMARY KEY,
    user_id BIGINT UNSIGNED NOT NULL,
    media_type_id BIGINT UNSIGNED,
  	body text,
  	filename VARCHAR(255), 
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP,
	FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (media_type_id) REFERENCES media_types(id) ON UPDATE CASCADE ON DELETE SET NULL
);

INSERT INTO media (media_type_id, user_id, filename, body) VALUES 
(3, 1, 'a.avi', 'Est aut aliquid est. Soluta eveniet doloribus ipsam ut id assumenda quam. Consequuntur et velit aperiam error corporis rem corporis. Est similique quisquam quia maxime eaque possimus facere officiis. Odio magni atque dicta voluptatibus hic iste delectus.'),
(2, 2, '1.mp3', 'Laborum dolorem magni unde vero sit hic. Pariatur quia voluptas magnam. Blanditiis dolorem et molestias veniam facere provident.'),
(1, 3, 'sapiente.png', 'A quam ea ullam reiciendis vel et reiciendis. Delectus iure mollitia est. Eum dolores dolores sed officia vitae qui. Sed repudiandae voluptatem voluptatibus libero culpa quo.'),
(3, 4, 'rerum.mp4', 'Velit commodi in veniam occaecati. Tenetur temporibus ullam enim officiis aut illum. In maiores velit nobis soluta molestias maiores tempora. Quisquam et ut et sequi.'),
(1, 5, 'user5-profile-image.bmp', 'Est eaque est qui et omnis rerum. Expedita porro nesciunt inventore consequatur quos. Inventore aut rerum voluptas. Dicta vel ut quibusdam cupiditate tempore.'),
(1, 6, 'quasi.jpg', 'Atque et nam nulla et aliquid. Vel repellendus aut natus odit quibusdam quis atque et. Laudantium minima velit dolores eos voluptate nostrum.'),
(3, 7, 'non.mp4', 'Nihil ut et reprehenderit et. Numquam veniam quis impedit. Voluptas saepe rerum illo vel omnis. Aliquam illum ut quo saepe ea unde est.'),
(4, 8, 'new_01012023.docx', 'Sint quod fugit molestiae dolore repellendus est. Quis corporis necessitatibus commodi placeat temporibus doloremque voluptatem. Nemo maxime sit dolorem perferendis repellat. Et impedit deleniti eaque pariatur ut quia voluptatibus.'),
(1, 9, 'ullam.jpg', 'Optio sed aperiam veniam eum. Rerum placeat soluta iusto perspiciatis quibusdam dolorem eos. Ea pariatur optio est ut.'),
(2, 10, '2.mp3', 'Facere nostrum facilis aperiam quisquam dolor. Minima omnis est nam.'),
(3, 1, 'non.mp4', 'A omnis ratione non. Et velit sed incidunt corporis ut rerum nemo. Ut pariatur tempora ea incidunt praesentium ut. Eligendi et et rerum sequi ut.'),
(4, 1, 'new_07012023.html', 'Quo minus harum debitis debitis quis sunt. Dolores suscipit placeat dolorum non voluptate et. Non eos odio esse tempore. Illum minus quidem temporibus porro.'),
(1, 1, '1.jpg', NULL),
(2, 1, 'godt.mp3', 'Nobis est sed blanditiis assumenda incidunt explicabo. Facere rem assumenda odio explicabo ad enim repellat quia. Dolor mollitia fugiat officia nihil animi.'),
(3, 1, 'path1.avi', 'Tempora ad et aspernatur laborum ut dolor et. Exercitationem quaerat corporis placeat et.'),
(4, 1, 'new_07012023.html', 'Accusantium est ea fuga omnis mollitia. Dolores officia et consequatur iste est quo. Ullam laborum qui ut quo delectus temporibus.'),
(1, 1, 'map.bmp', 'Quasi itaque atque ut aliquam debitis. Qui consequuntur maiores sit ad perspiciatis quaerat assumenda repudiandae. Necessitatibus placeat quaerat aut voluptatem ratione voluptate expedita. Nulla doloremque aut molestiae nam.'),
(2, 1, '7.acc', 'Deserunt voluptatem quia voluptatem sit. Qui omnis distinctio optio voluptatem veniam atque dolorem. Repellat laboriosam illo consequatur nesciunt voluptas magni rerum. Saepe quos qui doloremque.'),
(3, 1, 'path2.avi', 'Fugiat consequuntur voluptatem odit omnis. Quia aut voluptate officia rerum. Cumque voluptatem eaque dolorum voluptas sed. Et autem atque est minus veritatis explicabo eos.'),
(4, 2, 'new_10012023.html', 'Autem dolore beatae aut corporis fugit ratione. Ex beatae qui at. Est deleniti asperiores temporibus perferendis est.'),
(1, 8, 'poster.jpg', 'Provident eligendi animi quidem qui ipsum. Accusamus dolor sint est qui magnam. Omnis enim quis dolore magni facilis repudiandae deserunt. Consequatur eum at recusandae id tenetur voluptas amet.'),
(2, 10, 'music_all.mp3', 'Animi ut labore dolore atque consequuntur maxime fugit. Sunt et et facere sint. Recusandae numquam accusamus a. Non quia dolorem reiciendis earum et officiis iure.'),
(3, 3, 'kino.avi', 'Sint officiis a ipsa quaerat rerum ea totam. Aut perferendis deleniti error ipsa ducimus ipsam. Ipsum a sunt quis placeat.'),
(4, 9, 'new_117012023.doc', 'Et accusamus a et adipisci dolore. Blanditiis sit vitae dolorem voluptas temporibus numquam ab. Aut temporibus accusantium consectetur.'),
(1, 10, 'main_photo.jpg', 'Consequuntur animi sed ea perferendis ad magnam. Aut libero alias sequi iste qui est. Ut quo dignissimos quibusdam doloremque est est incidunt.'),
(2, 1, 'ariya.mp3', 'Accusantium sit praesentium voluptatem molestias architecto. Excepturi doloremque ab eligendi eum ullam voluptas qui. Inventore expedita distinctio omnis laborum laboriosam.'),
(3, 1, 'film.mp4', NULL),
(4, 1, 'news.html', 'A culpa nostrum et quis. Id ipsum ipsum deserunt earum eaque aut earum. Blanditiis et commodi voluptas.'),
(1, 3, 'non.jpg', 'Cumque quod provident provident fugit cumque numquam. Fuga totam delectus a aut quaerat nemo dignissimos eos. Ratione harum et laborum qui dolore aliquam facilis numquam. At quas nam sapiente porro nesciunt voluptatum.'),
(1, 8, 'et.jpg', 'Provident quia fuga et consequatur reprehenderit repellat. Et aut cum nostrum ut beatae animi aut alias.');   


-- DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile` 
(
	user_id SERIAL PRIMARY KEY,
    gender CHAR(1),
    birthday DATE,
	photo_id BIGINT UNSIGNED,
    hometown VARCHAR(100),
    FOREIGN KEY (user_id) REFERENCES users(id)  ON UPDATE CASCADE ON DELETE CASCADE
    -- FOREIGN KEY (photo_id) REFERENCES media(id)  ON UPDATE CASCADE ON DELETE SET NULL
);

INSERT INTO `profile` (user_id, gender, birthday, photo_id, hometown)
VALUES 
	(1, 'f', '1976-11-08', 9, 'Adriannaport'),
	(2, 'f', '2011-12-20', 13, 'North Nettieton'),
	(3, 'm', '1994-06-15', 3, 'Padbergtown'),
	(4, 'f', '1979-11-07', NULL, 'Port Rupertville'),
	(5, 'f', '1976-04-19', 5, 'Spencerfort'),
	(6, 'f', '1983-09-07', 6, 'South Woodrowmouth'),
	(7, 'm', '2014-07-31', NULL, 'South Jeffereyshire'),
	(8, 'f', '1975-03-26', 17, 'Howeside'),
	(9, 'f', '1982-11-01', 9, 'Loweborough'),
	(10, 'm', '1977-05-14', NULL, 'New Nellaside'); 
   
      
 CREATE TABLE likes(
	id SERIAL PRIMARY KEY,
    user_id BIGINT UNSIGNED NOT NULL,
    media_id BIGINT UNSIGNED NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id)  ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (media_id) REFERENCES media(id)  ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO likes (user_id, media_id) VALUES
(1, 1), (2, 1), (3, 1), (4, 1), (5, 2), (6, 2), (7, 2), (8, 8), (1, 9), (10, 15), (7, 11), (5, 12), (6, 13), (1, 14), (1, 15), (1, 16), (1, 17), (1, 18), (1, 19), (1, 20);
 
 
 CREATE TABLE communities
(
	id SERIAL PRIMARY KEY,
	name VARCHAR(150),
	INDEX communities_name_idx(name)
);
INSERT INTO `communities` (name) 
VALUES ('atque'), ('beatae'), ('est'), ('eum'), ('hic'), ('nemo'), ('quis'), ('rerum'), ('tempora'), ('voluptas');
 
 
CREATE TABLE users_communities
(
	user_id BIGINT UNSIGNED NOT NULL,
	community_id BIGINT UNSIGNED NOT NULL,
    PRIMARY KEY (user_id, community_id),
		-- чтобы не было 2 записей о пользователе и сообществе
    FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (community_id) REFERENCES communities(id) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO users_communities (user_id, community_id) 
VALUES 
(1, 1), (1, 2), (1, 3),
(2, 1), (2, 2), 
(3, 1), (3, 2), (3, 10), (3, 5), (3, 8),
(4, 1), (4, 2), (4, 3), (4, 8),
(5, 1), (5, 2), (5, 3), (5, 6), (5, 8), (5, 10),
(6, 1), (6, 2), (6, 3), (6, 6),
(7, 1), (7, 2), (7, 3), (7, 8), (7, 7), (7, 6),
(8, 1), (8, 2), (8, 3), (8, 5), (8, 7), (8, 9),
(9, 1), (9, 2),  
(10, 1), (10, 10); 
 
 
 CREATE TABLE friend_requests (
	initiator_user_id BIGINT UNSIGNED NOT NULL, -- инициатор 
    target_user_id BIGINT UNSIGNED NOT NULL, -- и получатель
    `status` ENUM('requested', 'approved', 'unfriended', 'declined'),
	requested_at DATETIME DEFAULT NOW(),
	updated_at DATETIME,
    PRIMARY KEY (initiator_user_id, target_user_id),
    FOREIGN KEY (initiator_user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE, 
    FOREIGN KEY (target_user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO friend_requests (initiator_user_id, target_user_id, `status`, requested_at, updated_at) 
VALUES 
(1, 10, 'approved', '2023-01-05 06:40:37', '2023-01-05 16:28:19'),
(1, 2, 'requested', '2023-01-06 07:33:23', NULL),
(1, 3, 'approved', '2023-01-07 01:53:07', '2023-01-18 16:22:56'),
(4, 1, 'approved', '2023-01-08 15:57:26', '2023-01-15 18:12:00'),
(5, 2, 'approved', '2023-01-08 18:22:00', '2023-01-14 08:25:00'),
(6, 3, 'unfriended', '2023-01-09 17:07:59', '2023-01-09 17:12:45'),
(7, 1, 'requested', '2023-01-09 06:20:23', NULL),
(8, 6, 'unfriended', '2023-01-10 01:50:03', '2023-01-10 06:50:59'),
(9, 7, 'approved', '2023-01-11 22:52:09', NULL),
(10, 6, 'approved', '2023-01-12 00:32:15', '2023-01-12 10:22:15');
 
 CREATE TABLE messages (
	id SERIAL PRIMARY KEY,
	from_user_id BIGINT UNSIGNED NOT NULL,
    to_user_id BIGINT UNSIGNED NOT NULL,
    body TEXT,
    created_at DATETIME DEFAULT NOW(),
    FOREIGN KEY (from_user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (to_user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO messages  (from_user_id, to_user_id, body, created_at) VALUES
(1, 2, 'Voluptatem ut quaerat quia. Pariatur esse amet ratione qui quia. In necessitatibus reprehenderit et. Nam accusantium aut qui quae nesciunt non.',  DATE_ADD(NOW(), INTERVAL 1 MINUTE)),
(2, 1, 'Sint dolores et debitis est ducimus. Aut et quia beatae minus. Ipsa rerum totam modi sunt sed. Voluptas atque eum et odio ea molestias ipsam architecto.',  DATE_ADD(NOW(), INTERVAL 3 MINUTE)),
(3, 1, 'Sed mollitia quo sequi nisi est tenetur at rerum. Sed quibusdam illo ea facilis nemo sequi. Et tempora repudiandae saepe quo.',  DATE_ADD(NOW(), INTERVAL 5 MINUTE)),
(4, 1, 'Quod dicta omnis placeat id et officiis et. Beatae enim aut aliquid neque occaecati odit. Facere eum distinctio assumenda omnis est delectus magnam.',  DATE_ADD(NOW(), INTERVAL 11 MINUTE)),
(1, 5, 'Voluptas omnis enim quia porro debitis facilis eaque ut. Id inventore non corrupti doloremque consequuntur. Molestiae molestiae deleniti exercitationem sunt qui ea accusamus deserunt.',  DATE_ADD(NOW(), INTERVAL 12 MINUTE)),
(1, 6, 'Rerum labore culpa et laboriosam eum totam. Quidem pariatur sit alias. Atque doloribus ratione eum rem dolor vitae saepe.',  DATE_ADD(NOW(), INTERVAL 14 MINUTE)),
(1, 7, 'Perspiciatis temporibus doloribus debitis. Et inventore labore eos modi. Quo temporibus corporis minus. Accusamus aspernatur nihil nobis placeat molestiae et commodi eaque.',  DATE_ADD(NOW(), INTERVAL 15 MINUTE)),
(8, 1, 'Suscipit dolore voluptas et sit vero et sint. Rem ut ratione voluptatum assumenda nesciunt ea. Quas qui qui atque ut. Similique et praesentium non voluptate iure. Eum aperiam officia quia dolorem.',  DATE_ADD(NOW(), INTERVAL 21 MINUTE)),
(9, 3, 'Et quia libero aut vitae minus. Rerum a blanditiis debitis sit nam. Veniam quasi aut autem ratione dolorem. Sunt quo similique dolorem odit totam sint sed.',  DATE_ADD(NOW(), INTERVAL 22 MINUTE)),
(10, 2, 'Praesentium molestias quia aut odio. Est quis eius ut animi optio molestiae. Amet tempore sequi blanditiis in est.',  DATE_ADD(NOW(), INTERVAL 25 MINUTE)),
(8, 3, 'Molestiae laudantium quibusdam porro est alias placeat assumenda. Ut consequatur rerum officiis exercitationem eveniet. Qui eum maxime sed in.',  DATE_ADD(NOW(), INTERVAL 27 MINUTE)),
(8, 1, 'Quo asperiores et id veritatis placeat. Aperiam ut sit exercitationem iste vel nisi fugit quia. Suscipit labore error ducimus quaerat distinctio quae quasi.',  DATE_ADD(NOW(), INTERVAL 28 MINUTE)),
(8, 1, 'Earum sunt quia sed harum modi accusamus. Quia dolor laboriosam asperiores aliquam quia. Sint id quasi et cumque qui minima ut quo. Autem sed laudantium officiis sit sit.',  DATE_ADD(NOW(), INTERVAL 33 MINUTE)),
(4, 1, 'Aut enim sint voluptas saepe. Ut tenetur quos rem earum sint inventore fugiat. Eaque recusandae similique earum laborum.',  DATE_ADD(NOW(), INTERVAL 35 MINUTE)),
(4, 1, 'Nisi rerum officiis officiis aut ad voluptates autem. Dolor nesciunt eum qui eos dignissimos culpa iste. Atque qui vitae quos odit inventore eum. Quam et voluptas quia amet.',  DATE_ADD(NOW(), INTERVAL 35 MINUTE)),
(4, 1, 'Consequatur ut et repellat non voluptatem nihil veritatis. Vel deleniti omnis et consequuntur. Et doloribus reprehenderit sed earum quas velit labore.',  DATE_ADD(NOW(), INTERVAL 37 MINUTE)),
(2, 1, 'Iste deserunt in et et. Corrupti rerum a veritatis harum. Ratione consequatur est ut deserunt dolores.',  DATE_ADD(NOW(), INTERVAL 37 MINUTE)),
(8, 1, 'Dicta non inventore autem incidunt accusamus amet distinctio. Aut laborum nam ab maxime. Maxime minima blanditiis et neque. Et laboriosam qui at deserunt magnam.',  DATE_ADD(NOW(), INTERVAL 41 MINUTE)),
(8, 1, 'Amet ad dolorum distinctio excepturi possimus quia. Adipisci veniam porro ipsum ipsum tempora est blanditiis. Magni ut quia eius qui.',  DATE_ADD(NOW(), INTERVAL 42 MINUTE)),
(8, 1, 'Porro aperiam voluptate quo eos nobis. Qui blanditiis cum id eos. Est sit reprehenderit consequatur eum corporis. Molestias quia quo sit architecto aut.',  DATE_ADD(NOW(), INTERVAL 50 MINUTE));

   -- Задача 1: выбрать всех пользователей, указав их id, имя и фамилию, город и аватарку (используя вложенные запросы)
    SELECT id, 
		CONCAT (firstname, ' ', lastname) AS 'ФИО',
		(SELECT hometown FROM profile
		WHERE user_id = users.id) AS 'Город',
        (SELECT photo_id FROM profile
        WHERE user_id = users.id) AS 'Фото'
		FROM users;
    

-- Задача 2: выбрать фотографии (filename) пользователя с email: arlo50@example.org. 
-- ID типа медиа, соответствующий фотографиям неизвестен (используя вложенные запросы)

SELECT filename FROM media
WHERE user_id = 
(SELECT id FROM users
WHERE email = 'arlo50@example.org')
AND id in (SELECT id FROM media_types WHERE name_type LIKE 'Photo');


-- Задача 3: выбрать id друзей пользователя с id = 1 (используяUNION)
SELECT initiator_user_id FROM friend_requests
WHERE target_user_id = 1
AND status = 'approved'
UNION 
SELECT target_user_id FROM friend_requests
WHERE initiator_user_id = 1
AND status = 'approved';

-- Задача 4: выбрать всех пользователей, указав их id, имя и фамилию, город и аватарку (используя JOIN)
SELECT id, firstname, lastname, hometown, photo_id
FROM users u1
JOIN profile pr1
ON u1.id = pr1.user_id;

-- Задача 5: Список медиафайлов пользователей с количеством лайков(используя JOIN)
SELECT media.filename AS 'Наименование файла', COUNT(likes.id) AS 'Количество лайков'
FROM media
JOIN likes
ON media.id = likes.media_id
JOIN users
ON users.id = media.user_id
GROUP BY media.id;

-- Задача 6: Список медиафайлов пользователей, указав название типа медиа (id, filename, name_type) (используя JOIN)

SELECT media.id, media.filename, media_types.name_type
FROM media
LEFT JOIN media_types
ON media.media_type_id = media_types.id;

-- Д О М А Ш Н Е Е   З А Д А Н И Е 

-- 1. Подсчитать общее количество лайков, которые получили пользователи младше 12 лет.

USE sem4;

SELECT count(likes.user_id) AS 'Количество лайков'
FROM 
(
SELECT datediff(current_date(), profile.birthday)/365 AS age, profile.user_id AS id
FROM profile) t1, likes
WHERE t1.age < 12
AND t1.id = likes.user_id;

-- 2.Определить кто больше поставил лайков(всего): мужчины или женщины. 

SELECT *,
CASE 
	WHEN t_f.like_cnt > t_m.like_cnt
		THEN 'Female greater than male'
	WHEN t_f.like_cnt < t_m.like_cnt
		THEN 'Male greater than Female'
	ELSE 'Female the same male'
END AS 'Result'
FROM (SELECT count(profile.user_id) AS like_cnt, profile.gender
FROM profile, likes
WHERE profile.user_id = likes.user_id
AND profile.gender = 'f') t_f, 
(SELECT count(profile.user_id) AS like_cnt, profile.gender
FROM profile, likes
WHERE profile.user_id = likes.user_id
AND profile.gender = 'm') t_m;


-- 3.Вывести всех пользователей, которые не отправляли сообщения. 

SELECT users.id
FROM users
WHERE users.id NOT IN 
(
SELECT distinct from_user_id 
FROM messages);

-- 4.*Пусть задан некоторый пользователь. Из всех друзей этого пользователя найдите человека, который больше всех написал ему сообщений.
select concat(users.firstname,' ', users.lastname) as FIO
from (
SELECT count(t2.id) AS mes_cnt, t2.id
FROM 
(SELECT  users.id
FROM users, messages, 
(
SELECT *
FROM friend_requests
WHERE status = 'approved'
AND (initiator_user_id = 3 OR target_user_id = 3)
) t1
WHERE users.id = messages.from_user_id
AND (users.id = t1.initiator_user_id OR users.id = target_user_id)
AND users.id <> 3) t2
group by t2.id) t3, users
where users.id = t3.id
	and t3.mes_cnt = (Select Max(t4.mes_cnt) from 
												(
												SELECT count(t2.id) AS mes_cnt, t2.id
												FROM 
												(SELECT  users.id
												FROM users, messages, 
												(
												SELECT *
												FROM friend_requests
												WHERE status = 'approved'
												AND (initiator_user_id = 3 OR target_user_id = 3)
												) t1
												WHERE users.id = messages.from_user_id
												AND (users.id = t1.initiator_user_id OR users.id = target_user_id)
												AND users.id <> 3) t2
												group by t2.id) t4);

-- --------------------------------------------------------------------------------------------------------------------------------------
-- SEM5
-- Задача 3 . Для базы lesson_4 решите 
-- 1.создайте представление, в котором будут выводится все сообщения, в которых принимал участие пользователь с id= 1; 

USE sem4;
CREATE OR REPLACE VIEW view_message AS
SELECT body
FROM messages
WHERE messages.from_user_id = 1 OR messages.to_user_id = 1;

SELECT * FROM view_message;

-- 2.найдите друзей у друзей пользователя с id = 1 и поместите выборку в представление; (решение задачи с помощью with) 
 -- WITH работает в рамках одного запроса 
 
 WITH friend_by_fried AS
 (SELECT initiator_user_id
 FROM friend_requests
 WHERE target_user_id = '1' AND status = 'approved'
 UNION 
 SELECT target_user_id
 FROM friend_requests
 WHERE initiator_user_id = '1' AND status = 'approved')
 SELECT * 
 FROM friend_by_fried;
 
-- 3.найдите друзей у друзей пользователя с id= 1. (решение задачи с помощью представления “друзья”)

CREATE OR REPLACE VIEW friends AS
WITH friend_by_fried AS
(
SELECT initiator_user_id
FROM friend_requests
WHERE target_user_id = 1 AND status = 'approved'
UNION
SELECT target_user_id
FROM friend_requests
WHERE initiator_user_id = 1 AND status = 'approved'
)
SELECT initiator_user_id
FROM friend_requests
WHERE target_user_id IN (SELECT * FROM friend_by_fried) AND status = 'approved'
UNION
SELECT target_user_id
FROM friend_requests
WHERE initiator_user_id IN (SELECT * FROM friend_by_fried) AND status = 'approved';
SELECT * FROM friends;

-- --------------------------------------------------------------------------------------------------------------------------------------------------------------
-- DZ5
-- 1. Создайте представление, в которое попадет информация о пользователях (имя, фамилия, город и пол), которые не старше 20 лет.

CREATE OR REPLACE VIEW user_less20 AS
SELECT users.firstname, users.lastname, profile.hometown, profile.gender
FROM users
JOIN profile
ON users.id = profile.user_id
WHERE profile.user_id IN 
(SELECT id -- выбор пользователей младше 20 лет
FROM 
(SELECT datediff(current_date(), profile.birthday)/365 AS age, profile.user_id AS id -- подсчет возрвстов всех пользователей
FROM profile) t1
WHERE t1.age < 20);

SELECT * FROM user_less20;

-- 2. Найдите кол-во, отправленных сообщений каждым пользователем и выведите ранжированный список пользователей, 
-- указав имя и фамилию пользователя, количество отправленных сообщений и место в рейтинге (первое место у пользователя 
-- с максимальным количеством сообщений) . (используйте DENSE_RANK)

SELECT firstname, lastname, mes_cnt,
DENSE_RANK() OVER(PARTITION BY t1.wind_1 ORDER BY t1.mes_cnt DESC) AS 'DENSE_RANK'
FROM
(SELECT DISTINCT from_user_id, 
count(messages.body) OVER(PARTITION BY from_user_id ORDER BY from_user_id) AS mes_cnt,
sum(messages.body) OVER(PARTITION BY from_user_id ORDER BY from_user_id) AS wind_1
FROM messages) t1
JOIN users 
ON users.id = t1.from_user_id;

-- 3. Выберите все сообщения, отсортируйте сообщения по возрастанию даты отправления (created_at)
-- и найдите разницу дат отправления между соседними сообщениями, получившегося списка. (используйте LEAD или LAG)


SELECT body, created_at, TIMEDIFF(created_at, t1.Lead) AS 'Difference date'
FROM
(SELECT body, created_at,
LEAD(created_at) OVER(ORDER BY created_at DESC) AS 'Lead'
FROM messages) t1;

-- __-----------------------------------------------------------------------------------------------------------------------------------------------------
-- sem6

-- Задача 1.  Создайте процедуру, которая выберет для одного пользователя 5 пользователей в случайной комбинации, 
-- которые удовлетворяют хотя бы одному критерию: 
-- 1) из одного города 
-- 2) состоят в одной группе 
-- 3) друзья друзей

-- пользователи, которые состоят в одной группе
SELECT uc2.user_id FROM users_communities uc1
JOIN users_communities uc2 ON uc1.community_id = uc2.community_id
WHERE uc1.user_id = 1 AND uc2.user_id != 1


DROP PROCEDURE IF EXISTS select_users; 
DELIMITER // 
CREATE PROCEDURE select_users() 
BEGIN  
	SELECT initiator_user_id AS 'Users'
    FROM friend_requests
    WHERE target_user_id = 1 AND status = 'approved'
    UNION 
    SELECT target_user_id
    FROM friend_requests
    WHERE initiator_user_id = 1 AND status = 'approved';
    SELECT user_id
    FROM profile AS p
    JOIN users_communities AS uc
    ON profile.
    
 
END // 
DELIMITER;
-- Вызов процедуры: CALL procedure_name(argument_list)



DELIMITER //
CREATE PROCEDURE UserRand(
  IN userID INT)
COMMENT 'Выбирает предложения контактов'
BEGIN
  SELECT  users.id as USER_ID, users.firstname, users.lastname, hometown, communities.name as COMMUNITY
  FROM users
      JOIN profile JOIN users_communities JOIN communities 
        ON users.id = profile.user_id AND users.id = users_communities.user_id AND users_communities.community_id = communities.id
  WHERE (hometown = (SELECT hometown FROM profile WHERE user_id = userID) -- из одного города
    OR communities.id IN (SELECT communities.id FROM users_communities WHERE user_id = userID)  -- схожие группы
    OR users.id IN (SELECT target_user_id FROM friend_requests WHERE initiator_user_id = userID AND status = 'approved' UNION
            SELECT initiator_user_id FROM friend_requests WHERE target_user_id = userID AND status = 'approved'))
    AND users.id <> userID
  GROUP BY USER_ID
  ORDER BY RAND() LIMIT 5;
END//
DELIMITER ;


-- Задача 2.  Создание функции, вычисляющей коэффициент популярности пользователя (по заявкам на дружбу – таблица friend_requests)

DELIMITER //
CREATE DEFINER=mysql`@% PROCEDURE `UserRank(
  IN userID INT)
    COMMENT 'Выбирает предложения контактов'
BEGIN
SELECT users.firstname, users.lastname, popKoeff as 'popKoeff.%'
FROM (
  SELECT target_user_id,  cnt * 100 / SUM(cnt) OVER() as popKoeff 
  FROM (
    SELECT target_user_id, COUNT(target_user_id) as cnt
    FROM friend_requests
    GROUP BY target_user_id) t1) t2
  JOIN users 
    ON users.id = t2.target_user_id
WHERE t2.target_user_id = userID;
END
DELIMITER ;

-- Задача 3.  Необходимо перебрать всех пользователей и тем пользователям, 
-- у которых дата рождения меньше определенной даты обновить дату  рождения на  сегодняшнюю дату.  
-- (реализация с помощью цикла)





-- 1.Создайте таблицу users_old, аналогичную таблице users. Создайте процедуру,
--  с помощью которой можно переместить любого (одного) пользователя из таблицы users в таблицу users_old.
-- (использование транзакции с выбором commit или rollback – обязательно). 

CREATE TABLE `users_old` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL COMMENT 'Фамилия',
  `email` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DELIMITER //
CREATE PROCEDURE UserArch(
  IN userID INT)
COMMENT 'Удаление пользователя в архив'
BEGIN
  START TRANSACTION; 
  INSERT INTO users_old (id, firstname, lastname, email)   
    SELECT id, firstname, lastname, email FROM users WHERE id = userID;  
  DELETE FROM users WHERE id = userID;
  COMMIT; 
END//
DELIMITER ;

CALL UserArch(3);

-- 2.Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. 
-- С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", 
-- с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", 
-- с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи". 

DELIMITER //
CREATE PROCEDURE Hello(
  OUT hello_str VARCHAR(50))
COMMENT 'Удаление пользователя в архив'
BEGIN
SELECT IF(CURRENT_TIME >= TIME("6:00:00") AND CURRENT_TIME < TIME("12:00:00"), 'Доброе утро', 
    IF(CURRENT_TIME >= TIME("12:00:00") AND CURRENT_TIME < TIME("18:00:00"), 'Добрый день',
        IF(CURRENT_TIME >= TIME("18:00:00") AND CURRENT_TIME < TIME("00:00:00"), 'Добрый вечер',
        IF(CURRENT_TIME >= TIME("00:00:00") AND CURRENT_TIME < TIME("06:00:00"), 'Доброй ночи','???')))) 
        INTO hello_str;
END//
DELIMITER ;

CALL hello(@hello_str);
select @hello_str;

-- 3.(по желанию)* Создайте таблицу logs типа Archive. 
-- Пусть при каждом создании записи в таблицах users, communities и messages в таблицу logs помещается время и дата создания записи, название таблицы,

CREATE TABLE logs (
  record_datetime DATETIME NOT NULL,
  table_name VARCHAR(45) NOT NULL)
ENGINE = ARCHIVE
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci
COMMENT = 'лог транзакций';

-- создание триггера для users
DELIMITER //
CREATE TRIGGER AfterInsert_Log    
    AFTER INSERT
         ON users FOR EACH ROW    
         BEGIN       
      INSERT INTO logs (record_datetime, table_name) VALUES (CURRENT_TIMESTAMP,'users');
     END//   
DELIMITER ;

-- создание триггера для communities
DELIMITER //
CREATE TRIGGER AfterInsert_Log1    
    AFTER INSERT
         ON communities FOR EACH ROW    
         BEGIN       
      INSERT INTO logs (record_datetime, table_name) VALUES (CURRENT_TIMESTAMP,'communities');
     END//   
DELIMITER ;

-- создание триггера для messages
DELIMITER //  
CREATE TRIGGER AfterInsert_Log2   
    AFTER INSERT
         ON messages FOR EACH ROW    
         BEGIN       
      INSERT INTO logs (record_datetime, table_name) VALUES (CURRENT_TIMESTAMP,'messages');
     END//   
DELIMITER ;

INSERT INTO users (id,firstname,lastname,email) VALUES (11,'sd','as','sss@sss.ru'); -- проверка для users
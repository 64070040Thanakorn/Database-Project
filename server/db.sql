-- -- CreateTable
-- CREATE TABLE `Users` (
--     `user_id` VARCHAR(191) NOT NULL,
--     `first_name` VARCHAR(191) NOT NULL,
--     `last_name` VARCHAR(191) NOT NULL,
--     `username` VARCHAR(191) NOT NULL,
--     `password` VARCHAR(191) NOT NULL,
--     `email` VARCHAR(191) NOT NULL,
--     `image` VARCHAR(191) NULL,
--     `role` ENUM('Student', 'Professor', 'Admin') NOT NULL DEFAULT 'Student',

--     UNIQUE INDEX `Users_email_key`(`email`),
--     PRIMARY KEY (`user_id`)
-- ) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- -- CreateTable
-- CREATE TABLE `Students` (
--     `student_id` VARCHAR(191) NOT NULL,
--     `user_id` VARCHAR(191) NOT NULL,
--     `job` VARCHAR(191) NULL,

--     UNIQUE INDEX `Students_user_id_key`(`user_id`),
--     PRIMARY KEY (`student_id`)
-- ) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- -- CreateTable
-- CREATE TABLE `Professors` (
--     `professor_id` VARCHAR(191) NOT NULL,
--     `user_id` VARCHAR(191) NOT NULL,
--     `info` VARCHAR(191) NULL,

--     UNIQUE INDEX `Professors_user_id_key`(`user_id`),
--     PRIMARY KEY (`professor_id`)
-- ) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- -- CreateTable
-- CREATE TABLE `Course` (
--     `course_id` VARCHAR(191) NOT NULL,
--     `title` VARCHAR(191) NOT NULL,
--     `description` VARCHAR(255) NULL,
--     `price` INTEGER NOT NULL,
--     `level` VARCHAR(191) NOT NULL,
--     `received` VARCHAR(191) NOT NULL,
--     `create_date` DATETIME(3) NOT NULL,
--     `end_date` DATETIME(3) NOT NULL,
--     `professor_id` VARCHAR(191) NOT NULL,
--     `start_date` DATETIME(3) NOT NULL,
--     `status` BOOLEAN NOT NULL,
--     `thumbnail` VARCHAR(191) NULL,

--     PRIMARY KEY (`course_id`)
-- ) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- -- CreateTable
-- CREATE TABLE `Comments` (
--     `comment_id` VARCHAR(191) NOT NULL,
--     `content` VARCHAR(191) NOT NULL,
--     `user_id` VARCHAR(191) NOT NULL,
--     `course_id` VARCHAR(191) NOT NULL,

--     PRIMARY KEY (`comment_id`)
-- ) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- -- CreateTable
-- CREATE TABLE `CourseRating` (
--     `course_rating_id` VARCHAR(191) NOT NULL,
--     `course_id` VARCHAR(191) NOT NULL,
--     `student_id` VARCHAR(191) NOT NULL,

--     PRIMARY KEY (`course_rating_id`)
-- ) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- -- CreateTable
-- CREATE TABLE `ProfessorRating` (
--     `professor_rating_id` VARCHAR(191) NOT NULL,
--     `professor_id` VARCHAR(191) NOT NULL,
--     `student_id` VARCHAR(191) NOT NULL,

--     PRIMARY KEY (`professor_rating_id`)
-- ) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- -- CreateTable
-- CREATE TABLE `StudentsEnroll` (
--     `student_id` VARCHAR(191) NOT NULL,
--     `course_id` VARCHAR(191) NOT NULL,
--     `enroll_date` DATETIME(3) NOT NULL,

--     PRIMARY KEY (`student_id`, `course_id`)
-- ) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- -- AddForeignKey
-- ALTER TABLE `Students` ADD CONSTRAINT `Students_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `Users`(`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- -- AddForeignKey
-- ALTER TABLE `Professors` ADD CONSTRAINT `Professors_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `Users`(`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- -- AddForeignKey
-- ALTER TABLE `Course` ADD CONSTRAINT `Course_professor_id_fkey` FOREIGN KEY (`professor_id`) REFERENCES `Professors`(`professor_id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- -- AddForeignKey
-- ALTER TABLE `Comments` ADD CONSTRAINT `Comments_course_id_fkey` FOREIGN KEY (`course_id`) REFERENCES `Course`(`course_id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- -- AddForeignKey
-- ALTER TABLE `Comments` ADD CONSTRAINT `Comments_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `Users`(`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- -- AddForeignKey
-- ALTER TABLE `CourseRating` ADD CONSTRAINT `CourseRating_course_id_fkey` FOREIGN KEY (`course_id`) REFERENCES `Course`(`course_id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- -- AddForeignKey
-- ALTER TABLE `CourseRating` ADD CONSTRAINT `CourseRating_student_id_fkey` FOREIGN KEY (`student_id`) REFERENCES `Students`(`student_id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- -- AddForeignKey
-- ALTER TABLE `ProfessorRating` ADD CONSTRAINT `ProfessorRating_professor_id_fkey` FOREIGN KEY (`professor_id`) REFERENCES `Professors`(`professor_id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- -- AddForeignKey
-- ALTER TABLE `ProfessorRating` ADD CONSTRAINT `ProfessorRating_student_id_fkey` FOREIGN KEY (`student_id`) REFERENCES `Students`(`student_id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- -- AddForeignKey
-- ALTER TABLE `StudentsEnroll` ADD CONSTRAINT `StudentsEnroll_course_id_fkey` FOREIGN KEY (`course_id`) REFERENCES `Course`(`course_id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- -- AddForeignKey
-- ALTER TABLE `StudentsEnroll` ADD CONSTRAINT `StudentsEnroll_student_id_fkey` FOREIGN KEY (`student_id`) REFERENCES `Students`(`student_id`) ON DELETE CASCADE ON UPDATE CASCADE;


-- DATA

INSERT INTO `Users` (`user_id`,`first_name`,`last_name`,`username`,`password`,`email`,`image`,`role`) VALUES ('068061fa-df60-46ba-a194-e4d93e7cc468','madara06','madara06','madara06','$2b$13$QSKl56zUTJVUMj.4oCZ7GuiNQUmVzsPNdA2DIzp7F.PiMKuIvaRga','madara06@g','https://cdn.myanimelist.net/images/characters/12/450359.jpg','Professor');
INSERT INTO `Users` (`user_id`,`first_name`,`last_name`,`username`,`password`,`email`,`image`,`role`) VALUES ('12e1f361-857a-4213-b187-1578530b2a4e','madara02','madara02','madara02','$2b$13$FA73BSwBgFTxV9yoE3AZ.OApk3au6QhnhkGJRkamNhgKwVqvYqNn2','madara02@g','https://cdn.myanimelist.net/images/characters/12/450359.jpg','Professor');
INSERT INTO `Users` (`user_id`,`first_name`,`last_name`,`username`,`password`,`email`,`image`,`role`) VALUES ('1fa30cc7-0cb3-44f9-a011-8581a6c24f94','Thanakorn','123','non','$2b$13$LK2YyJhOmwazCo1zXFXRZOZN8LOyA0Wdm57AU6DhFSLxLBotpA9J2','test@email.com','https://cdn.myanimelist.net/images/characters/12/450359.jpg','Professor');
INSERT INTO `Users` (`user_id`,`first_name`,`last_name`,`username`,`password`,`email`,`image`,`role`) VALUES ('22748b4a-3c21-4b53-bac3-c36f606f3a38','alex','sander','nonzaza','$2b$13$b57uyf3OgE7/wKe1lacimugb3/gQorIV0e6sGe5iSYtHtGywxGVc6','1@email','https://media.discordapp.net/attachments/1067453596351856650/1096914677780451378/Portrait_Placeholder.png','Professor');
INSERT INTO `Users` (`user_id`,`first_name`,`last_name`,`username`,`password`,`email`,`image`,`role`) VALUES ('34a1ece2-3ab3-4267-8906-083fb4716f1a','test','aniother','1','$2b$13$NgzRE1oOZNZKUGiU0gHoZ.CRuszKLmzIPoptFaYW5dVa3mkL0j5eC','1@1','../assets/user_profile.png','Professor');
INSERT INTO `Users` (`user_id`,`first_name`,`last_name`,`username`,`password`,`email`,`image`,`role`) VALUES ('354ffd0a-2716-4d64-9416-de7df69b401e','madara15','madara15','madara15','$2b$13$yyhyGu1CQ/UoMeE2x99gL.LP4anxelKwynI3nMJdUpLMTh/cp9lTe','madara15@g','https://cdn.myanimelist.net/images/characters/12/450359.jpg','Student');
INSERT INTO `Users` (`user_id`,`first_name`,`last_name`,`username`,`password`,`email`,`image`,`role`) VALUES ('4d00a825-bace-4cfe-b4c3-f80d022a0f07','madara03','madara03','madara03','$2b$13$csk/IBtWytHqYi9fTb3gfOFXOdp1ypnCSzOPG13DQdcCeuFR2y2UG','madara03@g','https://cdn.myanimelist.net/images/characters/12/450359.jpg','Professor');
INSERT INTO `Users` (`user_id`,`first_name`,`last_name`,`username`,`password`,`email`,`image`,`role`) VALUES ('4deccbfc-5c22-4f5b-8d6f-623facffebbe','madara10','madara10','madara10','$2b$13$yc1v2JGVP2WZdjEVcFrPweEBcSzf3lc2/G4DOhbMfZJRK1YHJZXue','madara10@g','https://cdn.myanimelist.net/images/characters/12/450359.jpg','Professor');
INSERT INTO `Users` (`user_id`,`first_name`,`last_name`,`username`,`password`,`email`,`image`,`role`) VALUES ('4e31a629-4418-4998-97e8-8281160982bd','madara18','madara18','madara18','$2b$13$h6KA164qTS45wSmwX1UVl.6TjblvWP.IRmkqVPV0.e2QnO2IrOEWq','madara18@g','https://cdn.myanimelist.net/images/characters/12/450359.jpg','Student');
INSERT INTO `Users` (`user_id`,`first_name`,`last_name`,`username`,`password`,`email`,`image`,`role`) VALUES ('591a0ee8-71a4-4af0-84b0-531849918017','madara14','madara14','madara14','$2b$13$1LbSka2DRZduKH0aYyitSOGFl66cv8qLnKatlrtYLbegFwKQvlVSS','madara14@g','https://cdn.myanimelist.net/images/characters/12/450359.jpg','Student');
INSERT INTO `Users` (`user_id`,`first_name`,`last_name`,`username`,`password`,`email`,`image`,`role`) VALUES ('6e6e8ba3-f09c-4cad-833e-6df7c7b7de58','madara07','madara07','madara07','$2b$13$.8pNXkGCk/x5aOzCaqBl9.glthNVTvNJi7OpXBfWxBh92MV3hPXDW','madara07@g','https://cdn.myanimelist.net/images/characters/12/450359.jpg','Professor');
INSERT INTO `Users` (`user_id`,`first_name`,`last_name`,`username`,`password`,`email`,`image`,`role`) VALUES ('72826129-a425-49bd-a037-70e984bf59c0','madara05','madara05','madara05','$2b$13$2faKeXS09vKdd.xEMNFwHOIK1DliPJCICkJ/Zz2cyUaRUoQeDhPy2','madara05@g','https://cdn.myanimelist.net/images/characters/12/450359.jpg','Professor');
INSERT INTO `Users` (`user_id`,`first_name`,`last_name`,`username`,`password`,`email`,`image`,`role`) VALUES ('77b61870-db84-430d-8362-68f143c39146','jeb','jeb','jeb','$2b$13$mL5UI5LRGEJYKagIRu/Heu4wggmsNr3MdKUW7J/Qh/K.1wwZPI476','jeb@gmail.com','https://cdn.myanimelist.net/images/characters/12/450359.jpg','Professor');
INSERT INTO `Users` (`user_id`,`first_name`,`last_name`,`username`,`password`,`email`,`image`,`role`) VALUES ('7b0caa63-f1b4-4422-a55e-8e60e9815248','madara09','madara09','madara09','$2b$13$FfWBMmlm8u7jlE.Hj.LlKO0bTdQ58vEwVQjDeVXvk1nkHH2PY2Jt6','madara09@g','https://cdn.myanimelist.net/images/characters/12/450359.jpg','Professor');
INSERT INTO `Users` (`user_id`,`first_name`,`last_name`,`username`,`password`,`email`,`image`,`role`) VALUES ('7ef94ff5-598b-4ef8-be9d-ec8614090360','madara11','madara11','madara11','$2b$13$t5zBhBEL6OzN4Ixs7qqBYeveqXy2hSReKzogNhBBhFnmOE4GHUPm2','madara11@g','https://cdn.myanimelist.net/images/characters/12/450359.jpg','Student');
INSERT INTO `Users` (`user_id`,`first_name`,`last_name`,`username`,`password`,`email`,`image`,`role`) VALUES ('8c98b5a3-07c9-485e-8eb7-d15b1ab73dc6','madara08','madara08','madara08','$2b$13$FtDclZNber9eQFAlbOY3UOl9ZgiwtlV4JfgeEh7b8572ozMfjYD4q','madara08@g','https://cdn.myanimelist.net/images/characters/12/450359.jpg','Professor');
INSERT INTO `Users` (`user_id`,`first_name`,`last_name`,`username`,`password`,`email`,`image`,`role`) VALUES ('9dba5e95-ca8b-49db-a630-70015fdb7f6e','madara12','madara12','madara12','$2b$13$74Fp89qdXsEZ2wc8Pd8AnOeVaUY38LWTzBMvI7xbnze7vggGYJ1Qm','madara12@g','https://cdn.myanimelist.net/images/characters/12/450359.jpg','Student');
INSERT INTO `Users` (`user_id`,`first_name`,`last_name`,`username`,`password`,`email`,`image`,`role`) VALUES ('a0871169-1d0e-4d6a-804c-29582be43735','madara20','madara20','madara20','$2b$13$TZSvF9PTFLOhT3Z2GZpBluSffzfCccHyxa5KUgnuWY0EBNS/sArRW','madara20@g','https://cdn.myanimelist.net/images/characters/12/450359.jpg','Student');
INSERT INTO `Users` (`user_id`,`first_name`,`last_name`,`username`,`password`,`email`,`image`,`role`) VALUES ('adbbf683-26a3-4982-adc2-0dbec04dcdf6','madara01','madara01','madara01','$2b$13$J8RQ.EowAm7d.XkF2Eu.lunEi3ksfEZsNCQK.cnYML/ybbAmI.eXS','madara01@g','https://cdn.myanimelist.net/images/characters/12/450359.jpg','Professor');
INSERT INTO `Users` (`user_id`,`first_name`,`last_name`,`username`,`password`,`email`,`image`,`role`) VALUES ('b1d5b934-2264-4a68-a38d-44a9c2f2f172','name','lastname','kaka123','$2b$13$KMH9a7FccBWxXnw7KjIqge8.fHJRbXZZPTf1DwfkSc0F/DrXIkQby','test@email','https://cdn.myanimelist.net/images/characters/12/450359.jpg','Professor');
INSERT INTO `Users` (`user_id`,`first_name`,`last_name`,`username`,`password`,`email`,`image`,`role`) VALUES ('b606b54e-15a5-47d2-a056-1c27c49112a5','madara13','madara13','madara13','$2b$13$79QFSZ47b8cxWxWqvMfo/e0We8v.Q5RYca4b7xO0gkbUTKRmI.vzO','madara13@g','https://cdn.myanimelist.net/images/characters/12/450359.jpg','Student');
INSERT INTO `Users` (`user_id`,`first_name`,`last_name`,`username`,`password`,`email`,`image`,`role`) VALUES ('ce489694-e5a5-4d64-aaaf-af5b8e2cf9d4','alex','sander','alexzaza','$2b$13$QrGtk.GExv91iPhB3tdTh.ssZzjTf2vwo0t9ApodYna58HXuJ5gHK','123@email','https://media.discordapp.net/attachments/1067453596351856650/1096912864746418390/user_profile.png?width=676&height=676','Professor');
INSERT INTO `Users` (`user_id`,`first_name`,`last_name`,`username`,`password`,`email`,`image`,`role`) VALUES ('d60e59a7-879f-4a18-9004-e5e3e1d02644','madara04','madara04','madara04@g','$2b$13$hHvd0BxFJIGBF8ZTSzMY4u5duCmn/H5r8FOMBb3WAntkXqYQ5VKgC','madara04@g','https://cdn.myanimelist.net/images/characters/12/450359.jpg','Professor');
INSERT INTO `Users` (`user_id`,`first_name`,`last_name`,`username`,`password`,`email`,`image`,`role`) VALUES ('dfb4f1be-7277-4aa3-8c6e-4f5987652307','ธรรมปพน','ประทุม','tunatun','$2b$13$H3vLt1ujGybbMzQd8BjLDu3OMc3DdUTwr/of9Uhe9I9auDhfp8n6K','64070046@it.kmitl.ac.th','https://media.discordapp.net/attachments/1067453596351856650/1096914677780451378/Portrait_Placeholder.png','Student');
INSERT INTO `Users` (`user_id`,`first_name`,`last_name`,`username`,`password`,`email`,`image`,`role`) VALUES ('e4204653-37ad-4337-a813-f377e793ff47','madara16','madara16','madara16','$2b$13$Ggh7mENnI9wYzp5fW1iRmuMcNbN4hwoT3MVdUgDVsuq3oozE2fgz2','madara16@g','https://cdn.myanimelist.net/images/characters/12/450359.jpg','Student');
INSERT INTO `Users` (`user_id`,`first_name`,`last_name`,`username`,`password`,`email`,`image`,`role`) VALUES ('ea752427-7567-4535-89c0-f0e09155394f','madara17','madara17','madara17','$2b$13$EJWyIYZVZgaQqnO7T2E/iOAB4OlFfxLnPDXm6YkxCJ4CLgSbFmlHm','madara17@g','https://cdn.myanimelist.net/images/characters/12/450359.jpg','Student');
INSERT INTO `Users` (`user_id`,`first_name`,`last_name`,`username`,`password`,`email`,`image`,`role`) VALUES ('f4959aaf-bd79-4060-be09-c06ac0a5bbd4','madara19','madara19','madara19','$2b$13$UQHdC97m0xJgVQ8aTJjJquY1nOnuLtIlOtNv6Z20ZBzl3gK75.5Sq','madara19@g','https://cdn.myanimelist.net/images/characters/12/450359.jpg','Student');

INSERT INTO `Students` (`student_id`,`user_id`,`job`) VALUES ('2fc2bfd0-aee9-4c4b-97b1-875372df4b32','a0871169-1d0e-4d6a-804c-29582be43735',NULL);
INSERT INTO `Students` (`student_id`,`user_id`,`job`) VALUES ('4e52f8e2-eefd-4215-95f1-3f5449ffc772','f4959aaf-bd79-4060-be09-c06ac0a5bbd4',NULL);
INSERT INTO `Students` (`student_id`,`user_id`,`job`) VALUES ('7de55a96-c96c-41f0-bfd6-6e6901b936ed','ea752427-7567-4535-89c0-f0e09155394f',NULL);
INSERT INTO `Students` (`student_id`,`user_id`,`job`) VALUES ('90d504ec-4332-42a8-af71-2551312f9ce5','7ef94ff5-598b-4ef8-be9d-ec8614090360',NULL);
INSERT INTO `Students` (`student_id`,`user_id`,`job`) VALUES ('9ccea7e6-a6a4-4cb6-99aa-dcc868dface7','e4204653-37ad-4337-a813-f377e793ff47',NULL);
INSERT INTO `Students` (`student_id`,`user_id`,`job`) VALUES ('acdca3d5-7cf3-4aa3-bbd8-4b8a8abdfb11','9dba5e95-ca8b-49db-a630-70015fdb7f6e',NULL);
INSERT INTO `Students` (`student_id`,`user_id`,`job`) VALUES ('cbc8c4db-e7d5-4fc0-be2c-c9965d8f93e7','354ffd0a-2716-4d64-9416-de7df69b401e',NULL);
INSERT INTO `Students` (`student_id`,`user_id`,`job`) VALUES ('d63b3b87-a264-432f-9471-80a56808685f','4e31a629-4418-4998-97e8-8281160982bd',NULL);
INSERT INTO `Students` (`student_id`,`user_id`,`job`) VALUES ('e13d0f3d-d736-4153-9c0a-8b7856c5e7e3','591a0ee8-71a4-4af0-84b0-531849918017',NULL);
INSERT INTO `Students` (`student_id`,`user_id`,`job`) VALUES ('e9502b2b-48a4-4259-bf7c-835d42c26359','b606b54e-15a5-47d2-a056-1c27c49112a5',NULL);
INSERT INTO `Students` (`student_id`,`user_id`,`job`) VALUES ('f8795e43-3705-46fd-ae44-58f47e8a0481','dfb4f1be-7277-4aa3-8c6e-4f5987652307',NULL);

INSERT INTO `Professors` (`professor_id`,`user_id`,`info`) VALUES ('3a1f8808-eabc-4dbd-9b75-fddf20d76acb','8c98b5a3-07c9-485e-8eb7-d15b1ab73dc6','ผู้เชี่ยวชาญด้านประดิษฐ์ระเบิดขวด, ได้รับดีกรีจากสถาบัน Hogwarts ในด้านเวทมนต์ศาสตร์ 2077');
INSERT INTO `Professors` (`professor_id`,`user_id`,`info`) VALUES ('455d476f-90fd-4514-8fb6-176ac57d1553','068061fa-df60-46ba-a194-e4d93e7cc468','ผู้เชี่ยวชาญด้านประดิษฐ์ระเบิดขวด, ได้รับดีกรีจากสถาบัน Hogwarts ในด้านเวทมนต์ศาสตร์ 2077');
INSERT INTO `Professors` (`professor_id`,`user_id`,`info`) VALUES ('4fe14dd9-43ff-4255-b0cc-a81b56419f03','72826129-a425-49bd-a037-70e984bf59c0','ผู้เชี่ยวชาญด้านประดิษฐ์ระเบิดขวด, ได้รับดีกรีจากสถาบัน Hogwarts ในด้านเวทมนต์ศาสตร์ 2077');
INSERT INTO `Professors` (`professor_id`,`user_id`,`info`) VALUES ('506b34b3-a86a-4dc1-8427-6ad22422b831','22748b4a-3c21-4b53-bac3-c36f606f3a38',NULL);
INSERT INTO `Professors` (`professor_id`,`user_id`,`info`) VALUES ('5bb437a4-9a3b-4597-a33c-0a1c3687a187','ce489694-e5a5-4d64-aaaf-af5b8e2cf9d4',NULL);
INSERT INTO `Professors` (`professor_id`,`user_id`,`info`) VALUES ('5fadccc2-ce90-48f8-ab1c-3987326de79f','4deccbfc-5c22-4f5b-8d6f-623facffebbe','ผู้เชี่ยวชาญด้านประดิษฐ์ระเบิดขวด, ได้รับดีกรีจากสถาบัน Hogwarts ในด้านเวทมนต์ศาสตร์ 2077');
INSERT INTO `Professors` (`professor_id`,`user_id`,`info`) VALUES ('67780643-b299-40ce-9ed0-36aba0579570','77b61870-db84-430d-8362-68f143c39146','ผู้เชี่ยวชาญด้านประดิษฐ์ระเบิดขวด, ได้รับดีกรีจากสถาบัน Hogwarts ในด้านเวทมนต์ศาสตร์ 2077');
INSERT INTO `Professors` (`professor_id`,`user_id`,`info`) VALUES ('68ce29ad-27eb-449f-b2bc-37532a5cb4e4','d60e59a7-879f-4a18-9004-e5e3e1d02644','ผู้เชี่ยวชาญด้านประดิษฐ์ระเบิดขวด, ได้รับดีกรีจากสถาบัน Hogwarts ในด้านเวทมนต์ศาสตร์ 2077');
INSERT INTO `Professors` (`professor_id`,`user_id`,`info`) VALUES ('82ec1d89-917d-4b1a-bac5-0e9635e70eff','12e1f361-857a-4213-b187-1578530b2a4e','ผู้เชี่ยวชาญด้านประดิษฐ์ระเบิดขวด, ได้รับดีกรีจากสถาบัน Hogwarts ในด้านเวทมนต์ศาสตร์ 2077');
INSERT INTO `Professors` (`professor_id`,`user_id`,`info`) VALUES ('9f9c1dea-2171-4bff-81f2-3a15f500b7f5','6e6e8ba3-f09c-4cad-833e-6df7c7b7de58','ผู้เชี่ยวชาญด้านประดิษฐ์ระเบิดขวด, ได้รับดีกรีจากสถาบัน Hogwarts ในด้านเวทมนต์ศาสตร์ 2077');
INSERT INTO `Professors` (`professor_id`,`user_id`,`info`) VALUES ('a8e7e881-4c08-4bcd-8ecc-903fb273f762','4d00a825-bace-4cfe-b4c3-f80d022a0f07','ผู้เชี่ยวชาญด้านประดิษฐ์ระเบิดขวด, ได้รับดีกรีจากสถาบัน Hogwarts ในด้านเวทมนต์ศาสตร์ 2077');
INSERT INTO `Professors` (`professor_id`,`user_id`,`info`) VALUES ('c85f9ecc-df74-4940-8492-94fd1f450d0d','34a1ece2-3ab3-4267-8906-083fb4716f1a',NULL);
INSERT INTO `Professors` (`professor_id`,`user_id`,`info`) VALUES ('d59db147-c03b-451a-852f-42bcf48c36ce','b1d5b934-2264-4a68-a38d-44a9c2f2f172',NULL);
INSERT INTO `Professors` (`professor_id`,`user_id`,`info`) VALUES ('e07f2838-a701-42ef-b61c-f305994ed9a3','7b0caa63-f1b4-4422-a55e-8e60e9815248','ผู้เชี่ยวชาญด้านประดิษฐ์ระเบิดขวด, ได้รับดีกรีจากสถาบัน Hogwarts ในด้านเวทมนต์ศาสตร์ 2077');
INSERT INTO `Professors` (`professor_id`,`user_id`,`info`) VALUES ('ec89404d-8f79-4b2d-b001-1c36621b5974','adbbf683-26a3-4982-adc2-0dbec04dcdf6','ผู้เชี่ยวชาญด้านประดิษฐ์ระเบิดขวด, ได้รับดีกรีจากสถาบัน Hogwarts ในด้านเวทมนต์ศาสตร์ 2077');
INSERT INTO `Professors` (`professor_id`,`user_id`,`info`) VALUES ('fa62a596-95c4-471b-8cde-9e1b0837e277','1fa30cc7-0cb3-44f9-a011-8581a6c24f94','HELLO WORD มาดาระ ไง');

INSERT INTO `Course` (`course_id`,`title`,`description`,`price`,`level`,`received`,`create_date`,`end_date`,`professor_id`,`start_date`,`status`,`thumbnail`) VALUES ('0663cdbb-43fc-4813-9da7-fecd2e4b5724','madara01','test',1000,'ยาก','ใบรับรอง','2023-04-15 14:25:32.583','1970-02-01 00:00:00.000','3a1f8808-eabc-4dbd-9b75-fddf20d76acb','1970-01-01 00:00:00.000',1,'https://media.discordapp.net/attachments/1067453596351856650/1096811347355893892/example_img.png');
INSERT INTO `Course` (`course_id`,`title`,`description`,`price`,`level`,`received`,`create_date`,`end_date`,`professor_id`,`start_date`,`status`,`thumbnail`) VALUES ('21eb4b1a-2ce9-4a01-9a13-b533dc801882','madara02','ทำไมยังเป็นฉันที่ต้องผิดหวัง รักใครกี่ครั้งต้องปวดร้าว กอดตัวเองทุกครั้งเมื่ออากาศหนาว ค่ำเย็นจนเช้าก็ยังเหงา',1000,'ยาก','ใบรับรอง','2023-04-15 14:23:15.661','1970-01-01 00:00:00.000','3a1f8808-eabc-4dbd-9b75-fddf20d76acb','1970-01-01 00:00:00.000',1,'https://mobirise.com/bootstrap-carousel/assets2/images/thomas-smith-399133-1707x2560.jpg');
INSERT INTO `Course` (`course_id`,`title`,`description`,`price`,`level`,`received`,`create_date`,`end_date`,`professor_id`,`start_date`,`status`,`thumbnail`) VALUES ('26071f23-5e1a-43c5-a164-f06669d4060c','madara03','ทำไมยังเป็นฉันที่ต้องผิดหวัง รักใครกี่ครั้งต้องปวดร้าว กอดตัวเองทุกครั้งเมื่ออากาศหนาว ค่ำเย็นจนเช้าก็ยังเหงา',1000,'ยาก','ใบรับรอง','2023-04-15 14:27:11.003','1970-01-01 00:00:00.000','3a1f8808-eabc-4dbd-9b75-fddf20d76acb','1970-01-01 00:00:00.000',0,'https://media.discordapp.net/attachments/1067453596351856650/1096811347355893892/example_img.png');
INSERT INTO `Course` (`course_id`,`title`,`description`,`price`,`level`,`received`,`create_date`,`end_date`,`professor_id`,`start_date`,`status`,`thumbnail`) VALUES ('617f77cc-3a4b-4550-a831-b1283367a015','madara04','ทำไมยังเป็นฉันที่ต้องผิดหวัง รักใครกี่ครั้งต้องปวดร้าว กอดตัวเองทุกครั้งเมื่ออากาศหนาว ค่ำเย็นจนเช้าก็ยังเหงา',1000,'ยาก','ใบรับรอง','2023-04-15 14:22:01.218','1970-01-01 00:00:00.000','3a1f8808-eabc-4dbd-9b75-fddf20d76acb','1970-01-01 00:00:00.000',0,'https://media.discordapp.net/attachments/1067453596351856650/1096811347355893892/example_img.png');
INSERT INTO `Course` (`course_id`,`title`,`description`,`price`,`level`,`received`,`create_date`,`end_date`,`professor_id`,`start_date`,`status`,`thumbnail`) VALUES ('654e721c-6fd4-429c-bf86-d0f308db5719','test','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',1200,'ระดับปานกลาง','ประกาศนียบัตร','2023-04-15 22:59:39.683','2023-04-20 22:59:00.000','506b34b3-a86a-4dc1-8427-6ad22422b831','2023-04-15 22:59:00.000',0,'https://media.discordapp.net/attachments/1067453596351856650/1096913733281927369/no-picture-available-placeholder-thumbnail-icon-illustration-design.png');
INSERT INTO `Course` (`course_id`,`title`,`description`,`price`,`level`,`received`,`create_date`,`end_date`,`professor_id`,`start_date`,`status`,`thumbnail`) VALUES ('795a2872-7847-4427-92e4-19e8e534a76b','madara05','ทำไมยังเป็นฉันที่ต้องผิดหวัง รักใครกี่ครั้งต้องปวดร้าว กอดตัวเองทุกครั้งเมื่ออากาศหนาว ค่ำเย็นจนเช้าก็ยังเหงา',1000,'ยาก','ใบรับรอง','2023-04-15 14:22:31.175','1970-01-01 00:00:00.000','3a1f8808-eabc-4dbd-9b75-fddf20d76acb','1970-01-01 00:00:00.000',0,'https://media.discordapp.net/attachments/1067453596351856650/1096811347355893892/example_img.png');
INSERT INTO `Course` (`course_id`,`title`,`description`,`price`,`level`,`received`,`create_date`,`end_date`,`professor_id`,`start_date`,`status`,`thumbnail`) VALUES ('8e552b8f-a0b8-4244-9120-ac8d461e496e','test','testtesttetetete',3000,'ระดับเริ่มต้น','มีไฟล์ให้ดาวน์โหลด','2023-04-15 23:42:19.547','2023-04-28 23:42:00.000','506b34b3-a86a-4dc1-8427-6ad22422b831','2023-04-15 23:42:00.000',0,'https://media.discordapp.net/attachments/1067453596351856650/1096913733281927369/no-picture-available-placeholder-thumbnail-icon-illustration-design.png');
INSERT INTO `Course` (`course_id`,`title`,`description`,`price`,`level`,`received`,`create_date`,`end_date`,`professor_id`,`start_date`,`status`,`thumbnail`) VALUES ('97d7c037-501c-4377-81bf-f2404d945555','test','afsdas',123,'ระดับปานกลาง','แบบทดสอบ','2023-04-15 16:09:10.210','2023-04-22 16:08:00.000','67780643-b299-40ce-9ed0-36aba0579570','2023-04-15 16:08:00.000',0,'https://www.oberlo.com/media/1603969791-image-1.jpg?fit=max&fm=jpg&w=1824');
INSERT INTO `Course` (`course_id`,`title`,`description`,`price`,`level`,`received`,`create_date`,`end_date`,`professor_id`,`start_date`,`status`,`thumbnail`) VALUES ('bda8434f-5c73-4e72-baad-c5cfd5ae967d','madara06','ทำไมยังเป็นฉันที่ต้องผิดหวัง รักใครกี่ครั้งต้องปวดร้าว กอดตัวเองทุกครั้งเมื่ออากาศหนาว ค่ำเย็นจนเช้าก็ยังเหงา',1000,'ยาก','ใบรับรอง','2023-04-15 14:20:14.025','1970-01-01 00:00:00.000','3a1f8808-eabc-4dbd-9b75-fddf20d76acb','1970-01-01 00:00:00.000',1,'https://media.discordapp.net/attachments/1067453596351856650/1096811347355893892/example_img.png');
INSERT INTO `Course` (`course_id`,`title`,`description`,`price`,`level`,`received`,`create_date`,`end_date`,`professor_id`,`start_date`,`status`,`thumbnail`) VALUES ('ccc9aac5-59da-4267-866c-11362eac25fe','madara07','ทำไมยังเป็นฉันที่ต้องผิดหวัง รักใครกี่ครั้งต้องปวดร้าว กอดตัวเองทุกครั้งเมื่ออากาศหนาว ค่ำเย็นจนเช้าก็ยังเหงา',1000,'ยาก','ใบรับรอง','2023-04-15 14:20:55.388','1970-01-01 00:00:00.000','3a1f8808-eabc-4dbd-9b75-fddf20d76acb','1970-01-01 00:00:00.000',0,'https://media.discordapp.net/attachments/1067453596351856650/1096811347355893892/example_img.png');
INSERT INTO `Course` (`course_id`,`title`,`description`,`price`,`level`,`received`,`create_date`,`end_date`,`professor_id`,`start_date`,`status`,`thumbnail`) VALUES ('e131877f-b093-41e0-85a0-41c5a2a6a4dc','madara08','ทำไมยังเป็นฉันที่ต้องผิดหวัง รักใครกี่ครั้งต้องปวดร้าว กอดตัวเองทุกครั้งเมื่ออากาศหนาว ค่ำเย็นจนเช้าก็ยังเหงา',1000,'ยาก','ใบรับรอง','2023-04-15 14:24:40.579','1970-01-01 00:00:00.000','3a1f8808-eabc-4dbd-9b75-fddf20d76acb','1970-01-01 00:00:00.000',0,'https://media.discordapp.net/attachments/1067453596351856650/1096811347355893892/example_img.png');
INSERT INTO `Course` (`course_id`,`title`,`description`,`price`,`level`,`received`,`create_date`,`end_date`,`professor_id`,`start_date`,`status`,`thumbnail`) VALUES ('e25bf009-6324-49ff-bfc2-ed7cc6a79de1','madara09','ทำไมยังเป็นฉันที่ต้องผิดหวัง รักใครกี่ครั้งต้องปวดร้าว กอดตัวเองทุกครั้งเมื่ออากาศหนาว ค่ำเย็นจนเช้าก็ยังเหงา',1000,'ยาก','ใบรับรอง','2023-04-15 14:24:03.438','1970-01-01 00:00:00.000','3a1f8808-eabc-4dbd-9b75-fddf20d76acb','1970-01-01 00:00:00.000',1,'https://media.discordapp.net/attachments/1067453596351856650/1096811347355893892/example_img.png');
INSERT INTO `Course` (`course_id`,`title`,`description`,`price`,`level`,`received`,`create_date`,`end_date`,`professor_id`,`start_date`,`status`,`thumbnail`) VALUES ('f7cde603-bd15-4255-973c-e75ab68170f6','madara10','ทำไมยังเป็นฉันที่ต้องผิดหวัง รักใครกี่ครั้งต้องปวดร้าว กอดตัวเองทุกครั้งเมื่ออากาศหนาว ค่ำเย็นจนเช้าก็ยังเหงา',1000,'ยาก','ใบรับรอง','2023-04-15 14:26:21.798','1970-01-01 00:00:00.000','3a1f8808-eabc-4dbd-9b75-fddf20d76acb','1970-01-01 00:00:00.000',1,'https://media.discordapp.net/attachments/1067453596351856650/1096811347355893892/example_img.png');

INSERT INTO `Comments` (`comment_id`,`content`,`user_id`,`course_id`) VALUES ('04fb116a-7931-4730-a447-200dcc08a6d2','ทำไมยังเป็นฉันที่ต้องผิดหวัง รักใครกี่ครั้งต้องปวดร้าว กอดตัวเองทุกครั้งเมื่ออากาศหนาว ค่ำเย็นจนเช้าก็ยังเหงา','068061fa-df60-46ba-a194-e4d93e7cc468','0663cdbb-43fc-4813-9da7-fecd2e4b5724');
INSERT INTO `Comments` (`comment_id`,`content`,`user_id`,`course_id`) VALUES ('0e72b073-eaf4-4614-bcbe-dd577619d958','ทำไมยังเป็นฉันที่ต้องผิดหวัง รักใครกี่ครั้งต้องปวดร้าว กอดตัวเองทุกครั้งเมื่ออากาศหนาว ค่ำเย็นจนเช้าก็ยังเหงา','068061fa-df60-46ba-a194-e4d93e7cc468','0663cdbb-43fc-4813-9da7-fecd2e4b5724');
INSERT INTO `Comments` (`comment_id`,`content`,`user_id`,`course_id`) VALUES ('1157ebc8-0250-4f38-a2ac-08815e858fb1','haha new comment','77b61870-db84-430d-8362-68f143c39146','21eb4b1a-2ce9-4a01-9a13-b533dc801882');
INSERT INTO `Comments` (`comment_id`,`content`,`user_id`,`course_id`) VALUES ('18f8efa6-95a9-4910-9e5b-7a2f02fc9db0','test','77b61870-db84-430d-8362-68f143c39146','21eb4b1a-2ce9-4a01-9a13-b533dc801882');
INSERT INTO `Comments` (`comment_id`,`content`,`user_id`,`course_id`) VALUES ('1a291b27-008f-4560-ab31-52eae9076eb1','ทำไมยังเป็นฉันที่ต้องผิดหวัง รักใครกี่ครั้งต้องปวดร้าว กอดตัวเองทุกครั้งเมื่ออากาศหนาว ค่ำเย็นจนเช้าก็ยังเหงา','068061fa-df60-46ba-a194-e4d93e7cc468','0663cdbb-43fc-4813-9da7-fecd2e4b5724');
INSERT INTO `Comments` (`comment_id`,`content`,`user_id`,`course_id`) VALUES ('2db7a5b2-b500-45d1-8d1f-0f4ccb884bfc','wow this is good','9dba5e95-ca8b-49db-a630-70015fdb7f6e','21eb4b1a-2ce9-4a01-9a13-b533dc801882');
INSERT INTO `Comments` (`comment_id`,`content`,`user_id`,`course_id`) VALUES ('312fb109-e2c7-4b60-9a1e-86f4c46a5328','ทำไมยังเป็นฉันที่ต้องผิดหวัง รักใครกี่ครั้งต้องปวดร้าว กอดตัวเองทุกครั้งเมื่ออากาศหนาว ค่ำเย็นจนเช้าก็ยังเหงา','068061fa-df60-46ba-a194-e4d93e7cc468','0663cdbb-43fc-4813-9da7-fecd2e4b5724');
INSERT INTO `Comments` (`comment_id`,`content`,`user_id`,`course_id`) VALUES ('33620bcf-0766-40bf-9c84-fc18b4e7134d',' ทำไมยังเป็นฉันที่ต้องผิดหวัง รักใครกี่ครั้งต้องปวดร้าว กอดตัวเองทุกครั้งเมื่ออากาศหนาว ค่ำเย็นจนเช้าก็ยังเหงา','068061fa-df60-46ba-a194-e4d93e7cc468','0663cdbb-43fc-4813-9da7-fecd2e4b5724');
INSERT INTO `Comments` (`comment_id`,`content`,`user_id`,`course_id`) VALUES ('3e5f507e-e773-4365-b918-80ea6b9ad3a2',' ทำไมยังเป็นฉันที่ต้องผิดหวัง รักใครกี่ครั้งต้องปวดร้าว กอดตัวเองทุกครั้งเมื่ออากาศหนาว ค่ำเย็นจนเช้าก็ยังเหงา','068061fa-df60-46ba-a194-e4d93e7cc468','0663cdbb-43fc-4813-9da7-fecd2e4b5724');
INSERT INTO `Comments` (`comment_id`,`content`,`user_id`,`course_id`) VALUES ('600e0a16-6596-4b41-8f70-435b889880e1','ทำไมยังเป็นฉันที่ต้องผิดหวัง รักใครกี่ครั้งต้องปวดร้าว กอดตัวเองทุกครั้งเมื่ออากาศหนาว ค่ำเย็นจนเช้าก็ยังเหงา','068061fa-df60-46ba-a194-e4d93e7cc468','0663cdbb-43fc-4813-9da7-fecd2e4b5724');
INSERT INTO `Comments` (`comment_id`,`content`,`user_id`,`course_id`) VALUES ('669d1cf1-96dc-4185-bad4-6a4541a222f7','ทำไมยังเป็นฉันที่ต้องผิดหวัง รักใครกี่ครั้งต้องปวดร้าว กอดตัวเองทุกครั้งเมื่ออากาศหนาว ค่ำเย็นจนเช้าก็ยังเหงา','068061fa-df60-46ba-a194-e4d93e7cc468','0663cdbb-43fc-4813-9da7-fecd2e4b5724');
INSERT INTO `Comments` (`comment_id`,`content`,`user_id`,`course_id`) VALUES ('879b7aa8-8db9-41ae-8029-7b51c558a297','ทำไมยังเป็นฉันที่ต้องผิดหวัง รักใครกี่ครั้งต้องปวดร้าว กอดตัวเองทุกครั้งเมื่ออากาศหนาว ค่ำเย็นจนเช้าก็ยังเหงา','068061fa-df60-46ba-a194-e4d93e7cc468','0663cdbb-43fc-4813-9da7-fecd2e4b5724');
INSERT INTO `Comments` (`comment_id`,`content`,`user_id`,`course_id`) VALUES ('9b1963fb-4b00-403b-bf8c-037aba934d78','test','9dba5e95-ca8b-49db-a630-70015fdb7f6e','617f77cc-3a4b-4550-a831-b1283367a015');
INSERT INTO `Comments` (`comment_id`,`content`,`user_id`,`course_id`) VALUES ('a6072286-c232-47ff-b0db-73eac030b9d0','123','9dba5e95-ca8b-49db-a630-70015fdb7f6e','617f77cc-3a4b-4550-a831-b1283367a015');
INSERT INTO `Comments` (`comment_id`,`content`,`user_id`,`course_id`) VALUES ('b6fc67ac-fe25-4b1b-af78-a3da017a7952','test','77b61870-db84-430d-8362-68f143c39146','0663cdbb-43fc-4813-9da7-fecd2e4b5724');
INSERT INTO `Comments` (`comment_id`,`content`,`user_id`,`course_id`) VALUES ('bea34421-9091-4c50-bd8a-6f4ba5cd2e79','kelkuzah มาเยือน','22748b4a-3c21-4b53-bac3-c36f606f3a38','26071f23-5e1a-43c5-a164-f06669d4060c');
INSERT INTO `Comments` (`comment_id`,`content`,`user_id`,`course_id`) VALUES ('cd0577b9-35fa-4200-8dab-521a365da8ce','kuay non','77b61870-db84-430d-8362-68f143c39146','0663cdbb-43fc-4813-9da7-fecd2e4b5724');
INSERT INTO `Comments` (`comment_id`,`content`,`user_id`,`course_id`) VALUES ('d30817bc-bf5e-48cc-921f-74dc4a94fde3','ทำไมยังเป็นฉันที่ต้องผิดหวัง รักใครกี่ครั้งต้องปวดร้าว กอดตัวเองทุกครั้งเมื่ออากาศหนาว ค่ำเย็นจนเช้าก็ยังเหงา','068061fa-df60-46ba-a194-e4d93e7cc468','0663cdbb-43fc-4813-9da7-fecd2e4b5724');
INSERT INTO `Comments` (`comment_id`,`content`,`user_id`,`course_id`) VALUES ('e930b15d-4644-4c78-9163-b0bf48c41036','test comments','9dba5e95-ca8b-49db-a630-70015fdb7f6e','617f77cc-3a4b-4550-a831-b1283367a015');
INSERT INTO `Comments` (`comment_id`,`content`,`user_id`,`course_id`) VALUES ('ed10fddb-00e7-4369-808f-5851a8173d0f','ทำไมยังเป็นฉันที่ต้องผิดหวัง รักใครกี่ครั้งต้องปวดร้าว กอดตัวเองทุกครั้งเมื่ออากาศหนาว ค่ำเย็นจนเช้าก็ยังเหงา','068061fa-df60-46ba-a194-e4d93e7cc468','0663cdbb-43fc-4813-9da7-fecd2e4b5724');
INSERT INTO `Comments` (`comment_id`,`content`,`user_id`,`course_id`) VALUES ('f798f554-157a-4652-a209-66fef0e9bef1','1231','9dba5e95-ca8b-49db-a630-70015fdb7f6e','617f77cc-3a4b-4550-a831-b1283367a015');

INSERT INTO `StudentsEnroll` (`student_id`,`course_id`,`enroll_date`) VALUES ('7de55a96-c96c-41f0-bfd6-6e6901b936ed','0663cdbb-43fc-4813-9da7-fecd2e4b5724','1970-01-01 00:00:00.000');
INSERT INTO `StudentsEnroll` (`student_id`,`course_id`,`enroll_date`) VALUES ('7de55a96-c96c-41f0-bfd6-6e6901b936ed','bda8434f-5c73-4e72-baad-c5cfd5ae967d','1970-01-01 00:00:00.000');
INSERT INTO `StudentsEnroll` (`student_id`,`course_id`,`enroll_date`) VALUES ('9ccea7e6-a6a4-4cb6-99aa-dcc868dface7','21eb4b1a-2ce9-4a01-9a13-b533dc801882','1970-01-01 00:00:00.000');
INSERT INTO `StudentsEnroll` (`student_id`,`course_id`,`enroll_date`) VALUES ('9ccea7e6-a6a4-4cb6-99aa-dcc868dface7','795a2872-7847-4427-92e4-19e8e534a76b','1970-01-01 00:00:00.000');
INSERT INTO `StudentsEnroll` (`student_id`,`course_id`,`enroll_date`) VALUES ('9ccea7e6-a6a4-4cb6-99aa-dcc868dface7','f7cde603-bd15-4255-973c-e75ab68170f6','1970-01-01 00:00:00.000');
INSERT INTO `StudentsEnroll` (`student_id`,`course_id`,`enroll_date`) VALUES ('acdca3d5-7cf3-4aa3-bbd8-4b8a8abdfb11','795a2872-7847-4427-92e4-19e8e534a76b','1970-01-01 00:00:00.000');
INSERT INTO `StudentsEnroll` (`student_id`,`course_id`,`enroll_date`) VALUES ('cbc8c4db-e7d5-4fc0-be2c-c9965d8f93e7','bda8434f-5c73-4e72-baad-c5cfd5ae967d','1970-01-01 00:00:00.000');
INSERT INTO `StudentsEnroll` (`student_id`,`course_id`,`enroll_date`) VALUES ('cbc8c4db-e7d5-4fc0-be2c-c9965d8f93e7','f7cde603-bd15-4255-973c-e75ab68170f6','1970-01-01 00:00:00.000');
INSERT INTO `StudentsEnroll` (`student_id`,`course_id`,`enroll_date`) VALUES ('d63b3b87-a264-432f-9471-80a56808685f','795a2872-7847-4427-92e4-19e8e534a76b','1970-01-01 00:00:00.000');
INSERT INTO `StudentsEnroll` (`student_id`,`course_id`,`enroll_date`) VALUES ('d63b3b87-a264-432f-9471-80a56808685f','ccc9aac5-59da-4267-866c-11362eac25fe','1970-01-01 00:00:00.000');

INSERT INTO `CourseRating` (`course_rating_id`,`course_id`,`student_id`) VALUES ('03530bbf-a949-4e1e-a7bf-ceca744de20c','f7cde603-bd15-4255-973c-e75ab68170f6','2fc2bfd0-aee9-4c4b-97b1-875372df4b32');
INSERT INTO `CourseRating` (`course_rating_id`,`course_id`,`student_id`) VALUES ('3bf66af0-da9f-4814-8375-f53875e35a62','f7cde603-bd15-4255-973c-e75ab68170f6','2fc2bfd0-aee9-4c4b-97b1-875372df4b32');
INSERT INTO `CourseRating` (`course_rating_id`,`course_id`,`student_id`) VALUES ('495fbc9c-462a-4c6c-a606-b329696f0a6c','f7cde603-bd15-4255-973c-e75ab68170f6','2fc2bfd0-aee9-4c4b-97b1-875372df4b32');
INSERT INTO `CourseRating` (`course_rating_id`,`course_id`,`student_id`) VALUES ('6a93a09d-7087-4ced-8023-02a3c6b4d581','f7cde603-bd15-4255-973c-e75ab68170f6','2fc2bfd0-aee9-4c4b-97b1-875372df4b32');
INSERT INTO `CourseRating` (`course_rating_id`,`course_id`,`student_id`) VALUES ('7249e27c-998d-4418-9a61-c51aebdd65f6','f7cde603-bd15-4255-973c-e75ab68170f6','2fc2bfd0-aee9-4c4b-97b1-875372df4b32');
INSERT INTO `CourseRating` (`course_rating_id`,`course_id`,`student_id`) VALUES ('87866806-4181-467c-9d5f-867d9fe67210','f7cde603-bd15-4255-973c-e75ab68170f6','2fc2bfd0-aee9-4c4b-97b1-875372df4b32');
INSERT INTO `CourseRating` (`course_rating_id`,`course_id`,`student_id`) VALUES ('9e04d7db-96e8-45c4-be55-92ff8f8fa75b','f7cde603-bd15-4255-973c-e75ab68170f6','2fc2bfd0-aee9-4c4b-97b1-875372df4b32');
INSERT INTO `CourseRating` (`course_rating_id`,`course_id`,`student_id`) VALUES ('c6252726-88db-42f1-a201-d939f4475a90','f7cde603-bd15-4255-973c-e75ab68170f6','2fc2bfd0-aee9-4c4b-97b1-875372df4b32');
INSERT INTO `CourseRating` (`course_rating_id`,`course_id`,`student_id`) VALUES ('d14d674a-4a34-462e-a746-713e880a05d1','f7cde603-bd15-4255-973c-e75ab68170f6','2fc2bfd0-aee9-4c4b-97b1-875372df4b32');
INSERT INTO `CourseRating` (`course_rating_id`,`course_id`,`student_id`) VALUES ('ebd8e37c-2c4d-4802-8964-c4cf2241a651','f7cde603-bd15-4255-973c-e75ab68170f6','2fc2bfd0-aee9-4c4b-97b1-875372df4b32');

INSERT INTO `ProfessorRating` (`professor_rating_id`,`professor_id`,`student_id`) VALUES ('29b70bcb-5a28-47f2-92e1-327aa88070c5','68ce29ad-27eb-449f-b2bc-37532a5cb4e4','acdca3d5-7cf3-4aa3-bbd8-4b8a8abdfb11');
INSERT INTO `ProfessorRating` (`professor_rating_id`,`professor_id`,`student_id`) VALUES ('410d4ef9-34b7-44df-9330-355c5b077243','68ce29ad-27eb-449f-b2bc-37532a5cb4e4','acdca3d5-7cf3-4aa3-bbd8-4b8a8abdfb11');
INSERT INTO `ProfessorRating` (`professor_rating_id`,`professor_id`,`student_id`) VALUES ('4d6d151a-c7d2-4ff6-85fa-99375456b204','68ce29ad-27eb-449f-b2bc-37532a5cb4e4','acdca3d5-7cf3-4aa3-bbd8-4b8a8abdfb11');
INSERT INTO `ProfessorRating` (`professor_rating_id`,`professor_id`,`student_id`) VALUES ('5e32004c-3ceb-476d-b348-b381a36b7a4e','68ce29ad-27eb-449f-b2bc-37532a5cb4e4','acdca3d5-7cf3-4aa3-bbd8-4b8a8abdfb11');
INSERT INTO `ProfessorRating` (`professor_rating_id`,`professor_id`,`student_id`) VALUES ('6a84a3c1-d867-439d-af23-d4a4d21ffb6f','68ce29ad-27eb-449f-b2bc-37532a5cb4e4','acdca3d5-7cf3-4aa3-bbd8-4b8a8abdfb11');
INSERT INTO `ProfessorRating` (`professor_rating_id`,`professor_id`,`student_id`) VALUES ('6d8d5c5d-73ff-4c27-8e75-da9f9d596e47','68ce29ad-27eb-449f-b2bc-37532a5cb4e4','acdca3d5-7cf3-4aa3-bbd8-4b8a8abdfb11');
INSERT INTO `ProfessorRating` (`professor_rating_id`,`professor_id`,`student_id`) VALUES ('6dc90b43-5113-461e-879c-174b9b411359','68ce29ad-27eb-449f-b2bc-37532a5cb4e4','acdca3d5-7cf3-4aa3-bbd8-4b8a8abdfb11');
INSERT INTO `ProfessorRating` (`professor_rating_id`,`professor_id`,`student_id`) VALUES ('8020ba5f-d0c5-4ad3-8702-40b1f906ba13','68ce29ad-27eb-449f-b2bc-37532a5cb4e4','acdca3d5-7cf3-4aa3-bbd8-4b8a8abdfb11');
INSERT INTO `ProfessorRating` (`professor_rating_id`,`professor_id`,`student_id`) VALUES ('80b51bb3-e994-4a9a-9fc1-8df0178b1eae','68ce29ad-27eb-449f-b2bc-37532a5cb4e4','acdca3d5-7cf3-4aa3-bbd8-4b8a8abdfb11');
INSERT INTO `ProfessorRating` (`professor_rating_id`,`professor_id`,`student_id`) VALUES ('9700a939-296f-407e-9c08-2378b6a8bcd4','68ce29ad-27eb-449f-b2bc-37532a5cb4e4','acdca3d5-7cf3-4aa3-bbd8-4b8a8abdfb11');
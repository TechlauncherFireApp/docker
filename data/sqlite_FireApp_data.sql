PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "role" (
"id" INTEGER,
  "name" TEXT,
  "deleted" INTEGER,
  "last_update_datetime" TIMESTAMP,
  "created_datetime" TIMESTAMP,
  "code" TEXT
);
INSERT INTO role VALUES(1,'Basic',1,'2021-04-10 10:03:32','2021-04-10 10:03:32','basic');
INSERT INTO role VALUES(2,'Driver',0,'2021-04-10 10:03:32','2021-04-10 10:03:32','driver');
INSERT INTO role VALUES(3,'Crew Leader',0,'2021-04-10 10:03:32','2021-04-10 10:03:32','crewLeader');
INSERT INTO role VALUES(4,'Advanced',0,'2021-04-10 10:03:32','2021-04-10 10:03:32','advanced');
CREATE TABLE IF NOT EXISTS "diet_requirement" (
"diet_id" INTEGER,
  "user_id" INTEGER,
  "halal" INTEGER,
  "vegetarian" INTEGER,
  "vegan" INTEGER,
  "nut_allergy" INTEGER,
  "shellfish_allergy" INTEGER,
  "gluten_intolerance" INTEGER,
  "kosher" INTEGER,
  "lactose_intolerance" INTEGER,
  "diabetic" INTEGER,
  "egg_allergy" INTEGER,
  "other" TEXT
);
INSERT INTO diet_requirement VALUES(41,3,0,0,1,0,1,0,0,0,0,0,'No oil');
INSERT INTO diet_requirement VALUES(43,2,0,1,0,0,0,1,0,1,1,0,'');
INSERT INTO diet_requirement VALUES(53,1100,1,0,0,0,1,0,0,1,0,0,'No nuts, no dairy');
INSERT INTO diet_requirement VALUES(54,25,1,0,0,0,1,0,0,1,0,0,'No nuts, no dairy');
INSERT INTO diet_requirement VALUES(56,1000,0,1,0,0,0,1,0,0,0,0,'No dairy, no nuts');
INSERT INTO diet_requirement VALUES(57,5,0,1,0,0,0,0,0,0,0,0,'');
INSERT INTO diet_requirement VALUES(83,8,0,1,0,0,0,1,0,0,0,0,'No dairy');
CREATE TABLE IF NOT EXISTS "asset_type_role" (
"id" INTEGER,
  "asset_type_id" INTEGER,
  "seat_number" INTEGER,
  "role_id" INTEGER,
  "created_datetime" TIMESTAMP
);
INSERT INTO asset_type_role VALUES(1,13,1,3,'2021-04-10 16:33:22');
INSERT INTO asset_type_role VALUES(2,13,2,4,'2021-04-10 16:33:22');
INSERT INTO asset_type_role VALUES(3,12,1,2,NULL);
INSERT INTO asset_type_role VALUES(4,12,2,1,'2021-04-10 16:33:22');
INSERT INTO asset_type_role VALUES(6,11,1,2,'2021-04-10 16:33:22');
INSERT INTO asset_type_role VALUES(7,11,2,3,'2021-04-10 16:33:22');
INSERT INTO asset_type_role VALUES(8,11,3,4,'2021-04-10 16:33:22');
INSERT INTO asset_type_role VALUES(17,11,4,4,'2021-04-11 12:56:07');
INSERT INTO asset_type_role VALUES(22,12,3,4,'2021-04-11 02:59:37');
CREATE TABLE IF NOT EXISTS "user" (
"id" INTEGER,
  "user_type" TEXT,
  "password" TEXT,
  "incorrect_password_count" INTEGER,
  "last_sign_in_datetime" TIMESTAMP,
  "first_name" TEXT,
  "last_name" TEXT,
  "mobile_number" TEXT,
  "email" TEXT,
  "preferred_hours" INTEGER,
  "experience_years" INTEGER,
  "possible_roles" TEXT,
  "qualifications" TEXT,
  "availabilities" TEXT,
  "last_update_datetime" TIMESTAMP,
  "created_datetime" TIMESTAMP,
  "gender" TEXT,
  "diet" TEXT,
  "allergy" TEXT
);
INSERT INTO user VALUES(4,'ADMIN','$2y$04$gXyK765Q4c8nU.RnpZUHMuAPfTE1QhUYoPSaovmrfwlIifKunb.hm',0,NULL,'org','admin','00000000','orgadmin',25,0,'["Basic"]','[1, 2, 3]','{"Friday": [], "Monday": [[18.5, 23.5]], "Sunday": [[12, 12.5]], "Tuesday": [[5.5, 20.5]], "Saturday": [[0, 2], [3, 3.5], [9, 23]], "Thursday": [], "Wednesday": []}','2022-10-05 18:45:33','2021-03-20 14:48:31','Female','meals','00000');
INSERT INTO user VALUES(5,'ROOT_ADMIN','$2y$12$53zgrLOxqd/P6X3nSYfiduysvWpYGHN9V2YopLUQtCBgNa33FavmS',0,NULL,'admin','mcAdmin','00000000','admin',4,0,'[]','[1, 2, 3]','{"Friday": [], "Monday": [], "Sunday": [[11, 12.5]], "Tuesday": [], "Saturday": [], "Thursday": [], "Wednesday": []}','2021-03-20 15:56:59','2021-03-20 15:56:59','','meals',NULL);
INSERT INTO user VALUES(7,'VOLUNTEER','$2b$12$3Xun6EAPR5AlvbmZPlyPueRC3ykXetIbEcEXNUo.wYRBV/QeT6U4O',0,NULL,'dev','user','00000000','volunteer',250,0,'["Basic"]','[]','{"Friday": [[0, 3.5], [12, 13.5]], "Monday": [[0, 3.5]], "Sunday": [[0, 3.5]], "Tuesday": [[0, 3.5]], "Saturday": [[0, 3.5]], "Thursday": [[0, 3.5], [7, 8], [8.5, 9]], "Wednesday": [[0, 3.5]]}','2021-03-29 17:59:27','2021-03-29 17:59:27','','meals',NULL);
CREATE TABLE IF NOT EXISTS "asset_request_volunteer" (
"id" INTEGER,
  "user_id" REAL,
  "vehicle_id" INTEGER,
  "status" TEXT,
  "last_update_datetime" TIMESTAMP,
  "created_datetime" TIMESTAMP,
  "role_id" INTEGER,
  "qualification_id" REAL
);
INSERT INTO asset_request_volunteer VALUES(720,149.0,369,'pending','2021-09-27 08:38:28','2021-09-27 08:38:28',1,2.0);
INSERT INTO asset_request_volunteer VALUES(721,NULL,369,NULL,'2021-09-27 08:38:28','2021-09-27 08:38:28',2,3.0);
INSERT INTO asset_request_volunteer VALUES(722,NULL,369,NULL,'2021-09-27 08:38:28','2021-09-27 08:38:28',4,1.0);
INSERT INTO asset_request_volunteer VALUES(750,NULL,379,NULL,'2021-10-31 23:59:41','2021-10-31 23:59:41',1,5.0);
INSERT INTO asset_request_volunteer VALUES(751,NULL,379,NULL,'2021-10-31 23:59:41','2021-10-31 23:59:41',2,6.0);
INSERT INTO asset_request_volunteer VALUES(753,NULL,379,NULL,'2021-10-31 23:59:41','2021-10-31 23:59:41',4,1.0);
INSERT INTO asset_request_volunteer VALUES(754,NULL,379,NULL,'2021-10-31 23:59:41','2021-10-31 23:59:41',4,2.0);
INSERT INTO asset_request_volunteer VALUES(755,NULL,380,NULL,'2021-10-31 23:59:41','2021-10-31 23:59:41',3,3.0);
INSERT INTO asset_request_volunteer VALUES(756,NULL,380,NULL,'2021-10-31 23:59:41','2021-10-31 23:59:41',4,NULL);
INSERT INTO asset_request_volunteer VALUES(757,NULL,381,NULL,'2022-03-09 17:46:39','2022-03-09 17:46:39',1,NULL);
INSERT INTO asset_request_volunteer VALUES(758,NULL,381,NULL,'2022-03-09 17:46:39','2022-03-09 17:46:39',2,NULL);
INSERT INTO asset_request_volunteer VALUES(759,NULL,381,NULL,'2022-03-09 17:46:39','2022-03-09 17:46:39',4,NULL);
INSERT INTO asset_request_volunteer VALUES(760,NULL,383,NULL,'2022-04-30 18:31:18','2022-04-30 18:31:18',3,1.0);
INSERT INTO asset_request_volunteer VALUES(761,NULL,383,NULL,'2022-04-30 18:31:18','2022-04-30 18:31:18',4,2.0);
INSERT INTO asset_request_volunteer VALUES(762,NULL,383,NULL,'2022-04-30 18:31:18','2022-04-30 18:31:18',3,2.0);
INSERT INTO asset_request_volunteer VALUES(763,26.0,383,'rejected','2022-04-30 18:31:18','2022-04-30 18:31:18',4,4.0);
INSERT INTO asset_request_volunteer VALUES(764,4.0,384,'pending','2022-04-10 13:01:37','2022-04-10 13:01:37',1,2.0);
INSERT INTO asset_request_volunteer VALUES(765,26.0,384,'rejected','2022-04-10 13:01:37','2022-04-10 13:01:37',2,3.0);
INSERT INTO asset_request_volunteer VALUES(766,26.0,384,'rejected','2022-04-10 13:01:37','2022-04-10 13:01:37',4,4.0);
INSERT INTO asset_request_volunteer VALUES(767,32.0,385,'pending','2022-04-10 13:01:37','2022-04-10 13:01:37',2,5.0);
INSERT INTO asset_request_volunteer VALUES(768,26.0,385,'rejected','2022-04-10 13:01:37','2022-04-10 13:01:37',3,6.0);
INSERT INTO asset_request_volunteer VALUES(769,26.0,385,'rejected','2022-04-10 13:01:37','2022-04-10 13:01:37',4,2.0);
INSERT INTO asset_request_volunteer VALUES(770,NULL,385,NULL,'2022-04-10 13:01:37','2022-04-10 13:01:37',4,NULL);
INSERT INTO asset_request_volunteer VALUES(774,NULL,387,NULL,'2022-05-02 08:55:47','2022-05-02 08:55:47',2,3.0);
INSERT INTO asset_request_volunteer VALUES(775,NULL,387,NULL,'2022-05-02 08:55:47','2022-05-02 08:55:47',3,2.0);
INSERT INTO asset_request_volunteer VALUES(776,NULL,387,NULL,'2022-05-02 08:55:47','2022-05-02 08:55:47',4,0.0);
INSERT INTO asset_request_volunteer VALUES(777,NULL,387,NULL,'2022-05-02 08:55:47','2022-05-02 08:55:47',4,3.0);
INSERT INTO asset_request_volunteer VALUES(778,NULL,388,NULL,'2022-05-02 08:55:47','2022-05-02 08:55:47',2,1.0);
INSERT INTO asset_request_volunteer VALUES(779,NULL,388,NULL,'2022-05-02 08:55:47','2022-05-02 08:55:47',3,1.0);
INSERT INTO asset_request_volunteer VALUES(780,NULL,388,NULL,'2022-05-02 08:55:47','2022-05-02 08:55:47',4,3.0);
INSERT INTO asset_request_volunteer VALUES(781,NULL,388,NULL,'2022-05-02 08:55:47','2022-05-02 08:55:47',4,2.0);
INSERT INTO asset_request_volunteer VALUES(782,NULL,388,NULL,'2022-05-02 08:55:47','2022-05-02 08:55:47',2,5.0);
INSERT INTO asset_request_volunteer VALUES(783,NULL,388,NULL,'2022-05-02 08:55:47','2022-05-02 08:55:47',3,6.0);
INSERT INTO asset_request_volunteer VALUES(784,NULL,388,NULL,'2022-05-02 08:55:47','2022-05-02 08:55:47',4,4.0);
INSERT INTO asset_request_volunteer VALUES(785,NULL,388,NULL,'2022-05-02 08:55:47','2022-05-02 08:55:47',4,2.0);
INSERT INTO asset_request_volunteer VALUES(786,NULL,389,NULL,'2022-05-02 08:55:47','2022-05-02 08:55:47',2,1.0);
INSERT INTO asset_request_volunteer VALUES(787,NULL,389,NULL,'2022-05-02 08:55:47','2022-05-02 08:55:47',3,2.0);
INSERT INTO asset_request_volunteer VALUES(788,NULL,389,NULL,'2022-05-02 08:55:47','2022-05-02 08:55:47',4,3.0);
INSERT INTO asset_request_volunteer VALUES(789,NULL,389,NULL,'2022-05-02 08:55:47','2022-05-02 08:55:47',4,3.0);
INSERT INTO asset_request_volunteer VALUES(806,NULL,394,NULL,'2022-05-02 08:55:47','2022-05-02 08:55:47',2,4.0);
INSERT INTO asset_request_volunteer VALUES(807,NULL,394,NULL,'2022-05-02 08:55:47','2022-05-02 08:55:47',3,NULL);
INSERT INTO asset_request_volunteer VALUES(808,21.0,394,'pending','2022-05-02 08:55:47','2022-05-02 08:55:47',4,NULL);
INSERT INTO asset_request_volunteer VALUES(809,26.0,394,'confirmed','2022-05-02 08:55:47','2022-05-02 08:55:47',4,NULL);
INSERT INTO asset_request_volunteer VALUES(810,NULL,395,NULL,'2022-05-09 13:54:56','2022-05-09 13:54:56',2,NULL);
INSERT INTO asset_request_volunteer VALUES(811,NULL,395,NULL,'2022-05-09 13:54:56','2022-05-09 13:54:56',3,NULL);
INSERT INTO asset_request_volunteer VALUES(812,21.0,395,'pending','2022-05-09 13:54:56','2022-05-09 13:54:56',4,NULL);
INSERT INTO asset_request_volunteer VALUES(813,26.0,395,'pending','2022-05-09 13:54:56','2022-05-09 13:54:56',4,NULL);
INSERT INTO asset_request_volunteer VALUES(814,NULL,396,NULL,'2022-07-10 16:04:11','2022-07-10 16:04:11',3,NULL);
INSERT INTO asset_request_volunteer VALUES(815,NULL,396,NULL,'2022-07-10 16:04:11','2022-07-10 16:04:11',4,5.0);
INSERT INTO asset_request_volunteer VALUES(816,NULL,397,NULL,'2022-07-10 16:04:11','2022-07-10 16:04:11',2,6.0);
INSERT INTO asset_request_volunteer VALUES(817,NULL,397,NULL,'2022-07-10 16:04:11','2022-07-10 16:04:11',3,4.0);
INSERT INTO asset_request_volunteer VALUES(818,NULL,397,NULL,'2022-07-10 16:04:11','2022-07-10 16:04:11',4,2.0);
INSERT INTO asset_request_volunteer VALUES(819,NULL,397,NULL,'2022-07-10 16:04:11','2022-07-10 16:04:11',4,4.0);
INSERT INTO asset_request_volunteer VALUES(820,NULL,398,NULL,'2022-07-10 16:04:11','2022-07-10 16:04:11',2,3.0);
INSERT INTO asset_request_volunteer VALUES(821,NULL,398,NULL,'2022-07-10 16:04:11','2022-07-10 16:04:11',3,1.0);
INSERT INTO asset_request_volunteer VALUES(822,NULL,398,NULL,'2022-07-10 16:04:11','2022-07-10 16:04:11',4,2.0);
INSERT INTO asset_request_volunteer VALUES(823,NULL,398,NULL,'2022-07-10 16:04:11','2022-07-10 16:04:11',4,5.0);
INSERT INTO asset_request_volunteer VALUES(824,NULL,370,NULL,'2022-07-10 16:04:11','2022-07-10 16:04:11',2,3.0);
INSERT INTO asset_request_volunteer VALUES(825,NULL,370,NULL,'2022-07-10 16:04:11','2022-07-10 16:04:11',3,2.0);
INSERT INTO asset_request_volunteer VALUES(826,NULL,370,NULL,'2022-07-10 16:04:11','2022-07-10 16:04:11',4,2.0);
INSERT INTO asset_request_volunteer VALUES(827,NULL,370,NULL,'2022-07-10 16:04:11','2022-07-10 16:04:11',4,1.0);
INSERT INTO asset_request_volunteer VALUES(828,NULL,371,NULL,'2022-07-10 16:04:11','2022-07-10 16:04:11',2,5.0);
INSERT INTO asset_request_volunteer VALUES(829,NULL,371,NULL,'2022-07-10 16:04:11','2022-07-10 16:04:11',3,3.0);
INSERT INTO asset_request_volunteer VALUES(830,NULL,371,NULL,'2022-07-10 16:04:11','2022-07-10 16:04:11',4,4.0);
INSERT INTO asset_request_volunteer VALUES(831,NULL,371,NULL,'2022-07-10 16:04:11','2022-07-10 16:04:11',4,6.0);
INSERT INTO asset_request_volunteer VALUES(832,4.0,399,'pending','2022-07-10 16:04:11','2022-07-10 16:04:11',2,2.0);
INSERT INTO asset_request_volunteer VALUES(833,8.0,399,'pending','2022-07-10 16:04:11','2022-07-10 16:04:11',3,3.0);
INSERT INTO asset_request_volunteer VALUES(834,26.0,399,'pending','2022-07-10 16:04:11','2022-07-10 16:04:11',4,5.0);
INSERT INTO asset_request_volunteer VALUES(835,21.0,399,'pending','2022-07-10 16:04:11','2022-07-10 16:04:11',4,1.0);
INSERT INTO asset_request_volunteer VALUES(839,NULL,400,NULL,'2022-07-10 16:04:11','2022-07-10 16:04:11',3,4.0);
INSERT INTO asset_request_volunteer VALUES(840,NULL,400,NULL,'2022-07-10 16:04:11','2022-07-10 16:04:11',4,3.0);
INSERT INTO asset_request_volunteer VALUES(845,NULL,404,NULL,'2022-07-10 16:04:11','2022-07-10 16:04:11',4,2.0);
INSERT INTO asset_request_volunteer VALUES(846,7.0,407,'pending','2022-07-10 16:04:11','2022-07-10 16:04:11',3,3.0);
INSERT INTO asset_request_volunteer VALUES(854,26.0,409,'pending',NULL,NULL,3,NULL);
INSERT INTO asset_request_volunteer VALUES(855,NULL,409,NULL,'2022-08-22 12:16:15','2022-08-22 12:16:15',3,NULL);
INSERT INTO asset_request_volunteer VALUES(856,NULL,409,NULL,'2022-08-22 12:16:15','2022-08-22 12:16:15',1,NULL);
INSERT INTO asset_request_volunteer VALUES(858,5.0,409,'pending','2022-08-22 12:16:15','2022-08-22 12:16:15',2,NULL);
INSERT INTO asset_request_volunteer VALUES(859,NULL,409,NULL,'2022-08-22 12:16:15','2022-08-22 12:16:15',1,NULL);
INSERT INTO asset_request_volunteer VALUES(860,NULL,409,NULL,'2022-08-22 12:16:15','2022-08-22 12:16:15',2,3.0);
INSERT INTO asset_request_volunteer VALUES(861,8.0,409,'pending','2022-08-22 12:16:15','2022-08-22 12:16:15',3,6.0);
INSERT INTO asset_request_volunteer VALUES(862,NULL,409,NULL,'2022-08-22 12:16:15','2022-08-22 12:16:15',4,5.0);
INSERT INTO asset_request_volunteer VALUES(863,5.0,410,'pending','2022-07-10 16:04:11','2022-07-10 16:04:11',3,2.0);
INSERT INTO asset_request_volunteer VALUES(865,5.0,410,'pending','2022-08-22 15:00:06','2022-08-22 15:00:06',1,3.0);
INSERT INTO asset_request_volunteer VALUES(866,5.0,412,'pending','2022-08-22 15:00:06','2022-08-22 15:00:06',2,2.0);
INSERT INTO asset_request_volunteer VALUES(867,5.0,410,'pending','2022-08-22 15:00:06','2022-08-22 15:00:06',3,1.0);
INSERT INTO asset_request_volunteer VALUES(868,5.0,410,'pending','2022-08-22 15:00:06','2022-08-22 15:00:06',1,4.0);
INSERT INTO asset_request_volunteer VALUES(869,5.0,410,'pending','2022-08-22 15:00:06','2022-08-22 15:00:06',2,3.0);
INSERT INTO asset_request_volunteer VALUES(871,NULL,410,NULL,'2022-08-22 15:00:06','2022-08-22 15:00:06',1,NULL);
INSERT INTO asset_request_volunteer VALUES(872,NULL,412,NULL,'2022-08-22 15:00:06','2022-08-22 15:00:06',4,NULL);
INSERT INTO asset_request_volunteer VALUES(873,NULL,413,NULL,'2022-08-22 15:00:06','2022-08-22 15:00:06',2,NULL);
INSERT INTO asset_request_volunteer VALUES(874,NULL,413,NULL,'2022-08-22 15:00:06','2022-08-22 15:00:06',3,NULL);
INSERT INTO asset_request_volunteer VALUES(875,NULL,413,NULL,'2022-08-22 15:00:06','2022-08-22 15:00:06',4,NULL);
INSERT INTO asset_request_volunteer VALUES(876,NULL,414,NULL,'2022-07-10 16:04:11','2022-07-10 16:04:11',2,NULL);
INSERT INTO asset_request_volunteer VALUES(877,NULL,414,NULL,'2022-07-10 16:04:11','2022-07-10 16:04:11',3,NULL);
INSERT INTO asset_request_volunteer VALUES(878,21.0,414,'pending','2022-07-10 16:04:11','2022-07-10 16:04:11',4,4.0);
INSERT INTO asset_request_volunteer VALUES(879,26.0,414,'pending','2022-07-10 16:04:11','2022-07-10 16:04:11',4,NULL);
INSERT INTO asset_request_volunteer VALUES(880,NULL,415,NULL,'2022-07-10 16:04:11','2022-07-10 16:04:11',2,NULL);
INSERT INTO asset_request_volunteer VALUES(881,NULL,415,NULL,'2022-07-10 16:04:11','2022-07-10 16:04:11',3,NULL);
INSERT INTO asset_request_volunteer VALUES(882,NULL,415,NULL,'2022-07-10 16:04:11','2022-07-10 16:04:11',4,2.0);
INSERT INTO asset_request_volunteer VALUES(883,NULL,415,NULL,'2022-07-10 16:04:11','2022-07-10 16:04:11',4,NULL);
INSERT INTO asset_request_volunteer VALUES(884,NULL,416,NULL,'2022-07-10 16:04:11','2022-07-10 16:04:11',1,NULL);
INSERT INTO asset_request_volunteer VALUES(885,NULL,416,NULL,'2022-07-10 16:04:11','2022-07-10 16:04:11',2,NULL);
INSERT INTO asset_request_volunteer VALUES(886,NULL,416,NULL,'2022-07-10 16:04:11','2022-07-10 16:04:11',4,3.0);
INSERT INTO asset_request_volunteer VALUES(887,49.0,417,'confirmed','2022-09-02 09:09:40','2022-09-02 09:09:40',1,NULL);
INSERT INTO asset_request_volunteer VALUES(888,26.0,417,'pending','2022-09-02 09:09:40','2022-09-02 09:09:40',2,NULL);
INSERT INTO asset_request_volunteer VALUES(889,50.0,417,'pending','2022-09-02 09:09:40','2022-09-02 09:09:40',4,NULL);
CREATE TABLE IF NOT EXISTS "question" (
"id" INTEGER,
  "created_time" TIMESTAMP,
  "update_time" TIMESTAMP,
  "question_type" TEXT,
  "role" TEXT,
  "description" TEXT,
  "choice" TEXT,
  "difficulty" INTEGER,
  "answer" TEXT,
  "status" INTEGER,
  "answered_time" INTEGER,
  "correct_time" INTEGER
);
INSERT INTO question VALUES(2,'2022-03-22 11:50:52','2022-03-22 11:50:52','SINGLE','Driver','[RdrD1S1Aa]Do you like playing games?','[{"id":"A","content":"Yes","reason":"I like playing games"},{"id":"B","content":"No","reason":"I don''t like playing games.I don''t like playing games.I don''t like playing games.I don''t like playing games.I don''t like playing games.I don''t like playing games.I don''t like playing games."}]',1,'A',1,0,0);
INSERT INTO question VALUES(4,'2022-03-22 21:22:05','2022-03-22 21:58:20','SINGLE','Driver','[RdrD2S1Aa]Where are you from?','[{"id":"A","content":"Australia","reason":"I''m from Australia.I''m from Australia.I''m from Australia.I''m from Australia.I''m from Australia.I''m from Australia.I''m from Australia.I''m from Australia.I''m from Australia."},{"id":"B","content":"China","reason":"I''m from China"}]',2,'A',1,0,0);
INSERT INTO question VALUES(5,'2022-03-22 21:57:34','2022-03-22 21:59:13','SINGLE','Driver','[RdrD1S1Ab]what is your favorite color?','[{"id":"A","content":"Red","reason":"Red is my favorite color.Red is my favorite color.Red is my favorite color.Red is my favorite color.Red is my favorite color.Red is my favorite color.Red is my favorite color."},{"id":"B","content":"Yellow","reason":"Yellow is my favorite color.Yellow is my favorite color.Yellow is my favorite color.Yellow is my favorite color.Yellow is my favorite color.Yellow is my favorite color.Yellow is my favorite color."}]',1,'B',1,0,0);
INSERT INTO question VALUES(6,'2022-03-22 22:00:59','2022-03-22 22:02:28','SINGLE','Driver','[RdrD1S1Aa]What is your specialisation?','[{"id":"A","content":"Machine Learning","reason":"I like ML"},{"id":"B","content":"Data Science","reason":"I like DS"}]',1,'A',1,0,0);
INSERT INTO question VALUES(7,'2022-03-22 22:49:29','2022-03-22 22:49:29','SINGLE','Driver','[RdrD1S1Aa]what is your gender?','[{"id":"A","content":"Male","reason":"Male male male"},{"id":"B","content":"Female","reason":"Female Female Female"}]',1,'A',1,0,0);
INSERT INTO question VALUES(8,'2022-03-22 22:51:20','2022-03-22 22:51:20','SINGLE','Driver','[RdrD1S1Aa]Do you prefer football or basketball?','[{"id":"A","content":"Football","reason":"I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball."},{"id":"B","content":"Basketball","reason":"I prefer basketball"}]',1,'A',1,0,0);
INSERT INTO question VALUES(9,'2022-03-22 22:55:03','2022-03-22 22:55:03','SINGLE','Driver','[RdrD1S1Aa]Which type of movie do you prefer?','[{"id":"A","content":"Action Movie,Action Movie,Action Movie,Action Movie,Action Movie,Action Movie","reason":"I prefer action movie"},{"id":"B","content":"Comedy","reason":"I prefer comedy"}]',1,'A',1,0,0);
INSERT INTO question VALUES(10,'2022-03-23 11:50:39','2022-03-23 11:50:39','SINGLE','Driver','[RdrD1S1Aa]Can I get HD in COMP8715?','[{"id":"A","content":"Of course","reason":"Nice Job"},{"id":"B","content":"no","reason":"Pleas try again"}]',1,'A',1,0,0);
INSERT INTO question VALUES(11,'2022-03-23 11:50:39','2022-03-23 11:50:39','SINGLE','Driver','[RdrD1S1Aa]What is the best programming language?','[{"id":"A","content":"Java","reason":"Congra"},{"id":"B","content":"Python","reason":"I don''t agree!"}]',1,'A',1,0,0);
INSERT INTO question VALUES(12,'2022-03-23 13:05:29','2022-03-23 13:10:11','SINGLE','Driver','[RdrD1S1Ab]What games do you play?','[{"id":"A","content":"Elden Ring","reason":"Congratulation"},{"id":"B","content":"Java","reason":"This is not a game"}]',1,'B',1,0,0);
INSERT INTO question VALUES(13,'2022-03-23 13:05:29','2022-03-23 13:07:29','SINGLE','Driver','[RdrD1S1Ab]What''s your favorite movie?','[{"id":"A","content":"The Shawshank Redemption","reason":"I like The Shawshank Redemption"},{"id":"B","content":"Braveheart","reason":"I like Braveheart"}]',1,'B',1,0,0);
INSERT INTO question VALUES(15,'2022-03-23 13:09:29','2022-03-25 13:05:29','SINGLE','Driver','[RdrD1S1Ab]Which pet do you prefer, dog or cat?','[{"id":"A","content":"Cat","reason":"I like cats"},{"id":"B","content":"Dog","reason":"I like dogs"}]',1,'B',1,0,0);
INSERT INTO question VALUES(16,'2022-03-25 13:05:29','2022-03-25 14:05:29','SINGLE','Driver','[RdrD1S1Aa]How many courses do you have?','[{"id":"A","content":"Four","reason":"I have four courses"},{"id":"B","content":"Five","reason":"I have five courses"}]',1,'A',1,0,0);
INSERT INTO question VALUES(17,'2022-03-25 13:05:29','2022-03-25 13:59:29','SINGLE','Driver','[Test Status]This is the first object to test the status. If this quiz appears, it means there is a bug.','[{"id":"A","content":"Bug","reason":"We have some bugs"},{"id":"B","content":"No bug","reason":"We don''t have any bug"}]',1,'B',0,0,0);
INSERT INTO question VALUES(18,'2022-03-25 13:05:29','2022-03-25 13:06:29','SINGLE','Driver','[Test Status]This is the second object to test the status. If this quiz appears, it means there is a bug.','[{"id":"A","content":"Bug","reason":"We have some bugs"},{"id":"B","content":"No bug","reason":"We don''t have any bug"}]',1,'B',0,0,0);
INSERT INTO question VALUES(19,'2022-03-24 13:05:29','2022-03-25 13:05:29','SINGLE','Driver','[Test Status]This is the third object to test the status. If this quiz appears, it means there is a bug.','[{"id":"A","content":"Bug","reason":"We have some bugs"},{"id":"B","content":"No bug","reason":"We don''t have any bug"}]',1,'B',0,0,0);
INSERT INTO question VALUES(20,'2022-03-26 16:32:59','2022-03-26 16:32:59','SINGLE','Basic','[RbaD1S1Aa]What is your name','[{"id":"A","content":"yes","reason":"yesyesyes"},{"id":"B","content":"no","reason":"nonono"}]',1,'A',1,0,0);
INSERT INTO question VALUES(21,'2022-03-22 11:50:52','2022-03-22 11:50:52','SINGLE','Basic','[RbaD1S1Aa]Do you like playing games?','[{"id":"A","content":"Yes","reason":"I like playing games"},{"id":"B","content":"No","reason":"I don''t like playing games.I don''t like playing games.I don''t like playing games.I don''t like playing games.I don''t like playing games.I don''t like playing games.I don''t like playing games."}]',1,'A',1,0,0);
INSERT INTO question VALUES(22,'2022-03-22 21:22:05','2022-03-22 21:58:20','SINGLE','Basic','[RbaD2S1Aa]Where are you from?','[{"id":"A","content":"Australia","reason":"I''m from Australia.I''m from Australia.I''m from Australia.I''m from Australia.I''m from Australia.I''m from Australia.I''m from Australia.I''m from Australia.I''m from Australia."},{"id":"B","content":"China","reason":"I''m from China"}]',2,'A',1,0,0);
INSERT INTO question VALUES(23,'2022-03-22 21:57:34','2022-03-22 21:59:13','SINGLE','Basic','[RbaD1S1Ab]what is your favorite color?','[{"id":"A","content":"Red","reason":"Red is my favorite color.Red is my favorite color.Red is my favorite color.Red is my favorite color.Red is my favorite color.Red is my favorite color.Red is my favorite color."},{"id":"B","content":"Yellow","reason":"Yellow is my favorite color.Yellow is my favorite color.Yellow is my favorite color.Yellow is my favorite color.Yellow is my favorite color.Yellow is my favorite color.Yellow is my favorite color."}]',1,'B',1,0,0);
INSERT INTO question VALUES(24,'2022-03-22 22:00:59','2022-03-22 22:02:28','SINGLE','Basic','[RbaD1S1Aa]What is your specialisation?','[{"id":"A","content":"Machine Learning","reason":"I like ML"},{"id":"B","content":"Data Science","reason":"I like DS"}]',1,'A',1,0,0);
INSERT INTO question VALUES(25,'2022-03-22 22:49:29','2022-03-22 22:49:29','SINGLE','Basic','[RbaD1S1Aa]what is your gender?','[{"id":"A","content":"Male","reason":"Male male male"},{"id":"B","content":"Female","reason":"Female Female Female"}]',1,'A',1,0,0);
INSERT INTO question VALUES(26,'2022-03-22 22:51:20','2022-03-22 22:51:20','SINGLE','Basic','[RbaD1S1Aa]Do you prefer football or basketball?','[{"id":"A","content":"Football","reason":"I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball."},{"id":"B","content":"Basketball","reason":"I prefer basketball"}]',1,'A',1,0,0);
INSERT INTO question VALUES(27,'2022-03-22 22:55:03','2022-03-22 22:55:03','SINGLE','Basic','[RbaD1S1Aa]Which type of movie do you prefer?','[{"id":"A","content":"Action Movie,Action Movie,Action Movie,Action Movie,Action Movie,Action Movie","reason":"I prefer action movie"},{"id":"B","content":"Comedy","reason":"I prefer comedy"}]',1,'A',1,0,0);
INSERT INTO question VALUES(28,'2022-03-23 11:50:39','2022-03-23 11:50:39','SINGLE','Basic','[RbaD1S1Aa]Can I get HD in COMP8715?','[{"id":"A","content":"Of course","reason":"Nice Job"},{"id":"B","content":"no","reason":"Pleas try again"}]',1,'A',1,0,0);
INSERT INTO question VALUES(29,'2022-03-23 11:50:39','2022-03-23 11:50:39','SINGLE','Basic','[RbaD1S1Aa]What is the best programming language?','[{"id":"A","content":"Java","reason":"Congra"},{"id":"B","content":"Python","reason":"I don''t agree!"}]',1,'A',1,0,0);
INSERT INTO question VALUES(30,'2022-03-23 13:05:29','2022-03-23 13:10:11','SINGLE','Basic','[RbaD1S1Ab]What games do you play?','[{"id":"A","content":"Elden Ring","reason":"Congratulation"},{"id":"B","content":"Java","reason":"This is not a game"}]',1,'B',1,0,0);
INSERT INTO question VALUES(31,'2022-03-23 13:05:29','2022-03-23 13:07:29','SINGLE','Basic','[RbaD1S1Ab]What''s your favorite movie?','[{"id":"A","content":"The Shawshank Redemption","reason":"I like The Shawshank Redemption"},{"id":"B","content":"Braveheart","reason":"I like Braveheart"}]',1,'B',1,0,0);
INSERT INTO question VALUES(32,'2022-03-23 13:09:29','2022-03-25 13:05:29','SINGLE','Basic','[RbaD1S1Ab]Which pet do you prefer, dog or cat?','[{"id":"A","content":"Cat","reason":"I like cats"},{"id":"B","content":"Dog","reason":"I like dogs"}]',1,'B',1,0,0);
INSERT INTO question VALUES(33,'2022-03-25 13:05:29','2022-03-25 14:05:29','SINGLE','Basic','[RbaD1S1Aa]how many courses do you have?','[{"id":"A","content":"Four","reason":"I have four courses"},{"id":"B","content":"Five","reason":"I have five courses"}]',1,'A',1,0,0);
INSERT INTO question VALUES(40,'2022-03-26 16:32:59','2022-03-26 16:32:59','SINGLE','Crew Leader','[RcrD1S1Aa]What is your name','[{"id":"A","content":"yes","reason":"yesyesyes"},{"id":"B","content":"no","reason":"nonono"}]',1,'A',1,0,0);
INSERT INTO question VALUES(41,'2022-03-22 11:50:52','2022-03-22 11:50:52','SINGLE','Crew Leader','[RcrD1S1Aa]Do you like playing games?','[{"id":"A","content":"Yes","reason":"I like playing games"},{"id":"B","content":"No","reason":"I don''t like playing games.I don''t like playing games.I don''t like playing games.I don''t like playing games.I don''t like playing games.I don''t like playing games.I don''t like playing games."}]',1,'A',1,0,0);
INSERT INTO question VALUES(42,'2022-03-22 21:22:05','2022-03-22 21:58:20','SINGLE','Crew Leader','[RcrD2S1Aa]Where are you from?','[{"id":"A","content":"Australia","reason":"I''m from Australia.I''m from Australia.I''m from Australia.I''m from Australia.I''m from Australia.I''m from Australia.I''m from Australia.I''m from Australia.I''m from Australia."},{"id":"B","content":"China","reason":"I''m from China"}]',2,'A',1,0,0);
INSERT INTO question VALUES(43,'2022-03-22 21:57:34','2022-03-22 21:59:13','SINGLE','Crew Leader','[RcrD1S1Ab]what is your favorite color?','[{"id":"A","content":"Red","reason":"Red is my favorite color.Red is my favorite color.Red is my favorite color.Red is my favorite color.Red is my favorite color.Red is my favorite color.Red is my favorite color."},{"id":"B","content":"Yellow","reason":"Yellow is my favorite color.Yellow is my favorite color.Yellow is my favorite color.Yellow is my favorite color.Yellow is my favorite color.Yellow is my favorite color.Yellow is my favorite color."}]',1,'B',1,0,0);
INSERT INTO question VALUES(44,'2022-03-22 22:00:59','2022-03-22 22:02:28','SINGLE','Crew Leader','[RcrD1S1Aa]What is your specialisation?','[{"id":"A","content":"Machine Learning","reason":"I like ML"},{"id":"B","content":"Data Science","reason":"I like DS"}]',1,'A',1,0,0);
INSERT INTO question VALUES(45,'2022-03-22 22:49:29','2022-03-22 22:49:29','SINGLE','Crew Leader','[RcrD1S1Aa]what is your gender?','[{"id":"A","content":"Male","reason":"Male male male"},{"id":"B","content":"Female","reason":"Female Female Female"}]',1,'A',1,0,0);
INSERT INTO question VALUES(46,'2022-03-22 22:51:20','2022-03-22 22:51:20','SINGLE','Crew Leader','[RcrD1S1Aa]Do you prefer football or basketball?','[{"id":"A","content":"Football","reason":"I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball."},{"id":"B","content":"Basketball","reason":"I prefer basketball"}]',1,'A',1,0,0);
INSERT INTO question VALUES(47,'2022-03-22 22:55:03','2022-03-22 22:55:03','SINGLE','Crew Leader','[RcrD1S1Aa]Which type of movie do you prefer?','[{"id":"A","content":"Action Movie,Action Movie,Action Movie,Action Movie,Action Movie,Action Movie","reason":"I prefer action movie"},{"id":"B","content":"Comedy","reason":"I prefer comedy"}]',1,'A',1,0,0);
INSERT INTO question VALUES(48,'2022-03-23 11:50:39','2022-03-23 11:50:39','SINGLE','Crew Leader','[RcrD1S1Aa]Can I get HD in COMP8715?','[{"id":"A","content":"Of course","reason":"Nice Job"},{"id":"B","content":"no","reason":"Pleas try again"}]',1,'A',1,0,0);
INSERT INTO question VALUES(49,'2022-03-23 11:50:39','2022-03-23 11:50:39','SINGLE','Crew Leader','[RcrD1S1Aa]What is the best programming language?','[{"id":"A","content":"Java","reason":"Congra"},{"id":"B","content":"Python","reason":"I don''t agree!"}]',1,'A',1,0,0);
INSERT INTO question VALUES(50,'2022-03-23 13:05:29','2022-03-23 13:10:11','SINGLE','Crew Leader','[RcrD1S1Ab]What games do you play?','[{"id":"A","content":"Elden Ring","reason":"Congratulation"},{"id":"B","content":"Java","reason":"This is not a game"}]',1,'B',1,0,0);
INSERT INTO question VALUES(51,'2022-03-23 13:05:29','2022-03-23 13:07:29','SINGLE','Crew Leader','[RcrD1S1Ab]What''s your favorite movie?','[{"id":"A","content":"The Shawshank Redemption","reason":"I like The Shawshank Redemption"},{"id":"B","content":"Braveheart","reason":"I like Braveheart"}]',1,'B',1,0,0);
INSERT INTO question VALUES(52,'2022-03-23 13:09:29','2022-03-25 13:05:29','SINGLE','Crew Leader','[RcrD1S1Ab]Which pet do you prefer, dog or cat?','[{"id":"A","content":"Cat","reason":"I like cats"},{"id":"B","content":"Dog","reason":"I like dogs"}]',1,'B',1,0,0);
INSERT INTO question VALUES(53,'2022-03-25 13:05:29','2022-03-25 14:05:29','SINGLE','Crew Leader','[RcrD1S1Aa]how many courses do you have?','[{"id":"A","content":"Four","reason":"I have four courses"},{"id":"B","content":"Five","reason":"I have five courses"}]',1,'A',1,0,0);
INSERT INTO question VALUES(60,'2022-03-26 16:32:59','2022-03-26 16:32:59','SINGLE','Advanced','[RadD1S1Aa]What is your name','[{"id":"A","content":"yes","reason":"yesyesyes"},{"id":"B","content":"no","reason":"nonono"}]',1,'A',1,0,0);
INSERT INTO question VALUES(61,'2022-03-22 11:50:52','2022-03-22 11:50:52','SINGLE','Advanced','[RadD1S1Aa]Do you like playing games?','[{"id":"A","content":"Yes","reason":"I like playing games"},{"id":"B","content":"No","reason":"I don''t like playing games.I don''t like playing games.I don''t like playing games.I don''t like playing games.I don''t like playing games.I don''t like playing games.I don''t like playing games."}]',1,'A',1,0,0);
INSERT INTO question VALUES(62,'2022-03-22 21:22:05','2022-03-22 21:58:20','SINGLE','Advanced','[RadD2S1Aa]Where are you from?','[{"id":"A","content":"Australia","reason":"I''m from Australia.I''m from Australia.I''m from Australia.I''m from Australia.I''m from Australia.I''m from Australia.I''m from Australia.I''m from Australia.I''m from Australia."},{"id":"B","content":"China","reason":"I''m from China"}]',2,'A',1,0,0);
INSERT INTO question VALUES(63,'2022-03-22 21:57:34','2022-03-22 21:59:13','SINGLE','Advanced','[RadD1S1Ab]what is your favorite color?','[{"id":"A","content":"Red","reason":"Red is my favorite color.Red is my favorite color.Red is my favorite color.Red is my favorite color.Red is my favorite color.Red is my favorite color.Red is my favorite color."},{"id":"B","content":"Yellow","reason":"Yellow is my favorite color.Yellow is my favorite color.Yellow is my favorite color.Yellow is my favorite color.Yellow is my favorite color.Yellow is my favorite color.Yellow is my favorite color."}]',1,'B',1,0,0);
INSERT INTO question VALUES(64,'2022-03-22 22:00:59','2022-03-22 22:02:28','SINGLE','Advanced','[RadD1S1Aa]What is your specialisation?','[{"id":"A","content":"Machine Learning","reason":"I like ML"},{"id":"B","content":"Data Science","reason":"I like DS"}]',1,'A',1,0,0);
INSERT INTO question VALUES(65,'2022-03-22 22:49:29','2022-03-22 22:49:29','SINGLE','Advanced','[RadD1S1Aa]what is your gender?','[{"id":"A","content":"Male","reason":"Male male male"},{"id":"B","content":"Female","reason":"Female Female Female"}]',1,'A',1,0,0);
INSERT INTO question VALUES(66,'2022-03-22 22:51:20','2022-03-22 22:51:20','SINGLE','Advanced','[RadD1S1Aa]Do you prefer football or basketball?','[{"id":"A","content":"Football","reason":"I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball.I prefer football than basketball."},{"id":"B","content":"Basketball","reason":"I prefer basketball"}]',1,'A',1,0,0);
INSERT INTO question VALUES(67,'2022-03-22 22:55:03','2022-03-22 22:55:03','SINGLE','Advanced','[RadD1S1Aa]Which type of movie do you prefer?','[{"id":"A","content":"Action Movie,Action Movie,Action Movie,Action Movie,Action Movie,Action Movie","reason":"I prefer action movie"},{"id":"B","content":"Comedy","reason":"I prefer comedy"}]',1,'A',1,0,0);
INSERT INTO question VALUES(68,'2022-03-23 11:50:39','2022-03-23 11:50:39','SINGLE','Advanced','[RadD1S1Aa]Can I get HD in COMP8715?','[{"id":"A","content":"Of course","reason":"Nice Job"},{"id":"B","content":"no","reason":"Pleas try again"}]',1,'A',1,0,0);
INSERT INTO question VALUES(69,'2022-03-23 11:50:39','2022-03-23 11:50:39','SINGLE','Advanced','[RadD1S1Aa]What is the best programming language?','[{"id":"A","content":"Java","reason":"Congra"},{"id":"B","content":"Python","reason":"I don''t agree!"}]',1,'A',1,0,0);
INSERT INTO question VALUES(70,'2022-03-23 13:05:29','2022-03-23 13:10:11','SINGLE','Advanced','[RadD1S1Ab]What games do you play?','[{"id":"A","content":"Elden Ring","reason":"Congratulation"},{"id":"B","content":"Java","reason":"This is not a game"}]',1,'B',1,0,0);
INSERT INTO question VALUES(71,'2022-03-23 13:05:29','2022-03-23 13:07:29','SINGLE','Advanced','[RadD1S1Ab]What''s your favorite movie?','[{"id":"A","content":"The Shawshank Redemption","reason":"I like The Shawshank Redemption"},{"id":"B","content":"Braveheart","reason":"I like Braveheart"}]',1,'B',1,0,0);
INSERT INTO question VALUES(72,'2022-03-23 13:09:29','2022-03-25 13:05:29','SINGLE','Advanced','[RadD1S1Ab]Which pet do you prefer, dog or cat?','[{"id":"A","content":"Cat","reason":"I like cats"},{"id":"B","content":"Dog","reason":"I like dogs"}]',1,'B',1,0,0);
INSERT INTO question VALUES(73,'2022-03-25 13:05:29','2022-03-25 14:05:29','SINGLE','Advanced','[RadD1S1Aa]how many courses do you have?','[{"id":"A","content":"Four","reason":"I have four courses"},{"id":"B","content":"Five","reason":"I have five courses"}]',1,'A',1,0,0);
INSERT INTO question VALUES(83,'2022-03-28 16:44:59','2022-03-28 16:44:59','SINGLE','Basic','This is a test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',2,'B',1,0,0);
INSERT INTO question VALUES(84,'2022-03-28 16:44:59','2022-03-28 16:44:59','SINGLE','Basic','This is a test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',2,'B',1,0,0);
INSERT INTO question VALUES(85,'2022-03-28 16:44:59','2022-03-28 16:44:59','SINGLE','Basic','This is a test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',2,'B',1,0,0);
INSERT INTO question VALUES(86,'2022-03-28 16:44:59','2022-03-30 17:16:02','SINGLE','Volunteer','This is an updateTest','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',1,'B',1,0,0);
INSERT INTO question VALUES(87,'2022-03-29 11:20:34','2022-03-29 11:20:34','SINGLE','Basic','This is a test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',2,'B',0,0,0);
INSERT INTO question VALUES(88,'2022-03-29 11:20:34','2022-03-29 11:20:34','SINGLE','Basic','This is a test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',2,'B',0,0,0);
INSERT INTO question VALUES(89,'2022-03-29 11:20:34','2022-03-29 11:20:34','SINGLE','Basic','This is a test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',2,'B',1,0,0);
INSERT INTO question VALUES(90,'2022-03-29 11:20:34','2022-03-29 11:20:34','SINGLE','Basic','This is a test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',2,'B',0,0,0);
INSERT INTO question VALUES(91,'2022-03-29 11:20:34','2022-03-29 11:20:34','SINGLE','Basic','This is a test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',2,'B',1,0,0);
INSERT INTO question VALUES(92,'2022-03-29 11:20:34','2022-03-29 11:20:34','SINGLE','Basic','This is a test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',2,'B',1,0,0);
INSERT INTO question VALUES(93,'2022-03-30 10:50:32','2022-03-30 14:50:21','SINGLE','Basic','This is an updateTest','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',1,'B',0,0,0);
INSERT INTO question VALUES(94,'2022-03-30 10:50:32','2022-03-30 14:50:18','SINGLE','Basic','This is an updateTest','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',1,'B',0,0,0);
INSERT INTO question VALUES(95,'2022-03-30 10:50:32','2022-03-30 14:50:12','SINGLE','Basic','This is an updateTest','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',1,'B',0,0,0);
INSERT INTO question VALUES(96,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE',NULL,'This is a test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',5,'B',1,0,0);
INSERT INTO question VALUES(97,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a CreatNewQuestionAPI test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',5,'B',1,0,0);
INSERT INTO question VALUES(98,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a CreatNewQuestionAPI test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',5,'B',1,0,0);
INSERT INTO question VALUES(99,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a CreatNewQuestionAPI test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',5,'B',1,0,0);
INSERT INTO question VALUES(100,'2022-03-30 10:50:32','2022-03-30 16:25:13','SINGLE','Volunteer','This is an updateQuestion API Test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',1,'B',0,0,0);
INSERT INTO question VALUES(101,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',5,'B',1,0,0);
INSERT INTO question VALUES(102,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',5,'B',1,0,0);
INSERT INTO question VALUES(103,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',5,'B',1,0,0);
INSERT INTO question VALUES(104,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',5,'B',1,0,0);
INSERT INTO question VALUES(105,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',5,'B',1,0,0);
INSERT INTO question VALUES(106,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',5,'B',1,0,0);
INSERT INTO question VALUES(107,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',5,'B',1,0,0);
INSERT INTO question VALUES(108,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',5,'B',1,0,0);
INSERT INTO question VALUES(109,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',5,'B',1,0,0);
INSERT INTO question VALUES(110,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',5,'B',1,0,0);
INSERT INTO question VALUES(111,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',5,'B',1,0,0);
INSERT INTO question VALUES(112,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',5,'B',1,0,0);
INSERT INTO question VALUES(113,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',5,'B',1,0,0);
INSERT INTO question VALUES(114,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',5,'B',1,0,0);
INSERT INTO question VALUES(115,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',5,'B',1,0,0);
INSERT INTO question VALUES(116,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',5,'B',1,0,0);
INSERT INTO question VALUES(117,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',5,'B',1,0,0);
INSERT INTO question VALUES(118,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',5,'B',1,0,0);
INSERT INTO question VALUES(119,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',5,'B',1,0,0);
INSERT INTO question VALUES(120,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',5,'B',1,0,0);
INSERT INTO question VALUES(121,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',5,'B',1,0,0);
INSERT INTO question VALUES(122,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a CreatNewQuestionAPI test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',5,'B',1,0,0);
INSERT INTO question VALUES(123,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a CreatNewQuestionAPI test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',5,'B',1,0,0);
INSERT INTO question VALUES(124,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',5,'B',1,0,0);
INSERT INTO question VALUES(125,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',5,'B',1,0,0);
INSERT INTO question VALUES(126,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a CreatNewQuestionAPI test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',5,'B',1,0,0);
INSERT INTO question VALUES(127,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a CreatNewQuestionAPI test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',5,'B',1,0,0);
INSERT INTO question VALUES(128,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a CreatNewQuestionAPI test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',5,'B',1,0,0);
INSERT INTO question VALUES(129,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a CreatNewQuestionAPI test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',5,'B',1,0,0);
INSERT INTO question VALUES(130,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a CreatNewQuestionAPI test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',5,'B',1,0,0);
INSERT INTO question VALUES(131,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a CreatNewQuestionAPI test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',5,'B',1,0,0);
INSERT INTO question VALUES(132,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a CreatNewQuestionAPI test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',5,'B',1,0,0);
INSERT INTO question VALUES(133,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a CreatNewQuestionAPI test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',5,'B',1,0,0);
INSERT INTO question VALUES(134,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a CreatNewQuestionAPI test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',5,'B',1,0,0);
INSERT INTO question VALUES(135,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a CreatNewQuestionAPI test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',5,'B',0,0,0);
INSERT INTO question VALUES(136,'2022-03-30 10:50:32','2022-03-30 10:50:32','SINGLE','Basic','This is a CreatNewQuestionAPI test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',5,'B',1,0,0);
INSERT INTO question VALUES(137,'2022-04-10 13:01:37','2022-04-20 10:56:50','SINGLE','Volunteer','This is an https updateQuestion API Test','[{"id":"A","content":"yes","reason":"Congratulation"},{"id":"B","content":"no","reason":"nonono"}]',1,'B',0,0,0);
CREATE TABLE IF NOT EXISTS "chatbot_input" (
"id" INTEGER,
  "created_time" TIMESTAMP,
  "user_email" TEXT,
  "content" TEXT
);
CREATE TABLE IF NOT EXISTS "qualification" (
"id" INTEGER,
  "name" TEXT,
  "deleted" INTEGER,
  "last_update_datetime" TIMESTAMP,
  "created_datetime" TIMESTAMP
);
INSERT INTO qualification VALUES(1,'Advanced Firefighting Qualification',0,'2021-04-10 10:03:32','2021-04-10 10:03:32');
INSERT INTO qualification VALUES(2,'Advanced Pumping Skills',0,'2021-04-10 10:03:32','2021-04-10 10:03:32');
INSERT INTO qualification VALUES(3,'Crew Leader Course',0,'2021-04-10 10:03:32','2021-04-10 10:03:32');
INSERT INTO qualification VALUES(4,'Heavy Rigid Vehicle License',0,'2021-04-10 10:03:32','2021-04-10 10:03:32');
INSERT INTO qualification VALUES(5,'Tanker Driving training',0,'2021-04-10 10:03:32','2021-04-10 10:03:32');
INSERT INTO qualification VALUES(6,'Urgent Duty Driving Training',0,'2021-04-10 10:03:32','2021-04-10 10:03:32');
CREATE TABLE IF NOT EXISTS "asset_request" (
"id" INTEGER,
  "user_id" INTEGER,
  "title" TEXT,
  "status" TEXT,
  "last_update_datetime" TIMESTAMP,
  "created_datetime" TIMESTAMP
);
INSERT INTO asset_request VALUES(322,4,'Medium Tanker2','waiting','2021-09-27 08:38:28','2021-09-27 08:38:28');
INSERT INTO asset_request VALUES(323,4,'Large Truck this weekend','waiting','2021-09-27 08:38:28','2021-09-27 08:38:28');
INSERT INTO asset_request VALUES(326,4,'firetruck this weekend','un-submitted','2021-10-11 17:57:42','2021-10-11 17:57:42');
INSERT INTO asset_request VALUES(331,4,'2022 Bushfire Request Example','waiting','2021-10-31 23:59:41','2021-10-31 23:59:41');
INSERT INTO asset_request VALUES(332,4,'test1','waiting','2022-03-09 17:46:39','2022-03-09 17:46:39');
INSERT INTO asset_request VALUES(333,4,'test','un-submitted','2022-03-18 23:41:41','2022-03-18 23:41:41');
INSERT INTO asset_request VALUES(334,4,'test0318','waiting','2022-03-18 23:41:41','2022-03-18 23:41:41');
INSERT INTO asset_request VALUES(337,4,'Test_Request','waiting','2022-04-30 18:31:18','2022-04-30 18:31:18');
INSERT INTO asset_request VALUES(338,4,'Juren_Test','waiting','2022-04-10 13:01:37','2022-04-10 13:01:37');
INSERT INTO asset_request VALUES(339,4,'Juren Test 2','waiting','2022-04-10 13:01:37','2022-04-10 13:01:37');
INSERT INTO asset_request VALUES(341,4,'Medium Tanker Bushfire','waiting','2022-05-02 08:55:47','2022-05-02 08:55:47');
INSERT INTO asset_request VALUES(342,4,'Test Request','waiting','2022-05-02 08:55:47','2022-05-02 08:55:47');
INSERT INTO asset_request VALUES(347,4,'Gungahlin Fire','waiting','2022-05-02 08:55:47','2022-05-02 08:55:47');
INSERT INTO asset_request VALUES(348,4,'adsf','un-submitted','2022-04-10 13:01:37','2022-04-10 13:01:37');
INSERT INTO asset_request VALUES(349,4,'camp fire','waiting','2022-05-09 13:54:56','2022-05-09 13:54:56');
INSERT INTO asset_request VALUES(350,4,'Showcase','un-submitted','2022-05-15 16:04:14','2022-05-15 16:04:14');
INSERT INTO asset_request VALUES(351,4,'new test','waiting','2022-07-10 16:04:11','2022-07-10 16:04:11');
INSERT INTO asset_request VALUES(352,4,'new test2','waiting','2022-07-10 16:04:11','2022-07-10 16:04:11');
INSERT INTO asset_request VALUES(354,4,'new test3','waiting','2022-07-10 16:04:11','2022-07-10 16:04:11');
INSERT INTO asset_request VALUES(355,4,'new request4','waiting','2022-07-10 16:04:11','2022-07-10 16:04:11');
INSERT INTO asset_request VALUES(356,4,'test4','waiting','2022-07-10 16:04:11','2022-07-10 16:04:11');
INSERT INTO asset_request VALUES(359,4,'testrole','waiting','2022-07-10 16:04:11','2022-07-10 16:04:11');
INSERT INTO asset_request VALUES(360,4,'testSupervisorAPI','waiting','2022-07-10 16:04:11','2022-07-10 16:04:11');
INSERT INTO asset_request VALUES(361,4,'optimiastion-tute-08-2022','waiting','2022-07-10 16:04:11','2022-07-10 16:04:11');
INSERT INTO asset_request VALUES(362,4,'testHang','waiting','2022-09-02 09:09:40','2022-09-02 09:09:40');
INSERT INTO asset_request VALUES(363,4,'Test','waiting','2023-05-07 06:35:11','2023-05-07 06:35:11');
CREATE TABLE IF NOT EXISTS "alembic_version" (
"version_num" TEXT
);
INSERT INTO alembic_version VALUES('5500788ed080');
CREATE TABLE IF NOT EXISTS "user_role" (
"id" INTEGER,
  "user_id" INTEGER,
  "role_id" INTEGER,
  "created_datetime" TIMESTAMP
);
INSERT INTO user_role VALUES(33,5,1,'2021-04-10 11:07:56');
INSERT INTO user_role VALUES(34,7,1,'2021-04-10 11:07:56');
INSERT INTO user_role VALUES(35,8,1,'2021-04-10 11:07:56');
INSERT INTO user_role VALUES(36,9,1,'2021-04-10 11:07:56');
INSERT INTO user_role VALUES(37,10,1,'2021-04-10 11:07:56');
INSERT INTO user_role VALUES(38,12,1,'2021-04-10 11:07:56');
INSERT INTO user_role VALUES(39,13,1,'2021-04-10 11:07:56');
INSERT INTO user_role VALUES(40,18,1,'2021-04-10 11:07:56');
INSERT INTO user_role VALUES(42,4,2,'2021-04-10 11:13:27');
INSERT INTO user_role VALUES(55,19,1,'2021-04-10 11:23:18');
INSERT INTO user_role VALUES(56,19,2,'2021-04-10 11:23:18');
INSERT INTO user_role VALUES(57,19,3,'2021-04-10 11:23:18');
INSERT INTO user_role VALUES(58,19,4,'2021-04-10 11:23:18');
INSERT INTO user_role VALUES(75,8,3,'2021-04-10 16:40:12');
INSERT INTO user_role VALUES(76,7,3,'2021-04-10 16:40:12');
INSERT INTO user_role VALUES(77,7,2,'2021-04-10 16:40:12');
INSERT INTO user_role VALUES(87,13,3,'2021-04-11 12:58:43');
INSERT INTO user_role VALUES(93,7,4,'2021-04-11 12:58:43');
INSERT INTO user_role VALUES(98,21,1,'2021-04-11 02:59:37');
INSERT INTO user_role VALUES(100,21,3,'2021-04-11 02:59:37');
INSERT INTO user_role VALUES(106,21,4,'2021-04-11 02:59:37');
INSERT INTO user_role VALUES(109,4,3,'2021-04-17 12:43:47');
INSERT INTO user_role VALUES(110,21,2,'2021-04-18 07:10:46');
INSERT INTO user_role VALUES(115,26,1,'2022-05-02 08:55:47');
INSERT INTO user_role VALUES(116,26,2,'2022-05-02 08:55:47');
INSERT INTO user_role VALUES(117,26,3,'2022-05-02 08:55:47');
INSERT INTO user_role VALUES(118,26,4,'2022-05-02 08:55:47');
INSERT INTO user_role VALUES(122,4,1,'2022-05-09 13:54:56');
INSERT INTO user_role VALUES(124,5,3,'2023-05-07 06:35:11');
CREATE TABLE IF NOT EXISTS "unavailability_time" (
"eventId" INTEGER,
  "userId" INTEGER,
  "title" TEXT,
  "periodicity" INTEGER,
  "start" TIMESTAMP,
  "end" TIMESTAMP,
  "status" INTEGER
);
INSERT INTO unavailability_time VALUES(1,49,'study',1,'2022-05-06 11:28:00','2022-05-06 20:00:00',0);
INSERT INTO unavailability_time VALUES(2,49,'test',2,'2022-05-01 11:28:00','2022-05-01 20:00:00',0);
INSERT INTO unavailability_time VALUES(3,49,'test',1,'2022-05-01 11:28:00','2022-05-01 20:00:00',0);
INSERT INTO unavailability_time VALUES(4,49,'break',1,'2022-05-11 14:00:00','2022-05-11 16:00:00',0);
INSERT INTO unavailability_time VALUES(5,49,'Take exam',1,'2022-04-28 15:00:00','2022-04-29 02:00:00',0);
INSERT INTO unavailability_time VALUES(6,49,'Take exam',1,'2022-04-28 15:00:00','2022-04-29 02:00:00',0);
INSERT INTO unavailability_time VALUES(7,49,'Take exam',1,'2022-04-28 15:00:00','2022-04-29 02:00:00',0);
INSERT INTO unavailability_time VALUES(8,49,'Take exam',1,'2022-04-28 15:00:00','2022-04-29 02:00:00',0);
INSERT INTO unavailability_time VALUES(9,49,'Take exam',1,'2022-04-28 15:00:00','2022-04-29 02:00:00',0);
INSERT INTO unavailability_time VALUES(10,49,'Take exam',1,'2022-04-28 15:00:00','2022-04-29 02:00:00',0);
INSERT INTO unavailability_time VALUES(11,49,'Take exam',1,'2022-04-28 15:00:00','2022-04-29 02:00:00',0);
INSERT INTO unavailability_time VALUES(12,49,'Take exam',1,'2022-04-28 15:00:00','2022-04-29 02:00:00',0);
INSERT INTO unavailability_time VALUES(13,49,'Test',0,'2022-05-06 05:00:00','2022-05-06 09:00:00',0);
INSERT INTO unavailability_time VALUES(14,49,'',0,'2022-05-05 20:15:37','2022-05-05 20:15:37',0);
INSERT INTO unavailability_time VALUES(15,49,'Hello',0,'2022-05-07 06:00:00','2022-05-07 07:00:00',0);
INSERT INTO unavailability_time VALUES(16,49,'Hello',0,'2022-05-07 06:00:00','2022-05-07 07:00:00',0);
INSERT INTO unavailability_time VALUES(17,49,'Hello',0,'2022-05-07 06:00:00','2022-05-07 07:00:00',0);
INSERT INTO unavailability_time VALUES(18,49,'Testing',0,'2022-05-05 04:00:00','2022-05-05 09:00:00',0);
INSERT INTO unavailability_time VALUES(19,49,'Testing',0,'2022-05-05 04:00:00','2022-05-05 09:00:00',0);
INSERT INTO unavailability_time VALUES(20,49,'Testing',0,'2022-05-05 04:00:00','2022-05-05 09:00:00',0);
INSERT INTO unavailability_time VALUES(21,49,'test2',0,'2022-05-05 05:00:00','2022-05-05 08:00:00',0);
INSERT INTO unavailability_time VALUES(22,49,'test2',0,'2022-05-05 05:00:00','2022-05-05 08:00:00',0);
INSERT INTO unavailability_time VALUES(23,49,'test2',0,'2022-05-05 05:00:00','2022-05-05 08:00:00',0);
INSERT INTO unavailability_time VALUES(24,49,'test2',0,'2022-05-05 05:00:00','2022-05-05 08:00:00',0);
INSERT INTO unavailability_time VALUES(25,49,'test3',0,'2022-05-05 05:00:00','2022-05-05 08:00:00',0);
INSERT INTO unavailability_time VALUES(26,49,'test3',0,'2022-05-05 05:00:00','2022-05-05 08:00:00',0);
INSERT INTO unavailability_time VALUES(27,49,'test3',0,'2022-05-06 05:00:00','2022-05-06 08:00:00',0);
INSERT INTO unavailability_time VALUES(28,49,'get me out',0,'2022-05-06 04:00:00','2022-05-06 08:00:00',0);
INSERT INTO unavailability_time VALUES(29,49,'get me out',0,'2022-05-04 04:00:00','2022-05-04 08:00:00',0);
INSERT INTO unavailability_time VALUES(30,49,'get me out',0,'2022-05-04 04:00:00','2022-05-04 08:00:00',0);
INSERT INTO unavailability_time VALUES(31,49,'get me out',0,'2022-05-04 04:00:00','2022-05-04 08:00:00',0);
INSERT INTO unavailability_time VALUES(32,49,'get me out',0,'2022-05-04 04:00:00','2022-05-04 08:00:00',0);
INSERT INTO unavailability_time VALUES(33,49,'get me out',0,'2022-05-04 04:00:00','2022-05-04 08:00:00',0);
INSERT INTO unavailability_time VALUES(34,49,'get me out',0,'2022-05-04 04:00:00','2022-05-04 08:00:00',0);
INSERT INTO unavailability_time VALUES(35,49,'get me out',0,'2022-05-04 04:00:00','2022-05-04 08:00:00',0);
INSERT INTO unavailability_time VALUES(36,49,'get me out',0,'2022-05-04 04:00:00','2022-05-04 08:00:00',0);
INSERT INTO unavailability_time VALUES(37,49,'get me out',0,'2022-05-04 04:00:00','2022-05-04 08:00:00',0);
INSERT INTO unavailability_time VALUES(38,49,'',0,'2022-05-04 04:00:00','2022-05-04 08:00:00',0);
INSERT INTO unavailability_time VALUES(39,49,'',0,'2022-05-04 04:00:00','2022-05-04 08:00:00',0);
INSERT INTO unavailability_time VALUES(40,49,'test3',0,'2022-05-12 06:00:00','2022-05-12 09:00:00',0);
INSERT INTO unavailability_time VALUES(41,49,'',0,'2022-05-03 18:00:00','2022-05-04 00:30:00',0);
INSERT INTO unavailability_time VALUES(42,49,'',0,'2022-05-03 18:00:00','2022-05-03 20:30:00',0);
INSERT INTO unavailability_time VALUES(43,49,'test',2,'2022-05-01 01:00:00','2022-05-01 10:00:00',0);
INSERT INTO unavailability_time VALUES(44,49,'get me out',0,'2022-05-05 17:30:00','2022-05-05 22:00:00',0);
INSERT INTO unavailability_time VALUES(45,49,'study',1,'2022-05-06 00:00:00','2022-05-06 10:00:00',0);
INSERT INTO unavailability_time VALUES(46,49,'study',1,'2022-05-06 02:00:00','2022-05-06 10:00:00',0);
INSERT INTO unavailability_time VALUES(47,49,'study',1,'2022-05-06 00:30:00','2022-05-06 10:00:00',0);
INSERT INTO unavailability_time VALUES(48,49,'study',1,'2022-05-06 03:00:00','2022-05-06 12:30:00',0);
INSERT INTO unavailability_time VALUES(49,49,'study',1,'2022-05-06 00:00:00','2022-05-06 12:30:00',0);
INSERT INTO unavailability_time VALUES(50,49,'study',1,'2022-05-05 23:00:00','2022-05-06 12:30:00',0);
INSERT INTO unavailability_time VALUES(51,49,'study',1,'2022-05-05 14:30:00','2022-05-06 04:00:00',0);
INSERT INTO unavailability_time VALUES(52,49,'study',1,'2022-05-04 14:30:00','2022-05-05 04:00:00',0);
INSERT INTO unavailability_time VALUES(53,49,'',0,'2022-05-05 05:30:00','2022-05-06 10:15:37',0);
INSERT INTO unavailability_time VALUES(54,49,'Test No Repeat',0,'2022-05-03 18:00:00','2022-05-03 20:00:00',0);
INSERT INTO unavailability_time VALUES(55,49,'Test Day  Repeat',1,'2022-05-11 18:00:00','2022-05-11 20:00:00',0);
INSERT INTO unavailability_time VALUES(56,49,'Test week ',2,'2022-05-08 18:00:00','2022-05-09 07:00:00',0);
INSERT INTO unavailability_time VALUES(57,49,'Test week ',2,'2022-05-08 08:00:00','2022-05-08 21:00:00',0);
INSERT INTO unavailability_time VALUES(58,49,'Test week ',2,'2022-05-08 08:00:00','2022-05-10 21:00:00',0);
INSERT INTO unavailability_time VALUES(59,49,'Test week ',2,'2022-05-08 08:00:00','2022-05-08 21:00:00',0);
INSERT INTO unavailability_time VALUES(60,49,'Test week ',2,'2022-05-08 08:00:00','2022-05-08 21:00:00',0);
INSERT INTO unavailability_time VALUES(61,49,'Test week ',2,'2022-05-08 08:00:00','2022-05-08 21:00:00',0);
INSERT INTO unavailability_time VALUES(62,49,'Test week ',2,'2022-05-10 08:00:00','2022-05-10 21:00:00',0);
INSERT INTO unavailability_time VALUES(63,49,'Test week ',2,'2022-05-10 08:00:00','2022-05-10 21:00:00',0);
INSERT INTO unavailability_time VALUES(64,49,'Test Week',2,'2022-05-10 19:00:00','2022-05-10 23:00:00',0);
INSERT INTO unavailability_time VALUES(65,49,'Test Month',3,'2022-05-12 03:00:00','2022-05-12 08:00:00',0);
INSERT INTO unavailability_time VALUES(66,49,'Test Week',2,'2022-05-09 18:00:00','2022-05-10 03:00:00',0);
INSERT INTO unavailability_time VALUES(67,49,'Test Weekly',0,'2022-05-09 19:00:00','2022-05-10 03:00:00',0);
INSERT INTO unavailability_time VALUES(68,49,'Test Weekly',0,'2022-05-09 09:00:00','2022-05-09 17:00:00',0);
INSERT INTO unavailability_time VALUES(69,49,'Test Weekly',0,'2022-05-09 09:00:00','2022-05-09 17:00:00',0);
INSERT INTO unavailability_time VALUES(70,49,'Test Weekly',0,'2022-05-09 09:00:00','2022-05-09 17:00:00',0);
INSERT INTO unavailability_time VALUES(71,49,'Test Weekly',2,'2022-05-09 19:00:00','2022-05-10 05:00:00',0);
INSERT INTO unavailability_time VALUES(72,49,'Test Week',2,'2022-05-09 18:00:00','2022-05-10 05:00:00',0);
INSERT INTO unavailability_time VALUES(73,49,'Test Day',0,'2022-05-08 17:00:00','2022-05-09 00:00:00',0);
INSERT INTO unavailability_time VALUES(74,49,'Test Day',1,'2022-05-08 17:00:00','2022-05-09 03:00:00',0);
INSERT INTO unavailability_time VALUES(75,49,'Week',2,'2022-05-05 19:00:00','2022-05-06 00:00:00',0);
INSERT INTO unavailability_time VALUES(76,49,'Week Fri',0,'2022-05-05 20:00:00','2022-05-06 05:00:00',0);
INSERT INTO unavailability_time VALUES(77,49,'Week',2,'2022-05-06 03:00:00','2022-05-06 07:00:00',0);
INSERT INTO unavailability_time VALUES(78,49,'Test Day',1,'2022-05-18 04:00:00','2022-05-18 11:00:00',0);
INSERT INTO unavailability_time VALUES(79,49,'Test Week',2,'2022-05-10 23:00:00','2022-05-11 08:00:00',0);
INSERT INTO unavailability_time VALUES(80,49,'Test Week',1,'2022-05-10 18:00:00','2022-05-11 09:00:00',0);
INSERT INTO unavailability_time VALUES(81,49,'Week',2,'2022-05-12 05:00:00','2022-05-12 08:00:00',0);
INSERT INTO unavailability_time VALUES(82,49,'Test',0,'2022-05-17 06:00:00','2022-05-17 08:00:00',0);
INSERT INTO unavailability_time VALUES(83,49,'Pls',1,'2022-05-11 03:00:00','2022-05-11 09:00:00',0);
INSERT INTO unavailability_time VALUES(84,49,'No repeat',0,'2022-05-06 04:00:00','2022-05-06 09:00:00',0);
INSERT INTO unavailability_time VALUES(85,49,'No repeat',0,'2022-05-06 03:30:00','2022-05-06 09:00:00',0);
INSERT INTO unavailability_time VALUES(86,49,'No repeat',0,'2022-05-05 18:00:00','2022-05-05 23:00:00',0);
INSERT INTO unavailability_time VALUES(87,49,'Test dd',1,'2022-05-07 07:00:00','2022-05-07 13:00:00',0);
INSERT INTO unavailability_time VALUES(88,49,'Day Test',1,'2022-05-09 03:00:00','2022-05-09 08:00:00',0);
INSERT INTO unavailability_time VALUES(89,49,'Play',1,'2022-05-12 14:00:00','2022-05-12 16:00:00',0);
INSERT INTO unavailability_time VALUES(90,49,'Test Event',2,'2022-05-05 18:00:00','2022-05-06 10:00:00',0);
INSERT INTO unavailability_time VALUES(91,49,'Test Event',2,'2022-05-05 08:00:00','2022-05-06 00:00:00',0);
INSERT INTO unavailability_time VALUES(92,49,'Test No Repeat',0,'2022-05-03 07:30:00','2022-05-03 10:00:00',0);
INSERT INTO unavailability_time VALUES(93,49,'Test No Repeat',0,'2022-05-03 07:00:00','2022-05-03 10:00:00',0);
INSERT INTO unavailability_time VALUES(94,49,'Test No Repeat',0,'2022-05-03 04:00:00','2022-05-03 10:00:00',0);
INSERT INTO unavailability_time VALUES(95,49,'Test No Repeat',0,'2022-05-02 14:00:00','2022-05-03 10:00:00',0);
INSERT INTO unavailability_time VALUES(96,49,'Test No Repeat',0,'2022-05-02 20:00:00','2022-05-03 00:00:00',0);
INSERT INTO unavailability_time VALUES(97,49,'',0,'2022-05-05 18:00:00','2022-05-05 22:00:00',0);
INSERT INTO unavailability_time VALUES(98,49,'',0,'2022-05-05 17:00:00','2022-05-05 22:00:00',0);
INSERT INTO unavailability_time VALUES(99,49,'',0,'2022-05-05 18:00:00','2022-05-06 01:30:00',0);
INSERT INTO unavailability_time VALUES(100,49,'Tes3',0,'2022-05-05 17:00:00','2022-05-05 21:00:00',0);
INSERT INTO unavailability_time VALUES(101,49,'Tes3',0,'2022-05-05 16:00:00','2022-05-05 21:00:00',0);
INSERT INTO unavailability_time VALUES(102,49,'Tes3',0,'2022-05-05 16:00:00','2022-05-05 22:00:00',0);
INSERT INTO unavailability_time VALUES(103,49,'Tes3',0,'2022-05-05 03:30:00','2022-05-05 12:00:00',0);
INSERT INTO unavailability_time VALUES(104,49,'Tes3',0,'2022-05-04 17:00:00','2022-05-05 02:00:00',0);
INSERT INTO unavailability_time VALUES(105,49,'Week',2,'2022-05-11 18:00:00','2022-05-11 22:00:00',0);
INSERT INTO unavailability_time VALUES(106,49,'Week',2,'2022-05-10 23:00:00','2022-05-11 12:00:00',0);
INSERT INTO unavailability_time VALUES(107,49,'Tst5',0,'2022-05-05 20:00:00','2022-05-06 01:00:00',0);
INSERT INTO unavailability_time VALUES(108,49,'Tst5',0,'2022-05-05 19:00:00','2022-05-06 01:00:00',0);
INSERT INTO unavailability_time VALUES(109,49,'Testing',1,'2022-05-08 19:00:00','2022-05-09 01:00:00',0);
INSERT INTO unavailability_time VALUES(110,49,'Testing',1,'2022-05-08 19:00:00','2022-05-09 01:00:00',0);
INSERT INTO unavailability_time VALUES(111,49,'Test6',1,'2022-05-05 16:00:00','2022-05-06 04:00:00',0);
INSERT INTO unavailability_time VALUES(112,49,'Test6',1,'2022-05-05 16:00:00','2022-05-06 04:00:00',0);
INSERT INTO unavailability_time VALUES(113,49,'Test6',1,'2022-05-05 16:00:00','2022-05-06 04:00:00',0);
INSERT INTO unavailability_time VALUES(114,49,'Test6',1,'2022-05-05 16:00:00','2022-05-06 04:00:00',0);
INSERT INTO unavailability_time VALUES(115,49,'Test6',1,'2022-05-06 05:00:00','2022-05-06 08:00:00',0);
INSERT INTO unavailability_time VALUES(116,49,'test6',1,'2022-05-05 22:00:00','2022-05-06 06:00:00',0);
INSERT INTO unavailability_time VALUES(117,49,'test6',1,'2022-05-05 22:00:00','2022-05-06 06:00:00',0);
INSERT INTO unavailability_time VALUES(118,49,'test6',1,'2022-05-05 22:00:00','2022-05-06 06:00:00',0);
INSERT INTO unavailability_time VALUES(119,49,'test6',1,'2022-05-05 22:00:00','2022-05-06 06:00:00',0);
INSERT INTO unavailability_time VALUES(120,49,'test6',1,'2022-05-05 19:00:00','2022-05-06 00:00:00',0);
INSERT INTO unavailability_time VALUES(121,49,'test6',1,'2022-05-05 19:00:00','2022-05-06 00:00:00',0);
INSERT INTO unavailability_time VALUES(122,49,'test6',1,'2022-05-05 19:00:00','2022-05-06 00:00:00',0);
INSERT INTO unavailability_time VALUES(123,49,'test6',1,'2022-05-05 19:00:00','2022-05-06 00:00:00',0);
INSERT INTO unavailability_time VALUES(124,49,'test6',0,'2022-05-05 19:00:00','2022-05-06 00:00:00',0);
INSERT INTO unavailability_time VALUES(125,49,'test6',0,'2022-05-06 09:00:00','2022-05-06 14:00:00',0);
INSERT INTO unavailability_time VALUES(126,49,'test6',0,'2022-05-05 18:00:00','2022-05-06 04:00:00',0);
INSERT INTO unavailability_time VALUES(127,49,'testy',0,'2022-05-06 04:00:00','2022-05-06 08:00:00',0);
INSERT INTO unavailability_time VALUES(128,49,'day',1,'2022-05-09 07:00:00','2022-05-09 10:00:00',0);
INSERT INTO unavailability_time VALUES(129,49,'Daily',0,'2022-05-12 07:00:00','2022-05-12 14:00:00',0);
INSERT INTO unavailability_time VALUES(130,49,'Daily',1,'2022-05-19 07:00:00','2022-05-19 14:00:00',0);
INSERT INTO unavailability_time VALUES(131,49,'Daily',0,'2022-05-11 20:00:00','2022-05-12 04:00:00',0);
INSERT INTO unavailability_time VALUES(132,49,'Daily ',0,'2022-05-11 06:00:00','2022-05-11 10:00:00',0);
INSERT INTO unavailability_time VALUES(133,49,'theverge',1,'2022-05-10 07:00:00','2022-05-10 09:00:00',0);
INSERT INTO unavailability_time VALUES(134,49,'theverge',1,'2022-05-10 07:00:00','2022-05-10 09:00:00',0);
INSERT INTO unavailability_time VALUES(135,49,'Month ',3,'2022-05-12 07:00:00','2022-05-12 10:00:00',0);
INSERT INTO unavailability_time VALUES(136,49,'Month ',3,'2022-05-19 07:00:00','2022-05-19 14:00:00',0);
INSERT INTO unavailability_time VALUES(137,49,'Month ',3,'2022-05-19 07:00:00','2022-05-19 14:00:00',0);
INSERT INTO unavailability_time VALUES(138,49,'Test',1,'2022-05-04 06:00:00','2022-05-04 08:00:00',0);
INSERT INTO unavailability_time VALUES(139,49,'Test',1,'2022-05-04 06:00:00','2022-05-04 08:00:00',0);
INSERT INTO unavailability_time VALUES(140,49,'t',0,'2022-05-19 05:00:00','2022-05-19 09:00:00',0);
INSERT INTO unavailability_time VALUES(141,49,'t',2,'2022-05-19 05:00:00','2022-05-19 09:00:00',0);
INSERT INTO unavailability_time VALUES(142,49,'t',1,'2022-05-11 06:00:00','2022-05-11 10:00:00',0);
INSERT INTO unavailability_time VALUES(143,49,'Testwait',1,'2022-05-05 07:00:00','2022-05-05 10:00:00',0);
INSERT INTO unavailability_time VALUES(144,49,'repeat',2,'2022-05-10 08:00:00','2022-05-10 14:00:00',0);
INSERT INTO unavailability_time VALUES(145,49,'repeat',2,'2022-05-10 08:00:00','2022-05-10 14:00:00',0);
INSERT INTO unavailability_time VALUES(146,49,'repeat',2,'2022-05-10 08:00:00','2022-05-10 14:00:00',0);
INSERT INTO unavailability_time VALUES(147,49,'Repeat',2,'2022-05-11 04:00:00','2022-05-11 10:00:00',0);
INSERT INTO unavailability_time VALUES(148,49,'Repeat',2,'2022-05-11 04:00:00','2022-05-11 10:00:00',0);
INSERT INTO unavailability_time VALUES(149,49,'Repeat',0,'2022-05-12 06:00:00','2022-05-12 10:00:00',0);
INSERT INTO unavailability_time VALUES(150,49,'Repeat',2,'2022-05-10 06:00:00','2022-05-10 10:00:00',0);
INSERT INTO unavailability_time VALUES(151,49,'Repeat',2,'2022-05-09 06:00:00','2022-05-09 09:00:00',0);
INSERT INTO unavailability_time VALUES(152,49,'Test',2,'2022-05-10 06:00:00','2022-05-10 10:00:00',0);
INSERT INTO unavailability_time VALUES(153,49,'Test',2,'2022-05-10 06:00:00','2022-05-10 10:00:00',0);
INSERT INTO unavailability_time VALUES(154,49,'Test',2,'2022-05-10 06:00:00','2022-05-10 10:00:00',0);
INSERT INTO unavailability_time VALUES(155,49,'Test',2,'2022-05-10 06:00:00','2022-05-10 10:00:00',0);
INSERT INTO unavailability_time VALUES(156,49,'Test',2,'2022-05-10 06:00:00','2022-05-10 10:00:00',0);
INSERT INTO unavailability_time VALUES(157,49,'t',2,'2022-05-10 06:00:00','2022-05-10 10:00:00',0);
INSERT INTO unavailability_time VALUES(158,49,'t',0,'2022-05-17 06:00:00','2022-05-17 13:00:00',0);
INSERT INTO unavailability_time VALUES(159,49,'t',2,'2022-05-17 06:00:00','2022-05-17 13:00:00',0);
INSERT INTO unavailability_time VALUES(160,49,'tes',2,'2022-05-10 05:00:00','2022-05-10 12:00:00',0);
INSERT INTO unavailability_time VALUES(161,49,'Repeat',1,'2022-05-10 04:00:00','2022-05-10 08:00:00',0);
INSERT INTO unavailability_time VALUES(162,49,'Repeat',1,'2022-05-10 04:00:00','2022-05-10 08:00:00',0);
INSERT INTO unavailability_time VALUES(163,49,'Repeat',1,'2022-05-10 04:00:00','2022-05-10 08:00:00',0);
INSERT INTO unavailability_time VALUES(164,49,'Repeat',1,'2022-05-10 04:00:00','2022-05-10 08:00:00',0);
INSERT INTO unavailability_time VALUES(165,49,'Repeat',1,'2022-05-10 04:00:00','2022-05-10 08:00:00',0);
INSERT INTO unavailability_time VALUES(166,49,'Repeat',1,'2022-05-10 04:00:00','2022-05-10 08:00:00',0);
INSERT INTO unavailability_time VALUES(167,49,'Repeat',1,'2022-05-10 04:00:00','2022-05-10 08:00:00',0);
INSERT INTO unavailability_time VALUES(168,49,'Repeat',1,'2022-05-10 04:00:00','2022-05-10 08:00:00',0);
INSERT INTO unavailability_time VALUES(169,49,'Repeat',0,'2022-05-10 04:00:00','2022-05-10 08:00:00',0);
INSERT INTO unavailability_time VALUES(170,49,'Repeat',1,'2022-05-10 04:00:00','2022-05-10 08:00:00',0);
INSERT INTO unavailability_time VALUES(171,49,'Repeat',1,'2022-05-10 04:00:00','2022-05-10 08:00:00',0);
INSERT INTO unavailability_time VALUES(172,49,'Repeat',1,'2022-05-10 04:00:00','2022-05-10 08:00:00',0);
INSERT INTO unavailability_time VALUES(173,49,'Repeat',1,'2022-05-10 04:00:00','2022-05-10 08:00:00',0);
INSERT INTO unavailability_time VALUES(174,49,'Repeat',1,'2022-05-10 04:00:00','2022-05-10 08:00:00',0);
INSERT INTO unavailability_time VALUES(175,49,'testR',1,'2022-05-10 07:00:00','2022-05-10 13:00:00',0);
INSERT INTO unavailability_time VALUES(176,49,'testR',1,'2022-05-10 06:00:00','2022-05-10 12:00:00',0);
INSERT INTO unavailability_time VALUES(177,49,'testR',1,'2022-05-10 06:00:00','2022-05-10 12:00:00',0);
INSERT INTO unavailability_time VALUES(178,49,'testR',1,'2022-05-10 06:00:00','2022-05-10 12:00:00',0);
INSERT INTO unavailability_time VALUES(179,49,'testX',1,'2022-05-10 06:00:00','2022-05-10 12:00:00',0);
INSERT INTO unavailability_time VALUES(180,49,'TestY',1,'2022-05-10 06:00:00','2022-05-10 08:00:00',0);
INSERT INTO unavailability_time VALUES(181,49,'TestF',1,'2022-05-10 06:00:00','2022-05-10 08:00:00',0);
INSERT INTO unavailability_time VALUES(182,49,'TestF',1,'2022-05-10 06:00:00','2022-05-10 08:00:00',0);
INSERT INTO unavailability_time VALUES(183,49,'TestF',1,'2022-05-10 06:00:00','2022-05-10 08:00:00',0);
INSERT INTO unavailability_time VALUES(184,49,'TestF',1,'2022-05-10 06:00:00','2022-05-10 08:00:00',0);
INSERT INTO unavailability_time VALUES(185,49,'TY',2,'2022-05-03 04:00:00','2022-05-03 09:00:00',0);
INSERT INTO unavailability_time VALUES(186,49,'TX',1,'2022-05-10 06:00:00','2022-05-10 09:00:00',0);
INSERT INTO unavailability_time VALUES(187,49,'trial ',1,'2022-05-09 05:00:00','2022-05-09 09:00:00',0);
INSERT INTO unavailability_time VALUES(188,49,'tx',1,'2022-05-10 06:00:00','2022-05-10 13:00:00',0);
INSERT INTO unavailability_time VALUES(189,49,'ty',2,'2022-05-17 08:00:00','2022-05-17 10:00:00',0);
INSERT INTO unavailability_time VALUES(190,49,'TX',2,'2022-05-12 07:00:00','2022-05-12 12:00:00',0);
INSERT INTO unavailability_time VALUES(191,49,'TX',2,'2022-05-12 07:00:00','2022-05-12 12:00:00',0);
INSERT INTO unavailability_time VALUES(192,49,'TX',2,'2022-05-12 07:00:00','2022-05-12 12:00:00',0);
INSERT INTO unavailability_time VALUES(193,49,'TX',2,'2022-05-12 07:00:00','2022-05-12 12:00:00',0);
INSERT INTO unavailability_time VALUES(194,49,'Ty',2,'2022-05-09 16:00:00','2022-05-09 23:00:00',0);
INSERT INTO unavailability_time VALUES(195,49,'TY',2,'2022-05-10 05:00:00','2022-05-10 09:00:00',0);
INSERT INTO unavailability_time VALUES(196,49,'TY',2,'2022-05-10 07:00:00','2022-05-10 13:00:00',0);
INSERT INTO unavailability_time VALUES(197,49,'Yawn',2,'2022-05-07 16:00:00','2022-05-08 04:00:00',0);
INSERT INTO unavailability_time VALUES(198,49,'eventD',2,'2022-05-10 07:00:00','2022-05-10 12:00:00',0);
INSERT INTO unavailability_time VALUES(199,49,'TestAdd',0,'2022-05-06 07:00:00','2022-05-06 09:00:00',0);
INSERT INTO unavailability_time VALUES(200,49,'TestRepeat',2,'2022-05-10 03:00:00','2022-05-10 11:00:00',0);
INSERT INTO unavailability_time VALUES(201,49,'TestRepeat',2,'2022-05-10 03:00:00','2022-05-10 11:00:00',0);
INSERT INTO unavailability_time VALUES(202,49,'Repeat',2,'2022-05-09 01:00:00','2022-05-09 08:00:00',0);
INSERT INTO unavailability_time VALUES(203,49,'Repeat',2,'2022-05-09 01:00:00','2022-05-09 08:00:00',0);
INSERT INTO unavailability_time VALUES(204,49,'test',2,'2022-05-11 05:00:00','2022-05-11 10:00:00',0);
INSERT INTO unavailability_time VALUES(205,49,'add',2,'2022-05-03 06:00:00','2022-05-03 09:00:00',0);
INSERT INTO unavailability_time VALUES(206,49,'add',0,'2022-05-03 06:00:00','2022-05-03 09:00:00',0);
INSERT INTO unavailability_time VALUES(207,49,'add',0,'2022-05-03 06:00:00','2022-05-03 09:00:00',0);
INSERT INTO unavailability_time VALUES(208,49,'add',0,'2022-05-03 06:00:00','2022-05-03 09:00:00',0);
INSERT INTO unavailability_time VALUES(209,49,'add',0,'2022-05-03 06:00:00','2022-05-03 09:00:00',0);
INSERT INTO unavailability_time VALUES(210,49,'add',0,'2022-05-03 06:00:00','2022-05-03 09:00:00',0);
INSERT INTO unavailability_time VALUES(211,49,'add',2,'2022-05-03 06:00:00','2022-05-03 09:00:00',0);
INSERT INTO unavailability_time VALUES(212,49,'add',2,'2022-05-03 06:00:00','2022-05-03 09:00:00',0);
INSERT INTO unavailability_time VALUES(213,49,'add',2,'2022-05-03 06:00:00','2022-05-03 09:00:00',0);
INSERT INTO unavailability_time VALUES(214,49,'add',2,'2022-05-03 06:00:00','2022-05-03 09:00:00',0);
INSERT INTO unavailability_time VALUES(215,49,'add',2,'2022-05-03 06:00:00','2022-05-03 09:00:00',0);
INSERT INTO unavailability_time VALUES(216,49,'add',2,'2022-05-03 06:00:00','2022-05-03 09:00:00',0);
INSERT INTO unavailability_time VALUES(217,49,'day',2,'2022-05-04 04:00:00','2022-05-04 08:00:00',0);
INSERT INTO unavailability_time VALUES(218,49,'day',2,'2022-05-04 04:00:00','2022-05-04 08:00:00',0);
INSERT INTO unavailability_time VALUES(219,49,'day',2,'2022-05-04 04:00:00','2022-05-04 08:00:00',0);
INSERT INTO unavailability_time VALUES(220,49,'day',2,'2022-05-04 04:00:00','2022-05-04 08:00:00',0);
INSERT INTO unavailability_time VALUES(221,49,'day',2,'2022-05-04 04:00:00','2022-05-04 08:00:00',0);
INSERT INTO unavailability_time VALUES(222,49,'day',2,'2022-05-04 04:00:00','2022-05-04 08:00:00',0);
INSERT INTO unavailability_time VALUES(223,49,'t',2,'2022-05-05 06:00:00','2022-05-05 11:00:00',0);
INSERT INTO unavailability_time VALUES(224,49,'t',2,'2022-05-05 06:00:00','2022-05-05 11:00:00',0);
INSERT INTO unavailability_time VALUES(225,49,'t',2,'2022-05-05 06:00:00','2022-05-05 11:00:00',0);
INSERT INTO unavailability_time VALUES(226,49,'t',0,'2022-05-10 07:00:00','2022-05-10 12:00:00',0);
INSERT INTO unavailability_time VALUES(227,49,'t',0,'2022-05-10 07:00:00','2022-05-10 12:00:00',0);
INSERT INTO unavailability_time VALUES(228,49,'t',2,'2022-05-10 07:00:00','2022-05-10 12:00:00',0);
INSERT INTO unavailability_time VALUES(229,49,'t',2,'2022-05-10 07:00:00','2022-05-10 12:00:00',0);
INSERT INTO unavailability_time VALUES(230,49,'t',2,'2022-05-10 07:00:00','2022-05-10 12:00:00',0);
INSERT INTO unavailability_time VALUES(231,49,'t3',2,'2022-05-10 06:00:00','2022-05-10 12:00:00',0);
INSERT INTO unavailability_time VALUES(232,49,'t3',2,'2022-05-10 06:00:00','2022-05-10 12:00:00',0);
INSERT INTO unavailability_time VALUES(233,49,'t3',2,'2022-05-10 06:00:00','2022-05-10 12:00:00',0);
INSERT INTO unavailability_time VALUES(234,49,'t3',2,'2022-05-10 06:00:00','2022-05-10 12:00:00',0);
INSERT INTO unavailability_time VALUES(235,49,'t3',2,'2022-05-10 05:00:00','2022-05-10 09:00:00',0);
INSERT INTO unavailability_time VALUES(236,49,'t3',2,'2022-05-10 06:00:00','2022-05-10 09:00:00',0);
INSERT INTO unavailability_time VALUES(237,49,'t3',2,'2022-05-10 04:00:00','2022-05-10 09:00:00',0);
INSERT INTO unavailability_time VALUES(238,49,'t4',2,'2022-05-16 04:00:00','2022-05-16 09:00:00',0);
INSERT INTO unavailability_time VALUES(239,49,'Test8',2,'2022-05-16 18:00:00','2022-05-17 01:00:00',0);
INSERT INTO unavailability_time VALUES(240,49,'Test8',2,'2022-05-17 18:00:00','2022-05-18 01:00:00',0);
INSERT INTO unavailability_time VALUES(241,49,'Repeat',0,'2022-05-10 20:00:00','2022-05-11 00:00:00',0);
INSERT INTO unavailability_time VALUES(242,49,'Repeat T',2,'2022-05-08 17:00:00','2022-05-09 00:00:00',0);
INSERT INTO unavailability_time VALUES(243,49,'Repeat T',2,'2022-05-08 16:30:00','2022-05-09 00:00:00',0);
INSERT INTO unavailability_time VALUES(244,49,'Repeat T',2,'2022-05-09 16:00:00','2022-05-09 23:30:00',0);
INSERT INTO unavailability_time VALUES(245,49,'Repeat T',2,'2022-05-08 16:00:00','2022-05-08 23:30:00',0);
INSERT INTO unavailability_time VALUES(246,49,'Repeat T',2,'2022-05-08 20:00:00','2022-05-09 03:30:00',0);
INSERT INTO unavailability_time VALUES(247,49,'Repeat T',2,'2022-05-08 16:00:00','2022-05-08 23:30:00',0);
INSERT INTO unavailability_time VALUES(248,49,'Repeat T',2,'2022-05-09 21:00:00','2022-05-10 04:30:00',0);
INSERT INTO unavailability_time VALUES(249,49,'Test Time Stable',0,'2022-05-09 17:00:00','2022-05-09 23:00:00',0);
INSERT INTO unavailability_time VALUES(250,49,'time',0,'2022-05-10 06:00:00','2022-05-10 09:00:00',0);
INSERT INTO unavailability_time VALUES(251,49,'time',0,'2022-05-10 06:00:00','2022-05-10 09:00:00',0);
INSERT INTO unavailability_time VALUES(252,49,'time',0,'2022-05-10 06:00:00','2022-05-10 09:00:00',0);
INSERT INTO unavailability_time VALUES(253,49,'time',0,'2022-05-10 06:00:00','2022-05-10 09:00:00',0);
INSERT INTO unavailability_time VALUES(254,49,'Test Time',0,'2022-05-10 02:00:00','2022-05-10 09:00:00',0);
INSERT INTO unavailability_time VALUES(255,49,'Test5',0,'2022-05-03 14:00:00','2022-05-04 08:00:00',0);
INSERT INTO unavailability_time VALUES(256,49,'Test5',0,'2022-05-04 00:00:00','2022-05-04 18:00:00',0);
INSERT INTO unavailability_time VALUES(257,49,'Thu-6am-2pm',0,'2022-05-05 06:00:00','2022-05-05 14:00:00',0);
INSERT INTO unavailability_time VALUES(258,49,'',0,'2022-05-18 04:00:00','2022-05-18 05:00:00',0);
INSERT INTO unavailability_time VALUES(259,49,'',0,'2022-05-18 02:00:00','2022-05-18 08:00:00',0);
INSERT INTO unavailability_time VALUES(260,49,'',0,'2022-05-18 02:00:00','2022-05-18 08:00:00',0);
INSERT INTO unavailability_time VALUES(261,49,'',2,'2022-05-10 06:00:00','2022-05-10 15:00:00',0);
INSERT INTO unavailability_time VALUES(262,49,'Test5',0,'2022-05-03 14:00:00','2022-05-04 08:00:00',0);
INSERT INTO unavailability_time VALUES(263,49,'Go to class',0,'2022-05-13 16:00:00','2022-05-13 18:00:00',0);
INSERT INTO unavailability_time VALUES(264,49,'Go to class',0,'2022-05-13 06:00:00','2022-05-13 08:00:00',0);
INSERT INTO unavailability_time VALUES(265,49,'Go to class',0,'2022-05-13 01:30:00','2022-05-13 08:00:00',0);
INSERT INTO unavailability_time VALUES(266,49,'Go to class',0,'2022-05-13 05:00:00','2022-05-13 11:30:00',0);
INSERT INTO unavailability_time VALUES(267,49,'Go to class',0,'2022-05-13 05:00:00','2022-05-13 09:00:00',0);
INSERT INTO unavailability_time VALUES(268,49,'Go to class',0,'2022-05-14 00:00:00','2022-05-14 00:00:00',0);
INSERT INTO unavailability_time VALUES(269,49,'Prepare Presentation',0,'2022-05-13 00:00:00','2022-05-13 00:00:00',0);
INSERT INTO unavailability_time VALUES(270,49,'Go to tutorial',2,'2022-05-14 16:00:00','2022-05-14 18:00:00',0);
INSERT INTO unavailability_time VALUES(271,49,'Go to tutorial',2,'2022-05-14 03:00:00','2022-05-14 08:00:00',0);
INSERT INTO unavailability_time VALUES(272,49,'Go to tutorial',2,'2022-05-13 20:30:00','2022-05-14 01:30:00',0);
INSERT INTO unavailability_time VALUES(273,49,'Go to tutorial',2,'2022-05-14 00:30:00','2022-05-14 05:30:00',0);
INSERT INTO unavailability_time VALUES(274,49,'Go to tutorial',2,'2022-05-14 01:00:00','2022-05-14 06:00:00',0);
INSERT INTO unavailability_time VALUES(275,49,'Go camping',0,'2022-05-14 00:00:00','2022-05-14 00:00:00',0);
INSERT INTO unavailability_time VALUES(276,49,'Go camping',0,'2022-05-13 00:00:00','2022-05-13 00:00:00',0);
INSERT INTO unavailability_time VALUES(277,49,'Go camping',0,'2022-05-13 00:00:00','2022-05-13 00:00:00',0);
INSERT INTO unavailability_time VALUES(278,49,'Tutorial',2,'2022-05-14 16:00:00','2022-05-14 18:00:00',0);
INSERT INTO unavailability_time VALUES(279,49,'Tutorial',2,'2022-05-13 21:00:00','2022-05-13 23:00:00',0);
INSERT INTO unavailability_time VALUES(280,49,'Tutorial',2,'2022-05-13 21:00:00','2022-05-14 05:00:00',0);
INSERT INTO unavailability_time VALUES(281,49,'Tutorial',2,'2022-05-14 16:00:00','2022-05-14 18:00:00',0);
INSERT INTO unavailability_time VALUES(282,49,'Tutorial',0,'2022-05-14 16:00:00','2022-05-14 18:00:00',0);
INSERT INTO unavailability_time VALUES(283,49,'Tutorial',2,'2022-05-14 16:00:00','2022-05-14 18:00:00',0);
INSERT INTO unavailability_time VALUES(284,49,'Tutorial',2,'2022-05-13 20:00:00','2022-05-13 22:00:00',0);
INSERT INTO unavailability_time VALUES(285,49,'Tutorial',2,'2022-05-13 20:00:00','2022-05-14 03:00:00',0);
INSERT INTO unavailability_time VALUES(286,49,'Tutorial',2,'2022-05-14 02:30:00','2022-05-14 09:30:00',0);
INSERT INTO unavailability_time VALUES(287,49,'Tutorial',2,'2022-05-13 19:30:00','2022-05-14 09:30:00',0);
INSERT INTO unavailability_time VALUES(288,49,'Tutorial',2,'2022-05-13 16:30:00','2022-05-14 06:30:00',0);
INSERT INTO unavailability_time VALUES(289,49,'Tutorial',2,'2022-05-13 16:30:00','2022-05-13 21:00:00',0);
INSERT INTO unavailability_time VALUES(290,49,'Tutorial',2,'2022-05-14 16:00:00','2022-05-14 18:00:00',0);
INSERT INTO unavailability_time VALUES(291,49,'Tutorial',2,'2022-05-13 22:00:00','2022-05-14 00:00:00',0);
INSERT INTO unavailability_time VALUES(292,49,'Tutorial',2,'2022-05-13 22:00:00','2022-05-14 04:00:00',0);
INSERT INTO unavailability_time VALUES(293,49,'Tutorial',2,'2022-05-14 16:00:00','2022-05-14 18:00:00',0);
INSERT INTO unavailability_time VALUES(294,49,'Tutorial',2,'2022-05-13 22:30:00','2022-05-14 00:30:00',0);
INSERT INTO unavailability_time VALUES(295,49,'Tutorial',2,'2022-05-13 22:30:00','2022-05-14 02:00:00',0);
INSERT INTO unavailability_time VALUES(296,49,'Tutorial',2,'2022-05-13 23:00:00','2022-05-14 02:30:00',0);
INSERT INTO unavailability_time VALUES(297,49,'Tutorial',2,'2022-05-14 16:00:00','2022-05-14 18:00:00',0);
INSERT INTO unavailability_time VALUES(298,49,'Tutorial',2,'2022-05-14 16:00:00','2022-05-14 18:00:00',0);
INSERT INTO unavailability_time VALUES(299,49,'Tutorial',2,'2022-05-14 01:00:00','2022-05-14 03:00:00',0);
INSERT INTO unavailability_time VALUES(300,49,'Tutorial',2,'2022-05-14 00:00:00','2022-05-14 02:00:00',0);
INSERT INTO unavailability_time VALUES(301,49,'Go camping',0,'2022-05-13 00:00:00','2022-05-13 00:00:00',0);
INSERT INTO unavailability_time VALUES(302,49,'Tutorial',2,'2022-05-14 16:00:00','2022-05-14 18:00:00',0);
INSERT INTO unavailability_time VALUES(303,49,'Tutorial',2,'2022-05-13 23:30:00','2022-05-14 01:30:00',0);
INSERT INTO unavailability_time VALUES(304,49,'Tutorial',2,'2022-05-14 03:00:00','2022-05-14 05:00:00',0);
INSERT INTO unavailability_time VALUES(305,49,'Tutorial',2,'2022-05-14 03:00:00','2022-05-14 09:30:00',0);
INSERT INTO unavailability_time VALUES(306,49,'Go camping',0,'2022-05-13 00:00:00','2022-05-13 00:00:00',0);
INSERT INTO unavailability_time VALUES(307,49,'Tutorial',2,'2022-05-14 16:00:00','2022-05-14 19:00:00',0);
INSERT INTO unavailability_time VALUES(308,49,'Tutorial',2,'2022-05-13 23:00:00','2022-05-14 02:00:00',0);
INSERT INTO unavailability_time VALUES(309,49,'Tutorial',2,'2022-05-13 23:00:00','2022-05-14 07:00:00',0);
INSERT INTO unavailability_time VALUES(310,49,'Tutorial',2,'2022-05-13 02:00:00','2022-05-13 10:00:00',0);
INSERT INTO unavailability_time VALUES(311,49,'Go camping',0,'2022-05-13 00:00:00','2022-05-13 00:00:00',0);
INSERT INTO unavailability_time VALUES(312,49,'tutorial',0,'2022-05-14 16:00:00','2022-05-14 18:00:00',0);
INSERT INTO unavailability_time VALUES(313,49,'tutorial',0,'2022-05-21 06:00:00','2022-05-21 08:00:00',0);
INSERT INTO unavailability_time VALUES(314,49,'tutorial',0,'2022-05-19 18:30:00','2022-05-19 20:30:00',0);
INSERT INTO unavailability_time VALUES(315,49,'tutorial',0,'2022-05-19 18:30:00','2022-05-20 04:30:00',0);
INSERT INTO unavailability_time VALUES(316,49,'Test Event',0,'2022-05-19 05:00:00','2022-05-19 15:00:00',0);
INSERT INTO unavailability_time VALUES(317,49,'Monthly Test Event',3,'2022-05-24 07:00:00','2022-05-24 19:00:00',0);
INSERT INTO unavailability_time VALUES(318,49,'Monthly Test Event',3,'2022-05-24 07:00:00','2022-05-24 19:00:00',0);
INSERT INTO unavailability_time VALUES(319,49,'Test Event',0,'2022-05-19 05:00:00','2022-05-19 17:00:00',0);
INSERT INTO unavailability_time VALUES(320,49,'Go camping',0,'2022-05-14 00:00:00','2022-05-14 00:00:00',0);
INSERT INTO unavailability_time VALUES(321,49,'presentation',2,'2022-05-17 00:00:00','2022-05-17 00:00:00',0);
INSERT INTO unavailability_time VALUES(322,49,'Test Event',0,'2022-05-19 03:00:00','2022-05-19 15:00:00',0);
INSERT INTO unavailability_time VALUES(323,49,'Test Event',0,'2022-05-19 10:00:00','2022-05-19 15:00:00',0);
INSERT INTO unavailability_time VALUES(324,49,'Test Event',0,'2022-05-19 10:00:00','2022-05-19 15:00:00',0);
INSERT INTO unavailability_time VALUES(325,49,'Test Event',0,'2022-05-20 05:30:00','2022-05-20 10:30:00',0);
INSERT INTO unavailability_time VALUES(326,49,'Go camping',0,'2022-05-14 00:00:00','2022-05-14 00:00:00',0);
INSERT INTO unavailability_time VALUES(327,49,'Presentation',2,'2022-05-17 16:00:00','2022-05-17 18:00:00',0);
INSERT INTO unavailability_time VALUES(328,49,'Presentation',2,'2022-05-17 03:30:00','2022-05-17 05:30:00',0);
INSERT INTO unavailability_time VALUES(329,49,'Presentation',2,'2022-05-17 03:30:00','2022-05-17 13:00:00',0);
INSERT INTO unavailability_time VALUES(330,49,'Presentation',2,'2022-05-19 03:30:00','2022-05-19 13:00:00',0);
INSERT INTO unavailability_time VALUES(331,49,'Presentation',2,'2022-05-25 03:00:00','2022-05-25 12:30:00',0);
INSERT INTO unavailability_time VALUES(332,49,'Presentation',2,'2022-05-25 03:00:00','2022-05-25 17:00:00',0);
INSERT INTO unavailability_time VALUES(333,49,'Presentation',2,'2022-05-24 02:30:00','2022-05-24 16:30:00',0);
INSERT INTO unavailability_time VALUES(334,49,'Presentation',2,'2022-05-24 11:00:00','2022-05-24 16:30:00',0);
INSERT INTO unavailability_time VALUES(335,49,'Presentation',2,'2022-05-24 04:00:00','2022-05-24 09:30:00',0);
INSERT INTO unavailability_time VALUES(336,49,'Presentation',2,'2022-05-24 04:00:00','2022-05-24 10:00:00',0);
INSERT INTO unavailability_time VALUES(337,49,'Presentation',2,'2022-05-24 06:00:00','2022-05-24 12:00:00',0);
INSERT INTO unavailability_time VALUES(338,49,'Presentation',2,'2022-05-24 08:30:00','2022-05-24 14:30:00',0);
INSERT INTO unavailability_time VALUES(339,49,'Presentation',2,'2022-05-24 09:00:00','2022-05-24 15:00:00',0);
INSERT INTO unavailability_time VALUES(340,49,'Tutorial',2,'2022-05-25 14:00:00','2022-05-25 18:00:00',0);
INSERT INTO unavailability_time VALUES(341,49,'Tutorial',2,'2022-05-25 07:00:00','2022-05-25 11:00:00',0);
INSERT INTO unavailability_time VALUES(342,49,'Tutorial',2,'2022-05-25 09:30:00','2022-05-25 13:30:00',0);
INSERT INTO unavailability_time VALUES(343,49,'Tutorial',2,'2022-05-26 09:00:00','2022-05-26 11:00:00',0);
INSERT INTO unavailability_time VALUES(344,49,'Go camping',0,'2022-05-25 05:00:00','2022-05-25 18:00:00',0);
INSERT INTO unavailability_time VALUES(345,49,'Go camping',0,'2022-05-25 03:00:00','2022-05-25 16:00:00',0);
INSERT INTO unavailability_time VALUES(346,49,'Go camping',0,'2022-05-25 03:00:00','2022-05-25 17:30:00',0);
INSERT INTO unavailability_time VALUES(347,49,'Go camping',0,'2022-05-22 02:30:00','2022-05-22 17:00:00',0);
INSERT INTO unavailability_time VALUES(348,49,'Go camping',0,'2022-05-25 04:30:00','2022-05-25 19:00:00',0);
INSERT INTO unavailability_time VALUES(349,49,'Go camping',0,'2022-05-25 05:00:00','2022-05-25 18:00:00',0);
INSERT INTO unavailability_time VALUES(350,49,'Go camping',0,'2022-05-25 02:30:00','2022-05-25 15:30:00',0);
INSERT INTO unavailability_time VALUES(351,49,'Go camping',0,'2022-05-26 02:00:00','2022-05-26 15:00:00',0);
INSERT INTO unavailability_time VALUES(352,49,'Go camping',0,'2022-05-25 03:00:00','2022-05-25 16:00:00',0);
INSERT INTO unavailability_time VALUES(353,49,'Go camping',0,'2022-05-25 11:30:00','2022-05-25 16:00:00',0);
INSERT INTO unavailability_time VALUES(354,49,'Go camping',0,'2022-05-25 02:30:00','2022-05-25 07:00:00',0);
INSERT INTO unavailability_time VALUES(355,49,'Go camping',0,'2022-05-25 06:30:00','2022-05-25 11:00:00',0);
INSERT INTO unavailability_time VALUES(356,49,'Go camping',0,'2022-05-25 03:00:00','2022-05-25 07:30:00',0);
INSERT INTO unavailability_time VALUES(357,49,'Go camping',0,'2022-05-26 03:00:00','2022-05-26 07:30:00',0);
INSERT INTO unavailability_time VALUES(358,49,'Go camping',0,'2022-05-23 03:00:00','2022-05-23 07:30:00',1);
INSERT INTO unavailability_time VALUES(359,49,'Go camping',0,'2022-05-25 02:30:00','2022-05-25 07:00:00',1);
INSERT INTO unavailability_time VALUES(360,49,'Tutorial',0,'2022-05-25 15:00:00','2022-05-25 18:00:00',0);
INSERT INTO unavailability_time VALUES(361,49,'Tutorial',0,'2022-05-26 10:30:00','2022-05-26 13:30:00',0);
INSERT INTO unavailability_time VALUES(362,49,'Tutorial',0,'2022-05-25 06:00:00','2022-05-25 09:00:00',0);
INSERT INTO unavailability_time VALUES(363,49,'Tutorial',0,'2022-05-25 06:00:00','2022-05-25 20:00:00',1);
INSERT INTO unavailability_time VALUES(364,49,'Tutorial',0,'2022-05-22 06:00:00','2022-05-22 20:00:00',1);
INSERT INTO unavailability_time VALUES(365,49,'Go camping',0,'2022-06-10 07:00:00','2022-06-10 19:00:00',0);
INSERT INTO unavailability_time VALUES(366,49,'Test',0,'2022-09-04 04:11:00','2022-09-04 18:11:00',0);
INSERT INTO unavailability_time VALUES(367,49,'Today',0,'2022-09-05 14:15:00','2022-09-05 20:15:00',0);
INSERT INTO unavailability_time VALUES(368,49,'Test2',0,'2022-08-18 01:10:00','2022-08-18 19:17:00',0);
INSERT INTO unavailability_time VALUES(369,49,'test5',0,'2022-09-06 00:23:00','2022-09-06 22:23:00',0);
INSERT INTO unavailability_time VALUES(370,49,'uwu',0,'2022-02-15 00:23:00','2022-02-15 18:23:00',1);
INSERT INTO unavailability_time VALUES(371,49,'7',0,'2022-09-07 10:26:00','2022-09-07 22:26:00',0);
INSERT INTO unavailability_time VALUES(372,49,'8',0,'2022-09-07 10:28:00','2022-09-07 22:28:00',0);
INSERT INTO unavailability_time VALUES(373,49,'please work I beg',0,'2022-09-05 08:35:00','2022-09-05 22:35:00',0);
INSERT INTO unavailability_time VALUES(374,49,'yeet',0,'2022-09-08 10:38:00','2022-09-08 22:38:00',0);
INSERT INTO unavailability_time VALUES(375,49,'Done :) ',0,'2022-08-25 10:42:00','2022-08-25 22:42:00',0);
INSERT INTO unavailability_time VALUES(376,49,'t',0,'2022-09-24 10:43:00','2022-09-24 22:43:00',0);
INSERT INTO unavailability_time VALUES(377,49,'tt',0,'2022-09-16 10:45:00','2022-09-16 22:45:00',0);
INSERT INTO unavailability_time VALUES(378,49,'ttt',0,'2022-09-02 10:49:00','2022-09-02 22:49:00',0);
INSERT INTO unavailability_time VALUES(379,49,'test5',0,'2022-08-24 10:50:00','2022-08-24 22:50:00',0);
INSERT INTO unavailability_time VALUES(380,49,'tt',0,'2022-09-01 10:50:00','2022-09-01 22:50:00',0);
INSERT INTO unavailability_time VALUES(381,49,'plssss',0,'2022-09-03 10:53:00','2022-09-03 22:54:00',0);
INSERT INTO unavailability_time VALUES(382,49,'3',0,'2022-09-03 10:55:00','2022-09-03 22:55:00',0);
INSERT INTO unavailability_time VALUES(383,49,'9',0,'2022-09-09 11:01:00','2022-09-09 23:01:00',0);
INSERT INTO unavailability_time VALUES(384,49,'10',0,'2022-09-10 11:07:00','2022-09-10 23:07:00',0);
INSERT INTO unavailability_time VALUES(385,49,'Remove',0,'2022-08-20 11:07:00','2022-08-20 23:07:00',0);
INSERT INTO unavailability_time VALUES(386,49,'rest',0,'2022-09-15 11:12:00','2022-09-15 23:12:00',0);
INSERT INTO unavailability_time VALUES(387,49,'t2',0,'2022-09-15 11:13:00','2022-09-15 23:13:00',0);
INSERT INTO unavailability_time VALUES(388,49,'t3',0,'2022-09-15 11:14:00','2022-09-15 23:14:00',0);
INSERT INTO unavailability_time VALUES(389,49,'t14',0,'2022-09-14 11:15:00','2022-09-14 23:15:00',0);
INSERT INTO unavailability_time VALUES(390,49,'t34',0,'2022-09-15 11:28:00','2022-09-15 16:28:00',0);
INSERT INTO unavailability_time VALUES(391,49,'t35',0,'2022-09-15 23:28:00','2022-09-15 23:45:00',0);
INSERT INTO unavailability_time VALUES(392,74,'test',0,'2022-09-04 11:53:00','2022-09-04 23:53:00',0);
INSERT INTO unavailability_time VALUES(393,74,'Test1',0,'2022-09-13 05:52:00','2022-09-13 17:52:00',0);
INSERT INTO unavailability_time VALUES(394,74,'Yeet',0,'2022-09-13 03:52:00','2022-09-13 04:53:00',0);
INSERT INTO unavailability_time VALUES(395,74,'1',0,'2022-09-12 05:55:00','2022-09-12 17:55:00',0);
INSERT INTO unavailability_time VALUES(396,74,'t3',0,'2022-09-12 05:58:00','2022-09-12 17:58:00',0);
INSERT INTO unavailability_time VALUES(397,74,'t3',0,'2022-09-12 06:00:00','2022-09-12 18:00:00',0);
INSERT INTO unavailability_time VALUES(398,74,'t1',0,'2022-09-12 06:00:00','2022-09-12 18:00:00',0);
INSERT INTO unavailability_time VALUES(399,74,'t2',0,'2022-09-12 05:00:00','2022-09-12 05:32:00',0);
INSERT INTO unavailability_time VALUES(400,74,'t1',0,'2022-09-13 06:20:00','2022-09-13 18:20:00',0);
INSERT INTO unavailability_time VALUES(401,74,'t1',0,'2022-09-14 06:34:00','2022-09-14 18:34:00',0);
INSERT INTO unavailability_time VALUES(402,74,'t3',0,'2022-09-12 08:11:00','2022-09-12 20:11:00',1);
INSERT INTO unavailability_time VALUES(403,74,'t4',2,'2022-09-09 08:21:00','2022-09-09 16:21:00',0);
INSERT INTO unavailability_time VALUES(404,49,'T5',3,'2022-09-19 11:11:00','2022-09-19 23:11:00',0);
INSERT INTO unavailability_time VALUES(405,49,'Test6',1,'2022-09-30 06:49:00','2022-09-30 18:49:00',0);
INSERT INTO unavailability_time VALUES(406,49,'hi ',2,'2022-10-01 06:58:00','2022-10-01 18:58:00',1);
INSERT INTO unavailability_time VALUES(407,49,'Title',2,'2022-09-14 07:26:00','2022-09-14 19:26:00',0);
INSERT INTO unavailability_time VALUES(408,49,'Title',2,'2022-09-14 07:26:00','2022-09-14 19:26:00',0);
INSERT INTO unavailability_time VALUES(409,49,'qhat',1,'2022-09-13 07:27:00','2022-09-13 19:27:00',0);
INSERT INTO unavailability_time VALUES(410,49,'qhat',1,'2022-09-13 07:27:00','2022-09-13 19:27:00',0);
INSERT INTO unavailability_time VALUES(411,49,'wtf',0,'2022-09-12 07:28:00','2022-09-12 17:28:00',0);
INSERT INTO unavailability_time VALUES(412,49,'ttt',1,'2022-09-08 07:32:00','2022-09-08 19:32:00',0);
INSERT INTO unavailability_time VALUES(413,49,'yuo',1,'2022-09-08 07:34:00','2022-09-08 19:34:00',0);
INSERT INTO unavailability_time VALUES(414,49,'t34',2,'2022-09-15 07:41:00','2022-09-15 19:41:00',0);
INSERT INTO unavailability_time VALUES(415,49,'test',0,'2022-09-15 07:41:00','2022-09-15 19:41:00',0);
INSERT INTO unavailability_time VALUES(416,49,'test me',2,'2022-09-09 07:50:00','2022-09-09 19:50:00',0);
INSERT INTO unavailability_time VALUES(417,49,'Yeet',2,'2022-09-08 00:00:00','2022-09-09 00:59:00',0);
INSERT INTO unavailability_time VALUES(418,49,'all-day test',3,'2022-09-07 00:00:00','2022-09-08 00:59:00',0);
INSERT INTO unavailability_time VALUES(419,49,'all-day test',2,'2022-09-08 00:00:00','2022-09-08 23:59:00',0);
INSERT INTO unavailability_time VALUES(420,49,'Testing',1,'2022-09-10 00:00:00','2022-09-10 23:59:00',0);
INSERT INTO unavailability_time VALUES(421,49,'Test',2,'2022-09-11 09:41:00','2022-09-11 21:41:00',0);
INSERT INTO unavailability_time VALUES(422,49,'t12',0,'2022-09-12 09:41:00','2022-09-12 21:41:00',0);
INSERT INTO unavailability_time VALUES(423,49,'Test Pls',3,'2022-09-10 00:00:00','2022-09-10 23:59:00',1);
INSERT INTO unavailability_time VALUES(424,49,'t12',0,'2022-09-12 10:00:00','2022-09-12 22:00:00',1);
INSERT INTO unavailability_time VALUES(425,49,'Test',2,'2022-09-11 00:00:00','2022-09-11 23:59:00',0);
INSERT INTO unavailability_time VALUES(426,49,'Test',2,'2022-09-11 00:00:00','2022-09-11 23:59:00',1);
INSERT INTO unavailability_time VALUES(427,49,'tsk',2,'2022-09-28 10:57:00','2022-09-28 22:57:00',0);
INSERT INTO unavailability_time VALUES(428,49,'t12',0,'2022-09-12 00:00:00','2022-09-12 23:59:00',0);
INSERT INTO unavailability_time VALUES(429,49,'t12',0,'2022-09-12 00:00:00','2022-09-12 23:59:00',0);
INSERT INTO unavailability_time VALUES(430,49,'test',0,'2022-09-02 11:08:00','2022-09-02 23:08:00',1);
INSERT INTO unavailability_time VALUES(431,49,'t12',0,'2022-09-12 11:09:00','2022-09-12 23:09:00',0);
INSERT INTO unavailability_time VALUES(432,49,'t13',0,'2022-09-12 11:11:00','2022-09-12 15:11:00',0);
INSERT INTO unavailability_time VALUES(433,49,'t13',0,'2022-09-12 00:00:00','2022-09-12 23:59:00',0);
INSERT INTO unavailability_time VALUES(434,49,'t13',0,'2022-09-12 02:13:00','2022-09-12 05:13:00',0);
INSERT INTO unavailability_time VALUES(435,74,'What?',1,'2022-09-15 00:00:00','2022-09-15 23:59:00',0);
INSERT INTO unavailability_time VALUES(436,74,'t2',1,'2022-09-09 00:00:00','2022-09-09 23:59:00',0);
INSERT INTO unavailability_time VALUES(437,74,'ts',1,'2022-09-19 00:00:00','2022-09-19 23:59:00',0);
INSERT INTO unavailability_time VALUES(438,74,'t4',0,'2022-09-26 00:47:00','2022-09-26 12:47:00',0);
INSERT INTO unavailability_time VALUES(439,74,'t5',0,'2022-09-27 00:00:00','2022-09-27 23:59:00',0);
INSERT INTO unavailability_time VALUES(440,74,'e1',0,'2022-09-15 00:49:00','2022-09-15 12:49:00',0);
INSERT INTO unavailability_time VALUES(441,49,'t',0,'2022-09-15 01:03:00','2022-09-15 13:03:00',1);
INSERT INTO unavailability_time VALUES(442,74,'t1',0,'2022-09-14 00:00:00','2022-09-14 23:59:00',0);
INSERT INTO unavailability_time VALUES(443,31,'test m',1,'2022-09-10 00:00:00','2022-09-10 03:59:00',1);
INSERT INTO unavailability_time VALUES(445,74,'test',2,'2022-09-22 06:35:00','2022-09-22 18:35:00',0);
INSERT INTO unavailability_time VALUES(446,74,'test',2,'2022-09-22 00:00:00','2022-09-22 23:59:00',0);
INSERT INTO unavailability_time VALUES(447,74,'t1',0,'2022-10-06 00:00:00','2022-10-06 23:59:00',0);
INSERT INTO unavailability_time VALUES(448,74,'t4',0,'2022-10-06 00:00:00','2022-10-06 23:59:00',0);
INSERT INTO unavailability_time VALUES(449,74,'t7',3,'2022-10-06 09:17:00','2022-10-06 21:17:00',0);
INSERT INTO unavailability_time VALUES(450,74,'Test Event',2,'2022-10-20 01:26:00','2022-10-20 16:26:00',1);
INSERT INTO unavailability_time VALUES(451,74,'Rat Catching',3,'2022-10-11 00:00:00','2022-10-11 23:59:00',0);
INSERT INTO unavailability_time VALUES(452,74,'Test 1',0,'2022-10-11 00:00:00','2022-10-11 23:59:00',0);
INSERT INTO unavailability_time VALUES(453,74,'Test 2',0,'2022-10-11 03:10:00','2022-10-11 06:28:00',0);
INSERT INTO unavailability_time VALUES(454,74,'Test 4',0,'2022-10-11 00:00:00','2022-10-11 23:59:00',1);
INSERT INTO unavailability_time VALUES(455,74,'Test 2',0,'2022-10-11 00:00:00','2022-10-11 23:59:00',0);
INSERT INTO unavailability_time VALUES(456,74,'Test 3',0,'2022-10-11 01:30:00','2022-10-11 04:30:00',1);
INSERT INTO unavailability_time VALUES(457,74,'Bug Catching',3,'2022-10-11 00:00:00','2022-10-11 23:59:00',0);
INSERT INTO unavailability_time VALUES(458,74,'Rat Catching',3,'2022-10-11 00:00:00','2022-10-11 23:59:00',1);
CREATE TABLE IF NOT EXISTS "tenancy_config" (
"id" INTEGER,
  "name" TEXT,
  "title" TEXT,
  "font" TEXT,
  "logo" TEXT,
  "navbar_colour" TEXT,
  "background_colour" TEXT,
  "deleted" INTEGER,
  "last_update_datetime" TIMESTAMP,
  "created_datetime" TIMESTAMP,
  "logo_mimetype" TEXT,
  "logo_name" TEXT
);
INSERT INTO tenancy_config VALUES(32,'Default','FireApp','Bebas Neue','','#eb2424','',1,'2021-10-11 11:43:44','2021-10-11 11:43:44','','');
INSERT INTO tenancy_config VALUES(104,'Microsoft','Microsoft','Dosis','','#4a90e2','',1,'2021-10-18 18:07:28','2021-10-18 18:07:28','image/png','download.png');
CREATE TABLE IF NOT EXISTS "asset_request_vehicle" (
"id" INTEGER,
  "request_id" INTEGER,
  "from" TIMESTAMP,
  "to" TIMESTAMP,
  "last_update_datetime" TIMESTAMP,
  "created_datetime" TIMESTAMP,
  "asset_type_id" INTEGER
);
INSERT INTO asset_request_vehicle VALUES(369,322,'2021-10-12 17:02:36','2021-10-14 17:02:36','2021-09-27 08:38:28','2021-09-27 08:38:28',12);
INSERT INTO asset_request_vehicle VALUES(370,323,'2021-10-08 17:03:09','2021-10-09 17:03:09','2021-09-27 08:38:28','2021-09-27 08:38:28',11);
INSERT INTO asset_request_vehicle VALUES(371,323,'2021-10-08 17:03:09','2021-10-09 17:03:09','2021-09-27 08:38:28','2021-09-27 08:38:28',11);
INSERT INTO asset_request_vehicle VALUES(374,326,'2021-10-15 18:31:33','2021-10-16 18:31:33','2021-10-11 17:57:42','2021-10-11 17:57:42',12);
INSERT INTO asset_request_vehicle VALUES(379,331,'2022-02-28 22:00:00','2022-03-03 18:00:00','2021-10-31 23:59:41','2021-10-31 23:59:41',11);
INSERT INTO asset_request_vehicle VALUES(380,331,'2022-02-28 22:00:00','2022-03-03 18:00:00','2021-10-31 23:59:41','2021-10-31 23:59:41',13);
INSERT INTO asset_request_vehicle VALUES(381,332,'2022-03-10 17:47:53','2022-03-11 17:47:53','2022-03-09 17:46:39','2022-03-09 17:46:39',12);
INSERT INTO asset_request_vehicle VALUES(382,334,'2022-03-19 23:42:20','2022-03-20 23:42:20','2022-03-18 23:41:41','2022-03-18 23:41:41',13);
INSERT INTO asset_request_vehicle VALUES(383,337,'2022-05-09 18:38:10','2022-05-13 18:38:10','2022-04-30 18:31:18','2022-04-30 18:31:18',13);
INSERT INTO asset_request_vehicle VALUES(384,338,'2022-04-30 20:00:00','2022-04-30 23:30:00','2022-04-10 13:01:37','2022-04-10 13:01:37',12);
INSERT INTO asset_request_vehicle VALUES(385,339,'2022-05-01 17:00:00','2022-05-01 23:00:00','2022-04-10 13:01:37','2022-04-10 13:01:37',11);
INSERT INTO asset_request_vehicle VALUES(387,341,'2022-05-10 07:00:00','2022-05-14 23:30:00','2022-05-02 08:55:47','2022-05-02 08:55:47',11);
INSERT INTO asset_request_vehicle VALUES(388,342,'2022-05-18 18:08:18','2022-05-27 18:08:18','2022-05-02 08:55:47','2022-05-02 08:55:47',11);
INSERT INTO asset_request_vehicle VALUES(389,342,'2022-05-18 18:13:06','2022-05-19 02:30:00','2022-05-02 08:55:47','2022-05-02 08:55:47',11);
INSERT INTO asset_request_vehicle VALUES(394,347,'2022-05-06 12:00:01','2022-05-06 15:00:01','2022-05-02 08:55:47','2022-05-02 08:55:47',11);
INSERT INTO asset_request_vehicle VALUES(395,349,'2022-05-12 16:34:59','2022-05-12 20:00:00','2022-05-09 13:54:56','2022-05-09 13:54:56',11);
INSERT INTO asset_request_vehicle VALUES(396,351,'2022-08-19 16:00:40','2022-08-26 16:00:40','2022-07-10 16:04:11','2022-07-10 16:04:11',13);
INSERT INTO asset_request_vehicle VALUES(397,352,'2022-08-27 12:29:52','2022-09-03 12:29:52','2022-07-10 16:04:11','2022-07-10 16:04:11',11);
INSERT INTO asset_request_vehicle VALUES(398,354,'2022-08-27 12:31:17','2022-09-02 12:31:17','2022-07-10 16:04:11','2022-07-10 16:04:11',11);
INSERT INTO asset_request_vehicle VALUES(399,355,'2022-09-01 12:48:29','2022-09-03 12:48:29','2022-07-10 16:04:11','2022-07-10 16:04:11',11);
INSERT INTO asset_request_vehicle VALUES(400,356,'2022-08-27 13:35:02','2022-09-03 13:35:02','2022-07-10 16:04:11','2022-07-10 16:04:11',13);
INSERT INTO asset_request_vehicle VALUES(404,356,'2022-08-27 13:35:02','2022-09-03 13:35:02','2022-08-21 16:32:04','2022-08-21 16:32:04',13);
INSERT INTO asset_request_vehicle VALUES(407,356,'2022-09-11 00:35:02','2022-09-11 14:35:02','2022-08-21 17:07:28','2022-08-21 17:07:28',11);
INSERT INTO asset_request_vehicle VALUES(409,359,'2022-08-24 17:53:29','2022-09-03 17:53:29','2022-07-10 16:04:11','2022-07-10 16:04:11',13);
INSERT INTO asset_request_vehicle VALUES(410,360,'2022-08-23 15:03:03','2022-08-24 15:03:03','2022-07-10 16:04:11','2022-07-10 16:04:11',13);
INSERT INTO asset_request_vehicle VALUES(412,360,'2022-08-27 13:35:02','2022-09-03 13:35:02','2022-08-22 15:00:06','2022-08-22 15:00:06',11);
INSERT INTO asset_request_vehicle VALUES(413,360,'2022-09-27 13:35:02','2022-10-03 13:35:02','2022-08-22 15:00:06','2022-08-22 15:00:06',11);
INSERT INTO asset_request_vehicle VALUES(414,361,'2022-08-25 16:00:00','2022-08-26 00:00:00','2022-07-10 16:04:11','2022-07-10 16:04:11',11);
INSERT INTO asset_request_vehicle VALUES(415,361,'2022-08-26 00:00:00','2022-08-26 12:00:00','2022-07-10 16:04:11','2022-07-10 16:04:11',11);
INSERT INTO asset_request_vehicle VALUES(416,361,'2022-09-17 20:00:00','2022-09-19 08:00:00','2022-07-10 16:04:11','2022-07-10 16:04:11',12);
INSERT INTO asset_request_vehicle VALUES(417,362,'2022-09-30 13:00:00','2022-10-01 13:30:00','2022-09-02 09:09:40','2022-09-02 09:09:40',12);
INSERT INTO asset_request_vehicle VALUES(418,322,'2022-09-27 13:35:02','2022-10-03 13:35:02','2022-09-17 07:23:01','2022-09-17 07:23:01',13);
INSERT INTO asset_request_vehicle VALUES(419,363,'2023-06-30 19:54:06','2023-07-01 19:54:06','2023-05-07 06:35:11','2023-05-07 06:35:11',11);
CREATE TABLE IF NOT EXISTS "asset_type" (
"id" INTEGER,
  "code" TEXT,
  "name" TEXT,
  "deleted" INTEGER,
  "last_update_datetime" TIMESTAMP,
  "created_datetime" TIMESTAMP
);
INSERT INTO asset_type VALUES(11,'heavyTanker','Heavy Tanker',0,'2021-04-04 10:22:41','2021-04-04 10:22:41');
INSERT INTO asset_type VALUES(12,'mediumTanker','Medium Tanker',0,'2021-04-04 10:22:41','2021-04-04 10:22:41');
INSERT INTO asset_type VALUES(13,'lightUnit','Light Unit',0,'2021-04-04 10:22:41','2021-04-04 10:22:41');
CREATE TABLE IF NOT EXISTS "password_verify" (
"id" INTEGER,
  "email" TEXT,
  "code" TEXT,
  "created_datetime" TIMESTAMP,
  "expired_datetime" TIMESTAMP
);
COMMIT;

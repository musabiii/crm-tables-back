DROP TABLE IF EXISTS "document";

CREATE TABLE "document" (
  id SERIAL PRIMARY KEY,
  client_id integer NULL,
  service_id integer NULL,
  date varchar(255)
);

INSERT INTO document (client_id,service_id,date)
VALUES
  (39,75,'8:46 PM'),
  (21,10,'7:06 AM'),
  (4,45,'9:03 AM'),
  (32,61,'11:48 PM'),
  (38,69,'3:46 PM'),
  (75,42,'4:23 AM'),
  (39,30,'2:10 PM'),
  (52,47,'11:25 AM'),
  (14,21,'3:25 PM'),
  (95,37,'8:44 AM');
INSERT INTO document (client_id,service_id,date)
VALUES
  (43,48,'10:23 AM'),
  (26,14,'7:59 PM'),
  (91,26,'11:35 PM'),
  (93,11,'3:16 AM'),
  (59,78,'9:42 AM'),
  (1,75,'7:58 AM'),
  (22,40,'6:35 PM'),
  (97,29,'5:16 PM'),
  (56,7,'1:31 PM'),
  (100,83,'6:47 AM');
INSERT INTO document (client_id,service_id,date)
VALUES
  (34,82,'4:00 AM'),
  (48,99,'6:42 AM'),
  (70,19,'8:38 AM'),
  (64,79,'12:52 PM'),
  (6,1,'2:26 AM'),
  (30,17,'11:33 AM'),
  (70,43,'11:25 AM'),
  (31,99,'10:57 AM'),
  (47,8,'4:18 AM'),
  (60,85,'9:36 AM');
INSERT INTO document (client_id,service_id,date)
VALUES
  (58,62,'4:55 PM'),
  (68,17,'2:19 PM'),
  (43,76,'9:45 AM'),
  (14,89,'8:45 PM'),
  (33,23,'9:00 PM'),
  (34,83,'9:15 PM'),
  (28,16,'3:12 PM'),
  (74,64,'10:10 AM'),
  (11,2,'1:06 PM'),
  (95,14,'1:50 PM');
INSERT INTO document (client_id,service_id,date)
VALUES
  (54,77,'9:28 PM'),
  (88,62,'5:40 AM'),
  (51,57,'8:29 AM'),
  (23,19,'6:53 AM'),
  (84,27,'1:39 PM'),
  (94,10,'6:39 AM'),
  (28,23,'11:58 PM'),
  (2,12,'2:48 AM'),
  (30,48,'11:44 PM'),
  (1,61,'7:22 PM');
INSERT INTO document (client_id,service_id,date)
VALUES
  (95,83,'1:23 AM'),
  (85,85,'3:01 PM'),
  (79,63,'2:39 AM'),
  (79,93,'9:04 AM'),
  (75,1,'10:15 AM'),
  (24,70,'12:45 PM'),
  (6,12,'12:43 PM'),
  (47,89,'7:23 AM'),
  (62,74,'5:04 PM'),
  (42,90,'9:39 PM');
INSERT INTO document (client_id,service_id,date)
VALUES
  (84,14,'10:22 AM'),
  (29,84,'11:32 PM'),
  (70,84,'8:29 PM'),
  (86,96,'5:31 PM'),
  (69,35,'3:32 AM'),
  (48,64,'9:17 PM'),
  (34,97,'11:57 AM'),
  (16,18,'5:20 PM'),
  (64,23,'12:51 PM'),
  (66,2,'1:57 PM');
INSERT INTO document (client_id,service_id,date)
VALUES
  (8,98,'4:31 PM'),
  (69,53,'2:25 PM'),
  (5,35,'3:44 AM'),
  (73,95,'11:54 PM'),
  (1,32,'7:46 PM'),
  (17,61,'5:24 AM'),
  (48,43,'1:03 PM'),
  (39,49,'4:14 PM'),
  (91,49,'8:35 AM'),
  (73,56,'2:20 PM');
INSERT INTO document (client_id,service_id,date)
VALUES
  (8,59,'12:06 AM'),
  (22,91,'7:41 AM'),
  (41,67,'7:59 PM'),
  (11,67,'5:03 PM'),
  (1,56,'8:42 AM'),
  (29,21,'11:01 AM'),
  (48,91,'6:17 PM'),
  (64,59,'6:16 AM'),
  (15,2,'8:23 AM'),
  (61,98,'8:53 PM');
INSERT INTO document (client_id,service_id,date)
VALUES
  (96,23,'12:43 AM'),
  (60,82,'9:21 PM'),
  (7,42,'11:26 AM'),
  (34,64,'8:17 AM'),
  (42,75,'5:11 AM'),
  (1,3,'3:43 PM'),
  (91,7,'2:08 PM'),
  (87,54,'4:27 AM'),
  (21,43,'2:31 AM'),
  (35,59,'11:59 AM');

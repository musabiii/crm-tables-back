DROP TABLE IF EXISTS "service";

CREATE TABLE "service" (
  id SERIAL PRIMARY KEY,
  title varchar(50) default NULL,
  price integer NULL,
  duration integer NULL
);

INSERT INTO service (title,price,duration)
VALUES
  ('Vestfold og Telemark',44,25),
  ('West-Vlaanderen',176,89),
  ('Flevoland',182,0),
  ('Dōngběi',896,21),
  ('Connacht',451,41),
  ('Western Australia',837,88),
  ('Yên Bái',968,55),
  ('Huádōng',654,100),
  ('Western Cape',839,77),
  ('Upper Austria',930,74);
INSERT INTO service (title,price,duration)
VALUES
  ('Jharkhand',568,85),
  ('Volyn oblast',617,37),
  ('East Region',452,48),
  ('Manisa',742,13),
  ('Östergötlands län',534,55),
  ('Drenthe',215,75),
  ('Picardie',277,84),
  ('Puntarenas',608,80),
  ('Catalunya',726,49),
  ('Stockholms län',150,57);
INSERT INTO service (title,price,duration)
VALUES
  ('Casanare',507,33),
  ('Noord Holland',49,4),
  ('North Island',551,93),
  ('Gävleborgs län',989,54),
  ('Piura',263,28),
  ('East Java',402,69),
  ('Sardegna',813,74),
  ('Norte de Santander',744,64),
  ('Arequipa',788,46),
  ('Huádōng',381,87);
INSERT INTO service (title,price,duration)
VALUES
  ('Zuid Holland',944,69),
  ('Ceará',347,69),
  ('Uttar Pradesh',660,61),
  ('Western Cape',794,76),
  ('Bengkulu',141,81),
  ('Lower Austria',209,68),
  ('Dnipropetrovsk oblast',396,46),
  ('Biobío',158,37),
  ('East Region',27,11),
  ('North Island',266,67);
INSERT INTO service (title,price,duration)
VALUES
  ('Huáběi',715,42),
  ('British Columbia',579,41),
  ('South Australia',446,75),
  ('Dorset',356,78),
  ('Imo',298,43),
  ('Tamil Nadu',644,73),
  ('Sląskie',786,47),
  ('Yaroslavl Oblast',288,80),
  ('Ceará',192,60),
  ('Carinthia',946,50);
INSERT INTO service (title,price,duration)
VALUES
  ('Oslo',736,24),
  ('Gangwon',812,71),
  ('Araucanía',736,83),
  ('Delta',82,49),
  ('Nam Định',968,8),
  ('Zaporizhzhia oblast',897,9),
  ('Yaroslavl Oblast',269,30),
  ('Coquimbo',832,87),
  ('Lampung',350,65),
  ('Calabria',785,10);
INSERT INTO service (title,price,duration)
VALUES
  ('Yukon',96,73),
  ('Kujawsko-pomorskie',650,26),
  ('Kon Tum',375,29),
  ('North Island',707,86),
  ('Burgenland',171,65),
  ('Heredia',840,76),
  ('North Region',566,46),
  ('Central Region',518,50),
  ('Innlandet',463,20),
  ('Rutland',51,21);
INSERT INTO service (title,price,duration)
VALUES
  ('Dōngběi',819,74),
  ('Molise',834,79),
  ('Noord Holland',183,59),
  ('Central Kalimantan',632,59),
  ('North Island',446,39),
  ('Sachsen-Anhalt',830,36),
  ('Huádōng',378,42),
  ('Eastern Cape',666,12),
  ('Loreto',666,98),
  ('Limón',141,29);
INSERT INTO service (title,price,duration)
VALUES
  ('Podkarpackie',17,73),
  ('Omsk Oblast',892,48),
  ('Noord Holland',210,73),
  ('Namen',24,3),
  ('North Region',269,39),
  ('Rogaland',342,28),
  ('Virginia',820,14),
  ('Nuevo León',97,50),
  ('Xīběi',222,11),
  ('Adana',885,37);
INSERT INTO service (title,price,duration)
VALUES
  ('Calabarzon',951,96),
  ('Brussels Hoofdstedelijk Gewest',642,58),
  ('South Australia',485,11),
  ('Waals-Brabant',681,5),
  ('Limburg',734,25),
  ('Tasmania',781,21),
  ('Balochistan',274,38),
  ('Nordrhein-Westphalen',578,12),
  ('Upper Austria',315,97),
  ('łódzkie',955,88);

DROP TABLE IF EXISTS "client";

CREATE TABLE "client" (
  id SERIAL PRIMARY KEY,
  title varchar(255),
  inn integer NULL,
  phone varchar(100) default NULL,
  mail varchar(255) default NULL,
  address varchar(255) default NULL
);

INSERT INTO client (title,inn,phone,mail,address)
VALUES
  ('Pleiku',445076,'(419) 674-6635','ullamcorper.nisl@aol.ca','447-4803 Eleifend. Ave'),
  ('Feira de Santana',276374,'1-809-526-3362','magna.tellus@hotmail.couk','Ap #608-7259 Lobortis Av.'),
  ('Guaymas',485013,'(854) 153-5448','consectetuer@google.ca','Ap #583-7898 Nulla Street'),
  ('Poltava',656685,'(912) 113-3755','sit.amet.massa@google.edu','P.O. Box 700, 8858 Tellus Av.'),
  ('Civitacampomarano',537034,'1-342-415-7234','dui.in.sodales@yahoo.net','P.O. Box 394, 4041 Iaculis Avenue'),
  ('Bukit Merah',765616,'(518) 697-6650','non@yahoo.edu','P.O. Box 514, 3936 Urna St.'),
  ('Harstad',757432,'1-337-662-3774','tempor.diam@protonmail.com','P.O. Box 228, 1110 Risus. Av.'),
  ('Sosnowiec',568328,'(453) 424-5241','cubilia.curae@outlook.org','153-7325 Leo. Rd.'),
  ('Odessa',495310,'1-669-321-2868','lorem.ipsum@yahoo.ca','6875 Sem, Avenue'),
  ('Ajaccio',199974,'1-628-736-5842','sapien.cursus@google.couk','Ap #420-4235 Auctor Rd.');
INSERT INTO client (title,inn,phone,mail,address)
VALUES
  ('Paranaguá',817079,'(372) 531-1853','mi.fringilla.mi@icloud.edu','672-4679 Aliquam Road'),
  ('Nives',216687,'(232) 915-1683','sed.neque.sed@yahoo.net','Ap #288-6064 Nunc Rd.'),
  ('Badalona',830237,'1-887-156-8174','at.egestas.a@outlook.edu','575-1999 Sit St.'),
  ('Juliaca',630964,'1-246-438-6782','risus.at.fringilla@icloud.edu','444-1904 Varius. Ave'),
  ('Burlington',179796,'(363) 688-0191','volutpat.ornare@protonmail.ca','153-4304 Cum Ave'),
  ('Palma de Mallorca',475577,'(421) 988-7242','faucibus.morbi@icloud.org','P.O. Box 866, 6762 Eu Street'),
  ('Hà Tĩnh',646026,'1-217-782-6793','accumsan@hotmail.couk','Ap #603-8074 Dui. Rd.'),
  ('Ebenthal in Kärnten',212703,'1-940-447-5602','donec.porttitor.tellus@yahoo.net','201-478 Tellus. Rd.'),
  ('Rockville',466195,'(317) 294-2203','erat.volutpat@aol.org','5328 Sem, Rd.'),
  ('Aydın',730797,'1-438-964-4509','ipsum.suspendisse@outlook.org','Ap #255-9561 Vivamus Rd.');
INSERT INTO client (title,inn,phone,mail,address)
VALUES
  ('Steenhuffel',777284,'1-568-531-8845','fringilla@icloud.edu','Ap #839-1050 Eget Rd.'),
  ('Hainan',372046,'(611) 436-5782','ut.odio@google.couk','799-3414 Arcu Road'),
  ('Ørsta',533831,'(682) 134-7425','at.velit@icloud.net','813-6652 Semper, Ave'),
  ('Belgrave',524693,'(183) 751-9071','dolor.fusce@yahoo.couk','Ap #148-530 Maecenas Rd.'),
  ('Turriaco',441520,'1-873-373-8267','lacinia.sed.congue@yahoo.ca','5875 Ornare, Rd.'),
  ('Aklavik',883043,'(366) 222-1211','et.ultrices.posuere@outlook.edu','774-4086 Duis Street'),
  ('Alessandria',434311,'(547) 263-1359','sed.pharetra@aol.com','519-8070 Consequat Rd.'),
  ('Merchtem',346103,'1-668-515-6048','erat.nonummy@hotmail.org','P.O. Box 415, 8786 Euismod Rd.'),
  ('Vadsø',417626,'1-326-861-0379','magnis.dis.parturient@google.org','5879 Tortor, Rd.'),
  ('Chile Chico',987829,'1-474-723-8017','adipiscing.non@protonmail.com','Ap #115-2323 Non Av.');
INSERT INTO client (title,inn,phone,mail,address)
VALUES
  ('Watson Lake',639282,'1-454-469-2475','et.malesuada.fames@icloud.edu','Ap #216-2873 Massa. Street'),
  ('Jambi',317720,'1-741-745-2223','amet@icloud.net','153-7352 Nam Ave'),
  ('Rockford',211885,'(879) 447-7570','faucibus@icloud.edu','886-7054 Eget Street'),
  ('Paya Lebar',693380,'1-610-965-8846','auctor.non.feugiat@outlook.couk','Ap #962-5684 Ac Street'),
  ('San Vicente del Caguán',907592,'(794) 205-5283','nam.porttitor.scelerisque@outlook.edu','347-7650 Leo. St.'),
  ('Olongapo',341876,'1-571-295-6348','id.magna@protonmail.net','312-7139 Mus. Ave'),
  ('San Francisco',898677,'1-703-867-2318','mauris.vel@google.com','321-941 Laoreet, Av.'),
  ('Oviedo',961397,'(238) 594-3171','aliquam.iaculis@hotmail.com','5069 Nulla Rd.'),
  ('Liberia',165760,'(345) 989-8616','feugiat@google.com','Ap #605-1080 Augue Avenue'),
  ('Tarma',309386,'1-978-373-5558','a.neque@protonmail.couk','P.O. Box 566, 1999 Ultricies Street');
INSERT INTO client (title,inn,phone,mail,address)
VALUES
  ('Mitú',521156,'1-859-517-8322','leo.elementum@outlook.org','6699 Maecenas Av.'),
  ('Jeju',723741,'1-684-275-6976','enim.nunc.ut@yahoo.couk','1074 Nisl. St.'),
  ('Coquimbo',691472,'(357) 635-1886','curabitur.consequat@protonmail.org','421 Rhoncus Street'),
  ('Ryazan',213129,'1-724-529-1921','et.magna.praesent@aol.edu','P.O. Box 505, 6495 Elit, Road'),
  ('Kelowna',564484,'(556) 263-1533','sapien.imperdiet@hotmail.ca','Ap #284-5766 Turpis. Av.'),
  ('Cuernavaca',692723,'1-561-885-6835','dui.lectus@protonmail.ca','Ap #974-3742 Tristique Avenue'),
  ('San Francisco',971362,'(289) 761-7884','ipsum.suspendisse@icloud.couk','7425 Ridiculus Rd.'),
  ('Olsztyn',689098,'(312) 264-1810','sed.consequat.auctor@aol.net','483-4579 Porttitor St.'),
  ('Cabo de Santo Agostinho',885408,'1-694-324-8854','molestie.dapibus@icloud.edu','P.O. Box 961, 9793 Faucibus St.'),
  ('Bauchi',480688,'(213) 473-6954','phasellus.at@google.org','8756 Elit, Ave');
INSERT INTO client (title,inn,phone,mail,address)
VALUES
  ('Mackay',813257,'(445) 748-6628','accumsan.convallis@aol.edu','6997 Sem Road'),
  ('Carapicuíba',605240,'1-582-238-5546','sed.tortor@google.com','Ap #106-6989 Augue Rd.'),
  ('Palma de Mallorca',258034,'1-264-964-8213','ultrices.iaculis.odio@aol.ca','185 Laoreet Rd.'),
  ('Taupo',529342,'1-687-700-4162','rhoncus.id.mollis@icloud.org','136-3855 Arcu. Street'),
  ('Chimbote',957100,'(348) 757-5188','ligula@outlook.edu','P.O. Box 860, 9788 Eu Av.'),
  ('San Diego',693472,'(413) 468-8616','in.nec@protonmail.edu','7122 Accumsan Street'),
  ('Kakinada',391624,'1-982-873-3820','a@icloud.edu','9447 Sed Street'),
  ('Anhui',762575,'(454) 594-9152','viverra.maecenas.iaculis@outlook.org','677-7336 Nascetur Rd.'),
  ('Narimanov',431224,'1-216-436-7891','morbi.non@aol.org','386-5649 Dis Rd.'),
  ('Samal',800290,'(416) 317-3276','nunc@icloud.ca','Ap #633-8052 Ante Rd.');
INSERT INTO client (title,inn,phone,mail,address)
VALUES
  ('Burlington',634003,'1-727-628-5949','adipiscing.fringilla@outlook.com','Ap #466-5801 Pede. Ave'),
  ('Jilin',816881,'1-686-331-4648','eget.venenatis@hotmail.com','P.O. Box 714, 2689 Lobortis Ave'),
  ('Khyber Agency',619386,'1-132-242-0073','sit.amet@yahoo.ca','353 Sed Street'),
  ('Bremerhaven',897161,'(390) 907-2361','dis.parturient@outlook.net','Ap #700-7928 Vestibulum Road'),
  ('Bottidda',798979,'1-258-332-5259','integer.id@hotmail.couk','Ap #409-7857 Ut Avenue'),
  ('Greifswald',754283,'1-800-455-9187','dolor.tempus@yahoo.edu','9113 Ante. St.'),
  ('Waidhofen an der Ybbs',410766,'1-510-458-3902','volutpat.ornare@yahoo.net','Ap #979-5251 Nisl. Av.'),
  ('La Roche-sur-Yon',638232,'(623) 508-5267','non.quam@hotmail.com','Ap #936-2732 Ut Av.'),
  ('Angeles City',821709,'1-807-671-7829','cras@aol.couk','7635 Magna. Rd.'),
  ('Pinetown',278014,'1-922-342-9831','id.risus@hotmail.couk','633-3822 Ac Rd.');
INSERT INTO client (title,inn,phone,mail,address)
VALUES
  ('Waitara',750050,'(675) 374-3410','ante@icloud.ca','Ap #711-8629 Id Ave'),
  ('Uddevalla',403583,'(765) 565-8442','malesuada@hotmail.org','2329 Lacinia Rd.'),
  ('Guben',144917,'(673) 157-4002','eget.nisi.dictum@yahoo.net','Ap #962-3707 Dolor Av.'),
  ('Pasir Ris',186044,'(656) 505-4743','ante.blandit.viverra@protonmail.com','513-6713 Nulla Rd.'),
  ('Gosnells',435058,'1-716-372-3144','mauris@hotmail.edu','147-2704 Id, Road'),
  ('Riosucio',228585,'1-582-536-6825','feugiat.nec@google.ca','117-1613 Cursus Rd.'),
  ('Tsiigehtchic',529929,'(508) 580-5858','phasellus.ornare.fusce@protonmail.ca','4036 Mattis Av.'),
  ('Waitara',466287,'1-383-786-1781','est.congue@outlook.edu','P.O. Box 333, 4951 Posuere Road'),
  ('Yopal',126187,'1-311-362-4353','magna.sed@protonmail.ca','Ap #114-5974 Ligula. Street'),
  ('Savannah',479846,'(774) 285-8616','aenean.eget.magna@protonmail.edu','Ap #296-5298 Vulputate Avenue');
INSERT INTO client (title,inn,phone,mail,address)
VALUES
  ('Oslo',308738,'(847) 198-9331','cursus.luctus@aol.couk','Ap #610-9941 Mauris Street'),
  ('Bridgeport',140029,'(976) 456-2269','vel.quam.dignissim@outlook.ca','Ap #922-6436 In St.'),
  ('Shandong',514112,'(536) 633-2027','duis@hotmail.ca','Ap #621-5872 Montes, Rd.'),
  ('Saint-Brieuc',152500,'(765) 425-2405','adipiscing@google.com','Ap #344-9076 Nec Rd.'),
  ('Wigtown',449100,'(972) 687-9170','dui.lectus@icloud.edu','1023 Neque St.'),
  ('Tarma',491127,'1-651-571-2335','pretium@aol.edu','2529 Lacus. Road'),
  ('San Antonio',628157,'1-725-685-3060','a.mi@protonmail.org','208-5846 Sed Street'),
  ('São José',194872,'1-166-610-0653','etiam.gravida@icloud.org','591-7317 Eget Road'),
  ('Sete Lagoas',759336,'1-822-726-2831','at.velit@google.net','6892 Suspendisse St.'),
  ('Selkirk',815521,'(115) 224-0667','arcu.vestibulum@aol.edu','724-8885 Eget, Road');
INSERT INTO client (title,inn,phone,mail,address)
VALUES
  ('Wels',561909,'(347) 316-3002','lacinia@hotmail.com','P.O. Box 406, 4299 Ornare, Road'),
  ('Newark',907970,'1-415-748-7661','est@google.couk','Ap #701-3069 Sem St.'),
  ('Tomsk',675371,'(336) 492-2086','sem.eget.massa@yahoo.ca','P.O. Box 211, 3331 Vulputate Ave'),
  ('Pabianice',236276,'(612) 525-6286','mauris.integer@outlook.couk','Ap #734-620 Dis St.'),
  ('Bến Tre',814425,'1-364-627-6668','fames@aol.com','P.O. Box 370, 9437 Malesuada Road'),
  ('Kharmang',823433,'(439) 769-7711','quisque.purus.sapien@hotmail.net','6424 Primis Ave'),
  ('Kamianske',531284,'1-552-935-0595','mauris.a@protonmail.edu','516-6690 Morbi Rd.'),
  ('Yurimaguas',398778,'(301) 641-1675','mi.duis@google.com','Ap #947-5745 Et St.'),
  ('Pamplona',633513,'1-245-300-3745','dignissim.maecenas@outlook.edu','P.O. Box 779, 3811 A, Rd.'),
  ('Đồng Hới',440020,'1-613-478-0534','et@yahoo.org','P.O. Box 806, 184 Massa. Avenue');

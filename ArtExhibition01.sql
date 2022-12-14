CREATE TABLE ARTIST (
AST_ID      CHAR(7) NOT NULL  ,
AST_SPECIALTY  VARCHAR(25) NOT NULL  ,
AST_FNAME     VARCHAR(25) NOT NULL  ,
AST_LNAME     VARCHAR(25) NOT NULL  ,
AST_EMAIL   VARCHAR(50) NOT NULL,
AST_NATION_IS0  CHAR(3) NULL  ,
AST_BIRTHDAY date NULL,
PRIMARY KEY(AST_ID)
);
INSERT INTO ARTIST VALUES('110-015','Watercolour ','Xing','Liu','mete1998@gmail.com','TWN','1998-02-18');
INSERT INTO ARTIST VALUES('110-167','Oil-Painting','Oliver','Tsai','Oliver09372@yahoo.com.tw','TWN','1991-03-28');
INSERT INTO ARTIST VALUES('110-268','Watercolour','Ting','Fang','tinnna0813@gmail.com','TWN','1997-08-13');
INSERT INTO ARTIST VALUES('110-732','Digital-Art','Guei-Yu','Lai','fishforwork@icloud.com','TWN','2000-11-16');/**/
INSERT INTO ARTIST VALUES('236-026','Ink-Painting','Lara','Park','larra.luna@naver.com','KOR','1989-10-02');
INSERT INTO ARTIST VALUES('403-432','Oil-Painting','Marie','Martin','mmmywe96@outlook.com','FRA','1988-03-03');
INSERT INTO ARTIST VALUES('401-148','Oil-Painting','Louis','Miller','lou.mill9090@gmail.com','USA','1990-09-10');/**/
INSERT INTO ARTIST VALUES('202-095','Photography','Youta','Daidoji','art.daidoji@gmail.com','JPN','1992-01-17');
INSERT INTO ARTIST VALUES('220-163','Photography','Jun-Wang','Li','dexter1225@sina.com','CHN','1994-12-25');
INSERT INTO ARTIST VALUES('236-493','Photography','Kim','Jin','kmjnkmjn555@gmail.com','KOR','1992-05-20');/**/
INSERT INTO ARTIST VALUES('110-281','Digital-Art','Wen-Sin','Lin','stella0512@gmail.com','TWN','1995-05-12');
INSERT INTO ARTIST VALUES('110-290','Digital-Art','Mindy','Xia','mindyx0x0@gmail.com','TWN','1995-01-30');/**/
INSERT INTO ARTIST VALUES('201-238','Collage','Ruri','Efuji','keiku2888@gmail.com','JPN','1996-02-28');
INSERT INTO ARTIST VALUES('201-294','Digital-Art','Ren','Kaise','rensyou@gmail.com','JPN','1999-01-29');
INSERT INTO ARTIST VALUES('236-099','Watercolour','Xiang','Han','bulu0427@naver.com','KOR','1990-04-27');
INSERT INTO ARTIST VALUES('401-110','Oil-Painting','Emliy','Brown','e.brown95s@gmail.com','USA','1995-12-16');/**/
INSERT INTO ARTIST VALUES('202-265','Watercolour','Sakuru','Machii','cherrymimi@hotmail.com','JPN','1996-05-16');/**/
INSERT INTO ARTIST VALUES('202-100','Watercolour','Motonao','Gunichi','moto.gunichi03@hotmail.com','JPN','1993-04-03');
INSERT INTO ARTIST VALUES('236-449','Photography','Beomgeun','Kong','kongivan.work@naver.com','KOR','1990-08-10');


CREATE TABLE ARTWORK (
WORK_NUM CHAR(6)  NOT NULL,
WORK_TITLE VARCHAR(30) NOT NULL  ,
WORK_TYPE VARCHAR(30) NOT NULL  ,
WORK_YEAR  NUMERIC(4) NULL,
WORK_CATEGORY VARCHAR(25) NOT NULL  ,
WORK_VALUE FLOAT(10),
AST_ID      CHAR(7) NOT NULL  ,
PRIMARY KEY(WORK_NUM),
FOREIGN KEY (AST_ID) REFERENCES ARTIST ON DELETE CASCADE
);
INSERT INTO ARTWORK VALUES('015014','In The Mirror','Watercolour','2022','still-life','261000','110-015');
INSERT INTO ARTWORK VALUES('167032','am-tng','Oil-Painting','2022','Comics','171000','110-167');
INSERT INTO ARTWORK VALUES('167017','thoo-kat-tshu','Oil-Painting','2018','Illustration','167000','110-167');
INSERT INTO ARTWORK VALUES('268005','Reincarnation','Watercolour','2022','Abstract','162000','110-268');
INSERT INTO ARTWORK VALUES('268026','After-School','Watercolour','2021','Abstract','150000','110-268');
INSERT INTO ARTWORK VALUES('732003','_________','Digital-Art','2022','Abstract','146000','110-732');/**/
INSERT INTO ARTWORK VALUES('026046','"Dagelet"','Ink-Painting','2021','Landscape','651000','236-026');
INSERT INTO ARTWORK VALUES('026020','Gwaneumsa Trail','Ink-Painting','2020','Landscape','597000','236-026');
INSERT INTO ARTWORK VALUES('026026','Hallasan','Ink-Painting','2019','Landscape','580000','236-026');
INSERT INTO ARTWORK VALUES('432005','Ocean','Oil-Painting','2018','Landscape',NULL,'403-432');
INSERT INTO ARTWORK VALUES('432018','Shadow','Oil-Painting','2020','Landscape','615000','403-432');
INSERT INTO ARTWORK VALUES('148014','Psychedelic Wonderland','Oil-Painting','2020','Landscape','632000','401-148');
INSERT INTO ARTWORK VALUES('148041','The Pinaster','Sketch','2021','Landscape','617000','401-148');/**/
INSERT INTO ARTWORK VALUES('095044','July 13th, 2021','Photography','2021','Photorealism','318000','202-095');
INSERT INTO ARTWORK VALUES('095031','December 25th, 2020','Photography','2021','Photorealism','290000','202-095');
INSERT INTO ARTWORK VALUES('095023','May 24th, 2018','Photography','2018','Photorealism','178000','202-095');
INSERT INTO ARTWORK VALUES('163027','Crossroads','Photography','2022','Photorealism','193000','220-163');
INSERT INTO ARTWORK VALUES('163012','Corner of the City','Photography','2021','Photorealism','182000','220-163');
INSERT INTO ARTWORK VALUES('163004','Night Sky','Photography','2021','Photorealism','419000','220-163');
INSERT INTO ARTWORK VALUES('493053','The Horizon There-II','Photography','2022','Photorealism','335000','236-493');
INSERT INTO ARTWORK VALUES('493043','The Horizon There','Photography','2020','Photorealism','373000','236-493');/**/
INSERT INTO ARTWORK VALUES('281054','Notification','Digital-Art','2022','Abstract','251000','110-281');
INSERT INTO ARTWORK VALUES('281021','Focus','Digital-Art','2021','Comics','249000','110-281');
INSERT INTO ARTWORK VALUES('290019','Programming','Digital-Art','2022','Comics','254000','110-290');
INSERT INTO ARTWORK VALUES('290008','Error 404','Digital-Art','2020','Comics','247000','110-290');/**/
INSERT INTO ARTWORK VALUES('238005','Merry-Go-Round','Sketch','2019','Abstract','145000','201-238');
INSERT INTO ARTWORK VALUES('238010','Hide-And-Seek','Collage','2022','Abstract','154000','201-238');
INSERT INTO ARTWORK VALUES('294012','Stella no Za','Digital-Art','2022','Abstract','99000','201-294');
INSERT INTO ARTWORK VALUES('099101','23:16pm.','Watercolour','2022','Portrait','258000','236-099');
INSERT INTO ARTWORK VALUES('099025','06:21am.','Watercolour','2020','still-life','241000','236-099');
INSERT INTO ARTWORK VALUES('110004','Petit','Sketch','2021','Portrait',NULL,'401-110');
INSERT INTO ARTWORK VALUES('110338','Kendall','Sketch','2018','Portrait',null,'401-110');/**/
INSERT INTO ARTWORK VALUES('265320','ReadMe','Watercolour','2018','Illustration',NULL,'202-265');
INSERT INTO ARTWORK VALUES('265640','Secret Garden','Watercolour','2020','Illustration',NULL,'202-265');
INSERT INTO ARTWORK VALUES('265810','Dreamer','Sketch','2021','Illustration',NULL,'202-265');

/*alright*/


CREATE TABLE ORANIZER(
OGR_ID VARCHAR(15)  NOT NULL,
OGR_TITLE VARCHAR(30) NOT NULL,
OGR_TYPE VARCHAR(25) NOT NULL,
OGR_CONTPER_NAME    VARCHAR(25) NULL  ,
OGR_EMAIL VARCHAR(50) NOT NULL,
OGR_NUM VARCHAR(30) NULL,
PRIMARY KEY(OGR_ID)
);
INSERT INTO ORANIZER VALUES('A230142553','Wen-Sin,Lin','Personal',NULL,'stella0512@gmail.com','+886-934-467-241');/*01*/
INSERT INTO ORANIZER VALUES('10241042','Ling-Hang Co., Ltd.','Company','Ella Cheng','e.cheng@linghaun.com','+886-7-8467-0750');/*02*/
INSERT INTO ORANIZER VALUES('15273909','Omoide Studio','Studio','Midori Lin ','omoide2015@gmail.com','+886-2-0001-4218');/*003*/
INSERT INTO ORANIZER VALUES('15924340','Shengeng Wunyi Co., Ltd.','Company','Adam Wang','service@shengeng.com','+886-2-1234-0781');/*04*/
INSERT INTO ORANIZER VALUES('18400456','I-Create Studio','Studio','Kevin Yeh','syner@icreate.com','+886-7-678-2110');/*105*/


CREATE TABLE SITES(
SITE_NUM NCHAR(7)  NOT NULL,
SITE_NAME VARCHAR(50) NOT NULL ,
SITE_NUM_STREET  VARCHAR(70) NULL,
SITE_DIST_CITY    VARCHAR(50) NULL,
SITE_ZIP     CHAR(6)      NULL,
SITE_EMAIL VARCHAR(50) NOT NULL,
SITE_TEL_NUM VARCHAR(20) NULL,
PRIMARY KEY(SITE_NUM)
);
INSERT INTO SITES VALUES('TP-003','Songshan Cultural and Creative Park','No.133, Guangfu South Rd.','Xinyi District, Taipei City','11072','tcicss@taipeiculture.org','+886-2-2765-1388');/*101*/
INSERT INTO SITES VALUES('KH-010','The Pier-2 Art Center','No. 1, Dayong Rd.','Yancheng District,Kaohsiung City','80343','piertwoart@gmail.com','+886-7-521-4899');/*2002*/
INSERT INTO SITES VALUES('TP-006','Huashan 1914 Creative Park','No.1,Bade Road Sec.1','Zhong Zhen District, Taipei City','10058','eaall@huashan1914.com','+886-2-2358-1914');/*303*/
/*INSERT INTO SITES VALUES('TC-004','Taichung Tun District Art Center','No.201, Daxing Rd.',' Taiping Dist,Taichung City','41152','+886-4-2392-1122');*/
INSERT INTO SITES VALUES('TP-012','MoCA Taipei','No.39 Chang-An West Rd.','Datong District, Taipei City','10351','mocataipei@gmail.com','+886 2-2552-3721');/*404*/

CREATE TABLE EXHIBITION(
EXB_NUM NUMERIC(6,0)  NOT NULL,
EXB_NAME VARCHAR(70) NOT NULL ,
EXB_ST_DATE date NOT NULL,
EXB_ED_DATE date NOT NULL,
EXB_TOT_HRS  FLOAT(6) NULL  ,
EXB_TYPE VARCHAR(25) NOT NULL  ,
/*EXB_REVE FLOAT(10),*/
OGR_ID VARCHAR(15)  NOT NULL,
SITE_NUM NCHAR(7)  not NULL,
PRIMARY KEY(EXB_NUM),
FOREIGN KEY (OGR_ID) REFERENCES ORANIZER ON DELETE CASCADE,
FOREIGN KEY (SITE_NUM) REFERENCES SITES
);
INSERT INTO EXHIBITION VALUES('110053','Local Art Co-Creation','2022-04-02','2022-05-22','408','Special Exhibition','15924340','TP-003');/*04*//*101*/
INSERT INTO EXHIBITION VALUES('110002','International Landscape Gallery','2022-01-08','2022-03-13','520','Thematic Exhibition','10241042','KH-010');/*02*//*202*/
INSERT INTO EXHIBITION VALUES('109810','ECHO - Urban Photography Exhibition','2021-11-27','2022-01-09','352','Thematic Exhibition','15924340','TP-003');/*04*//*101*/
INSERT INTO EXHIBITION VALUES('109729','Digitalk - Wen&Mindys Co-Creation','2021-09-18','2021-10-03','128','Group Exhibition','A230142553','TP-006'); /*01*//*303*/
INSERT INTO EXHIBITION VALUES('109478','Listen to Yourself - Contemporary Art Exhibition','2021-08-21','2021-09-19','240','Thematic Exhibition','18400456','KH-010');/*105*//*202*/
INSERT INTO EXHIBITION VALUES('109231','Amusement Waltz-Sakuru Machii Solo Exhibition','2021-03-27','2021-04-18','184','Solo Exhibition','15273909','TP-012');/*03*//*404*/

CREATE TABLE COLLABORATION(
AST_ID  CHAR(7) NOT NULL REFERENCES ARTIST(AST_ID),
EXB_NUM NUMERIC(6,0)  NOT NULL REFERENCES EXHIBITION(EXB_NUM),
COB_CODE NUMERIC(15,0)  NOT NULL,
COB_TIME datetime NULL
);
INSERT INTO COLLABORATION VALUES('110-015','110053','1110103110015','2022-01-03');
INSERT INTO COLLABORATION VALUES('110-167','110053','1101130110167','2021-11-30');
INSERT INTO COLLABORATION VALUES('110-268','110053','1101221110268','2021-12-21');
INSERT INTO COLLABORATION VALUES('110-732','110053','1101204110732','2021-12-04');
INSERT INTO COLLABORATION VALUES('236-026','110002','1101205236026','2021-12-05');
INSERT INTO COLLABORATION VALUES('403-432','110002','1101109403432','2021-11-09');
INSERT INTO COLLABORATION VALUES('401-148','110002','1101027401148','2021-10-27');
INSERT INTO COLLABORATION VALUES('202-095','109810','1100724202095','2021-07-24');
INSERT INTO COLLABORATION VALUES('220-163','109810','1100621220163','2021-06-21');
INSERT INTO COLLABORATION VALUES('236-493','109810','1100618236493','2021-06-18');
INSERT INTO COLLABORATION VALUES('110-281','109729','1100730110281','2021-07-30');
INSERT INTO COLLABORATION VALUES('110-290','109729','1100605110290','2021-06-05');
INSERT INTO COLLABORATION VALUES('201-238','109478','1100524201238','2021-05-24');
INSERT INTO COLLABORATION VALUES('201-294','109478','1100501201294','2021-05-01');
INSERT INTO COLLABORATION VALUES('236-099','109478','1091224236099','2020-12-24');
INSERT INTO COLLABORATION VALUES('401-110','109478','1091002401110','2020-10-02');
INSERT INTO COLLABORATION VALUES('202-265','109231','1090915202265','2020-09-15');

/*CREATE TABLE REGISTRTION(
OGR_ID  NUMERIC(10,0) NOT NULL REFERENCES ORANIZER(OGR_ID),
SITE_CODE VARCHAR(7)  NOT NULL REFERENCES SITES(SITE_CODE),
APPIC_CODE NUMERIC(6,0)  NOT NULL,
APPIC_TIME datetime NULL
);
INSERT INTO REGISTRTION VALUES('','TP-012','','','2021-12-05');
INSERT INTO REGISTRTION VALUES('','KH-010','','','2021-09-30');
INSERT INTO REGISTRTION VALUES('','TP-003','','','2021-06-21');
INSERT INTO REGISTRTION VALUES('','TP-006','','','2021-05-04');
INSERT INTO REGISTRTION VALUES('','KH-010','','','2021-01-10');
INSERT INTO REGISTRTION VALUES('','TP-012','','','2020-10-27');*/

/*SELECT *
FROM EXHIBITION*/


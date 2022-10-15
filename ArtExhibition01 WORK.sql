/*01*/
/*Count the number of artworks each artist has.*/
SELECT  ARTWORK.AST_ID,AST_FNAME,AST_LNAME,COUNT(DISTINCT WORK_NUM)AS 'How much artworks exhibited.'
FROM ARTWORK JOIN ARTIST ON ARTWORK.AST_ID = ARTIST.AST_ID
GROUP BY ARTWORK.AST_ID,AST_FNAME,AST_LNAME
ORDER BY 'How much artworks exhibited.'

/*02*/
/*Find artists who are not participating in any exhibitions during this period.*/
SELECT AST_ID,AST_FNAME,AST_LNAME,AST_NATION_IS0
FROM ARTIST
WHERE AST_ID NOT IN (SELECT COLLABORATION.AST_ID FROM COLLABORATION)
ORDER BY AST_ID;


/*03*/
/*List artists who are exhibiting in Taipei.*/
SELECT COLLABORATION.AST_ID, EXHIBITION.SITE_NUM,EXB_NAME,EXHIBITION.OGR_ID
FROM COLLABORATION JOIN EXHIBITION ON COLLABORATION.EXB_NUM = EXHIBITION.EXB_NUM JOIN ARTIST 
ON COLLABORATION.AST_ID = ARTIST.AST_ID
WHERE EXHIBITION.SITE_NUM LIKE 'TP-%'

/*04*/
/*Add an artist named "ShenHua", who joined the "ECHO - Urban Photography Exhibition" at a later date.*/
INSERT INTO ARTIST VALUES('220-148','Photography','Hua','Shen','shenhua1000@gmail.com','CHN','1993-10-04');
INSERT INTO ARTWORK VALUES('148017','Milky Way','Photography','2022','Photorealism','510000','220-148');
INSERT INTO ARTWORK VALUES('148005','Jingdezhen','Photography','2020','Photorealism','430000','220-148');
INSERT INTO COLLABORATION VALUES('220-148','109810','1100621220163','2021-10-02');

/*05*/
/*EnZhu Christian church has a public welfare exhibition in the summer vacation "Beauty of Nature" held at "Taichung Tun District Art Center", 
and invited artists "Ya-Ting,Cheng" to participate. List the artist ID, name, email and nationality of the participating artists*/
INSERT INTO ARTIST VALUES('110-066','Watercolour ','Ya-Ting','Cheng','y.ting960288@gmail.com','TWN','1996-02-28');
INSERT INTO ARTWORK VALUES('066027','Starry sky of Alishan','Watercolour','2022','Illustration','373000','110-066');
INSERT INTO ARTWORK VALUES('066019','twinkle Twinkle Little Star','Watercolour','2018','Illustration','155000','110-066');
INSERT INTO ORANIZER VALUES('42540019','EnZhu Christian church','Christian church','Mary Huang','mary.huang@ezhu1979.com','+886-4-367-3452');/*105*/
INSERT INTO SITES VALUES('TC-004','Taichung Tun District Art Center','No.201, Daxing Rd.',' Taiping Dist , Taichung City','41152','danielalinchchch16yiling@tccac.gov.tw','+886-4-2392-1122');
INSERT INTO EXHIBITION VALUES('110068','Beauty of Nature - Public Welfare Exhibition','2022-07-09','2022-08-25','336','Public Welfare Exhibition','42540019','TC-004');/*04*//*101*/
INSERT INTO COLLABORATION VALUES('110-066','110068','1110407110066','2022-04-07');
INSERT INTO COLLABORATION VALUES('110-167','110068','1110330110167','2022-03-30');
INSERT INTO COLLABORATION VALUES('110-268','110068','1100621220163','2022-03-25');
INSERT INTO COLLABORATION VALUES('236-026','110068','1110501236026','2022-05-01');
INSERT INTO COLLABORATION VALUES('403-432','110068','1110122403432','2022-01-22');
SELECT ARTIST.AST_ID,AST_FNAME,AST_LNAME, AST_EMAIL,AST_NATION_IS0
from COLLABORATION JOIN EXHIBITION ON COLLABORATION.EXB_NUM = EXHIBITION.EXB_NUM JOIN ARTIST ON COLLABORATION.AST_ID = ARTIST.AST_ID
WHERE EXHIBITION.EXB_NUM = '110068' /*part01,step.2*/


/*06*/
/*UPDATE the EXHIBITION after 2022-01-01 due to the epidemic, 
The time of each exhibition is changed from 8 hours a day to 7 hours.
Perform action at "part01",and then show up */
UPDATE EXHIBITION
SET EXB_TOT_HRS= (SELECT DATEDIFF(DAY, EXB_ST_DATE,EXB_ED_DATE)*7)
WHERE EXB_ST_DATE >'2022-01-01' /*part01,step.4*/

SELECT *
FROM EXHIBITION
WHERE EXB_ST_DATE >'2022-01-01' /*part01,step.1*//*part01,step.3*//*part01,step.5*/

/*07*/
/*List the average value of each artworks exhibited by Taiwanese artists during this period*/
SELECT ARTIST.AST_ID,AST_FNAME,AST_LNAME ,(SUM(WORK_VALUE)/COUNT(DISTINCT WORK_NUM))AS 'average value'
FROM ARTWORK JOIN ARTIST ON ARTWORK.AST_ID = ARTIST.AST_ID
where AST_NATION_IS0='TWN'
GROUP BY ARTIST.AST_ID,AST_FNAME,AST_LNAME;

/*08*/
/*Find the organizer who had plane the exhibition in the second half of 2021*/
SELECT OGR_ID,OGR_TITLE,OGR_CONTPER_NAME,OGR_EMAIL,OGR_NUM
FROM ORANIZER
WHERE EXISTS
(SELECT *
FROM EXHIBITION
WHERE EXHIBITION.OGR_ID = ORANIZER.OGR_ID
AND (EXB_ST_DATE BETWEEN '2021-07-01' AND '2022-01-01'))

/*09*/
/*I-Create Studio is planning to organize a watercolor short term exhibition, 
need to contact all artists with watercolor works.*/
SELECT AST_ID, AST_FNAME,AST_LNAME,AST_EMAIL
FROM ARTIST
WHERE AST_ID IN (SELECT AST_ID
FROM ARTWORK WHERE WORK_TYPE ='Watercolour')/*go on 05 first!!*/
/*--------------------*/
INSERT INTO EXHIBITION VALUES('110074','Unfinished Colourful time','2022-10-01','2022-10-02','16','Special Exhibition','18400456','TP-006');
INSERT INTO COLLABORATION VALUES('110-015','110074','1110605110015','2022-06-05');
INSERT INTO COLLABORATION VALUES('110-066','110074','1110610110066','2022-06-10');
INSERT INTO COLLABORATION VALUES('110-268','110074','1110620110268','2022-06-20');
INSERT INTO COLLABORATION VALUES('202-265','110074','1110531202265','2022-05-31');
INSERT INTO COLLABORATION VALUES('236-099','110074','1110601236099','2022-06-01');
/*--------------------*/
SELECT *
FROM EXHIBITION;


/*10*/
/*Count the total artworks are there in the table currently.*/
SELECT COUNT(DISTINCT WORK_NUM) AS "COUNT ARTWORK"
FROM ARTWORK;

/*11*/
/*Count the how many artists join each exhibition in the table currently.*/
SELECT  COLLABORATION.EXB_NUM,EXB_NAME,EXB_ST_DATE,EXB_TYPE,COUNT(DISTINCT AST_ID)AS 'How much artists join.'
FROM COLLABORATION JOIN EXHIBITION ON COLLABORATION.EXB_NUM = EXHIBITION.EXB_NUM
GROUP BY COLLABORATION.EXB_NUM,EXB_NAME,EXB_ST_DATE,EXB_TYPE
ORDER BY 'How much artists join.' DESC;

/*12*/
/*List all artists who had joint the exhibition in Zhong Zhen Distric or Xinyi District.*/
SELECT DISTINCT ARTIST.AST_ID, AST_FNAME , AST_LNAME,AST_NATION_IS0
FROM COLLABORATION JOIN ARTIST ON COLLABORATION.AST_ID = ARTIST.AST_ID
JOIN EXHIBITION ON COLLABORATION.EXB_NUM = EXHIBITION.EXB_NUM
WHERE EXHIBITION.SITE_NUM IN
(SELECT SITE_NUM FROM SITES WHERE SITE_DIST_CITY LIKE 'Zhong Zhen District%' OR SITE_DIST_CITY LIKE 'Xinyi District%')
ORDER BY ARTIST.AST_ID DESC;

/*13*/
/*Find artists with works in the category 'Landscape' that are worth more than the overall average.*/
SELECT DISTINCT AST_FNAME, AST_SPECIALTY,AST_EMAIL,AST_NATION_IS0
FROM ARTIST JOIN (SELECT *
FROM ARTWORK
WHERE WORK_VALUE>
(SELECT AVG(WORK_VALUE)
FROM ARTWORK))AS WORK ON ARTIST.AST_ID = WORK.AST_ID
WHERE WORK_CATEGORY = 'Landscape';


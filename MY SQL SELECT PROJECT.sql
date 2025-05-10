SELECT personName,age,category ,FINALWORTH,COUNTRY FROM billionaires;
SELECT * FROM billionaires
WHERE COUNTRY="FRANCE" OR COUNTRY="INDIA";
SELECT distinct COUNTRY from billionaires;
SELECT count(distinct COUNTRY) from billionaires;
SELECT AVG(FINALWORTH) FROM billionaires;
SELECT SUM(FINALWORTH) FROM billionaires;
SELECT * FROM billionaires
WHERE COUNTRY="FRANCE" AND city= "PARIS";
SELECT * FROM billionaires
WHERE COUNTRY IN("FRANCE" ,"MEXICO","INDIA","ISRAEL");
SELECT count(PERSONNAME) FROM billionaires
WHERE selfMade= "TRUE";
SELECT COUNT(PERSONNAME) FROM billionaires
WHERE gender="F";
SELECT count(PERSONNAME) FROM billionaires
WHERE AGE < 35 AND selfMade ="TRUE";
select industries, count(personName) FROM billionaires
group by industries
order by count(PERSONNAME) desc
limit 12;
select birthMonth,count(personName) FROM billionaires
group by birthMonth
order by count(PERSONNAME) desc;
SELECT * FROM billionaires;
SELECT GENDER,MAX(age),round( avg(age),2),MIN(age) ,avg(finalWorth)  from  billionaires
group by gender;
select category,avg(finalWorth) from billionaires
group by category;
select  industries,gender ,count( personName ) ,avg(age) from billionaires
group by industries,gender;
select personName,finalWorth,age,gender  from billionaires
where country = "united states";
select * from billionaires
where country = "united states";
select count(personName) from billionaires
where country="united states";
SELECT country, gender,round(avg(age),2) as "average age", count(personName) as count_personname,
round(avg(finalWorth),2) as "average final_worth"FROM billionaires
group by country,gender
order by gender,avg(age) ;

SELECT AVG(finalWorth) AS "AVERAGE FINAL_WORTH",industries,round( AVG(AGE),2) AS "AVERAGE AGE" FROM billionaires
WHERE country="UNITED STATES"
group by  industries
ORDER BY avg(AGE) asc;
SELECT firstName, finalWorth,finalWorth+1000,AGE,gender FROM billionaires
ORDER BY finalWorth desc;
SELECT * FROM billionaires
WHERE birthDate >'1980_01_01';
SELECT AGE,AGE+10
 finalWorth, 
 round( (finalWorth * 1.1199994),3) AS NEW_WORTH
 FROM billionaires;
 SELECT * FROM billionaires
 WHERE finalWorth > 3000 AND AGE < 50;
SELECT * FROM billionaires
WHERE NOT (country="CHINA" OR finalWorth>30000 AND category="TECHNOLOGY");
SELECT * FROM billionaires
WHERE country IN("CHINA",'INDIA' ,"SPAIN") AND finalWorth >30000 OR category ="TECHNOLOGY";
SELECT * FROM billionaires
WHERE finalWorth>=10000 AND finalWorth<=20000;
SELECT * FROM billionaires
WHERE finalWorth BETWEEN 10000
 AND 20000;
 SELECT * FROM billionaires
 WHERE birthDate BETWEEN "01-10-1975" AND "01-01-1985";
 # THE CODE DID NOT RUN
 # THE USE OF LIKE 
 
 SELECT * FROM billionaires
 WHERE lastName like "S%";
 # like return values given that a certain condition
 #is sutisfied for example the first name starts with b
 SELECT * FROM billionaires
 WHERE lastName LIKE "%D%";
  SELECT * FROM billionaires
 WHERE lastName LIKE "%D";
 SELECT * FROM billionaires
 WHERE lastName LIKE  "_____R";
 SELECT * FROM billionaires
 WHERE finalWorth LIKE "%2%";
 SELECT * FROM billionaires
 WHERE personName LIKE "%VINCENT%"  OR city LIKE "%MEXICO";
 #THE USE OF REGULAR EXPRESSION
  SELECT * FROM billionaires
 WHERE personName REGEXP "^P";
 SELECT * FROM billionaires
 WHERE personName REGEXP "^D|X|K%";
 SELECT * FROM billionaires
 WHERE personName REGEXP "^TOM";
 SELECT * FROM billionaires
 WHERE personName REGEXP "^CY";
 SELECT * FROM billionaires
 WHERE personName REGEXP "^CHR";
 SELECT * FROM billionaires
 WHERE personName REGEXP "^LI";
 SELECT * FROM billionaires
 WHERE personName REGEXP "K$";SELECT * FROM billionaires
 WHERE personName REGEXP "E[E]";
 SELECT * FROM billionaires
 WHERE personName REGEXP "^S[E-W]";
 SELECT * FROM billionaires
 WHERE personName REGEXP "^V[A-I ]";
 SELECT * FROM billionaires
 WHERE lastName REGEXP "MU|R$|R";
 SELECT * FROM billionaires
 WHERE CITY IS NOT NULL;
 
 
## Exercise 5 - MySQL query

<ins> List all msisnd that start with 11: </ins>
SELECT MSISDN FROM MSISDN WHERE MSISDN LIKE '11%';

<ins> List amount of msidns per user: </ins>
SELECT COUNT(MSISDN) FROM MSISDN GROUP BY USER;
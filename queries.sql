SELECT NAME FROM HEALTH_CARE.PUBLIC.HEALTH_CARE;
SELECT DISTINCT MEDICAL_CONDITION FROM HEALTH_CARE.PUBLIC.HEALTH_CARE;
SELECT COUNT(*) AS DOCTOR FROM HEALTH_CARE.PUBLIC.HEALTH_CARE;
SELECT * FROM HEALTH_CARE.PUBLIC.HEALTH_CARE
WHERE GENDER = 'Female';
SELECT AVG(AGE) AS average_age FROM HEALTH_CARE.PUBLIC.HEALTH_CARE;
SELECT NAME, COUNT(MEDICAL_CONDITION) AS condition_count
FROM HEALTH_CARE.PUBLIC.HEALTH_CARE
GROUP BY NAME
HAVING COUNT(MEDICAL_CONDITION) > 1;
SELECT DOCTOR FROM HEALTH_CARE.PUBLIC.HEALTH_CARE;
SELECT MEDICAL_CONDITION, COUNT(NAME) AS PATIENT_COUNT
FROM HEALTH_CARE.PUBLIC.HEALTH_CARE
GROUP BY MEDICAL_CONDITION
ORDER BY PATIENT_COUNT DESC
LIMIT 1;
SELECT NAME
FROM HEALTH_CARE.PUBLIC.HEALTH_CARE
WHERE AGE > 60 AND MEDICAL_CONDITION = 'Diabetes';
SELECT SUM(BILLING_AMOUNT) AS TOTAL_REVENUE FROM HEALTH_CARE.PUBLIC.HEALTH_CARE;
SELECT DOCTOR, NAME, AGE
FROM HEALTH_CARE.PUBLIC.HEALTH_CARE
WHERE AGE = (SELECT MAX(AGE) FROM HEALTH_CARE.PUBLIC.HEALTH_CARE);
SELECT AVG(DATEDIFF(day, date_of_admission, DISCHARGE_DATE)) AS avg_duration
FROM HEALTH_CARE.PUBLIC.HEALTH_CARE;
SELECT NAME FROM HEALTH_CARE.PUBLIC.HEALTH_CARE
WHERE NAME LIKE 'A%';
SELECT GENDER, COUNT(*) AS count
FROM HEALTH_CARE.PUBLIC.HEALTH_CARE
GROUP BY GENDER;
SELECT COUNT(*) AS normal_count
FROM HEALTH_CARE.PUBLIC.HEALTH_CARE
WHERE TEST_RESULTS = 'Normal';
SELECT COUNT(*) AS abnormal_or_inconclusive
FROM HEALTH_CARE.PUBLIC.HEALTH_CARE
WHERE TEST_RESULTS IN ('Abnormal', 'Inconclusive');
SELECT COUNT(*) FROM HEALTH_CARE.PUBLIC.HEALTH_CARE
WHERE BLOOD_TYPE = 'AB+' AND AGE > 52;
SELECT COUNT(*) FROM HEALTH_CARE.PUBLIC.HEALTH_CARE
WHERE BILLING_AMOUNT > 24890;
SELECT NAME FROM HEALTH_CARE.PUBLIC.HEALTH_CARE
WHERE MEDICAL_CONDITION = 'Asthma';
SELECT NAME FROM HEALTH_CARE.PUBLIC.HEALTH_CARE
WHERE MEDICAL_CONDITION = 'Cancer';
SELECT NAME, BLOOD_TYPE FROM HEALTH_CARE.PUBLIC.HEALTH_CARE
WHERE ROOM_NUMBER = '292';
SELECT COUNT(*) FROM HEALTH_CARE.PUBLIC.HEALTH_CARE
WHERE GENDER = 'Male' AND MEDICAL_CONDITION = 'Arthritis';
SELECT COUNT(*) FROM HEALTH_CARE.PUBLIC.HEALTH_CARE
WHERE HOSPITAL = 'Harris and Sons';
SELECT NAME FROM HEALTH_CARE.PUBLIC.HEALTH_CARE
WHERE INSURANCE_PROVIDER = 'Cigna';
SELECT MEDICAL_CONDITION
FROM HEALTH_CARE.PUBLIC.HEALTH_CARE
WHERE AGE > (SELECT AVG(AGE) FROM HEALTH_CARE.PUBLIC.HEALTH_CARE)
GROUP BY MEDICAL_CONDITION;

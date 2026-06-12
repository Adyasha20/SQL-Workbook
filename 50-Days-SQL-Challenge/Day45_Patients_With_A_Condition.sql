-- Day 45
-- Problem: Patients With a Condition
-- Platform: LeetCode

SELECT patient_id, patient_name, conditions       --Select the patient ID, patient name, conditions column
FROM Patients                                     --Use the Patients table
WHERE conditions LIKE 'DIAB1%'                    --Check if the conditions string starts with DIAB1
OR conditions LIKE '% DIAB1%';                    --Check if there is a condition word after a space that starts with DIAB1

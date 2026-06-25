-- Day 25
-- Problem: New Companies
-- Platform: HackerRank

SELECT                                                       --SELECT is used to choose the columns that will be displayed in the output
    c.company_code,                                          --Display the company code from the Company table
    c.founder,                                               --Display the founder's name for each company
    COUNT(DISTINCT lm.lead_manager_code),                    --Count the number of unique Lead Managers in each company
    COUNT(DISTINCT sm.senior_manager_code),                  --Count the number of different Senior Managers working in each company
    COUNT(DISTINCT m.manager_code),                          --Count all unique Managers in each company
    COUNT(DISTINCT e.employee_code)                          --Count all unique Employees in each company
FROM Company c                                               --Start reading data from the Company table
LEFT JOIN Lead_Manager lm                                    --Join the Lead_Manager table with the Company table
    ON c.company_code = lm.company_code                      --Match companies and lead managers having the same company code
LEFT JOIN Senior_Manager sm                                  --Join the Senior_Manager table
    ON lm.lead_manager_code = sm.lead_manager_code           --Match each Senior Manager with its Lead Manager
LEFT JOIN Manager m                                          --Join the Manager table
    ON sm.senior_manager_code = m.senior_manager_code        --Match each Manager with the Senior Manager they report to
LEFT JOIN Employee e                                         --Join the Employee table
    ON m.manager_code = e.manager_code                       --Match employees with the manager they report to
GROUP BY c.company_code, c.founder                           --Create one group for each company. All counting is done separately for each group
ORDER BY c.company_code;                                     --Sort the final output by company code in ascending (alphabetical) order

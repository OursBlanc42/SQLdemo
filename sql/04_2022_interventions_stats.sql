--Count the interventions carried out in 2022, the total hours spent, and the average time per intervention
SELECT 
    COUNT(intervention_id) AS nbr_inter, 
    SUM(duration_hours) AS Temps_inter_cumul, 
    ROUND(AVG(duration_hours), 2) AS temps_moyen 
FROM interventions
WHERE intervention_date BETWEEN '2022-01-01' AND '2022-12-31';

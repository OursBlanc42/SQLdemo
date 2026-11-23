--Show the 10 equipment items with the most interventions and their cumulative hours. Sort by the number of interventions in descending order, then by cumulative hours in descending order in case of a tie*
SELECT equipement.tag,
       equipement.equipement_type,
       COUNT(interventions.tag) AS nombre_intervention,
       SUM(interventions.duration_hours) AS heure_cumul
       FROM equipement
LEFT JOIN interventions ON equipement.tag = interventions.tag
GROUP BY equipement.tag
ORDER BY nombre_intervention DESC, heure_cumul DESC
LIMIT 10;
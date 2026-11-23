--List all valves in Building A
SELECT * FROM equipement
WHERE equipement_type = 'Vanne'
AND zone_id = 'A';
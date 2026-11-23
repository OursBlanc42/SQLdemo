--List the equipment located in ATEX zones
SELECT tag, equipement_type FROM equipement
LEFT JOIN "zone" z  ON equipement.zone_id  = z.zone_id
WHERE is_atex = true
ORDER BY tag ASC;
-- Setup de la database avec creation des tables + injection des data depuis les .csv

-- Creation de la table zone
CREATE TABLE zone
(
    zone_id TEXT VARCHAR(3) PRIMARY KEY NOT NULL
    zone_name TEXT VARCHAR(32)
    is_atex BOOLEAN DEFAULT 1
)

-- Creation de la table equipement
CREATE TABLE equipement
(
    tag TEXT PRIMARY KEY NOT NULL
    equipement_type TEXT VARCHAR(32) DEFAULT NULL 
    zone_id TEXT FOREIGN KEY NOT NULL
    equipement_status TEXT VARCHAR(32)
    commissioning_date DATE
)

-- Creation de la table interventions
CREATE TABLE interventions
(
    intervention_id TEXT VARCHAR(6) PRIMARY KEY NOT NULL
    tag TEXT VARCHAR(6) FOREIGN KEY NOT NULL
    intervention_date DATE NOT NULL
    intervention_type TEXT VARCHAR(32)
    duration_hours FLOAT
    intervention_description TEXT VARCHAR(256)
)

-- Setup de la database avec creation des tables + injection des data depuis les .csv

-- Creation de la table zone
CREATE TABLE zone
(
    zone_id VARCHAR(3) PRIMARY KEY NOT NULL,
    zone_name VARCHAR(32),
    is_atex BOOLEAN DEFAULT 1
);

-- Creation de la table equipement
CREATE TABLE equipement
(
    tag VARCHAR(6) PRIMARY KEY NOT NULL,
    equipement_type VARCHAR(32),
    zone_id VARCHAR(3) NOT NULL REFERENCES zone(zone_id),
    equipement_status VARCHAR(32),
    commissioning_date DATE
);

-- Creation de la table interventions
CREATE TABLE interventions
(
    intervention_id VARCHAR(6) PRIMARY KEY NOT NULL,
    tag VARCHAR(6) NOT NULL REFERENCES equipement(tag),
    intervention_date DATE NOT NULL,
    duration_hours FLOAT,
    intervention_description VARCHAR(256)
);

-- Database setup

-- Zone table
CREATE TABLE zone
(
    zone_id VARCHAR(3) PRIMARY KEY,
    zone_name VARCHAR(32),
    is_atex BOOLEAN DEFAULT FALSE
);

-- Equipement table
CREATE TABLE equipement
(
    tag VARCHAR(6) PRIMARY KEY,
    equipement_type VARCHAR(32),
    zone_id VARCHAR(3) NOT NULL REFERENCES zone(zone_id),
    equipement_status VARCHAR(32),
    commissioning_date DATE
);

-- Interventions table
CREATE TABLE interventions
(
    intervention_id VARCHAR(6) PRIMARY KEY,
    tag VARCHAR(6) NOT NULL REFERENCES equipement(tag),
    intervention_date DATE NOT NULL,
    duration_hours NUMERIC(3,2),
    intervention_description VARCHAR(256)
);

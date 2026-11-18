# SQLdemo

## Introduction
SQLdemo is a demonstration project showcasing the possibilities offered by an SQL database in a fictional industrial context.
This project also allows me to consolidate my SQL knowledge.

## Project structure

The project uses fictitious data from a fictitious industrial site.

We imagine equipment distributed across various areas of the industrial site, along with a record of maintenance interventions on different assets.

Each intervention has a unique identifier, and each piece of equipment has its own unique tag.

**Note**
Since the interventions are fictitious, their descriptions may not be consistent with the type of equipment involved. This data is intended to demonstrate what can be done, rather than provide a 100% accurate representation of an industrial site.

Relational database schema
```mermaid
erDiagram
    ZONES {
        string zone_id PK "Numéro de la zone"
        string zone_name "Nom la zone"
        boolean is_atex "Zone Atex (Oui ou Non)"
    }

    EQUIPMENT {
        string tag PK "Identifiant unique de l'équipement"
        string type "Type d'équipement"
        string zone_id FK "Numéro de la zone de l'équipement"
        string status "Statut de l'équipement"
        date commissioning_date "Date de mise en service"
    }

    INTERVENTIONS {
        int intervention_id PK "Identifiant unique de l'intervention"
        string tag FK "Identifiant unique de l'équipement concerné par l'intervention"
        date intervention_date "Date de l'intervention"
        string intervention_type "Type d'intervention"
        float duration_hours "Durée de l'intervention"
        string description "Description courte de l'intervention"
    }

    ZONES ||--o{ EQUIPMENT : contient
    EQUIPMENT ||--o{ INTERVENTIONS : concerne
```

## Datasets
The datasets were created as CSV files to add another layer to the database creation process.
We assume that the data must exist somewhere in Excel files. This also demonstrates that data can be imported from a spreadsheet into a relational database to build the database and run initial queries.

## Examples
[wip]

## IA usage
AI was used as a support tool in the following cases:
- translation
- review
- Generate fictitious datasets

# realtime-rides-pipeline
Implemented end-to-end data pipeline using Databricks, Delta Lake &amp; dbt with SCD2, CDC, bronze–silver–gold architecture and automated snapshotting.

# 🚕 Real-Time Ride Sharing Analytics Platform  
### Databricks • Delta Lake • dbt • Bronze–Silver–Gold • SCD2 • CDC Pipeline

This project is an end-to-end modern data engineering and analytics engineering pipeline built using **Databricks**, **Spark**, **Delta Lake**, and **dbt**.  
It processes raw ingestion → cleans data → applies CDC + deduplication → builds dimensional models → snapshotting (SCD2) → analytical gold-layer marts.

---

## 📌 **Tech Stack**

| Layer | Tech |
|------|------|
| Storage | Databricks Unity Catalog, Delta Lake |
| Processing | PySpark, Databricks Workflows, Delta Live Tables (optional) |
| Transformations | dbt Core (1.8+) |
| Modeling | SCD2 Snapshots, Dimensional Models, Facts |
| Orchestration | Databricks Jobs |
| Analytics | PowerBI (optional) |

---

## 🏗️ **Architecture Overview**

![Architecture](architecture/high_level_architecture.png)

**Bronze → Silver → Gold**  
- **Bronze:** Raw ingestion  
- **Silver:** Clean, standardized, deduped, CDC applied  
- **Gold:** Star-schema dimensional models + metrics  

---

## 📂 **Project Features**

### ✔ **Ingestion (Bronze Layer)**
- Auto-loads JSON/CSV data  
- Schema inference and enforcement  
- Raw audit columns added  

### ✔ **Transformations (Silver Layer)**
- Email domain extraction  
- Phone number normalization  
- First-name + last-name → full name  
- Null handling  
- Standardized timestamps  
- CDC using `last_updated_timestamp`  
- Dedup using Spark window functions  

### ✔ **Dimensional Modeling (Gold Layer)**
- Fact Trips  
- Dim Customers  
- Dim Drivers  
- Dim Locations  
- Dim Vehicles  
- Dim Payments  

### ✔ **SCD Type-2 Snapshots**
Implemented via dbt snapshots (SCD2):

```yaml
strategy: timestamp
updated_at: last_updated_timestamp
dbt_valid_to_current: "to_date('9999-12-31')"

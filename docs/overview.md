# Project overview

End-to-end medallion architecture for a ride-sharing analytics product:
- Bronze: raw ingestion (source_bronze.*)
- Silver: cleaned / conformed tables (models in models/silver/)
- Gold: dimensional models & marts (models/gold/)

Highlights:
- CDC via `last_updated_timestamp`
- Deduplication with Spark window functions
- SCD Type-2 via dbt snapshots
- dbt tests for data quality
- Documentation and data dictionary below

# Data Service

The Data Service centralizes data ingestion, ETL processes, and storage orchestration for Nexus.  
Provides unified access to structured and unstructured data and ensures consistent DB interactions.

## Features
- Manage PostgreSQL, SQLite, and vector DB connections.
- ETL pipelines for ingesting, transforming, and storing data.
- Provide APIs for services and SDKs to access and query data.

## Getting Started
1. Navigate to the service folder:
```bash
cd services/data-service
````

2. Install dependencies:

```bash
pip install -r requirements.txt
```

3. Run locally with Docker Compose:

```bash
docker-compose up
```

## Notes

* Leverages `libs/db` and `libs/utils` for consistency.
* Designed for local-first development with easy cloud migration.
* Integration tests should validate all database operations.


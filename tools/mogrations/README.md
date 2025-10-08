# Migrations

This folder contains database migration scripts and utilities for the Nexus platform.  
Supports PostgreSQL, SQLite, and other supported data backends.

## Purpose
- Apply schema changes, seed data, and version database states.  
- Ensure consistent database structure across development, testing, and production.  
- Integrate with CI/CD pipelines to automate migrations.

## Usage
```bash
python migrate.py up
python migrate.py down
````

## Notes

* Follow naming conventions and version control for migration scripts.
* Test migrations in local environments before applying to production.
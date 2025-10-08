# Tools Directory

The `tools/` directory contains **developer utilities, scripts, and supporting tools** used across the Nexus platform.  
These tools assist with development, testing, deployment, and automation tasks, but are **not part of the core applications or services**.

---

## **Purpose**

- Provide scripts and utilities to **simplify development workflows**.  
- Support tasks like code generation, database migrations, scaffolding, or project maintenance.  
- Facilitate **automation of repetitive tasks**, helping solo and team developers work more efficiently.  
- Host **experimental or one-off tools** that may not yet be production-ready.

---

## **Example Subdirectories / Scripts**

### 1. `scaffold/`
- Scripts to automatically scaffold new apps, services, or packages in the monorepo.  
- Ensures consistent folder structure, README.md stubs, and placeholder files.

### 2. `deploy/`
- Scripts for deploying apps or services locally or to cloud providers.  
- Example: `deploy_local.sh`, `deploy_flyio.sh`.

### 3. `generate/`
- Code generation scripts, e.g., generating API clients, OpenAPI stubs, or TypeScript types.  

### 4. `migrations/`
- Database migration helpers or scripts.  
- Can integrate with PostgreSQL, SQLite, or vector DB migrations.

### 5. `utils/`
- Miscellaneous utilities not specific to any one service or app.  
- Example: `cleanup_temp_files.sh`, `convert_notebooks.py`.

---

## **Getting Started**

1. Navigate to the tools directory:
```bash
cd tools
````

2. Make scripts executable if needed:

```bash
chmod +x scaffold/create_app.sh
```

3. Run a tool or script:

```bash
./scaffold/create_app.sh frontend-app
```

4. Follow any usage instructions in the individual script README.md (if provided).

---

## **Guidelines**

* Scripts should **aim for idempotency**, meaning running them multiple times shouldn’t break the system.
* Keep **documentation and usage examples** alongside scripts.
* Use **consistent naming and folder conventions** for discoverability.
* Separate **experimental tools** from production-ready helpers.
* Include `.keep` files in empty folders to ensure Git tracks them.

---

## **Notes**

* This directory is designed to **help developers work faster** and maintain the monorepo efficiently.
* Tools here can be reused across apps, services, packages, and infrastructure.
* Treat this directory as **supporting infrastructure for development**, not runtime services.
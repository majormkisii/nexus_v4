# Scripts

This folder contains **general-purpose scripts** for automating development, testing, deployment, and maintenance tasks in the Nexus monorepo.  
Scripts are intended to support developers, CI/CD pipelines, and other tooling without embedding complex business logic.

## Purpose
- Automate repetitive or error-prone tasks (e.g., environment setup, builds, cleanup).  
- Provide quick utilities for running services, apps, or SDK tasks.  
- Serve as helpers for other tools like `scaffold`, `deploy`, `generate`, and `migrations`.

## Examples
- `bootstrap.sh` → initialize a new developer environment.  
- `run_all_services.sh` → start all services locally via Docker Compose.  
- `cleanup.sh` → remove temporary files, logs, or Docker artifacts.  

## Usage
```bash
./scripts/bootstrap.sh
./scripts/run_all_services.sh
````

## Notes

* Keep scripts **lightweight, modular, and well-documented**.
* Scripts should **fail gracefully** and provide helpful logging.
* Encourage usage of scripts to maintain consistency across development environments.

```

---

✅ This README clearly communicates:  

- **Purpose** of the scripts folder.  
- **Examples** of typical scripts included.  
- **Usage instructions** for developers.  
- **Best practices** for maintenance and documentation.  
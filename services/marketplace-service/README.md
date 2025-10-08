# Marketplace Service

The Marketplace Service powers the **Nexus plugin and extension ecosystem**, enabling developers and businesses to extend platform functionality.  
It manages discovery, installation, and execution of AI tools, workflow modules, and integrations.

## Features
- Register, publish, and manage AI/utility plugins or extensions.
- Provide APIs for browsing, installing, and configuring marketplace items.
- Enforce versioning, dependency management, and access control for plugins.
- Support metadata, ratings, and usage analytics for marketplace modules.

## Getting Started
1. Navigate to the service folder:
```bash
cd services/marketplace-service
````

2. Install dependencies:

```bash
pip install -r requirements.txt
```

3. Run locally with Docker Compose:

```bash
docker-compose up
```

4. Configure database and storage backends via `.env`.

## Notes

* Integrates with `auth-service` for user authentication and permissions.
* Designed to be modular so new plugin types or marketplaces can be added easily.
* Marketplace items can interact with other services like `ai-service` and `workflow-service`.
* Include tests in the `tests/` folder to validate plugin registration, execution, and security.
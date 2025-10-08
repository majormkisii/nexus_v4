# Auth Service

The Auth Service manages authentication, authorization, and API key issuance for Nexus.  
It ensures secure access for apps, SDKs, CLI tools, and other microservices.  

## Features
- JWT-based authentication and session management.
- OAuth and SSO integration (future).
- API key management for SDK and app access.

## Getting Started
1. Navigate to the service folder:
```bash
cd services/auth-service
````

2. Install dependencies:

```bash
pip install -r requirements.txt
```

3. Run locally:

```bash
docker-compose up
```

## Notes

* Uses `libs/auth` and `libs/config` for shared utilities.
* Ensure all endpoints are tested via integration tests in `tests/`.
* Maintain documentation for API endpoints in `docs/api/`.

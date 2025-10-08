# API Gateway Service

The API Gateway Service serves as the **single entry point** for all external requests to the Nexus platform.  
It handles routing, authentication, rate limiting, and request aggregation across multiple microservices.  

## Features
- Route requests to appropriate backend services (`ai-service`, `auth-service`, `workflow-service`, etc.).
- Centralized authentication and authorization for all incoming requests.
- Load balancing and basic caching support.
- API aggregation to simplify client consumption (apps, SDKs, CLI).

## Getting Started
1. Navigate to the service folder:
```bash
cd services/api-gateway
````

2. Install dependencies:

```bash
npm install
# or yarn install
```

3. Run locally (development mode):

```bash
npm run dev
# or yarn dev
```

4. Access endpoints via:

```
http://localhost:4000/<service-endpoint>
```

## Notes

* Integrates with `libs/auth` and `libs/utils` for authentication, logging, and request validation.
* Designed to be lightweight and modular, easily extendable for future services.
* Ensure that unit and integration tests in `tests/` cover all routing, authentication, and aggregation logic.
* Future cloud deployments can leverage edge routing and caching services for scalability.
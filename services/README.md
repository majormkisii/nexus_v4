# Services Directory

The `services/` directory contains all **backend microservices** for the Nexus platform.  
Each service is designed to be **self-contained**, deployable independently, and interact with other services through APIs or messaging.  
This aligns with our **MACH architecture** (Microservices, API-first, Cloud-native, Headless) and ensures **scalability, modularity, and composability**.

---

## **Services Overview**

### 1. `ai-service`
- Handles all AI/ML workloads, model inference, embeddings, and workflow orchestration.  
- Exposes REST or GraphQL APIs for apps, SDKs, and CLI to run models or pipelines.  
- Built with **FastAPI** (Python) and integrates Hugging Face, LangChain, and local vector DBs.

### 2. `auth-service`
- Manages authentication, authorization, and API key issuance.  
- Provides JWT-based access control and user management for both apps and SDKs.  
- Built with **FastAPI or Node.js**, depending on team preference.

### 3. `data-service` *(optional)*
- Centralized service for data ingestion, ETL, and storage orchestration.  
- Handles PostgreSQL, SQLite (local dev), and vector database interactions.  
- Provides unified access to structured and unstructured data.

### 4. `workflow-service` *(optional)*
- Orchestrates AI and business workflows across multiple services.  
- Can schedule tasks, trigger pipelines, and monitor execution status.  
- Could expose an API consumed by CLI, CLI Web Dashboard, or frontend apps.

### 5. `analytics-service` *(optional)*
- Collects usage metrics, logs, and AI model performance statistics.  
- Provides dashboards and API endpoints for admins and business users.  

---

## **Folder Conventions**

- Each service contains its own **README.md**, `requirements.txt` or `package.json`, Dockerfile, and `.keep` file if empty.  
- Services are independent but can **share libraries from `libs/`** or SDKs from `packages/`.  
- Microservices should follow consistent **environment variable management** (`.env`) for credentials, secrets, and configurations.

---

## **Getting Started**

1. **Run a single service locally with Docker Compose**
```bash
cd services/ai-service
docker-compose up
````

2. **Run all services together**

```bash
cd nexus/
docker-compose up
```

3. **API Access**

* REST endpoints: `http://localhost:8000/endpoint`
* GraphQL endpoints: `http://localhost:8000/graphql`
* Use SDKs or CLI for simplified access.

---

## **Development Guidelines**

* Follow **modular microservice design**; each service should be independently deployable.
* Use **shared libraries** from `libs/` for utilities, logging, and data access.
* Maintain **unit and integration tests** for each service.
* Document new APIs and workflows in `docs/api/` and ADRs in `docs/adr/`.
* Keep services compatible with **local dev, Docker, and future cloud deployment**.

---

## **Notes**

* This directory is the **core of Nexus backend functionality**.
* Services are designed to interact with each other through **well-defined APIs**, making it easy to add or replace services in the future.
* Include `.keep` files in empty folders to ensure Git tracks them.
* Use ADRs to document **major architectural decisions** for each service.
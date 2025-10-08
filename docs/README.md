# Docs Directory

The `docs/` directory contains all documentation for the Nexus platform.  
This includes architecture decisions, API specifications, workflow diagrams, and supporting materials to help developers, contributors, and stakeholders understand the platform.

---

## **Subdirectories Overview**

### 1. `adr/`
- Stores **Architecture Decision Records (ADRs)** in [MADR](https://adr.github.io/madr/) format.  
- Each ADR documents a significant architectural decision, the context, alternatives considered, and the chosen approach.  
- Helps maintain a historical record of design choices and rationale.

### 2. `api/`
- Contains **API specifications**, including OpenAPI/Swagger files.  
- Defines endpoints, request/response schemas, authentication methods, and integration contracts.  
- Ensures consistency across frontend, backend, and SDKs.

### 3. `architecture/`
- Contains **diagrams and visuals** describing system architecture, microservices, data flows, and infrastructure.  
- Supports onboarding, planning, and presentations to stakeholders or investors.

### 4. `guides/`
- Optional folder for **how-to guides, tutorials, and best practices**.  
- Examples include “Running the Nexus Platform Locally”, “Adding a New AI Service”, or “Publishing a Marketplace Extension”.

---

## **Getting Started**

1. Navigate to the ADR directory to review architecture decisions:
```bash
cd docs/adr
````

2. Review API specifications before implementing endpoints:

```bash
cd docs/api
```

3. Use architecture diagrams for onboarding and understanding system flows:

```bash
cd docs/architecture
```

4. For contributors, read guides to understand development workflow and best practices:

```bash
cd docs/guides
```

---

## **Documentation Guidelines**

* Use **clear, concise language** suitable for developers, designers, and non-technical stakeholders.
* Maintain ADRs for every **significant architectural or design decision**.
* Update API specifications whenever endpoints, schemas, or authentication mechanisms change.
* Keep diagrams current as the system evolves.
* Consider versioning documentation alongside code for reproducibility and historical reference.

---

## **Notes**

* The `docs/` directory is **centralized** to make knowledge sharing and onboarding easier.
* All directories should contain a `README.md` and a `.keep` file if they are empty, ensuring they are tracked by Git.
* Documentation is a **living part of the project**; it should evolve with the platform.
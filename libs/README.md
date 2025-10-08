# Libs Directory

The `libs/` directory contains **shared libraries and utilities** used across multiple apps and services in the Nexus platform.  
These libraries provide common functionality, reduce code duplication, and promote consistency across the monorepo.

---

## **Purpose**

- Encapsulate **shared business logic** (e.g., authentication helpers, AI utility functions, data processing).  
- Provide **cross-service and cross-app utilities**, such as logging, error handling, or API clients.  
- Serve as the foundation for **polyglot SDKs and internal APIs**.  
- Allow **easy testing and reuse**, ensuring consistent behavior across microservices and apps.

---

## **Subdirectories (Examples)**

### 1. `auth/`
- Contains shared authentication and authorization logic.  
- Examples: JWT helpers, password hashing utilities, OAuth integrations.

### 2. `db/`
- Shared database connection logic, migrations helpers, and ORM wrappers.  
- Ensures consistent handling of database connections across services.

### 3. `ai/`
- Contains utilities for AI workflows, model loading, embeddings, and inference pipelines.  
- Supports multiple models and multi-cloud AI service integrations.

### 4. `utils/`
- General-purpose helper functions used by multiple services or apps.  
- Examples: logging, configuration loaders, input validation, file management.

### 5. `types/` *(optional)*
- Shared TypeScript or Python type definitions to enforce type consistency across apps and SDKs.

---

## **Usage Guidelines**

1. **Import from `libs/` whenever possible** instead of duplicating code in apps or services.  
2. **Keep libraries language-agnostic** when possible, or provide polyglot versions for Python, JS/TS, Go, Rust, and Java.  
3. Write **unit tests** for all utilities in `libs/` to ensure reliability.  
4. Document usage in each subdirectory’s `README.md` for clarity.  
5. Use semantic versioning within `libs/` if libraries are packaged separately for SDKs or services.

---

## **Getting Started**

Example: Using the AI utility library in the AI Service:
```python
from libs.ai.model_utils import load_model, run_inference

model = load_model("distilbert-base-uncased")
result = run_inference(model, "Hello world")
````

---

## **Notes**

* All directories should contain a `.keep` file if empty, ensuring Git tracks them.
* Libraries in this folder are **core building blocks** for both apps and services.
* Maintain high-quality tests, documentation, and consistent coding standards.
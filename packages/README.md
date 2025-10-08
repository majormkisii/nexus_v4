# Packages Directory

The `packages/` directory contains **developer-facing SDKs, libraries, and shared packages** for the Nexus platform.  
These packages allow developers to integrate Nexus services, AI models, and workflows into their own applications, scripts, or pipelines in a **polyglot, multi-language environment**.

---

## **Purpose**

- Provide **SDKs in multiple languages** (Python, TypeScript/JavaScript, Go, Rust, Java) for consuming Nexus APIs.  
- Package **shared utilities** that can be consumed across apps, services, and external projects.  
- Ensure **consistent API contracts** and reduce duplication of logic in consuming projects.  
- Facilitate **developer adoption** by providing easy-to-install, well-documented packages.

---

## **Example Subdirectories**

### 1. `sdk-python/`
- Python SDK for interacting with Nexus APIs and AI services.  
- Provides high-level abstractions for AI model inference, workflows, authentication, and vector DB queries.

### 2. `sdk-js/`
- JavaScript / TypeScript SDK for browser or Node.js applications.  
- Enables frontend apps or Node scripts to access AI endpoints and platform features.

### 3. `sdk-go/`
- Go SDK for backend services, CLI tools, and cloud functions.  
- Supports high-performance and strongly typed integration with Nexus services.

### 4. `sdk-rust/`
- Rust SDK for developers seeking performance and safety.  
- Provides bindings to API endpoints and local AI utilities.

### 5. `sdk-java/`
- Java SDK for enterprise applications and JVM-based services.  
- Supports Gradle/Maven builds and integrates with enterprise workflows.

### 6. `shared-libs/` *(optional)*
- Language-agnostic libraries or helper modules shared between SDKs.  
- Examples: common types, API clients, authentication helpers.

---

## **Getting Started**

1. Navigate to the SDK for your preferred language:
```bash
cd packages/sdk-python
````

2. Install or build the SDK locally:

```bash
pip install -e .
# or for JS/TS
npm install
```

3. Import the SDK in your project and start using Nexus APIs:

```python
from nexus_sdk import AIClient

client = AIClient(api_key="YOUR_API_KEY")
response = client.run_model("summarizer", "Hello world")
```

---

## **Guidelines for Packages**

* Follow **semantic versioning** for each package.
* Write **comprehensive README.md** for each SDK, including installation, usage, and examples.
* Ensure **unit tests** and type definitions are included in all packages.
* Maintain **API parity across languages** whenever possible.
* Keep packages **lightweight and modular**, enabling developers to consume only what they need.

---

## **Notes**

* This directory is critical for **developer adoption** and serves as the public interface to Nexus.
* Each SDK should be **self-contained, well-documented, and tested**.
* Include `.keep` files in empty directories to ensure Git tracking.
* Future packages can include CLI plugins, workflow orchestration libraries, or AI utilities.
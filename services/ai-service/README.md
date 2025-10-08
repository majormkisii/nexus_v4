# AI Service

The AI Service handles all machine learning and AI-related tasks in the Nexus platform.  
It provides APIs for model inference, embeddings, workflow orchestration, and multi-model orchestration.  

## Features
- Load and run AI models locally or via cloud providers.
- Manage workflows using LangChain or similar orchestration tools.
- Expose REST and optional GraphQL endpoints for apps, SDKs, and CLI tools.

## Getting Started
1. Navigate to the service folder:
```bash
cd services/ai-service
````

2. Install dependencies:

```bash
pip install -r requirements.txt
```

3. Run locally using Docker Compose:

```bash
docker-compose up
```

## Notes

* Uses shared libraries from `libs/` for AI utilities and logging.
* Designed for local development and easy cloud deployment.
* Include tests in `tests/` folder and follow ADRs in `docs/adr/` for architectural decisions.


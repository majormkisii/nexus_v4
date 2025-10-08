import os

# Define base project name
BASE = "nexus"

# Project tree with files
structure = {
    ".editorconfig": "",
    ".gitignore": "# Python, Node, Go, Rust, Java, etc.\n",
    ".gitattributes": "",
    "LICENSE": "MIT License\n",
    "README.md": "# Nexus\n\nThe unified AI-native, cloud-agnostic platform.\n",
    "CONTRIBUTING.md": "# Contributing\n\nGuidelines for contributing to Nexus.\n",
    "CODE_OF_CONDUCT.md": "# Code of Conduct\n\nCommunity rules and expectations.\n",
    "SECURITY.md": "# Security Policy\n\nReport vulnerabilities responsibly.\n",
    "docker-compose.yml": "version: '3.9'\nservices:\n  placeholder:\n    image: alpine\n",
    "Makefile": "init:\n\t@echo 'Bootstrapping Nexus project...'\n",
    "package.json": "{\n  \"name\": \"nexus-monorepo\",\n  \"private\": true\n}\n",
    "requirements.txt": "# Python dependencies\n",
    "go.mod": "module nexus\n\ngo 1.20\n",
    "Cargo.toml": "[package]\nname = \"nexus\"\nversion = \"0.1.0\"\n",
    "settings.gradle": "rootProject.name = 'nexus'\n",
    "tsconfig.json": "{\n  \"compilerOptions\": {\"strict\": true}\n}\n",
    ".env.example": "# Example environment variables\nPORT=8000\n",
}

# Folder tree with README.md descriptions
folders = {
    "apps": "Applications that are end-user facing, including web dashboards and UIs.",
    "apps/frontend-app": "The main frontend app built with Next.js.",
    "apps/frontend-app/public": "Static assets such as images, fonts, etc.",
    "apps/frontend-app/src": "Frontend application source code.",
    "apps/frontend-app/src/pages": "Next.js pages for routing and UI.",
    "apps/frontend-app/src/components": "Reusable UI components.",
    "apps/frontend-app/src/styles": "Global and component stylesheets.",
    "apps/admin-dashboard": "Administrative dashboard for managing the platform.",
    "services": "Microservices providing backend functionality.",
    "services/api-gateway": "API Gateway that routes requests to microservices.",
    "services/api-gateway/src": "Source code for API Gateway.",
    "services/auth-service": "Authentication and user management service.",
    "services/auth-service/src": "Source code for auth service.",
    "services/ai-service": "AI service providing inference and ML endpoints.",
    "services/ai-service/src": "Source code for AI service.",
    "services/worker-service": "Worker service for background jobs and queues.",
    "services/worker-service/src": "Source code for worker service.",
    "services/marketplace-service": "Marketplace service for extensions and plugins.",
    "services/marketplace-service/src": "Source code for marketplace service.",
    "packages": "Language-specific SDKs and developer packages.",
    "packages/sdk-python": "Python SDK for Nexus APIs.",
    "packages/sdk-python/nexus": "Python SDK source code.",
    "packages/sdk-python/tests": "Tests for Python SDK.",
    "packages/sdk-js": "JavaScript/TypeScript SDK for Nexus APIs.",
    "packages/sdk-js/src": "JS SDK source code.",
    "packages/sdk-js/tests": "Tests for JS SDK.",
    "packages/sdk-go": "Go SDK for Nexus APIs.",
    "packages/sdk-go/tests": "Tests for Go SDK.",
    "packages/sdk-rust": "Rust SDK for Nexus APIs.",
    "packages/sdk-rust/src": "Rust SDK source code.",
    "packages/sdk-rust/tests": "Tests for Rust SDK.",
    "packages/sdk-java": "Java SDK for Nexus APIs.",
    "packages/sdk-java/src": "Java SDK source code.",
    "libs": "Shared libraries used across services and apps.",
    "libs/logging": "Logging utilities.",
    "libs/config": "Configuration loader utilities.",
    "libs/db": "Database client utilities.",
    "infra": "Infrastructure as code and CI/CD setup.",
    "infra/docker": "Docker configurations.",
    "infra/k8s": "Kubernetes manifests.",
    "infra/terraform": "Terraform IaC configs.",
    "infra/ci-cd": "CI/CD pipelines and automation.",
    "infra/ci-cd/github-actions": "GitHub Actions workflows.",
    "docs": "Documentation, ADRs, and design artifacts.",
    "docs/adr": "Architecture Decision Records (MADR style).",
    "docs/architecture": "System and technical architecture documentation.",
    "docs/architecture/diagrams": "Architecture diagrams.",
    "docs/product": "Product roadmap and strategy documentation.",
    "docs/api": "API documentation and OpenAPI specs.",
    "tests": "Cross-service integration and end-to-end tests.",
    "tests/integration": "Integration tests across multiple services.",
    "tests/e2e": "End-to-end functional tests.",
}

# Stub files (e.g., code entrypoints)
stubs = {
    "apps/frontend-app/src/pages/index.tsx": "export default function Home() { return <h1>Nexus Frontend</h1>; }",
    "services/api-gateway/src/index.ts": "console.log('API Gateway running');",
    "services/auth-service/src/main.py": "print('Auth Service running')",
    "services/ai-service/src/main.py": "print('AI Service running')",
    "services/worker-service/src/worker.py": "print('Worker Service running')",
    "services/marketplace-service/src/index.ts": "console.log('Marketplace Service running');",
    "packages/sdk-python/nexus/__init__.py": "# Nexus Python SDK init\n",
    "packages/sdk-python/tests/test_basic.py": "def test_basic():\n    assert True\n",
    "packages/sdk-js/src/index.ts": "export const hello = () => 'Hello from Nexus SDK';",
    "packages/sdk-js/tests/basic.test.ts": "test('basic', () => { expect(true).toBe(true); });",
    "packages/sdk-go/sdk.go": "package sdk\n\nfunc Hello() string { return \"Hello from Nexus SDK\" }",
    "packages/sdk-go/tests/sdk_test.go": "package sdk\n\nimport \"testing\"\n\nfunc TestHello(t *testing.T) { if Hello() != \"Hello from Nexus SDK\" { t.Fail() } }",
    "packages/sdk-rust/src/lib.rs": "pub fn hello() -> &'static str { \"Hello from Nexus SDK\" }",
    "packages/sdk-rust/tests/basic.rs": "#[test]\nfn test_hello() { assert_eq!(nexus::hello(), \"Hello from Nexus SDK\"); }",
    "packages/sdk-java/src/main/java/com/nexus/sdk/App.java": "package com.nexus.sdk;\n\npublic class App { public static void main(String[] args) { System.out.println(\"Hello from Nexus SDK\"); }}",
    "libs/logging/logging.py": "def log(msg):\n    print(f\"[LOG] {msg}\")",
    "libs/config/loader.py": "def load_config():\n    return {\"debug\": True}",
    "libs/db/db_client.py": "def connect():\n    print(\"DB Connected\")",
    "infra/ci-cd/github-actions/main.yml": "name: CI\non: [push]\njobs:\n  build:\n    runs-on: ubuntu-latest\n    steps:\n      - uses: actions/checkout@v3\n",
    "docs/adr/0001-record-architecture-decisions.md": "# ADR 0001\n\nRecord architecture decisions here (MADR format).\n",
    "docs/architecture/diagrams/system-architecture.png": "",
    "docs/product/roadmap.md": "# Product Roadmap\n\nHigh-level roadmap for Nexus platform.\n",
    "docs/api/openapi.yaml": "openapi: 3.0.0\ninfo:\n  title: Nexus API\n  version: 0.1.0\npaths: {}\n",
    "tests/integration/test_integration.py": "def test_integration():\n    assert True\n",
    "tests/e2e/test_e2e.py": "def test_e2e():\n    assert True\n",
}

# TODO.md roadmap
todo_md = """# 📋 TODO: Nexus MVP Roadmap

This document outlines the immediate next steps to begin developing the Nexus MVP.  
Focus: **local-first development**, minimal cloud dependencies, and rapid prototyping.  

---

## ✅ 1. Setup & Environment
- [ ] Install Python, Node.js, Go, Rust, Java, Docker
- [ ] Setup Python venv in `services/ai-service`
- [ ] Run `npm install` in `apps/frontend-app`
- [ ] Verify Rust + Go builds

## 🖥️ 2. Frontend
- [ ] Scaffold Next.js app with TailwindCSS
- [ ] Add chat UI for AI Service
- [ ] Add auth hooks (Auth Service)

## ⚙️ 3. Backend Services
### API Gateway
- [ ] Implement Express.js routes
- [ ] Route /api/chat → AI Service
- [ ] Route /api/auth/* → Auth Service

### Auth Service
- [ ] JWT-based auth
- [ ] User model in Postgres
- [ ] Login + Register endpoints

### AI Service
- [ ] Hugging Face transformer integration
- [ ] Expose /api/ask endpoint
- [ ] OpenAI fallback
- [ ] Log interactions in Postgres

## 📦 4. SDKs
- [ ] Python + JS SDK stubs
- [ ] Add unit tests

## 🗄️ 5. Data Layer
- [ ] Postgres via Docker Compose
- [ ] Migrations (Alembic / Prisma)
- [ ] Store users + conversations

## 🔧 6. DevOps / Infra
- [ ] Update docker-compose.yml
- [ ] Add GitHub Actions (lint + test)
- [ ] Pre-commit hooks

## 🚀 7. Stretch Goals
- [ ] Minimal marketplace service
- [ ] ChromaDB for vector search
- [ ] Nexus CLI (init project)

📍 *Goal of this sprint:* Login → Chat → AI Response visible in frontend.
"""
(Path(BASE) / "TODO.md").write_text(todo_md)


def create_file(path, content=""):
    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, "w") as f:
        f.write(content)

def main():
    # Create root
    os.makedirs(BASE, exist_ok=True)

    # Create root-level files
    for file, content in structure.items():
        create_file(os.path.join(BASE, file), content)

    # Create folders + README.md
    for folder, desc in folders.items():
        folder_path = os.path.join(BASE, folder)
        os.makedirs(folder_path, exist_ok=True)
        create_file(os.path.join(folder_path, "README.md"), f"# {folder}\n\n{desc}\n")

    # Create stub files
    for file, content in stubs.items():
        create_file(os.path.join(BASE, file), content)

    # Add .keep to empty dirs
    for folder in folders:
        folder_path = os.path.join(BASE, folder)
        if not os.listdir(folder_path):
            create_file(os.path.join(folder_path, ".keep"))

    print(f"✅ Nexus monorepo scaffold created at: {BASE}/")

if __name__ == "__main__":
    main()

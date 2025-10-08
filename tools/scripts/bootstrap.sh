#!/usr/bin/env bash
set -e

BASE="nexus"

echo "🚀 Bootstrapping $BASE monorepo..."

# Helper function: create dir + README.md
make_dir() {
  dir="$1"
  desc="$2"
  mkdir -p "$BASE/$dir"
  echo "# ${dir}" > "$BASE/$dir/README.md"
  echo "" >> "$BASE/$dir/README.md"
  echo "$desc" >> "$BASE/$dir/README.md"
}

# Root-level files
mkdir -p "$BASE"
cat > "$BASE/.gitignore" <<EOF
# Ignore Python, Node, Go, Rust, Java artifacts
__pycache__/
node_modules/
target/
*.class
.DS_Store
EOF

cat > "$BASE/README.md" <<EOF
# Nexus

The unified AI-native, cloud-agnostic platform.
EOF

echo "MIT License" > "$BASE/LICENSE"
echo "# Contributing\n\nGuidelines for contributing to Nexus." > "$BASE/CONTRIBUTING.md"
echo "# Code of Conduct\n\nCommunity rules and expectations." > "$BASE/CODE_OF_CONDUCT.md"
echo "# Security Policy\n\nReport vulnerabilities responsibly." > "$BASE/SECURITY.md"
echo "version: '3.9'\nservices:\n  placeholder:\n    image: alpine" > "$BASE/docker-compose.yml"
echo "init:\n\t@echo 'Bootstrapping Nexus project...'" > "$BASE/Makefile"

# Root configs
echo "{ \"name\": \"nexus-monorepo\", \"private\": true }" > "$BASE/package.json"
echo "# Python dependencies" > "$BASE/requirements.txt"
echo "module nexus\n\ngo 1.20" > "$BASE/go.mod"
echo "[package]\nname = \"nexus\"\nversion = \"0.1.0\"" > "$BASE/Cargo.toml"
echo "rootProject.name = 'nexus'" > "$BASE/settings.gradle"
echo "{ \"compilerOptions\": {\"strict\": true} }" > "$BASE/tsconfig.json"
echo "# Example environment variables\nPORT=8000" > "$BASE/.env.example"

# Folder scaffolding
make_dir "apps" "Applications that are end-user facing, including web dashboards and UIs."
make_dir "apps/frontend-app" "The main frontend app built with Next.js."
make_dir "apps/frontend-app/public" "Static assets such as images, fonts, etc."
make_dir "apps/frontend-app/src" "Frontend application source code."
make_dir "apps/frontend-app/src/pages" "Next.js pages for routing and UI."
make_dir "apps/frontend-app/src/components" "Reusable UI components."
make_dir "apps/frontend-app/src/styles" "Global and component stylesheets."
make_dir "apps/admin-dashboard" "Administrative dashboard for managing the platform."

make_dir "services" "Microservices providing backend functionality."
make_dir "services/api-gateway" "API Gateway that routes requests to microservices."
make_dir "services/api-gateway/src" "Source code for API Gateway."
make_dir "services/auth-service" "Authentication and user management service."
make_dir "services/auth-service/src" "Source code for auth service."
make_dir "services/ai-service" "AI service providing inference and ML endpoints."
make_dir "services/ai-service/src" "Source code for AI service."
make_dir "services/worker-service" "Worker service for background jobs and queues."
make_dir "services/worker-service/src" "Source code for worker service."
make_dir "services/marketplace-service" "Marketplace service for extensions and plugins."
make_dir "services/marketplace-service/src" "Source code for marketplace service."

make_dir "packages" "Language-specific SDKs and developer packages."
make_dir "packages/sdk-python" "Python SDK for Nexus APIs."
make_dir "packages/sdk-python/nexus" "Python SDK source code."
make_dir "packages/sdk-python/tests" "Tests for Python SDK."
make_dir "packages/sdk-js" "JavaScript/TypeScript SDK for Nexus APIs."
make_dir "packages/sdk-js/src" "JS SDK source code."
make_dir "packages/sdk-js/tests" "Tests for JS SDK."
make_dir "packages/sdk-go" "Go SDK for Nexus APIs."
make_dir "packages/sdk-go/tests" "Tests for Go SDK."
make_dir "packages/sdk-rust" "Rust SDK for Nexus APIs."
make_dir "packages/sdk-rust/src" "Rust SDK source code."
make_dir "packages/sdk-rust/tests" "Tests for Rust SDK."
make_dir "packages/sdk-java" "Java SDK for Nexus APIs."
make_dir "packages/sdk-java/src" "Java SDK source code."

make_dir "libs" "Shared libraries used across services and apps."
make_dir "libs/logging" "Logging utilities."
make_dir "libs/config" "Configuration loader utilities."
make_dir "libs/db" "Database client utilities."

make_dir "infra" "Infrastructure as code and CI/CD setup."
make_dir "infra/docker" "Docker configurations."
make_dir "infra/k8s" "Kubernetes manifests."
make_dir "infra/terraform" "Terraform IaC configs."
make_dir "infra/ci-cd" "CI/CD pipelines and automation."
make_dir "infra/ci-cd/github-actions" "GitHub Actions workflows."

make_dir "docs" "Documentation, ADRs, and design artifacts."
make_dir "docs/adr" "Architecture Decision Records (MADR style)."
make_dir "docs/architecture" "System and technical architecture documentation."
make_dir "docs/architecture/diagrams" "Architecture diagrams."
make_dir "docs/product" "Product roadmap and strategy documentation."
make_dir "docs/api" "API documentation and OpenAPI specs."

make_dir "tests" "Cross-service integration and end-to-end tests."
make_dir "tests/integration" "Integration tests across multiple services."
make_dir "tests/e2e" "End-to-end functional tests."

# Stub source files
echo "export default function Home() { return <h1>Nexus Frontend</h1>; }" > "$BASE/apps/frontend-app/src/pages/index.tsx"
echo "console.log('API Gateway running');" > "$BASE/services/api-gateway/src/index.ts"
echo "print('Auth Service running')" > "$BASE/services/auth-service/src/main.py"
echo "print('AI Service running')" > "$BASE/services/ai-service/src/main.py"
echo "print('Worker Service running')" > "$BASE/services/worker-service/src/worker.py"
echo "console.log('Marketplace Service running');" > "$BASE/services/marketplace-service/src/index.ts"

# SDK stubs
echo "# Nexus Python SDK init" > "$BASE/packages/sdk-python/nexus/__init__.py"
echo "def test_basic():\n    assert True" > "$BASE/packages/sdk-python/tests/test_basic.py"
echo "export const hello = () => 'Hello from Nexus SDK';" > "$BASE/packages/sdk-js/src/index.ts"
echo "test('basic', () => { expect(true).toBe(true); });" > "$BASE/packages/sdk-js/tests/basic.test.ts"
echo "package sdk\n\nfunc Hello() string { return \"Hello from Nexus SDK\" }" > "$BASE/packages/sdk-go/sdk.go"
echo "package sdk\n\nimport \"testing\"\n\nfunc TestHello(t *testing.T) { if Hello() != \"Hello from Nexus SDK\" { t.Fail() } }" > "$BASE/packages/sdk-go/tests/sdk_test.go"
echo "pub fn hello() -> &'static str { \"Hello from Nexus SDK\" }" > "$BASE/packages/sdk-rust/src/lib.rs"
echo "#[test]\nfn test_hello() { assert_eq!(nexus::hello(), \"Hello from Nexus SDK\"); }" > "$BASE/packages/sdk-rust/tests/basic.rs"
mkdir -p "$BASE/packages/sdk-java/src/main/java/com/nexus/sdk"
echo "package com.nexus.sdk;\n\npublic class App { public static void main(String[] args) { System.out.println(\"Hello from Nexus SDK\"); }}" > "$BASE/packages/sdk-java/src/main/java/com/nexus/sdk/App.java"

# Lib stubs
echo "def log(msg):\n    print(f\"[LOG] {msg}\")" > "$BASE/libs/logging/logging.py"
echo "def load_config():\n    return {\"debug\": True}" > "$BASE/libs/config/loader.py"
echo "def connect():\n    print(\"DB Connected\")" > "$BASE/libs/db/db_client.py"

# Infra stubs
echo "name: CI\non: [push]\njobs:\n  build:\n    runs-on: ubuntu-latest\n    steps:\n      - uses: actions/checkout@v3" > "$BASE/infra/ci-cd/github-actions/main.yml"

# Docs stubs
echo "# ADR 0001\n\nRecord architecture decisions here (MADR format)." > "$BASE/docs/adr/0001-record-architecture-decisions.md"
touch "$BASE/docs/architecture/diagrams/system-architecture.png"
echo "# Product Roadmap\n\nHigh-level roadmap for Nexus platform." > "$BASE/docs/product/roadmap.md"
echo "openapi: 3.0.0\ninfo:\n  title: Nexus API\n  version: 0.1.0\npaths: {}" > "$BASE/docs/api/openapi.yaml"

# Tests stubs
echo "def test_integration():\n    assert True" > "$BASE/tests/integration/test_integration.py"
echo "def test_e2e():\n    assert True" > "$BASE/tests/e2e/test_e2e.py"

# TODO.md roadmap
cat > "$BASE/TODO.md" <<'EOF'
# 📋 TODO: Nexus MVP Roadmap

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

EOF



echo "✅ Nexus monorepo scaffold created at: $BASE/"

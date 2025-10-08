# 📋 TODO: Nexus MVP Roadmap

This document outlines the immediate next steps to begin developing the Nexus MVP.
Focus: **local-first development**, minimal cloud dependencies, and rapid prototyping.

---

## ✅ 1. Setup & Environment

* [ ] Install core dependencies:

  * Python 3.10+
  * Node.js 18+ + npm or pnpm
  * Go 1.20+
  * Rust (stable via `rustup`)
  * Java 17 (Gradle pre-installed if possible)
  * Docker + Docker Compose
* [ ] Create a Python virtual environment (`venv`) in `services/ai-service`.
* [ ] Install Node.js deps in `apps/frontend-app` (`npm install` or `pnpm install`).
* [ ] Verify Rust + Go builds with `cargo build` and `go build`.

---

## 🖥️ 2. Frontend (apps/frontend-app)

* [ ] Scaffold Next.js app with TailwindCSS (replace stub index page).
* [ ] Add a **Chat UI** for interacting with the AI service (simple text box + response area).
* [ ] Add authentication hooks (stub integration with `auth-service`).

---

## ⚙️ 3. Backend Services (services/)

### **API Gateway**

* [ ] Implement request routing (Express.js / Node).
* [ ] Define OpenAPI spec in `docs/api/openapi.yaml`.
* [ ] Route `/api/chat` → AI Service, `/api/auth/*` → Auth Service.

### **Auth Service**

* [ ] Implement FastAPI or Express.js service with JWT-based auth.
* [ ] Create user model in Postgres (Render free tier or local).
* [ ] Add login + register endpoints.

### **AI Service**

* [ ] Integrate Hugging Face transformer (e.g., `distilbert-base-uncased`).
* [ ] Expose `/api/ask` endpoint.
* [ ] Add fallback to OpenAI API (free credits only).
* [ ] Store interaction logs in Postgres.

---

## 📦 4. SDKs (packages/)

* [ ] Python SDK: connect to API Gateway (`requests` wrapper).
* [ ] JS/TS SDK: simple `fetch` wrapper to call `/api/chat`.
* [ ] Add unit tests for SDKs (pytest / jest).

---

## 🗄️ 5. Data Layer

* [ ] Set up **PostgreSQL** locally via Docker Compose.
* [ ] Add basic migration system (Alembic for Python / Prisma for Node).
* [ ] Store: users (auth), conversations (AI).

---

## 🔧 6. DevOps / Infra

* [ ] Update `docker-compose.yml` to run all services locally.
* [ ] Add GitHub Actions workflow for CI (lint + test each service).
* [ ] Add pre-commit hooks (black for Python, eslint for JS/TS, gofmt, cargo fmt).

---

## 🚀 7. Stretch Goals (Phase 1)

* [ ] Minimal marketplace service: load “tools” into LangChain pipelines.
* [ ] Add ChromaDB for vector search.
* [ ] AI Copilot CLI: `nexus-cli init` (Node or Python).

---

## 📌 Development Principles

1. **Local-first** → all services must run on laptop via Docker Compose.
2. **Polyglot** → each SDK must demonstrate multi-language support.
3. **Composable** → services are independent, connected via API Gateway.
4. **Extensible** → keep code modular for future marketplace integration.

---

📍 *Goal of this sprint:* Have a **working demo** where a user can log in → send a chat → receive AI response → view it in frontend.

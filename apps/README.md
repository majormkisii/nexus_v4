# Apps Directory

The `apps/` directory contains all the applications that are part of the Nexus platform.  
These applications serve different audiences (business users, developers, administrators) and demonstrate the full capabilities of the platform, including AI workflows, SDK integrations, marketplaces, and dashboards.

Each app is **self-contained**, but they share common libraries and SDKs from the `packages/` folder. Most apps are built with **Next.js + TailwindCSS** (frontend apps) or lightweight frameworks suitable for their purpose.

---

## **Applications Overview**

### 1. `frontend-app`
The main business-facing dashboard for Nexus.  
- Provides AI chat, analytics, and workflow management.
- Target audience: SMBs and enterprise users.
- Tech: Next.js, TailwindCSS.

### 2. `developer-portal`
Portal for developers to explore SDKs, API docs, and manage API keys.  
- Target audience: external and internal developers.
- Tech: Next.js, TypeScript, GraphQL playground.

### 3. `marketplace-app`
Demonstrates the plugin and AI App Store concept.  
- Users can browse, install, and manage AI extensions.
- Shows the extensibility and composability of Nexus.

### 4. `admin-dashboard`
Internal dashboard for administrators.  
- Monitors services, usage analytics, and user management.
- Provides metrics and operational insights.

### 5. `cli-web-dashboard`
A visual companion for the Nexus CLI.  
- Allows visualization of AI pipelines and workflow execution.
- Simplifies onboarding for less technical users.

### 6. `sandbox-app`
Experimental playground for testing AI models, SDKs, and features.  
- Safe environment for prototyping without affecting production.
- Useful for rapid iteration and experimentation.

### 7. `cli`
Command-line interface for power users and automation.  
- Provides access to AI services, workflows, and API features from the terminal.
- Fully scriptable and integrates with CI/CD pipelines.

---

## **Folder Conventions**

- Each app contains a `README.md` explaining its purpose and usage.
- Include a `.keep` file if the folder is empty, to ensure it is tracked by git.
- Frontend apps are typically built with Next.js and Tailwind, but experimental apps may use other frameworks.
- Apps may share code and SDKs from the `packages/` directory.

---

## **Getting Started**

1. Clone the `nexus/` repo:
```bash
git clone <repo-url>
cd nexus
````

2. Install dependencies for the app you want to work on:

```bash
cd apps/frontend-app
npm install
```

3. Run the app locally:

```bash
npm run dev
```

4. For CLI or backend-integrated apps, ensure **local services** are running via Docker Compose:

```bash
docker-compose up
```

5. Refer to the app’s individual `README.md` for specific instructions.

---

## **Development Guidelines**

* Use shared SDKs and libraries from `packages/` wherever possible.
* Follow coding conventions and linting rules as defined in `.editorconfig` and `.prettierrc`.
* Write tests for new features, and update docs accordingly.
* Keep apps modular for easier scaling, deployment, and multi-cloud support.
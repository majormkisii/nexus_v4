# Infrastructure Directory

The `infra/` directory contains all infrastructure-as-code (IaC) and deployment-related configuration for the Nexus platform.  
It is designed to support **local development, cloud deployments, and future multi-cloud expansion**, while keeping costs low during early development.

---

## **Subdirectories Overview**

### 1. `docker/`
- Contains **Dockerfiles, Docker Compose files, and container configurations** for all services.  
- Used for **local development** and testing microservices in isolated environments.  
- Ensures consistent environments across different developer machines.

### 2. `k8s/`
- Contains **Kubernetes manifests** for deploying services to a cluster (Minikube, k3d, or cloud).  
- Includes deployment, service, config map, and ingress YAML files.  
- Supports multi-service orchestration and scaling.

### 3. `terraform/`
- Contains **Terraform configurations** for provisioning cloud infrastructure.  
- Initially minimal to support free-tier services, but designed for future expansion.  
- Can manage databases, cloud services, storage, networking, and secrets.

### 4. `scripts/` *(optional)*
- Helper scripts for **deployments, infrastructure bootstrapping, or cleanup**.  
- Examples: `deploy.sh`, `destroy.sh`, `migrate-db.sh`.

---

## **Getting Started**

1. **Local Development with Docker**
```bash
cd infra/docker
docker-compose up
````

* Spins up PostgreSQL, AI Service, Auth Service, and any other local dependencies.

2. **Optional Local Kubernetes**

```bash
cd infra/k8s
kubectl apply -f .
```

* Deploy services on Minikube or k3d for testing production-like orchestration.

3. **Terraform Cloud Deployments**

```bash
cd infra/terraform
terraform init
terraform apply
```

* Provision cloud resources when ready to test multi-cloud deployments.

---

## **Infrastructure Guidelines**

* Keep **local-first** philosophy: everything should run on a laptop with minimal cloud dependency.
* Use **modular Terraform and Kubernetes manifests** so services can be added or removed independently.
* Keep **environment variables and secrets** in `.env` files or a secure vault; never commit sensitive keys.
* Maintain **versioned infrastructure configurations** alongside code to ensure reproducibility.
* Document all infrastructure decisions in `docs/adr/` to maintain historical context.

---

## **Notes**

* This directory is the backbone of the platform’s deployment and operations.
* All scripts, manifests, and IaC should aim to **simplify local development and early-stage deployment**, while being scalable to enterprise-ready cloud environments.
* Include `.keep` files in empty directories to ensure Git tracks them.
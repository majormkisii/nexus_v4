# Deployment Tools

This folder contains scripts and utilities for deploying Nexus services and apps.  
Supports local, staging, and cloud deployments using Docker, Kubernetes, and Terraform.

## Purpose
- Automate deployment workflows for microservices, apps, and SDKs.  
- Handle environment configuration, secrets, and infrastructure provisioning.  
- Integrate with CI/CD pipelines for consistent releases.

## Usage
```bash
./deploy.sh service ai-service
# or via Makefile targets
make deploy-service SERVICE=auth-service
````

## Notes

* Designed to be modular and extendable for multi-cloud deployments.
* Keep scripts idempotent and reversible for safe deployments.

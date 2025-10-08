# Scaffold Tools

This folder contains scripts and utilities for **scaffolding new apps, services, libraries, or packages** in the Nexus monorepo.  
Helps standardize project structure, boilerplate code, and initial configuration.  

## Purpose
- Quickly generate new microservices, SDKs, or apps with consistent folder structure.  
- Include default README.md, .keep files, and base configurations.  
- Reduce manual setup and onboarding time for new developers.

## Usage
```bash
python scaffold.py create service <service-name>
# or
./bootstrap.sh scaffold <app-name>
````

## Notes

* Keep scaffolding templates **up-to-date** with repo structure changes.
* Encourage contributors to use scaffold tools to maintain consistency.

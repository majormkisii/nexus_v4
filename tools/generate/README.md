# Code Generation Tools

This folder contains scripts for **auto-generating code, SDKs, documentation, or configuration files**.  
Examples include generating OpenAPI client SDKs, GraphQL types, or README stubs.

## Purpose
- Reduce repetitive manual coding tasks.  
- Ensure consistency across SDKs, services, and documentation.  
- Support polyglot code generation for multiple languages (Python, JS/TS, Go, Rust, Java).

## Usage
```bash
python generate.py sdk python
# or
./generate.sh docs api
````

## Notes

* Generated code should be reviewed before committing.
* Include versioning to track changes in generated artifacts.
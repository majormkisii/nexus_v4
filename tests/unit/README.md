# Unit Tests

This folder contains **unit tests** for the Nexus platform.  
Unit tests focus on **isolated components**, ensuring that individual functions, methods, or modules behave as expected.

## Purpose
- Verify the correctness of individual units of code (functions, classes, modules).  
- Detect regressions early during development.  
- Ensure that shared libraries, SDKs, and services remain reliable.

## Guidelines
1. Each test should **focus on a single unit of functionality**.  
2. Use **mocks and stubs** for external dependencies to isolate the unit under test.  
3. Follow consistent naming conventions, e.g., `test_<module>.py` or `<module>.test.ts`.  
4. Maintain high test coverage, especially for core libraries (`libs/`) and SDKs (`packages/`).

## Running Unit Tests
### Python Example
```bash
pytest tests/unit
````

### JavaScript / TypeScript Example

```bash
npx jest tests/unit
```

### Go Example

```bash
go test ./tests/unit/...
```

## Notes

* Unit tests are **fast and frequent**, making them ideal for local development and CI/CD pipelines.
* They complement integration and end-to-end tests by ensuring **foundational correctness**.
* Include meaningful assertions and keep tests independent and deterministic.
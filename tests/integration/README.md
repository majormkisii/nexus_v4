# Integration Tests

This folder contains **integration tests** for the Nexus platform.  
Integration tests validate the interaction between multiple components, services, or modules to ensure they work together as expected.

## Purpose
- Verify that microservices, SDKs, and apps communicate correctly through APIs and shared libraries.  
- Test database interactions, messaging queues, and workflow orchestration.  
- Ensure that combined components meet functional and non-functional requirements.

## Guidelines
1. Focus on testing the **interoperability of components**, rather than isolated logic (which belongs in unit tests).  
2. Use **mocked external dependencies** when full end-to-end testing is unnecessary.  
3. Structure tests to be **repeatable and maintainable**, using shared fixtures from `tests/utils`.  
4. Include clear naming conventions, e.g., `test_<service>_integration.py` or `<service>.integration.test.ts`.

## Running Integration Tests
### Python Example
```bash
pytest tests/integration
````

### JavaScript / TypeScript Example

```bash
npx jest tests/integration
```

### Go Example

```bash
go test ./tests/integration/...
```

## Notes

* Integration tests are **critical for detecting issues that arise when components interact**.
* They should be included in CI/CD pipelines to catch regressions early.
* Keep tests **fast but meaningful**, balancing thoroughness with developer productivity.

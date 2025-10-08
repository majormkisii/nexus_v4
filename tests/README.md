# Tests Directory

The `tests/` directory contains all **automated tests** for the Nexus platform.  
It ensures that all applications, services, and libraries work as expected and maintain high-quality standards as the project evolves.  

This directory supports **unit tests, integration tests, end-to-end (E2E) tests, and utility tests** across all languages and services in the monorepo.

---

## **Structure Overview**

- `unit/` – Tests for individual functions, classes, or modules.  
- `integration/` – Tests that validate interactions between multiple components or services.  
- `e2e/` – End-to-end tests that simulate real-world usage scenarios across apps and services.  
- `utils/` – Test utilities, mocks, and shared fixtures.

---

## **Guidelines**

1. **Write tests alongside code**  
   - When adding a new feature, create corresponding tests in the appropriate folder.

2. **Use consistent naming conventions**  
   - Example: `test_<module_name>.py` for Python, `<module>.test.ts` for TypeScript.

3. **Keep tests isolated**  
   - Each test should be independent to ensure reliable results.

4. **Shared utilities**  
   - Place reusable mocks, fixtures, or helper functions in `utils/`.

5. **Polyglot support**  
   - Tests can be written in multiple languages depending on the package or service (Python, TS/JS, Go, Rust, Java).

---

## **Running Tests**

### **Python**
```bash
# Run all Python tests
pytest tests/unit
pytest tests/integration
pytest tests/e2e
````

### **JavaScript / TypeScript**

```bash
# Run JS/TS tests (frontend or SDK)
npm test
# Or for a specific folder
npx jest tests/unit
```

### **Go**

```bash
# Run all Go tests
go test ./...
```

### **Rust**

```bash
# Run all Rust tests
cargo test
```

### **Java**

```bash
# Run all Java tests with Gradle
./gradlew test
```

---

## **Best Practices**

* Write **tests first** for critical features when possible (TDD approach).
* Ensure **coverage across all microservices, apps, SDKs, and shared libraries**.
* Document test purpose in **README.md** files within subdirectories if needed.
* Integrate tests into **CI/CD pipelines** to catch regressions early.
* Keep tests **fast, deterministic, and maintainable**.

---

## **Notes**

* All test folders should include `.keep` files if empty, to ensure Git tracking.
* The `tests/` directory is central to maintaining **platform reliability, stability, and confidence** for developers, businesses, and stakeholders.
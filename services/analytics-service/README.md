# Analytics Service

The Analytics Service collects usage metrics, logs, and AI model performance data.  
Provides dashboards and API endpoints for admins and business users.

## Features
- Track AI model usage and performance.
- Aggregate system logs and events.
- Provide analytics APIs and dashboards.

## Getting Started
1. Navigate to the service folder:
```bash
cd services/analytics-service
````

2. Install dependencies:

```bash
pip install -r requirements.txt
```

3. Run locally:

```bash
docker-compose up
```

## Notes

* Leverages `libs/utils` and `libs/logging` for metrics and logs.
* Designed for modular integration with all other services.
* Ensure data privacy and compliance when storing usage metrics.
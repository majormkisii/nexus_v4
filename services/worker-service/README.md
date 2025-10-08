# Worker Service

The Worker Service handles **asynchronous tasks and background processing** for the Nexus platform.  
It offloads heavy computations, AI workflows, scheduled jobs, and long-running processes from synchronous services.

## Features
- Process queued AI inference and workflow tasks asynchronously.
- Execute scheduled jobs, batch processing, and data transformations.
- Integrate with message queues or task brokers (e.g., Redis, RabbitMQ, or Celery).
- Monitor task execution status, retries, and failure handling.

## Getting Started
1. Navigate to the service folder:
```bash
cd services/worker-service
````

2. Install dependencies:

```bash
pip install -r requirements.txt
```

3. Run locally using Docker Compose:

```bash
docker-compose up
```

4. Configure message broker URL and worker concurrency via `.env`.

## Notes

* Integrates closely with `ai-service`, `workflow-service`, and `data-service` for task execution.
* Designed to scale horizontally; multiple worker instances can run in parallel.
* Include unit and integration tests in the `tests/` folder to verify job processing and error handling.
* Task scheduling and retry policies should be documented in `docs/dev-notes/`.
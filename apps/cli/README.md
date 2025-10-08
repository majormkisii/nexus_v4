### **`apps/cli/README.md`**

# Nexus CLI

The Nexus CLI is a command-line interface for interacting with the Nexus platform.  
It provides developers and power users direct access to AI services, pipelines, and platform workflows via terminal commands.  
The CLI is designed for automation, scripting, and advanced usage without requiring a browser.

## Features

- Run AI models and workflows directly from the terminal.
- Access and manage user accounts and API keys.
- Execute tasks locally or remotely using Nexus services.
- Integrate easily into CI/CD pipelines or developer scripts.
- Provides quick access to analytics, logs, and history.

## Example Commands

```bash
# Run an AI model
nexus run-model --name summarizer --input "Hello world"

# View conversation history
nexus history --user bob

# List available AI workflows
nexus workflows list

# Deploy a workflow
nexus workflows deploy --file my_pipeline.yaml

# Manage API keys
nexus auth login
nexus auth logout
````

## Comparison to CLI Web Dashboard

While the CLI Web Dashboard provides a visual interface for these same commands, the CLI is:

* Lightweight and scriptable.
* Ideal for automation and batch processing.
* Fully functional in any terminal or server environment without a browser.

## Getting Started

1. Ensure Python 3.10+ is installed (or your preferred CLI language runtime).
2. Install the CLI package locally (once available in `packages/sdk-python` or via pip).
3. Run `nexus --help` to see available commands and options.
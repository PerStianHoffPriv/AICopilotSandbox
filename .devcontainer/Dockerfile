FROM mcr.microsoft.com/devcontainers/javascript-node:24-bookworm

# Nyttige verktøy for vibe coding mot REST API-er
RUN apt-get update && apt-get install -y --no-install-recommends \
      jq \
      curl \
      python3 \
      python3-pip \
      python3-venv \
    && rm -rf /var/lib/apt/lists/*

# GitHub Copilot CLI (offisiell npm-pakke)
RUN npm install -g @github/copilot

USER node
WORKDIR /workspaces/sandbox

FROM mcr.microsoft.com/devcontainers/javascript-node:24-bookworm

# Nyttige verktøy for vibe coding mot REST API-er
# gnome-keyring + dbus-x11 gir en ekte keyring-tjeneste inne i containeren
# slik at Copilot CLI kan lagre auth-tokenet kryptert (ikke i klartekst)
# Legg til GitLab CLI (glab) via offisiell packagecloud-repo
RUN curl -s https://packagecloud.io/install/repositories/gitlab/cli/script.deb.sh | bash

RUN apt-get update && apt-get install -y --no-install-recommends \
      jq \
      curl \
      python3 \
      python3-pip \
      python3-venv \
      gnome-keyring \
      dbus-x11 \
      gitlab-cli \
    && rm -rf /var/lib/apt/lists/*

# GitHub Copilot CLI (offisiell npm-pakke)
RUN npm install -g @github/copilot

USER node
WORKDIR /workspaces/sandbox

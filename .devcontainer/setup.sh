#!/usr/bin/env bash
set -euo pipefail

# Skriv en vennlig velkomstmelding som vises hver gang deltakeren åpner terminalen.
# Idempotent: sjekk om meldingen allerede finnes før vi legger den til.
if ! grep -q "Copilot CLI Sandbox" ~/.bashrc 2>/dev/null; then
  cat >> ~/.bashrc <<'EOF'

echo ""
echo "  Velkommen til Copilot CLI Sandbox"
echo ""
echo "  1. Kjør:   copilot"
echo "  2. Følg device-login i nettleseren"
echo "  3. Vibe code i vei!"
echo ""
echo "  Trygg sone: AI-en kan ikke se eller endre filer på din egen maskin."
echo "  Nullstille alt: Cmd/Ctrl+Shift+P -> 'Dev Containers: Rebuild Container Without Cache'"
echo ""
EOF
fi

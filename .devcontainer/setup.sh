#!/usr/bin/env bash
set -euo pipefail

# Skriv en vennlig velkomstmelding som vises hver gang deltakeren åpner terminalen.
# Idempotent: sjekk om meldingen allerede finnes før vi legger den til.
if ! grep -q "Copilot CLI Sandbox" ~/.bashrc 2>/dev/null; then
  cat >> ~/.bashrc <<'EOF'

# Start gnome-keyring én gang per container-sesjon og del env-variablene
# via en fil i /tmp, slik at alle terminaler bruker samme keyring-instans.
_keyring_env="/tmp/.copilot-keyring-env-$UID"
if [ ! -f "$_keyring_env" ]; then
  dbus-launch --sh-syntax 2>/dev/null > "$_keyring_env" || true
  printf '\n' | gnome-keyring-daemon --unlock --start --components=secrets \
    2>/dev/null >> "$_keyring_env" || true
fi
# shellcheck disable=SC1090
source "$_keyring_env" 2>/dev/null || true
unset _keyring_env

echo ""
echo "  Velkommen til Copilot CLI Sandbox"
echo ""
echo "  1. Kjør:   copilot auth login"
echo "  2. Følg device-login i nettleseren (kun første gang per container)"
echo "  3. Vibe code i vei!"
echo ""
echo "  Trygg sone: AI-en kan ikke se eller endre filer på din egen maskin."
echo "  Nullstille alt: Cmd/Ctrl+Shift+P -> 'Dev Containers: Rebuild Container Without Cache'"
echo ""
EOF
fi

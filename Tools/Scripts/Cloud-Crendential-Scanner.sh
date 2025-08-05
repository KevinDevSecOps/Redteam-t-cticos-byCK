#!/bin/bash
# Escanea credenciales expuestas en repositorios Git para cloud.
# Uso: ./Cloud-Credential-Scanner.sh /ruta/al/proyecto

PATTERNS=(
    "AKIA[0-9A-Z]{16}"                  # AWS Access Key
    "https://hooks.slack.com/services/"  # Slack Webhooks
)

for pattern in "${PATTERNS[@]}"; do
    grep -r -n --color=auto "$pattern" "$1"
done


Uso:

chmod +x Cloud-Credential-Scanner.sh
./Cloud-Credential-Scanner.sh ~/proyectos/

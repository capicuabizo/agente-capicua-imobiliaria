#!/usr/bin/env bash
set -e

# Render establece $PORT y espera que la app escuche ahí.
# n8n usa N8N_PORT, así que lo mapeamos.
export N8N_PORT="${PORT:-5678}"
export N8N_HOST="0.0.0.0"

# Aseguramos la carpeta de datos (si luego montas disco, aquí irá).
mkdir -p /home/node/.n8n

exec n8n start

#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

if command -v python3 >/dev/null 2>&1; then
  PYTHON=python3
elif command -v python >/dev/null 2>&1; then
  PYTHON=python
else
  echo "No se encontro Python. Instala Python 3.10 o superior y vuelve a intentarlo."
  exit 1
fi

if [ ! -x .venv/bin/python ]; then
  echo "Creando el entorno local..."
  "$PYTHON" -m venv .venv
fi

if [ ! -f .venv/.entorno-listo ]; then
  echo "Instalando dependencias por primera vez..."
  .venv/bin/python -m pip install --upgrade pip
  .venv/bin/python -m pip install -r requirements.txt
  touch .venv/.entorno-listo
else
  echo "Dependencias listas."
fi

echo "Abriendo JupyterLab. Para detenerlo, presiona Ctrl+C."
exec .venv/bin/python -m jupyter lab --notebook-dir=.

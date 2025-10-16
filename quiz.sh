#!/usr/bin/env bash
set -euo pipefail

# Ubicación del directorio del script (para ejecutar sub-scripts desde cualquier ruta)
SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"

# Cargar utilidades compartidas
# shellcheck disable=SC1091
source "$SCRIPT_DIR/utils.sh"

mostrar_menu() {
  clear
  cat <<'MENU'
QUIZ MATEMÁTICO
1) Problemas de suma
2) Problemas de resta
3) Problemas de multiplicación
4) Problemas de división
9) Salir
MENU
  echo -n "Opción -> "
}

while true; do
  mostrar_menu
  read -r opcion

  if [[ ! "$opcion" =~ ^[1-49]$ ]]; then
    echo "Opción inválida. Por favor, elige 1, 2, 3, 4 o 9."
    pause
    continue
  fi

  case "$opcion" in
    1) bash "$SCRIPT_DIR/suma.sh" ;;
    2) bash "$SCRIPT_DIR/resta.sh" ;;
    3) bash "$SCRIPT_DIR/multiplicacion.sh" ;;
    4) bash "$SCRIPT_DIR/division.sh" ;;
    9) echo "¡Chaooooooo!"; exit 0 ;;
    *) echo "Opción inválida."; pause ;;
  esac
done

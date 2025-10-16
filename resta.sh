#!/usr/bin/env bash
set -euo pipefail
SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
# shellcheck disable=SC1091
source "$SCRIPT_DIR/utils.sh"

clear
echo "→ Problemas de RESTA"
a=$(rand_en_rango 0 100)
b=$(rand_en_rango 0 100)

# Asegurar resultado no negativo
if (( a < b )); then
  tmp="$a"; a="$b"; b="$tmp"
fi

respuesta_correcta=$((a - b))
echo "¿Cuánto es $a - $b ? (Tienes 3 intentos)"
intentos=3

while (( intentos > 0 )); do
  echo -n "Tu respuesta: "
  ans=$(leer_entero)
  if (( ans == respuesta_correcta )); then
    echo "¡Correcto!"
    pause
    exit 0
  else
    ((intentos--))
    if (( intentos > 0 )); then
      echo "Incorrecto. Te quedan $intentos intento(s)."
    fi
  fi
done

echo "La respuesta correcta era: $respuesta_correcta"
pause

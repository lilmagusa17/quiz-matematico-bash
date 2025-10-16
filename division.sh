#!/usr/bin/env bash
set -euo pipefail
SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
# shellcheck disable=SC1091
source "$SCRIPT_DIR/utils.sh"

clear
echo "→ Problemas de DIVISIÓN (resultado entero asegurado)"
a=$(rand_en_rango 1 10)   # será el cociente esperado
b=$(rand_en_rango 1 10)   # será el divisor
dividendo=$((a * b))
divisor=$b
respuesta_correcta=$a

echo "¿Cuánto es $dividendo / $divisor ? (Tienes 3 intentos)"
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

echo "🧠 La respuesta correcta era: $respuesta_correcta"
pause

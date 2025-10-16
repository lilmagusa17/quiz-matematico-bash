#!/usr/bin/env bash
set -euo pipefail

# Lee una respuesta del usuario y valida que sea un entero (positivo o negativo).
leer_entero() {
  local entrada
  while true; do
    read -r entrada
    if [[ "$entrada" =~ ^-?[0-9]+$ ]]; then
      printf '%s\n' "$entrada"
      return 0
    fi
    echo -n "Entrada inválida. Ingresa un número entero: "
  done
}

# Pausa elegante
pause() {
  echo
  read -r -p "Presiona ENTER para continuar..." _
}

# Genera un entero aleatorio en [min, max], ambos inclusive.
# Uso: rand_en_rango 0 100
rand_en_rango() {
  local min="$1" max="$2"
  # $RANDOM da 0..32767. Normalizamos al rango requerido:
  echo $(( min + RANDOM % (max - min + 1) ))
}

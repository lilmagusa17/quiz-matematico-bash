# Quiz Matemático en Bash

- Mariana Agudelo Salazar (A00398722)
- Natalia Vargas (A00398706)

Este proyecto implementa un **quiz matemático interactivo en Bash**, con operaciones básicas de **suma, resta, multiplicación y división**.

## Descripción General

Al ejecutar el script principal `quiz.sh`, se muestra un menú con las siguientes opciones:

```

QUIZ MATEMÁTICO

1. Problemas de suma
2. Problemas de resta
3. Problemas de multiplicación
4. Problemas de división
5. Salir
   Opción ->

```

Cada opción genera **números aleatorios** dentro de los rangos especificados y formula una pregunta al usuario.  
El participante tiene **3 intentos** para responder correctamente. Si no acierta, se muestra la respuesta correcta y se vuelve al menú principal.

## Requisitos

- **Sistema operativo:** Linux o macOS (también funciona en WSL o Git Bash en Windows)
- **Intérprete:** Bash (versión 4 o superior)

## Estructura de archivos

```

quiz/
├─ quiz.sh                 # Script principal con el menú
├─ utils.sh                # Funciones comunes (validación, pausa, aleatorios)
├─ suma.sh                 # Opción 1: problemas de suma
├─ resta.sh                # Opción 2: problemas de resta
├─ multiplicacion.sh       # Opción 3: problemas de multiplicación
└─ division.sh             # Opción 4: problemas de división

````

---

## Ejecución

1. **Clonar o copiar** el proyecto:

```bash
   git clone https://github.com/tuusuario/quiz-bash.git
   cd quiz-bash
````

2. **Dar permisos de ejecución**:
 ```bash
   chmod +x quiz.sh utils.sh suma.sh resta.sh multiplicacion.sh division.sh
 ```

3. **Ejecutar el quiz**:

```bash
./quiz.sh
```

## Lógica de cada opción

### 1) Suma

* Escoge dos números aleatorios entre 0 y 100.
* Pregunta: `¿Cuánto es x + y?`
* 3 intentos disponibles.

### 2) Resta

* Escoge dos números aleatorios entre 0 y 100.
* Si el segundo número es mayor, se intercambian para evitar resultados negativos.
* Pregunta: `¿Cuánto es x - y?`

### 3) Multiplicación

* Primer factor: número aleatorio entre 0 y 100.
* Segundo factor: número aleatorio entre 0 y 10.
* Pregunta: `¿Cuánto es x × y?`

### 4) División

* Se generan dos números aleatorios `a` y `b` entre 1 y 10.
* El dividendo es `a * b` y el divisor es `b`, garantizando que el resultado sea entero.
* Pregunta: `¿Cuánto es DIVIDENDO / DIVISOR?`

### 9) Salir

* Finaliza el programa con un mensaje de despedida.

## Validaciones incluidas

✅ Validación de opción de menú (solo acepta 1, 2, 3, 4 o 9).
✅ Validación de entrada numérica (solo números enteros).
✅ Tres intentos por pregunta.
✅ Muestra de respuesta correcta al fallar.
✅ Limpieza de pantalla y mensajes claros en cada ronda.

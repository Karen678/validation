# Tec-Net S.A. - Sitio con Hugo

## Prerequisites
- Hugo v0.80.0
- Git
- GNU Make

## Lifecycle
1. `build`: Genera el sitio en `./dist/`.
2. `clean`: Elimina `./dist/`.
3. `post`: Crea posts (ej: `make post POST_NAME=foo POST_TITLE="Bar"`).

## Usage
Ejecuta `make help` para ver targets disponibles.

## Build Workflow
El flujo de construcción automatizado realiza las siguientes acciones:

1. Instala todas las dependencias necesarias (Hugo, make, shellcheck)
2. Ejecuta el linter (shellcheck y otros)
3. Construye el sitio web
4. Ejecuta pruebas unitarias
5. Valida el sitio
6. Ejecuta pruebas de integración

El flujo se ejecuta:
- En cada push a la rama principal
- Diariamente a medianoche (UTC)

## Workflow de Pull Requests

1. Los desarrolladores deben crear branches desde main
2. Crear Pull Requests hacia main
3. El PR solo puede mergearse si:
   - Pasa todos los tests (lint, build, unit, integration)
   - Tiene al menos 1 aprobación
4. Al mergearse a main:
   - Se crea un draft release automático
   - Se sube el artefacto awesome-website.zip
## help: Muestra esta ayuda
help:
	@echo "Targets disponibles:"
	@echo "  build: Genera el sitio web en ./dist/"
	@echo "  clean: Elimina archivos generados"
	@echo "  post: Crea un nuevo post (usa POST_NAME y POST_TITLE)"
	@echo "  package: Crea paquete ZIP para despliegue (Tarea 2)"
	@echo "  lint: Ejecuta validaciones de código"
	@echo "  unit-tests: Ejecuta pruebas unitarias"
	@echo "  validate: Valida el sitio generado"
	@echo "  integration-tests: Ejecuta pruebas de integración"

## build: Genera el sitio web en ./dist/
build:
	@echo "Building website..."
	@hugo -d dist/

## package: Crea paquete ZIP para despliegue (Tarea 3)
package: build
	@echo "Empaquetando la aplicación..."
	@zip -r awesome-website.zip dist/ awesome-api
	@echo "Paquete creado: awesome-website.zip"

## clean: Elimina archivos generados
clean:
	@echo "Cleaning generated files..."
	@rm -rf dist/
	@rm -f awesome-website.zip

## post: Crea un nuevo post con variables POST_NAME y POST_TITLE
post:
	@hugo new posts/$(POST_NAME).md
	@sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

## lint: Ejecuta validaciones de código
lint:
	@echo "Running linters..."
	@shellcheck setup.sh || exit 1
	@markdownlint README.md DEPLOY.md || exit 1

## unit-tests: Ejecuta pruebas unitarias
unit-tests: build
	@echo "Running unit tests..."
	# Aquí irían los comandos para pruebas unitarias

## validate: Valida el sitio generado
validate: build
	@echo "Validating website..."
	# Aquí irían los comandos de validación

## integration-tests: Ejecuta pruebas de integración
integration-tests: build
	@echo "Running integration tests..."
	# Aquí irían los comandos para pruebas de integración
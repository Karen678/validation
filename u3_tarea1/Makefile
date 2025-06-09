## help: Muestra esta ayuda
help:
	@echo "Targets disponibles:"
	@echo "  build: Genera el sitio web en ./dist/"
	@echo "  clean: Elimina el directorio ./dist/"
	@echo "  post: Crea un nuevo post (usa POST_NAME y POST_TITLE)"

## build: Genera el sitio web en ./dist/
build:
	hugo -d dist/

## clean: Elimina el directorio ./dist/
clean:
	rm -rf dist/

## post: Crea un nuevo post con variables POST_NAME y POST_TITLE
post:
	hugo new posts/$(POST_NAME).md
	sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

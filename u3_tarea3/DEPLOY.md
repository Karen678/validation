# Guía de Despliegue

## Contenido del paquete
El archivo `awesome-website.zip` contiene:
- `dist/`: Sitio web estático generado por Hugo
- `awesome-api`: Binario de la API

## Descomprimir
```bash
unzip awesome-website.zip
```

## Iniciar la aplicación
```bash
./awesome-api
```

## Detener la aplicación
Presionar `Ctrl+C` en la terminal donde se ejecuta

## Configurar logs
```bash
./awesome-api --log-file /ruta/a/logs.txt
```

## Health Check
```bash
curl http://localhost:9999/health
```
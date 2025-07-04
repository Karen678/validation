# Manual de Despliegue

## Contenido del paquete
El archivo `awesome-website.zip` contiene:
- `dist/`: Sitio web estático generado por Hugo
- `awesome-api`: Binario de la API

Para descomprimir:
```bash
unzip awesome-website.zip
```

## Comandos básicos
**Iniciar la aplicación:**
```bash
./awesome-api
```

**Detener la aplicación:**
Presione `Ctrl+C` en la terminal donde se ejecuta

## Configuración de logs
Los logs se escriben por defecto en `./awesome-api.log`. Para cambiar la ubicación:

```bash
./awesome-api --log-file /ruta/alternativa.log
```

## Healthcheck
Verifique que la aplicación está funcionando con:

```bash
curl http://localhost:9999/health
```

Debería recibir una respuesta `200 OK`

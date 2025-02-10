# Actualización automática de plugins en WordPress con WP-CLI

Este script en **Bash** permite verificar y actualizar automáticamente los plugins de un sitio **WordPress Multisitio** utilizando **WP-CLI**.

## Características

- Detecta cuántos plugins tienen actualizaciones disponibles.
- Si hay actualizaciones, las instala automáticamente.
- Si todos los plugins están actualizados, muestra un mensaje indicándolo.
- Evita mostrar advertencias innecesarias en la salida del comando.

## Requisitos

Antes de ejecutar el script, asegúrate de cumplir con los siguientes requisitos:

- Tener instalado **WP-CLI** en el servidor.
- Tener acceso al usuario que tiene permisos sobre el directorio donde se encuentra Wordpress (En este caso el usuario es **multisitio**)

## Uso

Ejecuta el script manualmente con:

```bash
sudo multisitio ./update_plugins.sh
```

o tambien

```bash
bash update_plugins.sh
```

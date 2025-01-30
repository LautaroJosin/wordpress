#!/bin/bash

WORDPRESS_PATH="/var/www/wordpress/multisitio"

# Cuenta la cantidad de plugins que necesitan actualización y redirige los errores a /dev/null para evitar warnings en la salida
updates=$(wp plugin list --update=available --format=count --path="$WORDPRESS_PATH" 2>/dev/null)

if [[ $updates -gt 0 ]]; then
    echo "Se encontraron $count plugins con actualizaciones pendientes."
    echo "Iniciando actualización de plugins..."
    
    # Ejecutar la actualización de todos los plugins disponibles
    wp plugin update --all --path="$WORDPRESS_PATH"
    
    echo "Actualización completada."
else
    echo "No hay plugins que necesiten actualización."
fi

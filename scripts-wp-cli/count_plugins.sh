#!/bin/bash

WORDPRESS_PATH="/var/www/wordpress/multisitio"

# Redirigir errores a /dev/null para evitar warnings en la salida
updates=$(wp plugin list --update=available --format=csv --path="$WORDPRESS_PATH" 2>/dev/null)

# Filtrar la salida para excluir la cabecera y extraer solo los nombres de los plugins
plugin_names=$(echo "$updates" | tail -n +2 | cut -d ',' -f1)

# Contar la cantidad de plugins que necesitan actualización
count=$(echo "$plugin_names" | wc -l)

if [[ $count -gt 0 ]]; then
    echo "Plugins que necesitan actualización: $count"
    echo "Lista de plugins con actualización disponible:"
    echo "$plugin_names"
else
    echo "No hay plugins que necesiten actualización."
fi

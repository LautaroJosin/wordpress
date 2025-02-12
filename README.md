## Para levantar Wordpress

- docker-compose up

## Para cambiar permisos de Directorio Wordpress

- sudo chown -R user:group wordpress/

## Versiones de WP usadas 

- wordpress:php7.4
- wordpress:php8.2
- wordpress:php8.3

## Para eliminar Containers y Volumenes 

- docker-compose down -v

Si este comando no se ejecuta asi, es probable que quede guardado el volumen asociado al contenedor y haga falta eliminar 
el volumen a mano

## Utilizar wp-cli

- En el archivo `compose.yml` existe el servicio cli que permite ejecutar comandos de wp-cli
- Una vez que se ejecuta un comando, el container finaliza
- Para probar que funciona, puede ejecutar lo siguientes comandos : 
	- `docker exec wordpress-cli wp --info`
	-	`docker exec wordpress-cli wp core version`
- Para ejecutar un comando : `docker exec [CONTAINER NAME] [COMANDO]`


## Para activar el modo multisitio

- Agrega la siguiente línea en el archivo `wp-config.php` justo antes de la línea que dice `/* That's all, stop editing! Happy blogging. */`:
	- `define('WP_ALLOW_MULTISITE', true);`

- Luego, en el escritorio de Wordpress : `Herramientas` -> `Configuración de la red` y finalmente instalá las configuraciones necesarias

- Despues de terminar la instalación, se mostraran 2 porciones de codigo que hay que colocar en los archivos `wp-config.php` y `.htaccess` respectivamente

## Enlaces a repositorios de plugins

- `wp-dataverse-embedder` : https://github.com/sedici/wp-dataverse-embedder
- `wp-dspace` : https://github.com/sedici/wp-dspace
- `wp-personal`: https://github.com/sedici/wp-personal (Para que funcione, descomprimir el .zip)
- `wp-multisite-manager` : https://github.com/sedici/wp-multisite-manager


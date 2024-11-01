## Para levantar Wordpress

- docker-compose up

## Para eliminar Containers y Volumenes 

- docker-compose down -v

Si este comando no se ejecuta asi, es probable que quede guardado el volumen asociado al contenedor y haga falta eliminar 
el volumen a mano

## Utilizar wp-cli

- En el archivo `compose.yml` existe el servicio cli que permite ejecutar comandos de wp-cli
- Una vez que se ejecuta un comando, el container finaliza
- Para probar que funciona : `docker exec wordpress-cli wp --info`
- Para ejecutar un comando : `docker exec [CONTAINER NAME] [COMANDO]`
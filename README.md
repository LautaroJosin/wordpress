## Para levantar Wordpress

- docker-compose up

## Para eliminar Containers y Volumenes 

- docker-compose down -v

Si este comando no se ejecuta asi, es probable que quede guardado el volumen asociado al contenedor y haga falta eliminar 
el volumen a mano

## Explicación sobre Dockerfile

El archivo Dockerfile incluido permite agregar Solr al container de Wordpress

- Para levantar Wordpress e incluir Solr se debe modificar el `servicio wordpress` en el archivo `compose.yml`
- En la linea que indica `image: wordpress:latest` borrar eso y escribir `build: .` en su lugar
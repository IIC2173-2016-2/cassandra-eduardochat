# Cassandra Setup

## Instalar cassandra

1. Instalar Cassandra desde el siguiente link (ultima [versión 3.0.9](http://www.apache.org/dyn/closer.lua/cassandra/3.0.9/apache-cassandra-3.0.9-bin.tar.gz)) o clona este repositorio. En ambos casos tendrás la carpeta `apache-cassandra-3.0.9`.
- Una vez dentro de la carpeta, ejecuta cassandra para activar el servidor de la base de datos.
```
$ cd apache-cassandra-3.0.9
$ bin/cassandra -f
```
Puedes desactivar facilmente el proceso con `ctrl + c`

- En una nueva terminal, con el servidor corriendo, ejecuta `nodetool status` para conocer el estado de tus clusters

- Para utilizar la consola de cassandra
```
$ bin/cqlsh 127.0.0.1 9042
```

- Para importar el `schema` utilizado, descargar el archivo `schema.cql` y almacenar en la carpeta (saltar eso ultimo si se clono la carpeta). Luego correr el siguiente comando

```
bin/cqlsh 127.0.0.1 9042 -f 'schema.cql'
```
- Al archivo `basic.js`
contiene la forma básica para realizar las consultas. Para poder funcionar con node, se debe tener el driver de cassandra instalado.
```
$ npm install cassandra-driver
$ npm install async
```

- Check out the following link for CQL documentation https://www.tutorialspoint.com/cassandra/cassandra_quick_guide.html
- For more detaile CQL specification https://docs.datastax.com/en/cql/3.1/cql/cql_reference/create_keyspace_r.html

---------------------------------------------------------------------------

- Use `nodetool status` in order to check the status of your nodes
- Using cassandra with the python driver, use `cqlsh 146.155.13.130 9042`
- To use the node driver check out the following page https://academy.datastax.com/resources/getting-started-apache-cassandra-and-nodejs

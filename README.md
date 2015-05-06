# docker-guacamole
Run guacamole easily:

```
docker run --name some-postgres -e POSTGRES_PASSWORD=mysecretpassword -d jivank/guacdb
```

```
docker run --name some-guacd -d glyptodon/guacd
```

```
docker run --name some-guacamole \
--link some-guacd:guacd \
--link some-postgres:postgres \
-e POSTGRES_DATABASE=guacamole_db \
-e POSTGRES_USER=postgres \
-e POSTGRES_PASSWORD=mysecretpassword \
-d -p 8080:8080 glyptodon/guacamole
```
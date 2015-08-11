# nodejs-bower-php

This Dockerfile extends `evolution7/nodejs-bower-grunt` and adds php libraries on top of that. It also includes other assetic:dump requirements such as a JRE, and `uglifycss` and `uglifyjs`.
This is mainly for use in CI with projects that use Symfony2's `assetic:dump` and shouldn't be used for anything else.

The workdir is set to `/app`.

# docker-compose

It is recommended to use this with docker-compose so you can add a database to it as well as that too is required by assetic. An example usage there would be:

```
cli:
    image: evolution7/nodejs-bower-php
    command: bash -c "php /app/app/console doctrine:schema:drop --force && php /app/app/console doctrine:schema:create && php /app/app/console assetic:dump"
    links:
        - db
    volumes:
        - .:/app
db:
    image: mysql:latest
    environment:
        MYSQL_DATABASE: projectname
        MYSQL_ROOT_PASSWORD: jenkins
```


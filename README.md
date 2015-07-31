# nodejs-bower-php

This Dockerfile extends `evolution7/nodejs-bower-grunt` and adds php libraries on top of that. This is mainly for use with projects that use assetic.

The workdir is set to `/app`.

# Example uses

```
docker run --rm -v `pwd`:/app evolution7/nodejs-bower-php npm install
docker run --rm -v `pwd`:/app evolution7/nodejs-bower-php bower install
docker run --rm -v `pwd`:/app evolution7/nodejs-bower-php grunt build
```


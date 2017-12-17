# gosu-image

This is a Docker image with the [gosu][] binary in it. You can use this image in
a multi-stage build as a super-convenient way to install `gosu` into your
images.

```Dockerfile
FROM building5/gosu:1.10

FROM node
COPY --from=0 /gosu /usr/local/bin/

# Proceed to Docker as normal
```

 [gosu]: https://github.com/tianon/gosu

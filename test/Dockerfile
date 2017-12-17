FROM building5/gosu

FROM busybox
COPY --from=0 /gosu /usr/local/bin/
COPY test.sh /
CMD ["/test.sh"]

FROM alpine
RUN apk add --no-cache su-exec
ADD entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
CMD /usr/bin/env sh

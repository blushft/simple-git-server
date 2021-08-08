FROM alpine/git

RUN apk add -u git-daemon 

RUN mkdir -p /etc/scm && \
    touch /etc/scm/init.sh 

COPY entrypoint.sh /usr/bin/entrypoint.sh

RUN chmod +x /usr/bin/entrypoint.sh

EXPOSE 9418
ENTRYPOINT [ "entrypoint.sh" ]
CMD [ "daemon", "--verbose", "--enable=receive-pack", "--base-path=/git", "--export-all" ]
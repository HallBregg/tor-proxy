FROM alpine:latest
RUN apk update && \
    apk upgrade &&\
    apk add tor \
    && rm -rf /var/cache/apk/* \

EXPOSE 9050

COPY torrc.default /etc/tor/torrc.default
RUN chown -R tor /etc/tor

USER tor

ENTRYPOINT [ "tor" ]
CMD [ "-f", "/etc/tor/torrc.default" ]

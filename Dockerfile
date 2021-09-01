FROM alpine
COPY cloudflared-linux-arm cloudflared
RUN chmod a+x cloudflared
RUN mv cloudflared /usr/sbin
ENTRYPOINT [ "cloudflared" ]
CMD [ "--version" ]

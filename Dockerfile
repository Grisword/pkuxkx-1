FROM debian:testing
LABEL name="pkuxkx"
LABEL maintainer="flw <flw@cpan.org>"

ENV DEBIAN_FRONTEND noninteractive

RUN    apt-get update \
    && apt-get install -y --no-install-recommends tintin++ screen \
    && apt-get clean

ENV LANG=C \
    TERM=xterm-256color \
    PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/games

WORKDIR /root/
ADD bot /root/bot
ADD bot.sh /root/bot.sh
ADD screenrc /root/screenrc

ENTRYPOINT ["/root/bot.sh"]

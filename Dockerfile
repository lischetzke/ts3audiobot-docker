FROM debian:bullseye

RUN apt-get update -y \
    && apt-get upgrade -y \
    && apt-get install -y \
      zip \
      tar \
      ca-certificates \
      openssl \
      libssl1.1 \
      mono-runtime \
      libopus-dev \
      ffmpeg \
      wget \
      procps \
      nano \
    && mkdir -p /opt/TS3AudioBot \
    && cd /opt/TS3AudioBot \
    && wget -O TS3AudioBot.tar.gz https://github.com/Splamy/TS3AudioBot/releases/latest/download/TS3AudioBot_linux_x64.tar.gz \
    && tar -xf TS3AudioBot.tar.gz \
    && chmod +x /opt/TS3AudioBot/TS3AudioBot

#RUN mkdir -p /opt/TS3AudioBot/bots/default
#COPY data/bot.toml /opt/TS3AudioBot/bots/default/bot.toml

WORKDIR /opt/TS3AudioBot

ENTRYPOINT ["/opt/TS3AudioBot/TS3AudioBot","--stats-disabled"]
CMD ["--non-interactive"]

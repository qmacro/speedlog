FROM debian:11

RUN apt-get update \
  && apt-get install -y curl cron

RUN curl \
  --silent \
  --url "https://install.speedtest.net/app/cli/install.deb.sh" \
  | bash \
  && apt-get update \
  && apt-get install -y speedtest

WORKDIR /root/speedtest
COPY speedtest.crontab .
RUN crontab speedtest.crontab && rm speedtest.crontab

CMD ["cron", "-f"]

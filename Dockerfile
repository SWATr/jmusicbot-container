FROM openjdk:11-jre-slim

RUN mkdir -p /bot/config

#ENV JVERSION 0.4.3
#ADD https://github.com/jagrosh/MusicBot/releases/download/$JVERSION/JMusicBot-$JVERSION.jar /bot/JMusicBot.jar

ENV JVERSION 0.4.3.9
ADD https://github.com/SeVile/MusicBot/releases/download/$JVERSION/JMusicBot-$JVERSION.jar /bot/JMusicBot.jar

COPY ./docker-entrypoint.sh /bot
RUN chmod +x /bot/docker-entrypoint.sh

VOLUME /bot/

ENTRYPOINT ["/bot/docker-entrypoint.sh"]

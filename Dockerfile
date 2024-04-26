FROM openjdk:11-jre-slim

RUN mkdir -p /bot/config

#ENV JVERSION 0.4.0-on-lavaplayer-youtube-source-1.0.4
#ADD https://github.com/MichailiK/MusicBot/releases/download/$JVERSION/JMusicBot-$JVERSION.jar /bot/JMusicBot.jar

ENV JVERSION 0.3.9
#ADD https://github.com/jagrosh/MusicBot/releases/download/$JVERSION/JMusicBot-$JVERSION.jar /bot/JMusicBot.jar
RUN curl -o /bot/JMusicBot.jar -LJ "https://github.com/jagrosh/MusicBot/releases/download/$JVERSION/JMusicBot-$JVERSION.jar" 

COPY ./docker-entrypoint.sh /bot
RUN chmod +x /bot/docker-entrypoint.sh

VOLUME /bot/

ENTRYPOINT ["/bot/docker-entrypoint.sh"]

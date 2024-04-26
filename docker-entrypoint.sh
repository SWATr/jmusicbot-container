#!/bin/sh

echo "Starting JMusicBot..."
echo "Version: $JVERSION"

cd /bot/config
java -jar -Dnogui=true /bot/JMusicBot.jar

echo "Crashed or Exited!"
exit 1

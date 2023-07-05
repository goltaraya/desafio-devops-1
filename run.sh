#!/bin/bash
echo "[=============================]"
echo "[ Running docker-compose.yaml ]"
echo "[=============================]"
docker compose up -d
printf "\n\n\n"

sleep 2
echo "[===============================]"
echo "[ Showing the container running ]"
echo "[===============================]"
docker ps
printf "\n\n\n"

sleep 2
echo "[===========================================]"
echo "[ Making a request to application with curl ]"
echo "[===========================================]"
curl http://127.0.0.1/
printf "\n\n\n"

sleep 2
echo    "[=======================================]"
read -p "[ Do you wanna stop it? Enter y or n: " answer
echo    "[=======================================]"
printf "\n\n\n"


if test $answer == 'y' || test $answer == 'Y'
then
    sleep 1
    echo "[==============================]"
    echo "[ Stopping docker-compose.yaml ]"
    echo "[==============================]"
    docker compose down
fi
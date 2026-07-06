steam() {
  (
    cd /opt/container-services/steam-headless
    if [ "$1" == "stop" ]; then
      docker compose stop
      return 0
    fi
    if ! [ "$(docker compose ps --services)" == "steam-headless" ]; then
      docker compose up -d
      sleep 10
    fi
    docker exec -u 1001 steam-headless-steam-headless-1 steam
  )
}

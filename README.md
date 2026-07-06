# Steam headlesss pour environnement local (Ubuntu 24.04)

Préparation des répertoires
```
# Service
sudo mkdir -p /opt/container-services/steam-headless
sudo chown -R $(id -u):$(id -g) /opt/container-services/steam-headless
# Config
sudo mkdir -p /opt/container-data/steam-headless/home
sudo chown -R $(id -u):$(id -g) /opt/container-data/steam-headless
# Jeux
sudo mkdir /mnt/games
sudo chmod -R 777 /mnt/games
sudo chown -R $(id -u):$(id -g) /mnt/games
```

On récupére les fichiers
```
cd /opt/container-services/steam-headless
git clone git@github.com:wasapi/steam.git
```

On récupère le helper bash
```
ln -s /opt/container-services/steam-headless/bash.sh ~/.bash/steam.sh 
```

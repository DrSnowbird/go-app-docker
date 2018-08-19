# go-app-docker
[![](https://images.microbadger.com/badges/image/openkbs/go-app-docker.svg)](https://microbadger.com/images/openkbs/go-app-docker "Get your own image badge on microbadger.com") [![](https://images.microbadger.com/badges/version/openkbs/go-app-docker.svg)](https://microbadger.com/images/openkbs/go-app-docker "Get your own version badge on microbadger.com")

* Alpine golang:1.10-alpine

# Components
* golang:1.10-alpiney 

# Build & Run
Image is pulling from openkbs/go-app-docker
```
cp example/*.go ./app/
./build.sh
./run.sh
```
# Using docker-compose.yml
```
docker-compose up -d
firefox 127.0.0.1:18000
```

# Other docker-based IDE
* [openkbs/eclipse-photon-docker](https://hub.docker.com/r/openkbs/eclipse-photon-docker/)
* [openkbs/eclipse-oxygen-docker](https://hub.docker.com/r/openkbs/eclipse-oxygen-docker/)
* [openkbs/netbeans](https://hub.docker.com/r/openkbs/netbeans/)
* [openkbs/scala-ide-docker](https://hub.docker.com/r/openkbs/scala-ide-docker/)
* [openkbs/pycharm-docker](https://hub.docker.com/r/openkbs/pycharm-docker/)
* [openkbs/webstorm-docker](https://hub.docker.com/r/openkbs/webstorm-docker/)
* [openkbs/intellj-docker](https://hub.docker.com/r/openkbs/intellij-docker/)



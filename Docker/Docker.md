# Docker-compose

Compose is a tool for defining and running multi-container Docker applications.
This tool is mainly targeted for testing and developent workflows.

- [getShell](getShell.sh)

Real examples:

- [node + redis + elastic search](Node/)

You should execute all docker-compose commands where the docker-compose.yml file is placed or passing -f flag and it location.


**Run entire app**
```
docker-compose up (single service name)
```
If service name if passed only that service will start.


**Run entire app daemon mode**
```
docker-compose up -d (single service name)
```


**Re-build containers of entire app**
```
docker-compose build (single service name)
```


**Stop containers of entire app**
```
docker-compose stop (single service name)
```


**Stop whole app**
```
docker-compose stop (single service name)
```

**Remove stopped service containers (volumes are not removed)**
```
docker-compose rm (single service name)
```


**Remove stopped service containers & volumes**
```
docker-compose rm -v (single service name)
```

**Get all logs from whole app**
```
docker-compose logs -f -t
```


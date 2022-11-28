
#!/bin/bash

docker compose up -d
docker exec docker-ml-example-cuda-1 bash -c "pwd ; cd /root/projects/docker-ml-example/awesome_ml_proj ; python -m pip install . ; python main.py"

port=$(docker-compose port novnc 8080)
port=$(echo -n $port | tail -c 4)

echo Opening novnc at http://localhost:${port}

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    xdg-open http://localhost:${port}/vnc.html &
elif [[ "$OSTYPE" == "darwin"* ]]; then
    open http://localhost:${port}/vnc.html &
fi

echo Running..


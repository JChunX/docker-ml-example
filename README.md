# docker-ml-example
Example repo on setting up Docker containers for ML experiments

## Build

```bash
bash build.sh
```
or:
```bash
docker compose build
```

## Run

If you are running this example in a remote machine, 
your ssh login should look like this:

```bash
ssh -g -L <port>:localhost:8080 <username>@<ip.addr>
```

```bash
bash run.sh
```

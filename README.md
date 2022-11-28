# docker-ml-example
Tried of nuking your machine everytime Nvidia drivers break? Me too. 

Try running your experiments in a Docker container instead!

This repo shows you how to build Docker images and run containers ✅

## Build 🔨

```bash
bash build.sh
```
or:
```bash
docker compose build
```

## Run 🚀

If you are running this example in a remote machine, 
your ssh login should look like this:

`ssh -g -L <port>:localhost:8080 <username>@<ip.addr>`

Then run:

```bash
bash run.sh
```

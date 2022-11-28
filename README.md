# docker-ml-example
Tried of nuking your machine everytime NVIDIA drivers break? Me too. 

Try running your experiments in a Docker container instead!

This repo shows you how to build Docker images and run containers ✅

## Prerequisites 🐳

[NVIDIA Container Toolkit](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html)

## Build 🔨

```bash
bash build.sh
```
or:
```bash
docker compose build
```

## Run 🚀

If you are running this example in a remote machine and you want NoVNC virtual desktop, 
your ssh login should look like this:

`ssh -g -L <port>:localhost:8080 <username>@<ip.addr>`

Then run:

```bash
bash run.sh
```

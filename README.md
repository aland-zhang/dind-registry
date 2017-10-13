# dind-registry

Run a docker-in-docker (dind) open-source registry for local development.

```
$ git clone https://github.com/openfaas-incubator/dind-registry && \
  cd dind-registry && \
```

Build the local registry image:

```
$ docker build -t local-registry . && \
  docker run -p 5000:5000 --privileged local-registry
```

Now test it out: 

```
$ docker pull functions/alpine:latest
$ docker tag functions/alpine:latest localhost:5000/functions-alpine:latest
$ docker push localhost:5000/functions-alpine:latest
```

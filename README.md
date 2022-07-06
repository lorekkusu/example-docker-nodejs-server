# example-docker

example for running a node.js server on docker

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/lorekkusu/example-docker)

- ### [Docker Hub Repo](https://github.com/lorekkusu/example-docker)
- ### [GitHub Repo](https://github.com/lorekkusu/example-docker)

---

## Usage

### Build & Rrun

```shell
make build
make run
```

### Clear

```shell
make -i clear # -i --ignore-error
```

### Publish

```shell
docker login
make publish REPO=<user-name>/<image-name>
```

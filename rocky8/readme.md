# Oracle Docker Image

## Clone the project

```
ssh-keygen -f  ./lx_docker.priv
GIT_SSH_COMMAND='ssh -i ./lx_docker.priv -o IdentitiesOnly=yes' git clone git@github.com:sebcb1/lx_docker.git
cd lx_docker
git config core.sshCommand 'ssh -i /home/sebastien/lx_docker.priv -o IdentitiesOnly=yes' 
```

To build image
```
docker build -t sebcb1/rocky8:0.0.1 .
docker build --no-cache -t sebcb1/rocky8:0.0.1 .
```

To run image with sh:
```
docker run --name test --rm --entrypoint /bin/sh -t -i sebcb1/rocky8:0.0.1
```

To publish image:
```
docker login https://index.docker.io/v1/
docker push sebcb1/rocky8:0.0.1
```

## To init the keys and change the root password

```
docker run -d --name test  sebcb1/rocky8:0.0.1 start
docker exec -it test ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -b 4096 -t rsa
docker exec -it test passwd
```

## To start a container

```
docker run -d --name test  sebcb1/rocky8:0.0.1 start
```

## Supervisor

Log are available in /var/log/supervisor/supervisord.log


## Release notes

18/07/2024:
- 0.0.1: First version


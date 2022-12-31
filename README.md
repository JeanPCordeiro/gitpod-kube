[![Gitpod Ready-to-Code](https://img.shields.io/badge/Gitpod-Ready--to--Code-blue?logo=gitpod)](https://gitpod.io/from-referrer/)

# gitpod-kube
A GitPod Image for Kubernetes.
From gitpod default workspace-full image, add python libraries :
- python-dateutil
- ansible
- openshift
- kubernetes

install ansible kubernetes.core and kubectl and helm binaries.

All you need to work with Kubernetes Clusters !

To use this image, simply set your .gitpod.yml file like this :
```bash
image: jpcordeiro/gitpod-kube:latest
```


To Build and Push Image (after have set your registry account, application name and release on the Makefile) : 
```bash
make build
make push
```

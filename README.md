# Monitoring 101
A journey into the monitoring world using Prometheus + Grafana on Kubernetes

## Environment
A Kubernetes cluster running in a Docker Desktop for Mac, version 4.4.2.

## Setup
```bash
$ make monitoring.setup
$ make prom.serve
$ open localhost:9090
```

## Destroy
```bash
$ make monitoring.destroy
```

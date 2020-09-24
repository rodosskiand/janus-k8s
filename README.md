# Janus-gateway k8s

## Running:

1. Set parameters in ```janus.jcfg``` (optional)
2. Build and push docker image
3. Set parameters in ```manifests/inress-janus.yaml``` and in ```deploy-janus.yaml``` (image)
4. Apply manifests:

```bash
kubectl apply -f manifests/
```

## Problems

1. Opening range of ports in Kubernetes (example 10000-10200)
2. Scaling   
	Possible solutions:   
		a) Using sessionAffinity with LoadBalancer?   
		b) Using ```nginx.ingress.kubernetes.io/upstream-hash-by: $arg_token``` annotation for nginx ingress?   
3. Using nat1-1   
	Possible solutions:   
		a) Using tcp-proxy?   


## Docker image

Docker image based on [lklock/docker-janus-gateway](https://github.com/lklock/docker-janus-gateway)
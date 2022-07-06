monitoring.setup:
	@kubectl create namespace monitoring
	@bash setup

monitoring.destroy:
	@kubectl delete namespace monitoring

prom.serve:
	@kubectl port-forward deploy/prometheus-pod 9090:9090 \
		--namespace=monitoring

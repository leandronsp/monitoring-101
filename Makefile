monitoring.setup:
	@bash setup

monitoring.destroy:
	@kubectl delete -f namespace.yml

prom.serve:
	@kubectl -n monitoring port-forward deploy/prometheus-pod 9090:9090

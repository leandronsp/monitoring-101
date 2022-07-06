monitoring.setup:
	@bash setup

monitoring.destroy:
	@kubectl delete -f namespace.yml

prom.serve:
	@kubectl -n monitoring port-forward deploy/prometheus-pod 9090:9090

grafana.serve:
	@kubectl -n monitoring port-forward deploy/grafana-pod 3000:3000

node-exporter.serve:
	@kubectl -n monitoring port-forward svc/node-exporter-svc 9100:80

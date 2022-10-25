local grafana = import 'grafonnet/grafana.libsonnet';
local dashboard = grafana.dashboard;
local annotation = grafana.annotation;

dashboard.new(
	title='Dashboard Title',
)
.addAnnotation(
	annotation.datasource(
    name='annotation 1',
    datasource='',
	)
)

local grafana = import 'grafonnet/grafana.libsonnet';
local dashboard = grafana.dashboard;
local row = grafana.row;
local prometheus = grafana.prometheus;
local template = grafana.template;

dashboard.new(
  'Kubernetes Cluster Status',
)
.addTemplate(
  grafana.template.datasource(
    'datasource',
    'prometheus',
    'Prometheus',
    hide='label',
  )
)
.addTemplate(
  template.new(
    'namespace',
    '$datasource',
    'label_values(kube_namespace_created, namespace)',
    label='namespace',
    refresh='time',
  )
)
.addRow(
  row.new(
  )
)

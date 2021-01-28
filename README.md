# D2iQ Kommander Kibana OSS

This is a Helm v3 umbrella chart to deploy Kibana OSS in D2iQ Konvoy/Kommander.

This chart directly uses the upstream community [Kibana](https://github.com/elastic/helm-charts/tree/master/kibana) chart without modification where possible.


## Add repository to Helm

```
helm repo add kubeaddons-elastic https://mesosphere.github.io/kubeaddons-elastic/
```

## Install Helm Chart
```
helm install --generate-name .
```

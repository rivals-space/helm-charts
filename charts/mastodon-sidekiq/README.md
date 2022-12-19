# mastodon-sidekiq

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v4.0.2](https://img.shields.io/badge/AppVersion-v4.0.2-informational?style=flat-square)

Autoscaled sidekiqs for mastodon

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| emilweth | <coucou@emi.cool> |  |

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://kedacore.github.io/charts | keda | 2.9.1 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| extraEnv.env | list | `[]` |  |
| extraEnv.fromConfigMap | string | `""` |  |
| extraEnv.fromSecret | string | `""` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"tootsuite/mastodon"` |  |
| image.tag | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| keda.enabled | bool | `true` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| redis.host | string | `""` |  |
| redis.port | string | `"5379"` |  |
| securityContext | object | `{}` |  |
| tolerations | list | `[]` |  |
| workers[0].affinity | object | `{}` |  |
| workers[0].concurrency | int | `1` |  |
| workers[0].keda.cooldownPeriod | int | `300` |  |
| workers[0].keda.enabled | bool | `false` |  |
| workers[0].keda.listLength | int | `50` |  |
| workers[0].keda.maxReplicaCount | int | `10` |  |
| workers[0].keda.minReplicaCount | int | `1` |  |
| workers[0].keda.pollingInterval | int | `30` |  |
| workers[0].name | string | `"default"` |  |
| workers[0].nodeSelector | object | `{}` |  |
| workers[0].queues[0] | string | `"default"` |  |
| workers[0].replicas | int | `1` |  |
| workers[0].resources.limits.memory | string | `"1Gi"` |  |
| workers[0].resources.requests.cpu | string | `"200m"` |  |
| workers[0].resources.requests.memory | string | `"500Mi"` |  |
| workers[0].tolerations | list | `[]` |  |
| workers[1].affinity | object | `{}` |  |
| workers[1].concurrency | int | `1` |  |
| workers[1].keda.enabled | bool | `false` |  |
| workers[1].keda.listLength | int | `50` |  |
| workers[1].name | string | `"ingress"` |  |
| workers[1].nodeSelector | object | `{}` |  |
| workers[1].queues[0] | string | `"ingress"` |  |
| workers[1].replicas | int | `1` |  |
| workers[1].resources.limits.memory | string | `"1Gi"` |  |
| workers[1].resources.requests.cpu | string | `"200m"` |  |
| workers[1].resources.requests.memory | string | `"500Mi"` |  |
| workers[1].tolerations | list | `[]` |  |
| workers[2].affinity | object | `{}` |  |
| workers[2].concurrency | int | `1` |  |
| workers[2].keda.cooldownPeriod | int | `300` |  |
| workers[2].keda.enabled | bool | `false` |  |
| workers[2].keda.listLength | int | `50` |  |
| workers[2].keda.maxReplicaCount | int | `10` |  |
| workers[2].keda.minReplicaCount | int | `1` |  |
| workers[2].keda.pollingInterval | int | `30` |  |
| workers[2].name | string | `"mailers"` |  |
| workers[2].nodeSelector | object | `{}` |  |
| workers[2].queues[0] | string | `"mailers"` |  |
| workers[2].replicas | int | `1` |  |
| workers[2].resources.limits.memory | string | `"1Gi"` |  |
| workers[2].resources.requests.cpu | string | `"200m"` |  |
| workers[2].resources.requests.memory | string | `"500Mi"` |  |
| workers[2].tolerations | list | `[]` |  |
| workers[3].affinity | object | `{}` |  |
| workers[3].concurrency | int | `1` |  |
| workers[3].keda.cooldownPeriod | int | `300` |  |
| workers[3].keda.enabled | bool | `false` |  |
| workers[3].keda.listLength | int | `50` |  |
| workers[3].keda.maxReplicaCount | int | `10` |  |
| workers[3].keda.minReplicaCount | int | `1` |  |
| workers[3].keda.pollingInterval | int | `30` |  |
| workers[3].name | string | `"pull"` |  |
| workers[3].nodeSelector | object | `{}` |  |
| workers[3].queues[0] | string | `"pull"` |  |
| workers[3].replicas | int | `1` |  |
| workers[3].resources.limits.memory | string | `"1Gi"` |  |
| workers[3].resources.requests.cpu | string | `"200m"` |  |
| workers[3].resources.requests.memory | string | `"500Mi"` |  |
| workers[3].tolerations | list | `[]` |  |
| workers[4].affinity | object | `{}` |  |
| workers[4].concurrency | int | `1` |  |
| workers[4].keda.cooldownPeriod | int | `300` |  |
| workers[4].keda.enabled | bool | `false` |  |
| workers[4].keda.listLength | int | `50` |  |
| workers[4].keda.maxReplicaCount | int | `10` |  |
| workers[4].keda.minReplicaCount | int | `1` |  |
| workers[4].keda.pollingInterval | int | `30` |  |
| workers[4].name | string | `"push"` |  |
| workers[4].nodeSelector | object | `{}` |  |
| workers[4].queues[0] | string | `"push"` |  |
| workers[4].replicas | int | `1` |  |
| workers[4].resources.limits.memory | string | `"1Gi"` |  |
| workers[4].resources.requests.cpu | string | `"200m"` |  |
| workers[4].resources.requests.memory | string | `"500Mi"` |  |
| workers[4].tolerations | list | `[]` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)

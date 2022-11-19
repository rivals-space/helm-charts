# mastodon

![Version: 1.1.0](https://img.shields.io/badge/Version-1.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v4.0.2](https://img.shields.io/badge/AppVersion-v4.0.2-informational?style=flat-square)

Rivals.space Mastodon helm chart

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | redis | 17.3.11 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| fullnameOverride | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.className | string | `""` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"chart-example.local"` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.tls | list | `[]` |  |
| mastodon.cronjobs.additionalMounts | list | `[]` |  |
| mastodon.cronjobs.extraEnv.env | list | `[]` |  |
| mastodon.cronjobs.podAnnotations | object | `{}` |  |
| mastodon.cronjobs.podSecurityContext | object | `{}` |  |
| mastodon.cronjobs.securityContext | object | `{}` |  |
| mastodon.cronjobs.tasks[0].affinity | object | `{}` |  |
| mastodon.cronjobs.tasks[0].command | string | `"tootctl media remove --days 7 --concurrency 5 --verbose"` |  |
| mastodon.cronjobs.tasks[0].name | string | `"media-remove"` |  |
| mastodon.cronjobs.tasks[0].nodeSelector | object | `{}` |  |
| mastodon.cronjobs.tasks[0].resources | object | `{}` |  |
| mastodon.cronjobs.tasks[0].schedule | string | `"0 1 * * *"` |  |
| mastodon.cronjobs.tasks[0].tolerations | list | `[]` |  |
| mastodon.cronjobs.tasks[1].affinity | object | `{}` |  |
| mastodon.cronjobs.tasks[1].command | string | `"tootctl accounts cull --concurrency 5"` |  |
| mastodon.cronjobs.tasks[1].name | string | `"accounts-cull"` |  |
| mastodon.cronjobs.tasks[1].nodeSelector | object | `{}` |  |
| mastodon.cronjobs.tasks[1].resources | object | `{}` |  |
| mastodon.cronjobs.tasks[1].schedule | string | `"0 1 * * *"` |  |
| mastodon.cronjobs.tasks[1].tolerations | list | `[]` |  |
| mastodon.cronjobs.tasks[2].affinity | object | `{}` |  |
| mastodon.cronjobs.tasks[2].command | string | `"tootctl media remove-orphans"` |  |
| mastodon.cronjobs.tasks[2].name | string | `"media-remove-orphans"` |  |
| mastodon.cronjobs.tasks[2].nodeSelector | object | `{}` |  |
| mastodon.cronjobs.tasks[2].resources | object | `{}` |  |
| mastodon.cronjobs.tasks[2].schedule | string | `"0 1 * * *"` |  |
| mastodon.cronjobs.tasks[2].tolerations | list | `[]` |  |
| mastodon.cronjobs.tasks[3].affinity | object | `{}` |  |
| mastodon.cronjobs.tasks[3].command | string | `"tootctl preview_cards remove --days 7 --concurrency 5 --verbose"` |  |
| mastodon.cronjobs.tasks[3].name | string | `"preview-cards-remove"` |  |
| mastodon.cronjobs.tasks[3].nodeSelector | object | `{}` |  |
| mastodon.cronjobs.tasks[3].resources | object | `{}` |  |
| mastodon.cronjobs.tasks[3].schedule | string | `"0 1 * * *"` |  |
| mastodon.cronjobs.tasks[3].tolerations | list | `[]` |  |
| mastodon.extraEnv.env | list | `[]` |  |
| mastodon.extraEnv.fromConfigMap | string | `""` |  |
| mastodon.extraEnv.fromSecret | string | `""` |  |
| mastodon.image.pullPolicy | string | `"IfNotPresent"` |  |
| mastodon.image.repository | string | `"tootsuite/mastodon"` |  |
| mastodon.image.tag | string | `""` |  |
| mastodon.settings.assets.s3.aliasHost | string | `""` |  |
| mastodon.settings.assets.s3.bucket | string | `""` |  |
| mastodon.settings.assets.s3.endpoint | string | `""` |  |
| mastodon.settings.assets.s3.protocol | string | `"https"` |  |
| mastodon.settings.assets.s3.region | string | `""` |  |
| mastodon.settings.assets.s3.url | string | `"http://bucket.zone.endpoint/bucket/"` |  |
| mastodon.settings.domain | string | `"example.com"` |  |
| mastodon.settings.otpSecret | string | `""` | Generate with `docker run -it tootsuite/mastodon:v3.4.4 bundle exec rake secret` |
| mastodon.settings.secretKeyBase | string | `""` | Generate with `docker run -it tootsuite/mastodon:v3.4.4 bundle exec rake secret` |
| mastodon.settings.smtp.authMethod | string | `""` |  |
| mastodon.settings.smtp.caFile | string | `""` |  |
| mastodon.settings.smtp.deliveryMethod | string | `""` |  |
| mastodon.settings.smtp.domain | string | `""` |  |
| mastodon.settings.smtp.fromAddress | string | `""` |  |
| mastodon.settings.smtp.login | string | `""` |  |
| mastodon.settings.smtp.opensslVerifyMode | string | `""` |  |
| mastodon.settings.smtp.password | string | `""` |  |
| mastodon.settings.smtp.port | string | `""` |  |
| mastodon.settings.smtp.server | string | `""` |  |
| mastodon.settings.smtp.ssl | string | `""` |  |
| mastodon.settings.smtp.startTlsAuto | string | `""` |  |
| mastodon.settings.smtp.tls | string | `""` |  |
| mastodon.settings.vapidPrivateKey | string | `""` |  |
| mastodon.settings.vapidPublicKey | string | `""` | Generate these two values with docker run -it -e OTP_SECRET=<already generated value> -e SECRET_KEY_BASE=<already generated value> tootsuite/mastodon:v3.4.4 bundle exec rake mastodon:webpush:generate_vapid_key |
| mastodon.sidekiq.additionalMounts | list | `[]` |  |
| mastodon.sidekiq.extraEnv.env | list | `[]` |  |
| mastodon.sidekiq.podAnnotations | object | `{}` |  |
| mastodon.sidekiq.podSecurityContext | object | `{}` |  |
| mastodon.sidekiq.securityContext | object | `{}` |  |
| mastodon.sidekiq.workers[0].affinity | object | `{}` |  |
| mastodon.sidekiq.workers[0].concurrency | int | `1` |  |
| mastodon.sidekiq.workers[0].keda.cooldownPeriod | int | `300` |  |
| mastodon.sidekiq.workers[0].keda.enabled | bool | `false` |  |
| mastodon.sidekiq.workers[0].keda.listLength | int | `50` |  |
| mastodon.sidekiq.workers[0].keda.maxReplicaCount | int | `10` |  |
| mastodon.sidekiq.workers[0].keda.minReplicaCount | int | `1` |  |
| mastodon.sidekiq.workers[0].keda.pollingInterval | int | `30` |  |
| mastodon.sidekiq.workers[0].name | string | `"default"` |  |
| mastodon.sidekiq.workers[0].nodeSelector | object | `{}` |  |
| mastodon.sidekiq.workers[0].queues[0] | string | `"default"` |  |
| mastodon.sidekiq.workers[0].replicas | int | `1` |  |
| mastodon.sidekiq.workers[0].resources.limits.memory | string | `"1Gi"` |  |
| mastodon.sidekiq.workers[0].resources.requests.cpu | string | `"200m"` |  |
| mastodon.sidekiq.workers[0].resources.requests.memory | string | `"500Mi"` |  |
| mastodon.sidekiq.workers[0].tolerations | list | `[]` |  |
| mastodon.sidekiq.workers[1].affinity | object | `{}` |  |
| mastodon.sidekiq.workers[1].concurrency | int | `1` |  |
| mastodon.sidekiq.workers[1].keda.enabled | bool | `false` |  |
| mastodon.sidekiq.workers[1].keda.listLength | int | `50` |  |
| mastodon.sidekiq.workers[1].name | string | `"ingress"` |  |
| mastodon.sidekiq.workers[1].nodeSelector | object | `{}` |  |
| mastodon.sidekiq.workers[1].queues[0] | string | `"ingress"` |  |
| mastodon.sidekiq.workers[1].replicas | int | `1` |  |
| mastodon.sidekiq.workers[1].resources.limits.memory | string | `"1Gi"` |  |
| mastodon.sidekiq.workers[1].resources.requests.cpu | string | `"200m"` |  |
| mastodon.sidekiq.workers[1].resources.requests.memory | string | `"500Mi"` |  |
| mastodon.sidekiq.workers[1].tolerations | list | `[]` |  |
| mastodon.sidekiq.workers[2].affinity | object | `{}` |  |
| mastodon.sidekiq.workers[2].concurrency | int | `5` |  |
| mastodon.sidekiq.workers[2].keda.cooldownPeriod | int | `300` |  |
| mastodon.sidekiq.workers[2].keda.enabled | bool | `false` |  |
| mastodon.sidekiq.workers[2].keda.listLength | int | `50` |  |
| mastodon.sidekiq.workers[2].keda.maxReplicaCount | int | `10` |  |
| mastodon.sidekiq.workers[2].keda.minReplicaCount | int | `1` |  |
| mastodon.sidekiq.workers[2].keda.pollingInterval | int | `30` |  |
| mastodon.sidekiq.workers[2].name | string | `"mailers"` |  |
| mastodon.sidekiq.workers[2].nodeSelector | object | `{}` |  |
| mastodon.sidekiq.workers[2].queues[0] | string | `"mailers"` |  |
| mastodon.sidekiq.workers[2].replicas | int | `1` |  |
| mastodon.sidekiq.workers[2].resources.limits.memory | string | `"1Gi"` |  |
| mastodon.sidekiq.workers[2].resources.requests.cpu | string | `"200m"` |  |
| mastodon.sidekiq.workers[2].resources.requests.memory | string | `"500Mi"` |  |
| mastodon.sidekiq.workers[2].tolerations | list | `[]` |  |
| mastodon.sidekiq.workers[3].affinity | object | `{}` |  |
| mastodon.sidekiq.workers[3].concurrency | int | `1` |  |
| mastodon.sidekiq.workers[3].keda.cooldownPeriod | int | `300` |  |
| mastodon.sidekiq.workers[3].keda.enabled | bool | `false` |  |
| mastodon.sidekiq.workers[3].keda.listLength | int | `50` |  |
| mastodon.sidekiq.workers[3].keda.maxReplicaCount | int | `10` |  |
| mastodon.sidekiq.workers[3].keda.minReplicaCount | int | `1` |  |
| mastodon.sidekiq.workers[3].keda.pollingInterval | int | `30` |  |
| mastodon.sidekiq.workers[3].name | string | `"pull"` |  |
| mastodon.sidekiq.workers[3].nodeSelector | object | `{}` |  |
| mastodon.sidekiq.workers[3].queues[0] | string | `"pull"` |  |
| mastodon.sidekiq.workers[3].replicas | int | `1` |  |
| mastodon.sidekiq.workers[3].resources.limits.memory | string | `"1Gi"` |  |
| mastodon.sidekiq.workers[3].resources.requests.cpu | string | `"200m"` |  |
| mastodon.sidekiq.workers[3].resources.requests.memory | string | `"500Mi"` |  |
| mastodon.sidekiq.workers[3].tolerations | list | `[]` |  |
| mastodon.sidekiq.workers[4].affinity | object | `{}` |  |
| mastodon.sidekiq.workers[4].concurrency | int | `1` |  |
| mastodon.sidekiq.workers[4].keda.cooldownPeriod | int | `300` |  |
| mastodon.sidekiq.workers[4].keda.enabled | bool | `false` |  |
| mastodon.sidekiq.workers[4].keda.listLength | int | `50` |  |
| mastodon.sidekiq.workers[4].keda.maxReplicaCount | int | `10` |  |
| mastodon.sidekiq.workers[4].keda.minReplicaCount | int | `1` |  |
| mastodon.sidekiq.workers[4].keda.pollingInterval | int | `30` |  |
| mastodon.sidekiq.workers[4].name | string | `"push"` |  |
| mastodon.sidekiq.workers[4].nodeSelector | object | `{}` |  |
| mastodon.sidekiq.workers[4].queues[0] | string | `"push"` |  |
| mastodon.sidekiq.workers[4].replicas | int | `1` |  |
| mastodon.sidekiq.workers[4].resources.limits.memory | string | `"1Gi"` |  |
| mastodon.sidekiq.workers[4].resources.requests.cpu | string | `"200m"` |  |
| mastodon.sidekiq.workers[4].resources.requests.memory | string | `"500Mi"` |  |
| mastodon.sidekiq.workers[4].tolerations | list | `[]` |  |
| mastodon.sidekiq.workers[5].affinity | object | `{}` |  |
| mastodon.sidekiq.workers[5].concurrency | int | `5` |  |
| mastodon.sidekiq.workers[5].keda.enabled | bool | `false` |  |
| mastodon.sidekiq.workers[5].keda.listLength | int | `999999999` |  |
| mastodon.sidekiq.workers[5].keda.maxReplicaCount | int | `10` |  |
| mastodon.sidekiq.workers[5].keda.minReplicaCount | int | `1` |  |
| mastodon.sidekiq.workers[5].name | string | `"scheduler"` |  |
| mastodon.sidekiq.workers[5].nodeSelector | object | `{}` |  |
| mastodon.sidekiq.workers[5].queues[0] | string | `"scheduler"` |  |
| mastodon.sidekiq.workers[5].replicas | int | `1` |  |
| mastodon.sidekiq.workers[5].resources.limits.memory | string | `"1Gi"` |  |
| mastodon.sidekiq.workers[5].resources.requests.cpu | string | `"200m"` |  |
| mastodon.sidekiq.workers[5].resources.requests.memory | string | `"500Mi"` |  |
| mastodon.sidekiq.workers[5].tolerations | list | `[]` |  |
| mastodon.streaming.additionalMounts | list | `[]` |  |
| mastodon.streaming.deployment.affinity | object | `{}` |  |
| mastodon.streaming.deployment.autoscaling.enabled | bool | `false` |  |
| mastodon.streaming.deployment.autoscaling.maxReplicas | int | `100` |  |
| mastodon.streaming.deployment.autoscaling.minReplicas | int | `1` |  |
| mastodon.streaming.deployment.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| mastodon.streaming.deployment.nodeSelector | object | `{}` |  |
| mastodon.streaming.deployment.podAnnotations | object | `{}` |  |
| mastodon.streaming.deployment.podSecurityContext | object | `{}` |  |
| mastodon.streaming.deployment.replicas | int | `2` |  |
| mastodon.streaming.deployment.resources.limits.memory | string | `"300Mi"` |  |
| mastodon.streaming.deployment.resources.requests.cpu | string | `"50m"` |  |
| mastodon.streaming.deployment.resources.requests.memory | string | `"200Mi"` |  |
| mastodon.streaming.deployment.securityContext | object | `{}` |  |
| mastodon.streaming.deployment.tolerations | list | `[]` |  |
| mastodon.streaming.extraEnv.env | list | `[]` |  |
| mastodon.streaming.service.port | int | `4000` |  |
| mastodon.streaming.service.type | string | `"ClusterIP"` |  |
| mastodon.streaming.settings.workers | string | `"1"` |  |
| mastodon.web.additionalMounts | list | `[]` |  |
| mastodon.web.deployment.affinity | object | `{}` |  |
| mastodon.web.deployment.autoscaling.enabled | bool | `false` |  |
| mastodon.web.deployment.autoscaling.maxReplicas | int | `100` |  |
| mastodon.web.deployment.autoscaling.minReplicas | int | `1` |  |
| mastodon.web.deployment.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| mastodon.web.deployment.nodeSelector | object | `{}` |  |
| mastodon.web.deployment.podAnnotations | object | `{}` |  |
| mastodon.web.deployment.podSecurityContext | object | `{}` |  |
| mastodon.web.deployment.replicas | int | `2` |  |
| mastodon.web.deployment.resources.limits.memory | string | `"1.5Gi"` |  |
| mastodon.web.deployment.resources.requests.cpu | string | `"500m"` |  |
| mastodon.web.deployment.resources.requests.memory | string | `"1Gi"` |  |
| mastodon.web.deployment.securityContext | object | `{}` |  |
| mastodon.web.deployment.tolerations | list | `[]` |  |
| mastodon.web.extraEnv.env | list | `[]` |  |
| mastodon.web.service.port | int | `8080` |  |
| mastodon.web.service.type | string | `"ClusterIP"` |  |
| mastodon.web.settings.concurrency | string | `"2"` |  |
| mastodon.web.settings.maxThreads | string | `"5"` |  |
| mastodon.web.settings.rwSplit | object | `{"enabled":false}` | If enabled, you need to provide these env vars : DB_RO_NAME DB_RO_USER DB_RO_PASS DB_RO_HOST DB_RO_PORT |
| mediaIngress.annotations | object | `{}` |  |
| mediaIngress.className | string | `""` |  |
| mediaIngress.enabled | bool | `false` |  |
| mediaIngress.hosts[0].host | string | `"chart-example.local"` |  |
| mediaIngress.hosts[0].paths[0].path | string | `"/"` |  |
| mediaIngress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| mediaIngress.tls | list | `[]` |  |
| nameOverride | string | `""` |  |
| nginxReverse.additionalMounts | list | `[]` |  |
| nginxReverse.deployment.affinity | object | `{}` |  |
| nginxReverse.deployment.autoscaling.enabled | bool | `false` |  |
| nginxReverse.deployment.autoscaling.maxReplicas | int | `100` |  |
| nginxReverse.deployment.autoscaling.minReplicas | int | `1` |  |
| nginxReverse.deployment.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| nginxReverse.deployment.image.pullPolicy | string | `"IfNotPresent"` |  |
| nginxReverse.deployment.image.repository | string | `"nginxinc/nginx-unprivileged"` |  |
| nginxReverse.deployment.image.tag | string | `"stable-alpine"` |  |
| nginxReverse.deployment.nodeSelector | object | `{}` |  |
| nginxReverse.deployment.podAnnotations | object | `{}` |  |
| nginxReverse.deployment.podSecurityContext | object | `{}` |  |
| nginxReverse.deployment.replicas | int | `2` |  |
| nginxReverse.deployment.resources.limits.memory | string | `"500Mi"` |  |
| nginxReverse.deployment.resources.requests.cpu | string | `"30m"` |  |
| nginxReverse.deployment.resources.requests.memory | string | `"200Mi"` |  |
| nginxReverse.deployment.securityContext | object | `{}` |  |
| nginxReverse.deployment.tolerations | list | `[]` |  |
| nginxReverse.service.port | int | `8080` |  |
| nginxReverse.service.type | string | `"ClusterIP"` |  |
| redis.architecture | string | `"standalone"` |  |
| redis.auth.enabled | bool | `false` |  |
| redis.auth.sentinel | bool | `false` |  |
| redis.enabled | bool | `true` |  |
| redis.master.persistence.enabled | bool | `false` |  |
| redis.replica.replicaCount | int | `0` |  |
| varnishS3.additionalMounts | list | `[]` |  |
| varnishS3.deployment.affinity | object | `{}` |  |
| varnishS3.deployment.autoscaling.enabled | bool | `false` |  |
| varnishS3.deployment.autoscaling.maxReplicas | int | `100` |  |
| varnishS3.deployment.autoscaling.minReplicas | int | `1` |  |
| varnishS3.deployment.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| varnishS3.deployment.image.pullPolicy | string | `"IfNotPresent"` |  |
| varnishS3.deployment.image.repository | string | `"varnish"` |  |
| varnishS3.deployment.image.tag | string | `"fresh-alpine"` |  |
| varnishS3.deployment.nodeSelector | object | `{}` |  |
| varnishS3.deployment.podAnnotations | object | `{}` |  |
| varnishS3.deployment.podSecurityContext | object | `{}` |  |
| varnishS3.deployment.replicas | int | `2` |  |
| varnishS3.deployment.resources.limits.memory | string | `"600Mi"` |  |
| varnishS3.deployment.resources.requests.cpu | string | `"150m"` |  |
| varnishS3.deployment.resources.requests.memory | string | `"400Mi"` |  |
| varnishS3.deployment.securityContext | object | `{}` |  |
| varnishS3.deployment.tolerations | list | `[]` |  |
| varnishS3.service.port | int | `8080` |  |
| varnishS3.service.type | string | `"ClusterIP"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)

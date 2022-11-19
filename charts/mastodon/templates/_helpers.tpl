{{/*
Expand the name of the chart.
*/}}
{{- define "mastodon.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "mastodon.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "mastodon.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "mastodon.labels" -}}
helm.sh/chart: {{ include "mastodon.chart" . }}
{{ include "mastodon.selectorLabels.global" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "mastodon.selectorLabels.global" -}}
app.kubernetes.io/name: {{ include "mastodon.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "mastodon.selectorLabels.web" -}}
{{ .Release.Name }}/component: web
{{- end }}

{{- define "mastodon.selectorLabels.streaming" -}}
{{ .Release.Name }}/component: streaming
{{- end }}

{{- define "mastodon.selectorLabels.sidekiq" -}}
{{ .Release.Name }}/component: sidekiq
{{- end }}

{{- define "mastodon.selectorLabels.nginxReverse" -}}
{{ .Release.Name }}/component: nginx-reverse
{{- end }}

{{- define "mastodon.selectorLabels.nginxS3" -}}
{{ .Release.Name }}/component: nginx-s3
{{- end }}

{{- define "mastodon.selectorLabels.varnishS3" -}}
{{ .Release.Name }}/component: varnish-s3
{{- end }}

{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "argonaut-deployment.name" -}}
{{- default .Release.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}


{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "argonaut-deployment.fullname" -}}
{{- $name := default .Teleast.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "argonaut-deployment.uname" -}}
{{- if empty .Values.nameOverride -}}
{{ .Values.appName }}
{{- else -}}
{{ .Values.nameOverride }}
{{- end -}}
{{- end -}}


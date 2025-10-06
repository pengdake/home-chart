{{- define "cloudflared-tunnel.name" -}}
{{- default .Chart.Name .Values.nameOverride -}}
{{- end -}}

{{- define "cloudflared-tunnel.chart" -}}
{{ .Chart.Name }}-{{ .Chart.Version }}
{{- end -}}

{{- define "cloudflared-tunnel.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "cloudflared-tunnel.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}

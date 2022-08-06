{{- define "debezium.name" -}}
{{- .Release.Name | trimPrefix "debezium-" -}}
{{- end }}

{{- define "debezium.selectorLabels" -}}
app: {{ .Chart.Name }}
connector: {{ include "debezium.name" . }}
{{- end }}

{{- define "debezium.labels" -}}
{{ include "debezium.selectorLabels" . }}
managed-by: {{ .Release.Service | lower }}
{{- end }}

{{- define "debezium-ui.selectorLabels" -}}
app: {{ .Chart.Name }}-ui
connector: {{ include "debezium-ui.name" . }}
{{- end }}

{{- define "debezium-ui.labels" -}}
{{ include "debezium-ui.selectorLabels" . }}
managed-by: {{ .Release.Service | lower }}
{{- end }}
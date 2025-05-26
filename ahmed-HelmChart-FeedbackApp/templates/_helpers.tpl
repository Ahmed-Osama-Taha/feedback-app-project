{{- define "ahmed-FeedbackApp-HelmChart.labels" -}}
helm.sh/chart: {{ include "ahmed-FeedbackApp-HelmChart.chart" . }}
app.kubernetes.io/name: {{ include "ahmed-FeedbackApp-HelmChart.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
{{- end }}



{{- define "ahmed-FeedbackApp-HelmChart.name" -}}
{{ .Chart.Name }}
{{- end }}

{{- define "ahmed-FeedbackApp-HelmChart.chart" -}}
{{ .Chart.Name }}-{{ .Chart.Version }}
{{- end }}



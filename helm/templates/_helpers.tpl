
{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "argo-cd.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "argoContext.labels" -}}
helm.sh/chart: {{ include "argo-cd.chart" .context }}
{{ include "argo-cd.selectorLabels" (dict "context" .context "component" .component "name" .name) }}
app.kubernetes.io/managed-by: {{ .context.Release.Service }}
app.kubernetes.io/part-of: argocd
{{- with .context.Values.argoContext.additionalLabels }}
{{ toYaml . }}
{{- end }}
{{- end }}

{{/*
Create argocd notifications name and version as used by the chart label.
*/}}
{{- define "argoContext.notifications.fullname" -}}
{{- printf "argocd-%s" .Values.argoContext.notifications.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create argocd applicationSet name and version as used by the chart label.
*/}}
{{- define "argoContext.applicationSet.fullname" -}}
{{- printf "argocd-applicationset-controller" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

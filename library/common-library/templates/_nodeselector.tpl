{{- /* Defines the Pod nodeSelector */ -}}
{{- define "common.nodeSelector" -}}
    {{- if .Values.nodeSelector -}}
        {{- toYaml .Values.nodeSelector -}}
    {{- else if .Values.global -}}
        {{- if .Values.global.nodeSelector -}}
            {{- toYaml .Values.global.nodeSelector -}}
        {{- end -}}
    {{- end -}}
{{- end -}}

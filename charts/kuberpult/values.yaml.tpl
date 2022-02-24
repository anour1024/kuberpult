# Default values for ..
# This is a YAML-formatted file.
# Declare variables to be passed into your templates.

git:
  url:  # git@github.com/.../...
  branch: "master"

hub: europe-west3-docker.pkg.dev/fdc-public-docker-registry/kuberpult
tag: "$VERSION"

log:
  # Possible values are "gcp" for a gcp-optimized format and "default" for json
  format: ""
  # Other possible values are "DEBUG", "INFO", "ERROR"
  level: "WARN"
cd:
  image: kuberpult-cd-service
  backendConfig:
    create: false  # Add backend config for health checks on GKE only
  resources:
    limits:
      cpu: 1
      memory: 2Gi
    requests:
      cpu: 1
      memory: 2Gi
frontend:
  image: kuberpult-frontend-service
  resources:
    limits:
      cpu: 500m
      memory: 100Mi
    requests:
      cpu: 500m
      memory: 100Mi
ingress:
  annotations: {}
  domainName: null
  exposeReleaseEndpoint: false
  iap:
    enabled: false
    secretName: null
  tls:
    host: null
    secretName: kuberpult-tls-secret
ssh:
  identity: |
    -----BEGIN OPENSSH PRIVATE KEY-----
    -----END OPENSSH PRIVATE KEY-----
  known_hosts: |
    github.com ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAq2A7hRGmdnm9tUDbO9IDSwBK6TbQa+PXYPCPy6rbTrTtw7PHkccKrpp0yVhp5HdEIcKr6pLlVDBfOLX9QUsyCOV0wzfjIJNlGEYsdlLJizHhbn2mUjvSAHQqZETYP81eFzLQNnPHt4EVVUh7VfDESU84KezmD5QlWpXLmvU31/yMf+Se8xhHTvKSCZIFImWwoG6mbUoWf9nzpIoaSjB+weqqUUmpaaasXVal72J+UX2B+2RPW3RcT0eOzQgqlJL3RKrTJvdsjE3JEAvGq3lGHSZXy28G3skua2SmVi/w4yCE6gbODqnTWlg7+wC604ydGXA8VJiS5ap43JXiUFFAaQ==
pgp:
  keyRing: null

argocd:
  enabled: false
  user: admin
  host: argo-cd-argocd-server

datadogTracing:
  enabled: false
  debugging: false

dogstatsdMetrics:
  enabled: false
  #  dogstatsD listens on port udp:8125 by default.
  #  https://docs.datadoghq.com/developers/dogstatsd/?tab=hostagent#agent
  #  datadog.dogstatsd.socketPath -- Path to the DogStatsD socket
  address: unix:///var/run/datadog/dsd.socket
  # datadog.dogstatsd.hostSocketPath -- Host path to the DogStatsD socket
  hostSocketPath: /var/run/datadog

imagePullSecrets: []
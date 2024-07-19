---
additionalTrustBundlePolicy: Proxyonly
apiVersion: v1
baseDomain: ${var_base_domain}
compute:
- architecture: amd64
  hyperthreading: Enabled
  name: worker
  platform: {}
  replicas: 3
controlPlane:
  architecture: amd64
  hyperthreading: Enabled
  name: master
  platform: {}
  replicas: 3
metadata:
  creationTimestamp: null
  name: ${var_cluster_name}
networking:
  clusterNetwork:
  - cidr: 10.128.0.0/14
    hostPrefix: 23
  machineNetwork:
  - cidr: 10.0.0.0/16
  networkType: OVNKubernetes
  serviceNetwork:
  - 172.30.0.0/16
platform:
  azure:
    baseDomainResourceGroupName: ${var_resource_group}
    cloudName: AzurePublicCloud
    outboundType: Loadbalancer
    region: ${var_region}
publish: External
pullSecret: ${var_pull_secret}
sshKey: |
  ${var_ssh_key}

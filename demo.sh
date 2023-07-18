#!/bin/bash

. demo/demo-magic.sh

clear

pe "kind create cluster --config demo/kind-cluster-with-extramounts.yaml"
pe "export EXP_CLUSTER_RESOURCE_SET=true"
pe "clusterctl init -i docker -c kubeadm -b kubeadm"

pe "clusterctl generate cluster capi-quickstart --flavor development \
  --kubernetes-version v1.27.0 \
  --control-plane-machine-count=3 \
  --worker-machine-count=3 \
  > capi-quickstart.yaml"
pe "clear"
pe "export CONTROL_PLANE_MACHINE_COUNT=1
export WORKER_MACHINE_COUNT=1
export KUBERNETES_VERSION=v1.26.4"
pe "clusterctl generate cluster test1 --from https://github.com/capi-samples/opensuse-23/blob/main/templates/kubeadm-docker.yaml > cluster.yaml"
pe "nvim cluster.yaml"
pe "kubectl apply -f cluster.yaml"
pe "clusterctl get kubeconfig test1 > test.kubeconfig"
pe "k9s --kubeconfig test.kubeconfig"
pe "EDITOR=nvim kubectl edit machinedeployment test1-md-0"
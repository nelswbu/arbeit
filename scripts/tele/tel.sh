#!/bin/bash

printf "... deploying pod [%s] on port [%s:8080] to telepresence\n", "${pod}", "${port}"

# environment variable dependency injection validation
if [ -z "${pod}" ]; then printf "... error - pod undefined\n"; exit 1; fi
if [ -z "${port}" ]; then printf "... error - port undefined\n"; exit 1; fi

# export variables here to keep bash clean and scripts system agnostic
export AWS_PROFILE=bku-bb-eks
export KUBECONFIG="/home/${USER}/kube/kubeconfig-bku-eks-bb-dev"

telepresence \
--namespace bb-dev \
--swap-deployment "${pod}-bb-dev-dbs-service" \
--expose "${port}:8080" \
--run-shell \
--method vpn-tcp
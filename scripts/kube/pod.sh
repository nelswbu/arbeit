#!/bin/bash

printf "... get kubernetes pod [%s]\n", "${pod}"

# environment variable dependency injection validation
if [ -z "${pod}" ]; then printf "... error - pod undefined\n"; exit 1; fi

# export variables here to keep bash clean and scripts system agnostic
export AWS_PROFILE=bku-bb-eks
export KUBECONFIG="/home/${USER}/kube/kubeconfig-bku-eks-bb-dev"

kubectl get pod | grep "${pod}"

printf ".... got kubernetes pod [%s]\n", "${pod}"
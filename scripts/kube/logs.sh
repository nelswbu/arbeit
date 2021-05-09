#!/bin/bash

printf "... get kubernetes logs for pod [%s]\n", "${pod}"

# environment variable dependency injection validation
if [ -z "${pod}" ]; then printf "... error - pod undefined\n"; exit 1; fi

# export variables here to keep bash clean and scripts system agnostic
export AWS_PROFILE=bku-bb-eks
export KUBECONFIG="/home/cvanelswyk/kube/kubeconfig-bku-eks-bb-dev"

var=$(kubectl get pod | grep "${pod}")

kubectl logs "$(printf "%s", "${var}" | cut -d' ' -f 1)" &

#!/bin/bash

printf "... get kubernetes pods\n",

# export variables here to keep bash clean and scripts system agnostic
export AWS_PROFILE=bku-bb-eks
export KUBECONFIG="/home/${USER}/kube/kubeconfig-bku-eks-bb-dev"

kubectl get pods

printf ".... got kubernetes pods\n"
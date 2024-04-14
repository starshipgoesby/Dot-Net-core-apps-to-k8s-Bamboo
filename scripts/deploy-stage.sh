#!/bin/bash

HELM_REPO=$bamboo_HELM_REPO

#create env if not present
/usr/local/bin/kubectl create ns staging

#kubectl run hello-dotnet --image=sugendh/dotnetcorebmb:latest --port=8080 -n staging
#sleep 60
#kubectl expose deployment hello-dotnet --type=LoadBalancer --port=8080 -n staging

#rm -rf helm
/usr/local/bin/helm repo add helm $HELM_REPO
/usr/local/bin/helm repo update

#helm install
/usr/local/bin/helm install --namespace staging --name dotnetcorebmb-latest-stage --set image.repository=sugendh/dotnetcorebmb,image.tag=latest helm/devops

#helm upgrade
#/usr/local/bin/helm upgrade --install --namespace staging dotnetcorebmb-latest-stage --set image.repository=sugendh/dotnetcorebmb,image.tag=latest helm/devops

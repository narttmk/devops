#!/bin/bash

# add repo
helm repo add bitnami https://charts.bitnami.com/bitnami

helm uninstall -n ssm postgres
helm uninstall -n ssm zookeeper
helm uninstall -n ssm kafka
# install postgresql
helm install postgres bitnami/postgresql -f ./pg-values.yml -n ssm > /dev/null

# install zookeeper
helm install zookeeper bitnami/zookeeper -f ./zk-values.yml -n ssm > /dev/null

# install kafka
helm install kafka bitnami/kafka -f ./kk-values.yml -n ssm > /dev/null
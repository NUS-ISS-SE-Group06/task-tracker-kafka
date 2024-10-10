
# Step-by-Step Runbook for Deploying Kafka Components on Kubernetes using Helm
     ```bash

     # Setup Helm on Kubernetes
     # Install Helm:
     curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash

     # Verify Helm
     helm version

     # Add Bitnami Repository
     helm repo add bitnami https://charts.bitnami.com/bitnami

     # Update Helm repository
     helm repo update

     # Verify that your Kubernetes cluster is up and running.
     kubectl cluster-info

     # Create namespace
     kubectl create namespace prd

     # Install Kafka using Bitname Helm Chart
     helm install kafka oci://registry-1.docker.io/bitnamicharts/kafka --namespace prd

     # Verify Kafka Installation 
     kubectl get services --namespace prd
     kubectl get pods --namespace prd

     # Retrieve Kafka clietn password
     kubectl get --namespace default secrets/kafka-user-passwords -o jsonpath='{.data.client-passwords}' | base64 --decode

     # edit application.properties for springboot application as follow;
     #spring.kafka.bootstrap-servers=kafka:9092
     #spring.kafka.properties.security.protocol=SASL_PLAINTEXT
     #spring.kafka.properties.sasl.mechanism=PLAIN
     #spring.kafka.properties.sasl.jaas.config=org.apache.kafka.common.security.plain.PlainLoginModule required username="user1" password="******";


     ```

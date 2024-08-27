
# Step-by-Step Runbook for Deploying Kafka Components on Kubernetes

## Step 1: Prepare the Environment

1. **Ensure Kubernetes Cluster is Running:**
   - Verify that your Kubernetes cluster is up and running.
   - Check your connection to the cluster by running:

     ```bash
     kubectl cluster-info
     ```

2. **Create a Namespace (Optional but recommended):**
   - To keep your Kafka-related resources isolated, create a namespace:

     ```bash
     kubectl create namespace kafka-cluster
     ```

## Step 2: Deploy the Services

1. **Deploy the Broker Service:**

   ```bash
   kubectl apply -f broker-service.yaml -n kafka-cluster
   ```

2. **Deploy the Schema Registry Service:**

   ```bash
   kubectl apply -f schema-registry-service.yaml -n kafka-cluster
   ```

3. **Deploy the Kafka Connect Service:**

   ```bash
   kubectl apply -f connect-service.yaml -n kafka-cluster
   ```

4. **Deploy the ksqlDB Server Service:**

   ```bash
   kubectl apply -f ksqldb-server-service.yaml -n kafka-cluster
   ```

5. **Deploy the Control Center Service:**

   ```bash
   kubectl apply -f control-center-service.yaml -n kafka-cluster
   ```

6. **Deploy the REST Proxy Service:**

   ```bash
   kubectl apply -f rest-proxy-service.yaml -n kafka-cluster
   ```

## Step 3: Deploy the Deployments

1. **Deploy the Kafka Broker:**

   ```bash
   kubectl apply -f broker-deployment.yaml -n kafka-cluster
   ```

2. **Deploy the Schema Registry:**

   ```bash
   kubectl apply -f schema-registry-deployment.yaml -n kafka-cluster
   ```

3. **Deploy the Kafka Connect:**

   ```bash
   kubectl apply -f connect-deployment.yaml -n kafka-cluster
   ```

4. **Deploy the ksqlDB Server:**

   ```bash
   kubectl apply -f ksqldb-server-deployment.yaml -n kafka-cluster
   ```

5. **Deploy the ksqlDB CLI (Optional, for interactive queries):**

   ```bash
   kubectl apply -f ksqldb-cli-deployment.yaml -n kafka-cluster
   ```

6. **Deploy the ksqlDB Data Generator:**

   ```bash
   kubectl apply -f ksql-datagen-deployment.yaml -n kafka-cluster
   ```

7. **Deploy the Control Center:**

   ```bash
   kubectl apply -f control-center-deployment.yaml -n kafka-cluster
   ```

8. **Deploy the REST Proxy:**

   ```bash
   kubectl apply -f rest-proxy-deployment.yaml -n kafka-cluster
   ```

## Step 4: Verify the Deployment

1. **Check the status of Pods:**
   - Ensure all the Pods are running without issues:

     ```bash
     kubectl get pods -n kafka-cluster
     ```

2. **Check the Services:**
   - Ensure the services are properly configured and running:

     ```bash
     kubectl get svc -n kafka-cluster
     ```

## Step 5: Access the Services

1. **Control Center:**
   - Access the Control Center via the NodePort or LoadBalancer (depending on your service configuration):

     ```bash
     kubectl get svc control-center-service -n kafka-cluster
     ```

2. **REST Proxy, ksqlDB, Schema Registry:**
   - Use the external IP/port or the service URL within the cluster.

## Step 6: Scaling and Maintenance

1. **Scaling Deployments:**
   - Scale any of the components as needed:

     ```bash
     kubectl scale deployment <deployment-name> --replicas=<number> -n kafka-cluster
     ```

2. **Monitoring and Logs:**
   - View logs for any pod:

     ```bash
     kubectl logs <pod-name> -n kafka-cluster
     ```

3. **Update Configuration:**
   - If you need to update any configuration, modify the respective YAML files and reapply them:

     ```bash
     kubectl apply -f <file-name.yaml> -n kafka-cluster
     ```

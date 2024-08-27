# Quick Start for Confluent Platform

This quick start guide covers the installation of Apache Kafka for managing topics, using Kafka Connect to generate mock data, creating ksqlDB streaming queries on those topics, and utilizing Confluent Control Center to monitor and analyze the event streaming queries.

## Getting Started

### Step 1: Create Project HOME Directory

     ```bash
     createLocalDirectory
     ```

### Step 1: Start the Confluence Platform stack

     ```bash
     docker compose up -d
     ```

### Step 2: Verify that the services are up and running

     ```bash
     docker ps
     ```
  
### Step 3: Restart the services

     ```bash
     docker compose restart <service-name>
     ```

### Step 4: Stop Services

    docker compose stop

| **Service**         | **List Port**                            |
|---------------------|------------------------------------------|
| Schema Registry     | <http://localhost:8081>                  |
| rest-proxy          | <http://localhost:8082>                  |
| ksqlDB              | <http://localhost:8088/info>             |
| Control Center      | <http://localhost:9021/clusters>         |
| Connect             | <http://localhost:8083>                  |
| Broker              | 9091, 9092                               |

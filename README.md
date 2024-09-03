# Quick Start for Confluent Platform

This quick start guide covers the installation of Apache Kafka for managing topics, using Kafka Connect to generate mock data, creating ksqlDB streaming queries on those topics, and utilizing Confluent Control Center to monitor and analyze the event streaming queries.

## Getting Started

### Step 1: Create Project HOME Directory

```sh
     ./createLocalDirectory
```

### Step 2: Start the Confluence Platform stack

```sh
     # Create network
     docker network create task-tracker-network

     # Change directory to task-traker-kafka
     cd task-tracker-kafka

     docker compose up -d
```

### Step 3: Verify that the services are up and running

```bash
     docker ps
```
  
### Step 4: Restart the services

```bash
     docker compose restart <service-name>
```

### Step 5: Create Topics

```bash
      ./kafka-topics
```

### Step 6: Stop Services and Delete the instance

```bash
      docker compose stop
```

| **Service**         | **List Port**                            |
|---------------------|------------------------------------------|
| Schema Registry     | <http://localhost:8081>                  |
| rest-proxy          | <http://localhost:8082>                  |
| ksqlDB              | <http://localhost:8088/info>             |
| Control Center      | <http://localhost:9021/clusters>         |
| Connect             | <http://localhost:8083>                  |
| Broker              | 9091, 9092                               |

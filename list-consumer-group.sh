#!/bin/sh


# Docker Container Name
CONTAINER_NAME="broker"

# Kafka broker address
BROKER_ADDRESS="localhost:9092"

# Consumer Group name
GROUP="task-processing-group"

docker exec $CONTAINER_NAME /bin/sh -c "
    kafka-consumer-groups \
    --bootstrap-server $BROKER_ADDRESS \
    --list
"
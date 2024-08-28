#!/bin/sh


# Docker Container Name
CONTAINER_NAME="broker"

# Kafka broker address
BROKER_ADDRESS="localhost:9092"

# Topic name
TOPICS=(
    "UserInfoCreated"
    "UserInfoDeleted"
    "GroupInfoCreated"
    "GroupInfoDeleted"
    "TaskInfoCreated"
    "TaskInfoDeleted"
)

# Number of partitions
PARTITIONS=2

# Replication factor
REPLICATION_FACTOR=1

# Create topic

for TOPIC in "${TOPICS[@]}"; do
    docker exec $CONTAINER_NAME /bin/sh -c "
        kafka-topics --create \
            --bootstrap-server $BROKER_ADDRESS \
            --replication-factor $REPLICATION_FACTOR \
            --partitions $PARTITIONS \
            --topic $TOPIC 
    "

done



#!/bin/sh

BASE_DIR="${HOME}/tasktracker"

DIRS=(
    "${BASE_DIR}/broker/logs"
    "${BASE_DIR}/ksql-config"
)


for DIR in "${DIRS[@]}"; do
    echo "Creating directory: $DIR"
    sudo mkdir -p "$DIR"
    sudo chown -R "$USER" "$DIR"
    sudo chmod -R 775 "$DIR"

done

echo "All directory have been created and permission set"
                                                                                                                                                                                                            
                                                                   

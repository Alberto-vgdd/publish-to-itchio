#!/bin/bash
ITCHIO_USER="./itchio-username.txt"
VERSION="./game-version.txt"
SUPPORTED_PLATFORMS="./supported-platforms.txt"
BUILDS_DIR="./builds-directory"
GAME_NAME="./game-name.txt"


for platform in $(cat $SUPPORTED_PLATFORMS)
do
    BINARY_DIR=$BUILDS_DIR/$platform/
    if [ -d "$BINARY_DIR" ]
    then
        if [ "$(ls -A $BINARY_DIR)" ]; then
        echo "Publishing build for $platform"
        butler push $BINARY_DIR $ITCHIO_USER/$GAME_NAME:$platform --ignore "*DoNotShip*" --userversion-file $VERSION
        else
        echo "$BINARY_DIR is empty. Nothing to publish."
        fi
    else
        echo "Directory $BINARY_DIR not found."
    fi
done
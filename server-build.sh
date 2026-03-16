#!/bin/bash
rm -rf server-output
mkdir -p server-output
cd server-output

java -jar ../build-tools/packwiz-installer-bootstrap.jar -g -s server ../pack.toml
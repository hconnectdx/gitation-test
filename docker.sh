#!/bin/bash

#mvn install
mvn clean package -DskipTests

docker build -t polihealth-api:v0.1-develop .

#docker login
TAG_NAME=
BRANCH_NAME=

az acr build -t gitaction-test:v0.1-develop -r poliregistry \
   --subscription 398e0073-78e7-4e56-8d12-5500c5d2eed1 .


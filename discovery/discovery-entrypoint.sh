#!/bin/sh

echo 'Starting the custom script'


while ! nc -z config-server 8081
do
    echo "Waiting for upcoming Config Server"
    sleep 2
done


echo 'Pre-requisite done now moving on the execution of current container service'

nohup java -jar discovery.jar
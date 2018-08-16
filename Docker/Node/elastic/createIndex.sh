#!/bin/sh
# Front end app shows some errors if index are not found

echo "Waiting to Elastic Search to be up..."

# Wait 
until $(curl --output /dev/null --silent --head --fail http://localhost:9200); do
    printf '... waiting 4 Elastic\n'
    sleep 1
done
sleep 1

curl -X PUT http://localhost:9200/index_name
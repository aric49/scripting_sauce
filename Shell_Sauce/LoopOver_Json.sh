#!/bin/bash

#For Loop:
for i in {1..30}
do
#Generate a token
token=$(curl -X POST \
  https://identity.provider.com/oauth2 \
  -H 'Cache-Control: no-cache' \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -d 'grant_type=client_credentials' | jq -r '.access_token')

echo "==================================================="
#Issue request with Token captured with JQ
export GLOBAL_TOKEN=$token
echo "The Token is: $GLOBAL_TOKEN"
curl  -X POST \
  https://my.requesting.url.com \
  -H "Authorization: Bearer ${GLOBAL_TOKEN}" \
  -H 'Cache-Control: no-cache' \
  -H 'Content-Type: application/json' \
  -d '{
  "requestData": "Random Request",
  "otherData": "Misc Data"
}'
done

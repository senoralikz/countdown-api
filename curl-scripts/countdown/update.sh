#!/bin/bash

API="http://localhost:4741"
URL_PATH="/countdowns"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "countdown": {
      "event": "'"${EVENT}"'",
      "date": "'"${DATE}"'"
    }
  }'

echo

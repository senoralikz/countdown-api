#!/bin/bash

API="http://localhost:4741"
URL_PATH="/countdowns"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "countdown": {
      "event": "'"${EVENT}"'",
      "date": "'"${DATE}"'"
    }
  }'

echo

#!usr/bin/bash

BASE_URL=https://raw.githubusercontent.com/airbytehq/airbyte/master/

mkdir airbyte

# Any string is an array to POSIX shell. Space seperates values
all_files="run-ab-platform.sh docker-compose.yaml docker-compose.debug.yaml .env .env.dev flags.yml"

for file in $all_files; do
  curl "$BASE_URL/$file" > "airbyte/$file"
done

echo "Running ab-platform"
cd $(airbyte $0)
bash run-ab-platform.sh

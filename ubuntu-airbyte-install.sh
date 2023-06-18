#!usr/bin/bash

mkdir airbyte
echo "Changing directory to ./airbyte"
cd airbyte
curl https://raw.githubusercontent.com/airbytehq/airbyte/master/run-ab-platform.sh > run-ab-platform.sh
bash run-ab-platform.sh

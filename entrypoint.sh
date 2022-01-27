#!/bin/sh

set -e -x

cat << EOF > looker.yaml
base_url: "$1"
client_id: "$2"
client_secret: "$3"
lookml_dir: "/github/workspace/$4"
project_source_url: "$5"
connections: $(cat "/github/workspace/$6" | jq -r .)
output:
  file:
    directory: "$7"
EOF

echo "Generated looker.yaml:"
cat looker.yaml

python -m metaphor.looker looker.yaml

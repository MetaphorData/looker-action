#!/bin/sh

set -e -x

cat << EOF > looker.yaml
base_url: "$1"
client_id: "$2"
client_secret: "$3"
lookml_dir: "/github/workspace/$4"
output:
  file:
    path: "$5"
projectSourceUrl: "$6"
EOF

python -m metaphor.looker looker.yaml

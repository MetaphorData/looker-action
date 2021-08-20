#!/bin/sh

set -e -x

cat << EOF > looker.json
{
  "base_url": "$1",
  "client_id": "$2",
  "client_secret": "$3",
  "lookml_dir": "/github/workspace/$4",
  "api": null,
  "kinesis": null,
  "file": {
    "output": "$5"
  }
}
EOF

python -m metaphor.looker looker.json

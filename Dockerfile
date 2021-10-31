FROM python:3.7

RUN apt-get update
RUN apt-get install -y jq

RUN pip install "metaphor-connectors[looker]~=0.8.0"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

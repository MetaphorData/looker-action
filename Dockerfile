FROM python:3.7

RUN pip install "metaphor-connectors[looker]~=0.5.0"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

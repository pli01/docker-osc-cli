FROM python:3

ARG OSC_CLI_VERSION="1.6"

RUN pip3 install osc-sdk==${OSC_CLI_VERSION}

WORKDIR /project

ENTRYPOINT ["/usr/local/bin/osc-cli"]

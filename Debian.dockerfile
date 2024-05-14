ARG  DEBIAN_VERSION=12
FROM debian:${DEBIAN_VERSION}
ARG  PYTHON_VERSION=3.12
ENV  PYENV_ROOT=/usr/local/share/pyenv
ENV  PATH=$PYENV_ROOT/bin:$PATH
ENV  PYTHON_VERSION=${PYTHON_VERSION}
RUN  apt-get update && \
     apt-get install -y build-essential curl git \
             libbz2-dev libssl-dev libffi-dev libreadline-dev libsqlite3-dev liblzma-dev libncurses5-dev zlib1g-dev && \
     curl https://pyenv.run | bash
RUN  pyenv --version && pyenv install --verbose $PYTHON_VERSION
# Dockerfile for binder
# Reference: https://mybinder.readthedocs.io/en/latest/dockerfile.html#preparing-your-dockerfile

# See https://github.com/sagemath/sage/tree/develop/docker
FROM sagemath/sagemath:8.6

RUN sage -pip install jupyterlab
RUN sage -pip install nbconvert

# Copy the contents of the repo in ${HOME}
COPY --chown=sage:sage . ${HOME}

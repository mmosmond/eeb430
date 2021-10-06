# Dockerfile for binder
# Reference: https://mybinder.readthedocs.io/en/latest/dockerfile.html#preparing-your-dockerfile

# Kernel we'll use
# See https://github.com/sagemath/sage/tree/develop/docker
#FROM sagemath/sagemath:latest
FROM sagemath/sagemath:9.1-py3

# we'll run this in Jupyter Lab
# RUN sage -pip install jupyterlab
#RUN sage -pip install --no-cache notebook jupyterlab

# Copy the contents of the repo in ${HOME}
COPY --chown=sage:sage . ${HOME}

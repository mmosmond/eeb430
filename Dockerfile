# Dockerfile for binder
# Reference: https://mybinder.readthedocs.io/en/latest/dockerfile.html#preparing-your-dockerfile

# Kernel we'll use
# See https://github.com/sagemath/sage/tree/develop/docker
#FROM sagemath/sagemath:latest 
#while there is still an issue with sagemath + binder, try this workaround
FROM sagemathinc/cocalc:latest

# we'll run this in Jupyter Lab (this is automatic now)
#RUN sage -pip install --no-cache notebook jupyterlab

# Copy the contents of the repo in ${HOME}
COPY --chown=sage:sage . ${HOME}
# part of workaround
#COPY --chown=sage:sage ./* /home/sage/

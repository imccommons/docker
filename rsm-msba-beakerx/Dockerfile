FROM vnijs/rsm-msba-spark:latest

MAINTAINER Vincent Nijs "radiant@rady.ucsd.edu"

## install beakerx
COPY py_requirements.txt /home/rstudio/py_requirements.txt
RUN pip3 install -r /home/rstudio/py_requirements.txt \
  && beakerx install \
  && jupyter labextension install beakerx-jupyterlab

## removing kernels as suggested by JD Long (@CMastication)
RUN rm -rf /usr/share/jupyter/kernels/clojure \
  && rm -rf /usr/share/jupyter/kernels/groovy \
  && rm -rf /usr/share/jupyter/kernels/java \
  && rm -rf /usr/share/jupyter/kernels/kotlin \
  && rm -rf /usr/share/jupyter/kernels/scala

## update R-packages
RUN R -e 'radiant.update::radiant.update()'

EXPOSE 8080 8787 8989

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]

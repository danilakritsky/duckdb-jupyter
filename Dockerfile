FROM jupyter/base-notebook:latest

# https://duckdb.org/docs/guides/python/jupyter.html
RUN pip install \
    duckdb \ 
    jupysql \
    matplotlib \
    duckdb-engine \
    pandas \
    jupyterlab-vim

# disable vim bindings by default
RUN jupyter labextension disable @axlair/jupyterlab_vim

RUN echo 'alias vimon="jupyter labextension enable @axlair/jupyterlab_vim"' >> ~/.bashrc

# Example usage of the alias
RUN /bin/bash -c "source ~/.bashrc"

# Change the entrypoint
ENTRYPOINT ["tini", "-g", "--"]
CMD [ \
    "jupyter", \
    "lab", \
    "--ip=0.0.0.0", \
    "--no-browser", \
    "--allow-root", \
    "--NotebookApp.token=''", \
    "--NotebookApp.password=''" \
    ]

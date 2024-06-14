FROM jupyter/base-notebook:latest

# https://duckdb.org/docs/guides/python/jupyter.html
RUN pip install duckdb jupysql matplotlib duckdb-engine

# Change the entrypoint
ENTRYPOINT ["tini", "-g", "--"]
CMD [
    "jupyter",
    "lab",
    "--ip=0.0.0.0",
    "--no-browser",
    "--allow-root",
    "--NotebookApp.token=''",
    "--NotebookApp.password=''"
    ]

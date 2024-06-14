# duckdb-jupyter
Query local files with DuckDB using Jupyter Notebooks

## Getting Started

### Prerequisites
- Docker
- Docker Compose
- Make

### Setup

1. Clone the repository and start the container
   ```bash
   git clone https://github.com/danilakritsky/duckdb-jupyter.git
   cd duckdb-jupyter
   make up
   ```
2. Go to http://localhost:8888 to access JupyterLab

## Working with Notebooks
This repository includes a `notebooks` directory mounted as a volume in the Jupyter Notebook container.
You can add your Jupyter Notebooks to this directory, and they will be available within the container.
An example notebook from DuckDB `DuckDB_in_Jupyter_Notebooks.ipynb` is included to help you get started with DuckDB.

## Working with Data
The `data` directory is mounted as a volume in the DuckDB container.
You can add your data files to this directory, and they will be accessible from within the DuckDB instance.
Example parquet and csv files are provided for testing purposes.

## Useful links
[Working with DuckDB from Jupyter Notebooks](https://duckdb.org/docs/guides/python/jupyter.html)

# Required so Python can find pystata package
export PYTHONPATH=/Applications/Stata/utilities

# Setup virtual environment
uv venv --python 3.13

# Activate the virtual environment
source .venv/bin/activate

# Install Python dependency packages for nbstata
uv pip install jupyterlab nbstata jupyterlab_stata_highlight2
# Additional Python packages if using parameterised Quarto documents
# uv pip install papermill python-dotenv jupyter-cache

# Setup the nbstata Jupyter kernel
python -m nbstata.install

# Do work
quarto render index.qmd

# Deactivate virtual environment
deactivate

# Alternative code to define as Python project, e.g. record pyproject.toml
export PYTHONPATH=/Applications/Stata/utilities
uv init
uv add jupyterlab nbstata jupyterlab_stata_highlight2
source .venv/bin/activate
python -m nbstata.install
quarto render index.qmd
deactivate

# To restore from pyproject.toml and uv.lock (recreates .venv)
# export PYTHONPATH=/Applications/Stata/utilities
# uv sync
# source .venv/bin/activate
# python -m nbstata.install
# quarto render index.qmd
# deactivate

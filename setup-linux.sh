
# Required so that directory containing stata/stata-mp binary is on PATH
export PATH=$PATH:/usr/local/stata18

# Required so nbstata can find pystata package
export PYTHONPATH=/usr/local/stata18/utilities

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
# quarto render index.qmd --execute --execute-daemon-restart

# Deactivate virtual environment
deactivate

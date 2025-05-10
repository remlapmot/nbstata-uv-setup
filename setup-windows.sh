# Required so Python can find pystata package
export PYTHONPATH="C:/Program Files/Stata18/utilities"

# Setup virtual environment
uv venv --python 3.13

# Activate the virtual environment
source .venv/Scripts/activate

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

#!/bin/bash
$HOME/miniconda/bin/jupyter-notebook --allow-root --ip='0.0.0.0' --notebook-dir=/notebooks --no-browser --NotebookApp.token="$1" 

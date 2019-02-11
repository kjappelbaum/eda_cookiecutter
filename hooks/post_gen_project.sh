#!/bin/bash

project_name="{{ cookiecutter.project_name }}"
env_name="ml-$project_name"

conda env create --file environment.yml
source activate "$env_name"

python -m ipykernel install --user --name "$env_name" --display-name "Python ($env_name)"


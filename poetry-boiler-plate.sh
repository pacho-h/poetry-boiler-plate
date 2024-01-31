#!/bin/bash
# generate new poetry project
# $1: PROJECT_NAME 
if [ -z $1 ]
then 
    echo "PROJECT_NAME is required."
    exit 1
fi
poetry new $1

# move into new poetry project directory
cd $1

# set python version
if [ -z $2 ]
then 
    pyenv local $2
    if [ $? -ne 0 ]
    then
        pyenv install $2
        pyenv local $2
    else
        exit 1
    fi
fi

# set poetry env
poetry env use python

# install packages for lint
poetry add --group dev isort
poetry add --group dev black
poetry add --group dev ruff
cat ../poetry-boiler-plate/lint_options >> pyproject.toml

# install dev dependencies
poetry add --group dev pytest
poetry add --group dev pytest-watcher
poetry add --group dev pynvim

# install dotenv
poetry add python-dotenv


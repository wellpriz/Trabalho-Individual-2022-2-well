#!/bin/bash

# Install Poetry
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python

# Add Poetry to PATH
export PATH="$HOME/.poetry/bin:$PATH"
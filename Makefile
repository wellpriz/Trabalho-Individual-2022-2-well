install:
	chmod +x install_doxygen.sh
	chmod +x install_poetry.sh
	./install_doxygen.sh
	./install_poetry.sh
	poetry install
	poetry run pip install sphinx
	poetry run pip install flake8 autopep8
	poetry run pip install black
	poetry run pip install -r requirements.txt
	poetry add autopep8

doxyfile:
	doxygen -g Doxyfile

docs: doxyfile
	doxygen
	poetry run sphinx-build -b html source docs

lint:
	poetry run autopep8 --in-place --recursive .
	poetry run flake8

format:
	black .

test:
	poetry run pytest

publish:
	poetry build
	poetry publish

all: install lint docs format
.PHONY: install docs lint format all
setup:
	python3 -m venv venv

install:
	pip install -r requirements.txt

freeze:
	pip freeze > requirements.txt

test:
	python -m pytest test/*.py
	
format:
	black *.py

lint:
	pylint --disable=R,C scripts/*.py 
	
all: install lint test

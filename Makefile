setup:
	python3 -m venv ~/.data-science-on-gcp

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

validate-circleci:
	# See https://circleci.com/docs/2.0/local-cli/#processing-a-config
	circleci config process .circleci/config.yml

run-circleci-local:
	# See https://circleci.com/docs/2.0/local-cli/#running-a-job
	circleci local execute


lint:
	hadolint Dockerfile 
	pylint --disable=R,C,W1203 main.py

all: install lint test
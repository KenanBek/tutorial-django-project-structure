ROOT_DIR:=./
SRC_DIR:=./src
VIRTUALENV:=$(shell which virtualenv)
PIP:="venv/bin/pip"
CMD_FROM_VENV:=". venv/bin/activate; which"
PYTHON=$(shell "$(CMD_FROM_VENV)" "python")

hello:
	@echo "Hello, World!"

venv:
	@${VIRTUALENV} venv -p python3
	@${PIP} install -r ${ROOT_DIR}/requirements/requirements.txt

run: venv
	@cd src
	@${PYTHON} ${SRC_DIR}/manage.py runserver

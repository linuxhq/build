# Makefile

all: venv galaxy onepassword pre-commit

clean:
	$(RM) -r venv

galaxy:
	venv/bin/ansible-galaxy install -r requirements.yml

pre-commit:
	venv/bin/pre-commit install

onepassword:
	HOMEBREW_NO_AUTO_UPDATE=1 brew install --cask --quiet 1password-cli

venv:
	test -d venv || /usr/bin/python3 -m venv venv
	. venv/bin/activate
	PYTHONWARNINGS='ignore:DEPRECATION' venv/bin/pip install -r requirements.txt

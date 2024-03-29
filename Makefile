# Makefile

all: venv galaxy onepassword

clean:
	$(RM) -r venv
	find . -name '*.pyc' -exec $(RM) -rf {} \;

galaxy:
	venv/bin/ansible-galaxy install -f -r requirements.yml

onepassword:
	HOMEBREW_NO_AUTO_UPDATE=1 brew install --cask --quiet 1password-cli

venv:
	test -d venv || /usr/bin/python3 -m venv venv
	. venv/bin/activate
	PYTHONWARNINGS='ignore:DEPRECATION' venv/bin/pip install -r requirements.txt

TAGS ?= all

all: provision

install: install-xcode install-ansible install-repo

install-ansible: /usr/local/bin/pip /usr/local/bin/ansible-playbook

install-xcode:
	xcode-select -p 2>&1 >/dev/null || xcode-select --install
	if [ "`xcode-select -p`" != "/Library/Developer/CommandLineTools" ]; then sudo xcode-select -switch /Library/Developer/CommandLineTools; fi

install-repo: ./roles ./geerlingguy.mac-dev-playbook/main.yml

provision:
	ansible-playbook main.yml -i geerlingguy.mac-dev-playbook/inventory -K --tags="$(TAGS)"

clean:
	rm -rf ./roles

.PHONY: all install install-ansible install-xcode install-repo provision clean

./geerlingguy.mac-dev-playbook/main.yml:
	git submodule update --init --recursive

/usr/local/bin/pip:
	sudo easy_install pip

/usr/local/bin/ansible-playbook: /usr/local/bin/pip
	sudo pip install ansible

./roles:
	ansible-galaxy install -r requirements.yml

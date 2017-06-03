TAGS ?= all

all: provision

install: install-ansible install-xcode install-repo

install-ansible: /usr/local/bin/pip /usr/local/bin/ansible

install-xcode:
	xcode-select -p 2>&1 >/dev/null || xcode-select --install
	if [ "`xcode-select -p`" != "/Library/Developer/CommandLineTools" ]; then sudo xcode-select -switch /Library/Developer/CommandLineTools; fi

install-repo: ./roles ./geerlingguy.mac-dev-playbook/main.yml

provision:
	ansible-playbook main.yml -i geerlingguy.mac-dev-playbook/inventory -K --tags="$(TAGS)"

.PHONY: install provision install-ansible install-xcode install-repo

./geerlingguy.mac-dev-playbook/main.yml:
	git submodule update --init --recursive

/usr/local/bin/pip:
	s/udo easy_install pip

/usr/local/bin/ansible-playbook: /usr/local/bin/pip
	sudo pip install ansible

./roles:
	ansible-galaxy install -r requirements.yml

clean:
	rm -rf ./roles

.PHONY: clean

# Mac Development Ansible Playbook

This playbook installs and configures most of the software I use on my Mac for web and software development. The playbook contained in this repo does nothing except delegate all functionality to [`geerlingguy/mac-dev-playbook`](https://github.com/geerlingguy/mac-dev-playbook)'s playbook.

*See also*:
 - [`geerlingguy/mac-dev-playbook`](https://github.com/geerlingguy/mac-dev-playbook) (the actual playbook used to provision)
 - [`oxyc/dotfiles`](https://github.com/oxyc/dotfiles) (my dotfiles which will be installed)
 - [`oxyc/vimrc`](https://github.com/oxyc/vimrc) (my vimrc which will be installed)

## Installation

    # Install Ansible
    sudo easy_install pip
    sudo pip install ansible

    # Install Apple's command line tools
    xcode-select --install
    sudo xcode-select -switch /Library/Developer/CommandLineTools

    # Clone this repository to your local drive
    git clone --recursive https://github.com/oxyc/mac-playbook.git
    cd mac-playbook

    # Install required Ansible roles
    ansible-galaxy install -r requirements.yml

    # Run the playbook.
    ansible-playbook main.yml -i playbook/inventory -K

### Running a specific set of tagged tasks

You can filter which part of the provisioning process to run by specifying a set of tags using `ansible-playbook`'s `--tags` flag. The tags available are `dotfiles`, `homebrew`, `mas` and `osx`.

    ansible-playook main.yml -i playbook/inventory -K --tags "dotfiles,homebrew"

### Screenshot

![Screenshot](http://i.imgur.com/XJjQx0C.jpg)

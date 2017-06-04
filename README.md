# Mac Development Ansible Playbook

This playbook installs and configures most of the software I use on my Mac for web and software development. The playbook contained in this repo does nothing except delegate all functionality to [`geerlingguy/mac-dev-playbook`](https://github.com/geerlingguy/mac-dev-playbook)'s playbook.

*See also*:
 - [`geerlingguy/mac-dev-playbook`](https://github.com/geerlingguy/mac-dev-playbook) (the actual playbook used to provision)
 - [`oxyc/dotfiles`](https://github.com/oxyc/dotfiles) (my dotfiles which will be installed)
 - [`oxyc/vimrc`](https://github.com/oxyc/vimrc) (my vimrc which will be installed)

## Installation

    # Clone this repository to your local drive.
    git clone --recursive https://github.com/oxyc/mac-playbook.git
    cd mac-playbook

    # Install dependencies.
    make install

    # Run the playbook.
    make provision

### Running a specific set of tagged tasks

You can filter which part of the provisioning process to run by specifying a set of tags using `ansible-playbook`'s `--tags` flag. The tags available are `dotfiles`, `homebrew`, `mas` and `osx`.

    ansible-playook main.yml -i geerlingguy.mac-dev-playbook/inventory -K --tags "dotfiles,homebrew"

### Screenshots

![Screenshot](http://i.imgur.com/XJjQx0C.jpg)

[chunkwm](https://github.com/koekeishiya/chunkwm) as my tiling window manager and [khd](https://github.com/koekeishiya/khd) as my hotkey dameon. This will be added to the playbook once chunkwm hits alpha.

![vimrc](http://i.imgur.com/MFYk8fT.jpg)

[iTerm2](https://www.iterm2.com/) running [neovim](https://neovim.io/) using my [vimrc repository](https://github.com/oxyc/vimrc).

![IINA](http://i.imgur.com/doIWf0i.jpg)

[IINA](https://lhc70000.github.io/iina/) as Video player.

## Future additions

### Things that still need to be done manually

1. Remap Caps Lock to Escape (requires macOS Sierra 10.12.1+).
1. Configure extra Mail and/or Calendar accounts (e.g. Google, Exchange, etc.).

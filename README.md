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

1. Create 6 mission control desktops and bind `^1`, `^2`… as _Switch to Desktop_ shortcuts under _Keyboard preferences_.
1. Configure _Language & Region_ preferences.
1. Turn on FileVault under _Security & Privacy_ preferences.
1. Allow `chunkwm`, `khd` and `iTerm.app` Accessibility control under _Security & Privacy_ preferences.
1. Turn off [_Secure Keyboard entry_](https://github.com/koekeishiya/khd/issues/7) for `khd` to function.
1. Configure `Alfred.app` with `⌘P` as the hotkey and _Alfred dark_ as the theme.
1. Remove `iTunes helper` from _Login items_ under _User & Groups_ preferences.
1. Disable gesture to Zoom under _Accessibility_ preferences.
1. Configure extra Mail and/or Calendar accounts (e.g. Google, Exchange, etc.).

### Research / todos

1. Is there a default binding for input source? Possibly remap this using khd.
1. Which default shortcut keys need to be disabled under _Keyboard preferences_?

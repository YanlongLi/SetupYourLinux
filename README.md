# Set Up Your Linux

## Scripts

- [mountwinshare](./scripts/bin/mountwinshare)  (required pacakage: `cifs-utils`)
```
usage: change the script as your usage
$> mountwinshare //<host>/<shared>/<path> /<mount>/<point>
```

## Systemd Files

- [jupyter-notebook.service](systemd/system/jupyter-notebook.service)


## Softwares

| Ubuntu       |               |                   |             |
| ------------ | ------------- | ----------------- | ----------- |
| python-dev   | python3-dev   | python-setuptools | python-pip  |
| node         | nodejs-legacy | npm               |             |
| tmux         | ssh           | openssh-client    | zsh         |
| cifs-utils   | samba         |                   |             |
| texlive-full | gvim          |                   |             |
| clang        | llvm          | libboost-all-dev  |             |
| mono-xbuild  | mono-dmcs     |                   |             |
| cmake        |               |                   |             |


### Python packages

| ~            |        |
| ------------ | ------ |
| autopep8     | yapf   |

### Nodejs packages

| ~            |        |
| ------------ |--------|
| js-beautify  | remark |

### Others

| ~            |          |      |         |
| ------------ | -------- | ---- | ------- |
| tidy         | astyle   | htop | thefuck |


## Configurations

### Bash

1. [init_bash.sh](./init_bash.sh) to init the bash configurations, `$> make bash`

What does this script do: Copy files in [./bash](./bash/) to `~/`

### Zsh / On-my-zsh

1. [Getting oh-my-zsh to work in Ubuntu](https://gist.github.com/tsabat/1498393), or use [install_oh-my-zsh.sh](./install_oh-my-zsh.sh) to install oh-my-zsh.

Prereq:

```bash
apt-get install zsh
apt-get install git-core
```

Getting zsh to work in ubuntu is weird, since `sh` does not understand the `source` command.  So, you do this to install zsh

    wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

and then you change your shell to zsh

    chsh -s `which zsh`

and then restart

    sudo shutdown -r 0

This problem is explained in depth in [this issue](https://github.com/robbyrussell/oh-my-zsh/issues/227#issuecomment-825773)

2. Use script [init_zsh.sh](./init_zsh.sh) to configure zsh, `$> make zsh`

What does this script do:
(1) Install plugin [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) and [zsh-auto-suggestions](https://github.com/zsh-users/zsh-autosuggestions)
to `~/.oh-my-zsh/plugins` directory.
(2) Copy [zshrc](./zsh/zshrc) and [zprofile](./zsh/zprofile) to `~/`

3. Plugins
- additional oh-my-zsh plugins ( [zsh-users](https://github.com/zsh-users) )

### Vim

Goto repo [Set Up Your Vim](https://github.com/YanlongLi/SetupYourVim)

### Jupyter

```
$> pip2 install jupyter
$> pip2 install python2-numpy
$> pip2 install python2-matplotlib
$> pip2 install python2-scipy
```

- [Managing IPython notebook server via systemd: Part-I](https://amitksaha.wordpress.com/2013/09/22/managing-ipython-notebook-server-via-systemd-part-i/)
    - `man systemd.unit`
    - example config file [jupyter-notebook.service](systemd/system/jupyter-notebook.service)
- [Running a notebook server](http://jupyter-notebook.readthedocs.io/en/latest/public_server.html)
    - Include setting password for notebook server

### Openbox (window manager)

Copy folder [home/config/openbox/](./home/config/openbox/) to `~/.config/opoenbox/` or just `$> make openbox`
- [autostart](./home/config/openbox/autostart)
- [environment](./home/config/openbox/environment)
- [menu.xml](./home/config/openbox/menu.xml)
- [rc.xml](./home/config/openbox/rc.xml)

### llpp (pdf viewer)

Copy [llpp.conf](./home/config/llpp.conf) to `~/.config/llpp.conf` or just `$> make llpp`

## Arch

### Config Yaourt
Append content below to `/etc/pacman.conf`
```
[archlinuxfr]
SigLevel = Never
Server = http://repo.archlinux.fr/$arch
```

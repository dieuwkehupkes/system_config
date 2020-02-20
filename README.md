# Startup system and config scripts

This repository contains some information helping me to setup a new (ubuntu) system
The `startup.sh` script can be used to install the most common tools, this README contains some references to useful information.

## Ubuntu 18.04
Ubuntu 18.04 does not have a workspace grid anymore.
To regain this, install gnome-tweaks:
```
sudo apt install gnome-tweaks
```

And visit [https://extensions.gnome.org/extension/484/workspace-grid/](the workspace-grid website).

## Adding new ssh keys to github

```
# ssh-keygen -t rsa -b 4096 -C "dieuwkehupkes@gmail.com"
# eval "$(ssh-agent -s)"
# ssh-add ~/.ssh/id_rsa
```

Copy `id_rsa.pub` and add as key to github.



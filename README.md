# ckopp-env
- Set up for MacOS machine

### Components
#### `./lists/`
- Contains lists of things to install
- Brewfile
  - List of brew packages installed
- vsc_install_list.sh
  - bash script containing install commands for all vscode extensions

#### `Makefile`
- Defines commands to automate the install and package processes
- `make sync` - generate new Brewfile and vsc_install_list with most up to date packages -- also `brew update && brew upgrade` all packages
- `make fresh` - freshly install all the Brew packages and vscode extensions inside the `lists` directory

#### `./hack/`
- Contains bash scripts that correspond to the `Makefile` commands

### Setup
#### Mac OS / WSL
- clone the repo using `git` or `gh` cli
- open `ckopp-env` directory
- run `make fresh`
  - if `make` is not recognized, then run `./hack/fresh_install.sh`
  - or, install `make` via options presented in the terminal

### TODO
- make windows compatible scripts/package fetcher
- decide whether to use chocolatey, winget, or something else

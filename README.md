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
- `make sync` - generate new Brewfile and vsc_install_list with most up to date packages
- `make fresh` - freshly install all the Brew packages and vscode extensions inside the `lists` directory

#### `./hack/`
- Contains bash scripts that correspond to the `Makefile` commands
### TODO
- make windows compatible scripts/package fetcher
- decide whether to use chocolatey, winget, or something else
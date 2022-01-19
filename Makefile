.PHONY: sync help fresh

help:  ## this help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST) | sort

sync:  ## update Brewfile and ./vsc_install_list.sh
	./hack/generate_install_lists.sh

fresh:  ## do fresh install of brew, vsc, and all related extensions/applications
	./hack/fresh_install.sh
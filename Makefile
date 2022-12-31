SHELL := /bin/bash
HOME_MANAGER_CHANNEL := https://github.com/nix-community/home-manager/archive/release-22.05.tar.gz


# Override the default config with our config.
update: 
	for nix_file in \
		"configuration.nix" \
		"git.nix" \
		"home.nix" ; \
	do \
		cp $${nix_file} ~/.config/nixpkgs/$${nix_file}; \
	done ;
	# build the home environment
	home-manager switch 


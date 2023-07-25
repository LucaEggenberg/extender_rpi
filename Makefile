install: extender
	@if [ $(shell id -u) -ne 0 ]; then \
		echo "You need to run as root"; \
		exit 1; \
	else \
		echo "Installing Extender ... "; \
		cp extender /usr/bin/ ; \
	fi

uninstall: 
	@if [ $(shell id -u) -ne 0 ]; then \
		echo "You need to run as root"; \
		exit 1; \
	else \
		echo "Uninstalling Extender ... "; \
		rm -f /usr/bin/extender; \
	fi

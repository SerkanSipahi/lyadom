
BUILD ?= build

default:
	@echo ""
	@echo "Available Targets:"
	@echo ""
	@echo "   make build system=<name> module=<name>"
	@echo "      @systems:"
	@echo "       - traceur"
	@echo "       - 6to5"
	@echo "       - browser"
	@echo "       - native"
	@echo "      @default:"
	@echo "       - system=traceur"
	@echo ""
	@echo "      @modules:"
	@echo "       - amd"
	@echo "       - common"
	@echo "       - ignore"
	@echo "       - system"
	@echo "       - umd"
	@echo "      @default:"
	@echo "       - module=system"
	@echo ""
	@echo "   make clean"
	@echo "   make clean-node_modules"
	@echo "   make npm-install"
	@echo ""

build: npm-install create-dirs

clean: clean-node_modules clean-dirs

clean-dirs:
	rm -rf $(BUILD)

clean-node_modules:
	rm -rf node_modules

create-build:
	[ -d $(BUILD) ] ||  mkdir $(BUILD)

npm-install:
	npm install

.PHONY: build clean clean-build clean-node_modules create-build default npm-install
MAKEFLAGS = -s
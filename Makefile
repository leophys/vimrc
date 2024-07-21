DOCKER ?= docker
ORG ?= leophys
IMAGE ?= $(ORG)/vim
TAG ?= dev

.PHONY: build
build:
	$(DOCKER) build \
		--build-arg UID=$$(id -u) \
		--build-arg GID=$$(id -g) \
		-t $(IMAGE):$(TAG) .

.PHONY: dev
dev:
	$(DOCKER) run --rm \
		-v $$PWD:/home/vim/.vim \
		-v $$EXTRA:$$EXTRA \
		-ti $(IMAGE):$(TAG) \
		${TARGET}

.PHONY: dbg
dbg:
	$(DOCKER) run --rm \
		-v $$PWD:/home/vim/.vim \
		-v $$EXTRA:$$EXTRA \
		-e DEBUG=1 \
		--entrypoint /usr/bin/zsh \
		-ti $(IMAGE):$(TAG) \

.PHONY: install
install:
	ln -s $$PWD ~/.vim
	$(MAKE) dev EXTRA=$$HOME/.vim TARGET="+PlugInstall +qall"
	$(MAKE) dev EXTRA=$$HOME/.vim TARGET="+LspInstallServer gopls +qall"
	$(MAKE) dev EXTRA=$$HOME/.vim TARGET="+LspInstallServer rust-analyzer +qall"
	$(MAKE) dev EXTRA=$$HOME/.vim TARGET="+LspInstallServer ruff-lsp +qall"
	$(MAKE) dev EXTRA=$$HOME/.vim TARGET="+LspInstallServer typescript-language-server +qall"
	$(MAKE) dev EXTRA=$$HOME/.vim TARGET="+LspInstallServer clangd +qall"
	$(MAKE) dev EXTRA=$$HOME/.vim TARGET="+LspInstallServer bufls +qall"
	$(MAKE) dev EXTRA=$$HOME/.vim TARGET="+LspInstallServer jsonnet-language-server +qall"
	$(MAKE) dev EXTRA=$$HOME/.vim TARGET="+LspInstallServer pylsp +qall"
	$(MAKE) dev EXTRA=$$HOME/.vim TARGET="+LspInstallServer terraform-ls +qall"

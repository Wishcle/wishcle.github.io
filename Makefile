
.PHONY: all
all: test

.PHONY: install
install:
	which npx
	npx prettier --version

.PHONY: test
test: lint

.PHONY: lint
lint:
	npx prettier . --check

.PHONY: fix
fix:
	npx prettier . --check --write

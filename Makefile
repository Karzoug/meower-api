TEMP_BIN     := /var/tmp/meower/api/bin
BUF_VERSION  := 1.46.0

## lint: run linters
.PHONY: lint
lint:
	$(TEMP_BIN)/buf lint

## dev-install-deps: install dependencies with fixed versions in a temporary directory
dev-install-deps:
	GOBIN=$(TEMP_BIN) go install github.com/bufbuild/buf/cmd/buf@v$(BUF_VERSION)
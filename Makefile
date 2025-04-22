 // Assisted by watsonx Code Assistant 
 
VERSION ?= $(shell grep "var Version" version.go | cut -d '"' -f 2)

.PHONY: build test version release

build:
	go build -o asset-generation

test:
	go test -v ./...

version:
	@echo "Current version: $(VERSION)"

release:
	@echo "Running release script..."
	./release.sh $(VERSION)
	@echo "Released version: $(VERSION)"
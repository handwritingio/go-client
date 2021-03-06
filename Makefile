.PHONY: test
test: ## Run relevant tests
	go test ./handwritingio -coverprofile=coverage.out && \
	go vet ./handwritingio && \
	golint ./handwritingio

.PHONY: help
help: # Borrowed from http://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

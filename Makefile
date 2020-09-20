.PHONY: all dev install build deploy

all: build ## Build the project

dev: ## Run in dev mode with reloading
	npm run dev

intall: ## Install dependencies
	npm i

build: ## Build project
	npm run build

build-static: ## Build static project
	npm run export

deploy: install build-static ## Deploy to nyrst.tools
	up deploy production

help: ## Print this message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

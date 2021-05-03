help:  ## Show my options.
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

build: ## Do build for wasm.
	GOOS=js GOARCH=wasm go build -o main.wasm

http: ## Start a HTTP server.
	goexec 'http.ListenAndServe(":8080", http.FileServer(http.Dir(".")))'

open: ## Open the index.html
	open -a '/Applications/Google Chrome.app' http://localhost:8080
build-js:
	@echo "Building JS"
	@cd node-binding && yarn build

run-js:
	@cd node-binding && node test.js

build-py:
	@echo "Building Python"
	@cd python-binding && maturin develop

run-py:
	@cd python-binding && rye run ipython

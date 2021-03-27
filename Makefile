.PHONY: build
build:
	cargo build --release

.PHONY: lint
lint:
	cargo clippy

.PHONY: test
test: build
	sh ci/scripts/run-test-python.sh	

.PHONY: clean
clean:
	rm -rf python/rustpy.so target Cargo.lock

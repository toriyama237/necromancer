.DEFAULT_GOAL := help
.PHONY: help setup fmt lint test check deny compliance up down

help: ## Show available targets
	@grep -E '^[a-z-]+:.*## ' $(MAKEFILE_LIST) | awk -F':.*## ' '{printf "  \033[32m%-12s\033[0m %s\n", $$1, $$2}'

setup: ## Install git hooks and verify the toolchain
	git config core.hooksPath .githooks
	rustup show active-toolchain
	@echo "✔ Git hooks installed (.githooks)."

fmt: ## Format all code
	cargo fmt --all

lint: ## Clippy with warnings as errors
	cargo clippy --workspace --all-targets -- -D warnings

test: ## Run all tests (unit + property-based)
	cargo test --workspace

deny: ## License and advisory audit (needs cargo-deny)
	cargo deny check

compliance: ## Hackathon submission requirements
	./scripts/check-compliance.sh

check: compliance ## Everything CI runs (except deny)
	cargo fmt --all -- --check
	$(MAKE) lint test

up: ## Start the demo stack
	docker compose -f deploy/docker-compose.yml up -d

down: ## Stop the demo stack
	docker compose -f deploy/docker-compose.yml down

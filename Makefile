# Default shell
SHELL := /bin/bash

# Default goal
.DEFAULT_GOAL := panic

# Goals
.PHONY: check
check: lint stan audit

.PHONY: audit
audit: ./node_modules ./package-lock.json
	npm audit --audit-level info --include prod --include dev --include peer --include optional

.PHONY: stan
stan: ./node_modules/.bin/tsc
	./node_modules/.bin/tsc --noEmit

.PHONY: lint
lint: ./node_modules/.bin/prettier ./node_modules/.bin/eslint
	./node_modules/.bin/prettier -c .
	./node_modules/.bin/eslint .

.PHONY: fix
fix: ./node_modules/.bin/prettier ./node_modules/.bin/eslint
	./node_modules/.bin/prettier -w .
	./node_modules/.bin/eslint --fix .

.PHONY: clean
clean:
	rm -rf ./node_modules
	rm -rf ./package-lock.json
	rm -rf ./dist

.PHONY: update
update:
	npm update --install-links --include prod --include dev --include peer --include optional

.PHONY: transpile
transpile: ./node_modules/.bin/tsc
	./node_modules/.bin/tsc

# Deploy / Release
.PHONY: local
local:
	npm install --install-links --include prod --include dev --include peer --include optional
	./node_modules/.bin/tsc

.PHONY: testing
testing: local

.PHONY: development
development: testing

.PHONY: staging
staging: development

.PHONY: production
production: staging

# Dependencies
./node_modules ./package-lock.json ./node_modules/.bin/prettier ./node_modules/.bin/eslint ./node_modules/.bin/tsc:
	npm install --install-links --include prod --include dev --include peer --include optional

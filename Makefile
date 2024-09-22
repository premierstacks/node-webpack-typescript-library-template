# Default shell
SHELL := /bin/bash

# Default goal
.DEFAULT_GOAL := never

# Goals
.PHONY: audit
audit: audit_npm

.PHONY: audit_npm
audit_npm: ./package-lock.json
	npm audit --audit-level info --include prod --include dev --include peer --include optional

.PHONY: check
check: lint stan audit

.PHONY: clean
clean:
	git clean -xfd ./node_modules ./package-lock.json ./dist

.PHONY: development
development: install webpack-development

.PHONY: distclean
distclean: clean
	git clean -xfd

.PHONY: fix
fix: fix_eslint fix_prettier

.PHONY: fix_eslint
fix_eslint: ./node_modules/.bin/eslint
	./node_modules/.bin/eslint --fix .

.PHONY: fix_prettier
fix_prettier: ./node_modules/.bin/prettier
	./node_modules/.bin/prettier -w .

.PHONY: install
install: install-npm

.PHONY: install-npm
install-npm:
	npm install --install-links --include prod --include dev --include peer --include optional

.PHONY: lint
lint: lint_eslint lint_prettier

.PHONY: lint_eslint
lint_eslint: ./node_modules/.bin/eslint
	./node_modules/.bin/eslint .

.PHONY: lint_prettier
lint_prettier: ./node_modules/.bin/prettier
	./node_modules/.bin/prettier -c .

.PHONY: local
local: install webpack-development

.PHONY: production
production: install webpack-production

.PHONY: staging
staging: install webpack-production

.PHONY: stan
stan: stan_tsc

.PHONY: stan_tsc
stan_tsc: ./node_modules/.bin/tsc
	./node_modules/.bin/tsc --noEmit

.PHONY: start
start: ./dist/index.cjs
	node ./dist/index.cjs

.PHONY: testing
testing: install webpack-development

.PHONY: update
update: update-npm

.PHONY: update-npm
update-npm:
	npm update --install-links --include prod --include dev --include peer --include optional

.PHONY: webpack-development
webpack-development: ./node_modules/.bin/webpack-cli
	./node_modules/.bin/webpack-cli build --mode=development --node-env=development

.PHONY: webpack-production
webpack-production: ./node_modules/.bin/webpack-cli
	./node_modules/.bin/webpack-cli build --mode=production --node-env=production

# Dependencies
./node_modules ./node_modules/.bin/eslint ./node_modules/.bin/prettier ./node_modules/.bin/tsc ./node_modules/.bin/webpack-cli ./package-lock.json:
	npm install --install-links --include prod --include dev --include peer --include optional

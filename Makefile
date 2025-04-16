.DEFAULT_GOAL := help

### Section 1:

.PHONY: command1
command1: ## Command 1
	@echo "command1"

.PHONY: command2
command2: ## Command 2
	@echo "command2"

### Section 2:

TEXT ?= "Nothing"
.PHONY: echo
echo: ## [text] Test the application
	@echo $(TEXT)

.PHONY: help
help:
	@awk \
		-v tab_width=2 \
		-F ':.*?##' \
		-f makefile-docs.awk \
		$(MAKEFILE_LIST)

# Copyright 2023-2024 Broadcom. All Rights Reserved.
# SPDX-License-Identifier: BSD-2

docs-install:
	pip install mkdocs-material
	pip install --requirement docs/requirements.txt

docs-serve:
	mkdocs serve

docs-serve-live:
	mkdocs serve --livereload -w ./

docs-build:
	mkdocs build

docs-uninstall:
	pip uninstall mkdocs-material mkdocs -y
	pip uninstall --requirement docs/requirements.txt -y

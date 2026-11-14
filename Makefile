# Copyright 2026 Bruno Venceslau
# SPDX-License-Identifier: Apache-2.0

# The checks CI runs, from one entry point: make check.
#
# Every directory with an action.yml is an action, and its tests run in a
# Python of their own: two actions may both have a test_check.py. An action
# with no test fails here, since unittest exits 5 when it runs none.

.PHONY: check
check:
	@for action in */action.yml; do \
		dir=$${action%/action.yml}; \
		echo "== $$dir"; \
		python3 -m unittest discover -s "$$dir" || exit 1; \
	done

# This file is part of kuberpult.

# Kuberpult is free software: you can redistribute it and/or modify
# it under the terms of the Expat(MIT) License as published by
# the Free Software Foundation.

# Kuberpult is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# MIT License for more details.

# You should have received a copy of the MIT License
# along with kuberpult. If not, see <https://directory.fsf.org/wiki/License:Expat>.

# Copyright 2023 freiheit.com

include ../../../Makefile.variables

.PHONY: check-license
check-license:
	@make -C ../../.. check-license

.PHONY: build-main
build-main: check-license
	echo "on main"

.PHONY: build-pr
build-pr: check-license
	echo "on pull request"

.PHONY: cleanup-pr
cleanup-pr:
	echo "Nothing to clean"

.PHONY: cleanup-main
cleanup-main:
	echo "Nothing to clean"


.PHONY: get-builder-image
get-builder-image:
	@echo "$(KUBERPULT_BUILDER)"

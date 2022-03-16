#!/usr/bin/env bash

set -e
set -x

bash ./scripts/lint.sh

pytest \
    --cov=graphiql_strawberry_debug_toolbar \
    --cov=tests \
    --cov-report=term-missing \
    --cov-report=xml \
    tests ${@}

#!/bin/sh

set -e

if [ -n "$PROJECT_PATH" ]; then
  cd "$PROJECT_PATH"
fi

sh -c "sanity install && SANITY_AUTH_TOKEN=$SANITY_AUTH_TOKEN sanity $*"

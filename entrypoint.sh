#!/bin/sh
set -uo pipefail

WM_HOST=${WM_HOST}
WM_PORT=${WM_PORT}

nc -zvw10 "${WM_HOST}" "$WM_PORT"

RESULT="$?"

if [ "$RESULT" != "0" ]; then
  # make sure we exit with status "2" (critical)
  exit 2
fi

exit 0

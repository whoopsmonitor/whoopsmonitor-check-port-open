#!/bin/sh
set -uo pipefail

WM_HOST=${WM_HOST}
WM_PORT=${WM_PORT}

nc -zw10 "${WM_HOST}" "$WM_PORT" > /dev/null 2>&1

RESULT="$?"

if [ "$RESULT" != "0" ]; then
  # make sure we exit with status "2" (critical)
  exit 2
fi

exit 0

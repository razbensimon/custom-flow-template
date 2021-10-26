#!/usr/bin/env bash
set -x
set +e

echo "hello from null-with-script script.sh"
sleep ${SLEEP_IN_SECONDS:-1}
$ENV0_ROOT_DIR/sleep.sh
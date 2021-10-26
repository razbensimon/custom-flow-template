#!/usr/bin/env bash
set -x
set +e

echo "hello from null-with-script script.sh"
sleep ${SLEEP_IN_SECONDS:-1}

chmod +x $ENV0_ROOT_DIR/sleep.sh
$ENV0_ROOT_DIR/sleep.sh
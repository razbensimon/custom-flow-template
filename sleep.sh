#!/usr/bin/env bash
set -x
set +e

echo "hello from root script.sh"
sleep ${SLEEP_IN_SECONDS:-3}

ls $ENV0_TEMPLATE_DIR
cat $ENV0_TEMPLATE_DIR/env0.yml
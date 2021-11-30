#!/usr/bin/env bash
set -x
set +e

echo "hello from root script.sh"
sleep ${SLEEP_IN_SECONDS:-3}

ls $ENV0_TEMPLATE_DIR

FILE=$ENV0_TEMPLATE_DIR/env0.yml
if [[ -f "$FILE" ]]; then
    cat $FILE
fi

FILE=$ENV0_TEMPLATE_DIR/env0.yaml
if [[ -f "$FILE" ]]; then
    cat $FILE
fi

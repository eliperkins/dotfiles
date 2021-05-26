#!/usr/bin/env bash

set -euo pipefail

SCRIPT_NAME=${1:-"install.sh"}
# Send all our -x output to this file for later debugging
LOG_DIR="$HOME/install.sh.logs"
mkdir -p "${LOG_DIR}"
exec 1>"${LOG_DIR}/stdout"
exec 2>"${LOG_DIR}/stderr"
exec 19>"${LOG_DIR}/trace"
BASH_XTRACEFD=19

set -x

echo "${SCRIPT_NAME} start: $(date)"

chsh -s /bin/zsh

git pull
bash script/bootstrap

echo "${SCRIPT_NAME} end $(date)"
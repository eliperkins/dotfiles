#!/usr/bin/env bash

# Used for Codespaces

set -euo pipefail

SCRIPT_NAME=${1:-"install.sh"}

echo "${SCRIPT_NAME} start: $(date)"

git pull
bash script/bootstrap

echo "${SCRIPT_NAME} end $(date)"
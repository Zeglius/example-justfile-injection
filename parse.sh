#!/usr/bin/env bash
set -euxo pipefail

[[ $# -lt 1 ]] && { echo >&2 ""; exit 1; }

input="$1"
shift

gpp "$(realpath "$input")" >&1 | exec just --justfile /dev/stdin "$@"
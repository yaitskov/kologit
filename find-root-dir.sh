#!/bin/env bash

export ROOT_DIR="$PWD"
while : ; do
  [ "$ROOT_DIR" == "/" ] && { echo 'Git root folder is not found'; exit 1; }
  [ -d "$ROOT_DIR/.git" ] && break
  export ROOT_DIR="$(dirname "$ROOT_DIR")"
done

export BRANCH_LRU="$ROOT_DIR"/.kologit/branch-switch-lru

# track branch switching history
mkdir -p "$ROOT_DIR"/.kologit

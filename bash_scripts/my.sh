#!/usr/bin/env bash
my() {
  cmd=$1
  if [ -z "$cmd" ]
  then
    echo 'usage: my command [args ...]'
    return 1
  fi
  shift
  "/usr/local/bin/$cmd" "$@"
}

#!/usr/bin/env bash

get_pkgs() {
  if ! test -d /var/db/ ; then
    pkgs='Error'
  else
    pkgs="$(ls -d /var/db/pkg/*/* | cut -f5- -d/ | wc -l)"
  fi
}

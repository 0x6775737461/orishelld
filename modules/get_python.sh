#!/usr/bin/env bash
 
get_python(){
  # TODO: find an other way a little bit ugly to find the python cmd
  python=$(whereis python | grep -Eo 'python[0-9].[0-9]' | sort | tail -n 1)
  py_version=$(eval "$python --version" | grep -Eo '(([0-9])+.){2}([0-9]+)')
}

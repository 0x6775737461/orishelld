#!/usr/bin/env bash
 
get_python(){
	version=$(grep -Eo '(([0-9])+.){2}([0-9]+)' <(python --version))
}

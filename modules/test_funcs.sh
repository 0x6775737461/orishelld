#!/usr/bin/env bash
modules=(os python ram hd kernelv pkgs locale)

for module in "${modules[@]}"
do
  source modules/get_${module}.sh
done

test_funcs(){
  #TODO: if the 'main' function call 'test_funcs', why we need this test?
  if [ "$#" -eq 7 ]; then
    if get_os "$os" && get_python "$py_version" && \
      get_ram "$memtotal" && get_hd "$hd" && \
      get_kernelv "$kernelv" && get_pkgs "$pkgs" && get_locale "$lang"; then

        return 0
    fi

  else
    echo "ERROR: arguments have not yet been implemented"
    return 1
  fi
}

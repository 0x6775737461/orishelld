#!/usr/bin/env bash
source modules/test_funcs.sh

main() {
	local os version memtotal hd kernelv pkgs lang

   if test_funcs "$os" "$py_version" "$memtotal" \
		"$hd" "$kernelv" "$pkgs" "$lang"; then
			#TODO: remove this hardcoded carriage return
			echo -e """
			\r\r\rOS: $os
			\r\r\rPython Version: $py_version
			\r\r\rRAM: $memtotal
			\r\r\rRoot Size: $hd
			\r\r\rKernel Version: $kernelv
			\r\r\rPackages: $pkgs
			\r\r\rLanguage: $lang """
   fi

}

main "$@"

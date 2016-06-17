# EupsPkg config file. Sourced by 'eupspkg'

install()
{
	#
	# Eigen uses cmake, but fortunately the scripts are easy enough to
	# emulate w/o having to have cmake as a dependency
	#

	clean_old_install

	mkdir -p "$PREFIX/include/unsupported"
	cp -r Eigen "$PREFIX/include"
	cp -r unsupported/Eigen "$PREFIX/include/unsupported"
	ln -fs "$PREFIX/include/Eigen/Core" "$PREFIX/include/Eigen/Core.h"

	install_ups
}
